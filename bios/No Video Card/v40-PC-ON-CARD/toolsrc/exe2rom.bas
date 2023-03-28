DEFINT A-Z
'$DYNAMIC

PRINT "EXE2ROM - Makes BIOS ROM image from EXE file"
PRINT "Version 1.0 by Plasma / Jon Petrosky  [01-05-2008]"
PRINT

Size = 8

Cmd$ = LTRIM$(RTRIM$(COMMAND$))
IF LEN(Cmd$) < 3 GOTO Help

IF LEFT$(Cmd$, 1) = "/" THEN
  Size = VAL(MID$(Cmd$, 2, 2))
  IF Size <> 4 AND Size <> 8 AND Size <> 16 AND Size <> 32 AND Size <> 64 THEN GOTO Help
  Cmd$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - 3))
END IF

RomSize = Size * 1024
PRINT "Using ROM Size" + STR$(Size) + "K"

Split = INSTR(Cmd$, " ")
IF Split = 0 THEN GOTO Help

SrcFile$ = RTRIM$(LEFT$(Cmd$, Split))
DstFile$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - Split))

OPEN SrcFile$ FOR BINARY AS #1

OPEN DstFile$ FOR BINARY AS #2
CLOSE #2
KILL DstFile$
OPEN DstFile$ FOR BINARY AS #2

SEEK #1, LOF(1) - RomSize + 2

Buffer$ = SPACE$(RomSize / 4)
CheckSum = 0

PRINT "Reading EXE file '" + SrcFile$ + "'"
PRINT "Writing ROM file '" + DstFile$ + "'"

FOR i = 1 TO 4
  GET #1, , Buffer$

  FOR j = 1 TO LEN(Buffer$)
    Byte = ASC(MID$(Buffer$, j, 1))
    CheckSum = CheckSum + Byte
    IF CheckSum > 255 THEN CheckSum = CheckSum - 256
  NEXT

  IF i = 4 THEN
    LastByte = 255 - CheckSum + 1
    IF LastByte < 256 THEN MID$(Buffer$, LEN(Buffer$), 1) = CHR$(LastByte)
  END IF

  PUT #2, , Buffer$
NEXT

CLOSE #2
CLOSE #1

PRINT "Complete"
PRINT
END

Help:
PRINT "Syntax: EXE2ROM [/{size}] exefile romfile"
PRINT
PRINT "/{size}       Output ROM image size in KB (4, 8, 16, 32, or 64), default /8"
PRINT "exefile       EXE file to use, must be properly assembled"
PRINT "romfile       ROM file to output, existing files will be overwritten"
END

