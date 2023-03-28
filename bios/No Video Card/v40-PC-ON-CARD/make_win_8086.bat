@echo off
set bios=pcxtbios


if exist %bios%.obj del %bios%.obj
if exist %bios%.lst del %bios%.lst
if exist %bios%.exe del %bios%.exe
if exist %bios%.bin del %bios%.bin

@echo *******************************************************************************
@echo Assembling BIOS
@echo *******************************************************************************
win32\wasm -zcm=tasm -d2 -e=1 -fe=nul -nm=code -fo=%bios%.obj %bios%.asm
if errorlevel 1 goto errasm
if not exist %bios%.obj goto errasm

@echo.
@echo *******************************************************************************
@echo Generating Listing
@echo *******************************************************************************
win32\wdis -l=%bios%.lst -s=%bios%.asm %bios%.obj
if errorlevel 1 goto errlist
if not exist %bios%.lst goto errlist
echo Ok

@echo.
@echo *******************************************************************************
@echo Linking BIOS
@echo *******************************************************************************
win32\wlink format dos name %bios%.exe file %bios%.obj
del %bios%.obj
if not exist %bios%.exe goto errlink

@echo.
@echo *******************************************************************************
@echo Building Disc Bios
@echo *******************************************************************************
"\Program Files\NASM\nasm.exe" disc-8086.asm
"..\padbin.exe" 4096 disc-8086
"..\romcksum32.exe" -o disc-8086

if not exist disc-8086 goto errdisc

@echo.
@echo *******************************************************************************
@echo Building ROM Images
@echo *******************************************************************************

win32\exe2rom /8 %bios%.exe %bios%.bin
del %bios%.exe

if not exist eproms\27256\nul mkdir eproms\27256

win32\romfill /32 %bios%.bin                 eproms\27256\%bios%.rom
win32\inject /0000 disc-8086 eproms\27256\%bios%.rom

@echo *******************************************************************************
@echo SUCCESS!: BIOS successfully built
@echo *******************************************************************************
goto end

:errasm
@echo.
@echo.
@echo *******************************************************************************
@echo ERROR: Error assembling BIOS
@echo *******************************************************************************
goto end

:errlist
@echo.
@echo.
@echo *******************************************************************************
@echo ERROR: Error generating listing file
@echo *******************************************************************************
goto end

:errlink
@echo.
@echo *******************************************************************************
@echo ERROR: Error linking BIOS
@echo *******************************************************************************
goto end

:errdisc
@echo.
@echo.
@echo *******************************************************************************
@echo ERROR: Error building Disc BIOS
@echo *******************************************************************************
goto end


:end
if exist disc-8086 del disc-8086
if exist %bios%.obj del %bios%.obj
if exist %bios%.exe del %bios%.exe

pause
