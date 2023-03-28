============================================================================
      Super PC/Turbo XT BIOS for Intel 8088 or NEC "V20" Motherboards
   Additions by Ya`akov Miles (1987) and Jon Petrosky <Plasma> (2008-2017)
                          http://www.phatcode.net/
----------------------------------------------------------------------------
                        Version 3.1 - October 28 2017
============================================================================


About
=====
This is a modification of the widely-distributed "(c) Anonymous Generic
Turbo XT" BIOS, which is actually a Taiwanese BIOS that was
reverse-engineered by Ya`akov Miles in 1987.

Back in 2008 I put together an XT system and wanted a BIOS that supported
booting from a hard drive. The Generic XT BIOS did not support this, but
since source code was provided it was easy to add this feature. While I was
at it, I fixed some bugs I found, added more features, and cleaned up the
code. Initially I only modified this BIOS for my computer, but I decided I
might as well release my new version in case it proves useful for someone
else.

In 2011 I was informed that this BIOS did not work correctly with the
original IBM PC (5150). I made some additional changes and now the 5150 is
supported as well as the 5160 (XT) and just about all PC/XT clones.

You do not need to have a turbo motherboard to use this BIOS, but if you do,
then you can use the "CTRL ALT -" key combination to toggle the computer
speed between fast and slow. When the speed is toggled, the PC speaker will
sound a high/low pitched blip to indicate the system speed selected.


Licenses
========
The BIOS source (pcxtbios.asm) and assembled binary image (pcxtbios.bin) are
public domain.

The included ROM tools (exe2rom, inject, romfill, and split) are public
domain.

The Watcom tools (wasm, wasmr, wdis, and wlink) are distributed under the
Sybase Open Watcom Public License.

DOS/32a (renamed to dos4gw.exe) is freeware copyright 1996-2006 by Narech K.

WarpLink is public domain as of November 4, 1999.

Sergey's Floppy BIOS is GPL3 copyright 2011-2013 Sergey Malinov.

XT-IDE Universal BIOS is GPL2 copyright 2009-2010 Tomi Tilli and
2011-2012 XTIDE Universal BIOS Team.

IBM ROM BASIC is copyright 1981 IBM and is included for educational use only.


Changes
=======
Version 3.1 Changes:

Bug Fixes:
  * IBM 5150 PC config switches corrected (previously had problems with CGA
      and/or FPU)
  * 40-column CGA boot fixed

Changed:
  * Int 10h/ah=0 ignores invalid video modes

Version 3.0 Changes:

Tools:
  * TASM replaced with Open Watcom Assembler (WASM)
  * Win32 and Linux versions of tools now included so BIOS can be built in
      more environments
  * Disassembly listing now automatically generated

ROMs:
  * Ably-Tech HD Floppy BIOS replaced with Sergey's Floppy BIOS 2.2
  * Western Digital IDE SuperBIOS replaced with XT-IDE Universal BIOS
      2.0.0.3+ r591
  * Future Domain TMC-850M BIOS removed
  * Option added to batch files to exclude IBM ROM BASIC

Code:
  * First pass at optimizing code for space
  * Some instructions corrected for stricter assemblers
  * Slight modifications to assemble with WASM (still assembles with TASM)
  * Location of strings and procs optimized to maximize continguous free
      space for additional code
  * Free space now filled with 90h instead of FFh so it appears more unique
      in a hex editor

Added:
  * ROM_START and ROM_END defines set scanning region for expansion ROMs
      (can overlap BASIC region)
  * Option to delay after expansion ROMs init before clearing screen
      (ROM_DELAY)
  * Option to always retry disk boot, even if ROM BASIC present
      (define RETRY_DISK)
  * Keyboard buffer cleared after memory check so BASIC prompt isn't
      accidentally skipped
  * Added base port 2C0h to RTC (clock) detection
  * Option for title bar "fade"

Changed:
  * Memory check now 16-bit access; will be faster on 8086/V30 and some
      emulators

Version 2.6 Changes:

Bug Fixed:
  * Fixed bug preventing programs from performing warm boot by setting
      0040:0072 to 1234h and jumping to F000:FFF0 or F000:E05B (previously
      would always cold boot). This bug was also present in the original
      BIOS.

Version 2.5 Changes:

Added:
  * Option to clear user-defined memory region in upper memory area (UMA)
      for systems with non-EMS UMBs. These UMBs should be cleared before
      use or parity errors may occur. Define CLEAR_UMA and set the region
      with UMA_START and UMA_END. Because of ROM space limitations,
      TEST_VIDEO must be disabled if using CLEAR_UMA.
  * Option to display ROM BASIC boot prompt during warm boot (define
      WARM_BOOT_BASIC).

Version 2.4 Changes:

Added:
  * Improved support for 101-key enhanced keyboards (define ENHANCED_KEYB to
      enable)
  * CPU test now optional (define TEST_CPU). Must be disabled if
      ENHANCED_KEYB is enabled due to ROM space limitations.
  * Video memory test now optional (define TEST_VIDEO). Applies only to
      Mono/Herc/CGA cards; video memory is never tested on EGA/VGA cards.

Changed:
  * Int 16h extended keyboard functions now fully implemented
      (ah=00h/01h/02h/05h/10h/11h/12h). Note that ENHANCED_KEYB does not
      need to be enabled to use these functions.
  * KEYB_SHIFT_FIX removed; use ENHANCED_KEYB instead.
  * NO_MEM_CHECK now faster; only zeroes out memory and does not blank check.
  * Removed Int 15h hooks for future expansion BIOS (not used)

Version 2.3 Changes:

Changed:
  * Int 16h enhanced keyboard functions (ah=10h/11h/12h) now mapped to
      standard functions (ah=00h/01h/02h) for programs that expect enhanced
      keyboard support.

Version 2.2 Changes:

Tools:
  * Make batch file generates proper 32K ROMs for IBM 5155 and 5160

Bug Fixed/Changed:
  * FAST_MEM_CHECK option now clears memory after testing. This fixes
      problems with programs unable to find free interrupt vectors. However
      the "fast" memory check is now slower. For the fastest startup you can
      now disable the memory check with the NO_MEM_CHECK option.

Version 2.1 Changes:
 
Added:
  * Optional define for IBM PC 5150 support (config switches on motherboard
      are read differently)
  * Original IBM PC 5150 Int 2 (NMI) entry point now supported for better
      IBM PC compatibility
  * Optional define to disable turbo support completely (for non-turbo 4.77
      MHz systems)
  * Int 15h hooks are called for future expansion BIOS to display drives and
      boot menu if present
  * Optional define to set boot delay length

Changed:
  * Hard drive boot sector load is now only attempted 2 times rather than 4
  * Boot delay now based on system timer rather than fixed loops, useful for
      very fast systems
  * Pressing any key during boot delay message will end delay and start
      booting

Bug Fixes:
  * Boots to BASIC if no floppy or hard drive controller (previously would
      hang)
  * Screen cleared after error if user chooses to continue booting

Version 2.0 Changes:

Code:
  * Changed from MASM 4.x to TASM IDEAL mode
  * Cleaned up source code: added procs, more descriptive labels
    (...still some spaghetti due to necessary hard-coded entry points)

Bug Fixes:
  * Warm boot flag restored after external ROM initialization code (fixes
      CTRL+ALT+DEL warm boot)
  * Equipment Flag in BIOS Data Area now set correctly
  * Fixed cursor shape when using Hercules card (was in the middle of the
      character)

Added:
  * Optional define to always boot up in turbo mode (TURBO_BOOT)
  * Optional define for fast memory check (FAST_MEM_CHECK); uses one test
      pattern only
  * Optional define for 101-key keyboard shift+nav keys work-around
      (KEYB_SHIFT_FIX)
  * BIOS is now EGA/VGA aware; will only test video memory on Mono/Herc/CGA
      cards
  * Nicer boot screen with color support for CGA/EGA/VGA
  * Processor and Math Coprocessor detection
  * Memory test displays count every 8K; speeds up check on fast systems
      with slow video cards
  * User has option to boot ROM BASIC even if bootable disk present
  * Supports booting from hard drive (if external controller ROM present)
  * Toggling turbo on/off sounds high/low-pitched beep rather than changing
      cursor shape


Notes
=====

Error Codes
-----------
The BIOS may give a "System Error" code at bootup. This error code is a
combination of the following codes:

01h - Bad system BIOS checksum
02h - Bad RAM in main system memory
04h - Bad RAM in video card
10h - Bad RAM in vector area (this also in main system memory)
20h - Bad expansion ROM checksum

Note that the codes are in hexadecimal. The "System Error" code given by the
BIOS is a sum of the above codes. For example, if the code 26 is given, the
individual errors are 02h, 04h, and 20h.

Hard Drives
-----------
The BIOS supports booting from hard drives through the INT 13h interface,
but it _does not_ interface with the drive itself. This means that an
external hard drive BIOS must be present, either on the drive controller
or on the motherboard.

Floppy Drives
-------------
High-density floppy disks (3.5" 1.44MB and 5.25" 1.2MB) are not supported
due to lack of ROM space. You will need to use an external floppy controller
BIOS for this. Another option is to run DR-DOS, which loads software support
for high-density drives (this still requires a high-density controller, but
no ROM required). There is also a DOS TSR called "2M-XBIOS" which adds this
support to any DOS, but you cannot boot from a high-density disk.

Cassette Support
----------------
Cassette functions are not supported, also due to lack of ROM space. This
only affects IBM PC 5150s or exact clones since XTs do not have a cassette
port.

Special Thanks
--------------
I would like to thank Michael Mruzek for donating an IBM 5150 motherboard so
I could implement original PC support.

I would also like to thank the following people for identifying bugs and/or
suggesting improvements:

* Greg Saling
* Roger Flores
* Carlos Teixeira
* Tim Arts
* Luis Felipe Antoniosi


Building and Installing the BIOS
================================

Source Code
-----------
The source code for the BIOS is provided in the file pcxtbios.asm. It has
been formatted for a 100-column page with 8-space tabs. The BIOS will
assemble with any version of Borland TASM. It will also assemble with Open
Watcom WASM 1.9 or later with the -zcm=tasm flag.

Once assembled and linked, the actual BIOS image is the last 8K of the EXE
produced, with the exception of the final checksum byte which needs to be
calculated and added to the end. (The checksum byte makes the sum of all the
bytes in the image = 0 mod 256.)

Options
-------
There are 21 optional defines in the BIOS source code. To enable/disable
them, simply comment or uncomment the definition in the code and then
rebuild the BIOS.

IBM_PC:
    Define only if using with original IBM PC (5150) or exact clone. This
    will read the 5150 config switches correctly and set the BIOS computer
    type to FFh (PC) rather than FEh (XT). You should also disable the
    TURBO_ENABLED and SLOW_FLOPPY definitions if using with an original PC.

TURBO_ENABLED:
    Define to enable "turbo" support and the CTRL ALT - hotkey for switching
    from fast/slow speeds. If you have a non-turbo system (4.77 MHz) you
    can disable this definition.

TURBO_BOOT:
    If defined, system speed is switched to "turbo" at bootup. This is done
    after hardware detection, but before external ROM initialization and
    memory check. Has no effect on non-turbo systems.

TURBO_HOTKEY:
    If defined, enables the "CTRL ALT -" hotkey to toggle turbo mode. If
    your system has a physical turbo switch, you can disable this to save
    ROM space.

SLOW_FLOPPY:
    If defined, will always run the floppy drive at 4.77 MHz. If your system
    is faster than 4.77 MHz, you may experience problems accessing the
    floppy drive when the system is in "turbo" mode. Usually this only
    happens with very old controllers.

TEST_CPU:
    Define to test flags/registers of CPU at power on. If an error is found
    the system will be halted with no error codes or beeps. TEST_CPU must be
    disabled if using ENHANCED_KEYB due to limited ROM space.

TEST_VIDEO:
    Define to test video memory at power on. Note that this applies only to
    monochrome, Hercules, or CGA graphics cards. The system BIOS never tests
    Video memory on EGA/VGA cards. (Video memory on EGA/VGA cards may be
    tested by their own BIOS.)

MAX_MEMORY:
    Set the maximum memory allowed in KB. If not defined, 640 is used.
    Setting a value larger than your system has will not "give" it more
    memory; it only changes the amount that may be detected.

FAST_MEM_CHECK:
    Uses only a single pattern (+clear) to test memory, rather than the
    original three pattern (+clear) check.

NO_MEM_CHECK:
    Does not test any patterns; clears memory only.

CLEAR_UMA:
    Define to clear a specified region in the upper memory area. This is
    useful for systems that can provide non-EMS UMBs. If the UMBs are not
    cleared before use, memory parity errors can occur.

    UMA_START:
        Starting segment. Must be 8K aligned. Uses A000h if not defined.

    UMA_END:
        Ending segment. Must be 8K aligned. Uses F000h if not defined.

ENHANCED_KEYB:
    Define to enable Int 9h enhanced (101-key) keyboard support. This adds
    support for F11/F12 as well as SHIFT + gray cursor and nav keys (Insert,
    Home, etc). Standard 83/84-key XT keyboards can still be used if this
    option is enabled.

ROM_START:
    Expansion ROM search start segment. Must be 2K aligned. Uses C000h if
    not defined. If you have an EGA/VGA card this must include the video
    BIOS region.

ROM_END:
    Expansion ROM search end segment. Must be 2K aligned. Previously was
    F000h; now can be extended all the way to the system BIOS (FE00h). Uses
    FE00h if not defined. ROM BASIC at F600h will still work if it is in the
    search area.

ROM_DELAY:
    The number of seconds to wait after expantion ROMs initialize, before
    clearing the screen and starting the main BIOS display. If not defined,
    there will be no delay. Pressing any key will bypass the delay.

BOOT_DELAY:
    The number of seconds to wait after the memory test, before booting or
    starting BASIC. Pressing any key will bypass the delay.

WARM_BOOT_BASIC:
    If defined, will display the ROM BASIC boot prompt during a warm boot
    (i.e. when CTRL+ALT+DEL is pressed). Normally this prompt is only shown
    during a cold boot.

RETRY_DISK:
    Define to prevent booting to ROM BASIC (if present) when a floppy disk
    is inserted but the boot sector failed to load after 4 attemps.

TITLE_BAR_FADE:
    Define for a fancy title bar. Disable to save ROM space. 

Building
--------
To automate building the BIOS, run either make_dos.bat, make_win.bat, or
make_linux.sh.

make_dos - 16-bit DOS tools (except optional 32-bit wdis.exe for listings)
           Requires DOS 3.1 and 286 CPU (386+ for listings)

make_win - 32-bit Windows tools (compatible with 64-bit Windows)

make_linux - 32-bit Linux tools (compatible with 64-bit Linux)

Any of these batch/scripts will assemble and link the BIOS for you. The BIOS
image with correct checksum is output to pcxtbios.bin.

(In Linux, you will need to enable execute permission for the script by
running "chmod +x make_linux.sh", before running "./make_linux.sh" to build
the BIOS.)

If you'd like to test out the BIOS, you can run picoxt.exe in the "test"
directory. (PicoXT is an IBM XT emulator for Windows by Picofactory. It will
also run in Linux with Wine.) No configuration is necessary; the new BIOS
image is injected into picoxt.exe when it is built by the batch/script.

The batch/script will also generate (E)EPROM images of the PC/XT BIOS, and
optionally ROM BASIC, external floppy, and IDE BIOSes. You can use these
files with an EPROM programmer to "burn" your own BIOS chips for use with
your motherboard. The EPROM images are output to the "eproms" directory,
which has the following structure:

\2764
  floppy22.rom (8K, optional)
  xtide591.rom (8K, optional)
  basicf6.rom  (8K, optional)
  basicf8.rom  (8K, optional)
  basicfa.rom  (8K, optional)
  basicfc.rom  (8K, optional)
  pcxtbios.rom (8K)
\27128
  floppy22.rom (16K, optional)
  xtide591.rom (16K, optional)
  basicf6.rom  (16K, optional)
  basicf8.rom  (16K, optional)
  basicfa.rom  (16K, optional)
  basicfc.rom  (16K, optional)
  pcxtbios.rom (16K)
\27256
  floppy22.rom (32K, optional)
  xtide591.rom (32K, optional)
  basicf6.rom  (32K, optional)
  basicf8.rom  (32K, optional)
  basicfa.rom  (32K, optional)
  basicfc.rom  (32K, optional)
  pcxtbios.rom (32K)
\27512
  floppy22.rom (64K, optional)
  xtide591.rom (64K, optional)
  basicf6.rom  (64K, optional)
  basicf8.rom  (64K, optional)
  basicfa.rom  (64K, optional)
  basicfc.rom  (64K, optional)
  pcxtbios.rom (64K)
\ibmxt
  u18.rom (32K)
  u19.rom (32K)

XT clones with 8K ROMs
----------------------
The files in 2764, 27128, 27256, and 27512 are for use with motherboards
that have 8K BIOS ROM sockets. (Usually these boards have 5-8 sockets.) The
files are all 8K images, but those in 27128, 27256, and 27512 use repeating
8K images to fill 16K/32K/64K EPROM chips, which allows them to work in 8K
sockets. So you can, for example, use 27512 EPROMs when the motherboard
expects 2764 EPROMs with no problems.

The pcxtbios.rom is the only required ROM, although it is nice to have BASIC
if your board has the sockets. The BIOS typically goes in the last socket,
which corresponds to segment FE00. The BASIC ROMs go in the next 4 sockets
(FC00, FA00, F800, and F600). If you are using the external floppy/IDE
BIOSes, they can go in any socket except FE00.

IBM PC ROM Note
---------------
Unlike virtually all XT clones, the IBM PC (5150) uses 2364 EPROMs instead
of 2764 EPROMs. These are still 8K ROMs but the pinout is slightly different.
If you are having a hard time finding or burning 2364 EPROMs, you can make
or buy an adapter that will let you use 27xxx EPROMs in your IBM PC:

http://www.minuszerodegrees.net/5150_u33.htm
http://store.go4retro.com/2364-adapter/

IBM XT and clones with 32K ROMs
-------------------------------
If you have an IBM XT (5155 or 5160) or clone with two 32K ROM sockets, you
should use the ROM images in the "ibmxt" folder. U19 is mapped to F000 and
U18 is mapped to F800. The external floppy/IDE BIOSes and the first 8K of
BASIC are in u19.rom. The last 24K of BASIC is in u18.rom along with the 8K
BIOS.

External BIOS Note
------------------
Two external BIOSes are included:

floppy22.bin - Sergey's Floppy BIOS 2.2 (supports HD floppy drives)
xtide591.bin - XT-IDE Universal BIOS 2.0.0.3+ r591 (supports IDE drives)

To generate corresponding EPROM images of these BIOSes, change the defines at
the beginning of make_dos.bat/make_win.bat/make_linux.sh to equal 1 instead
of 0. For example,

set floppy=1
set ide=1

Please note that using these external BIOSes without the corresponding
hardware may give unpredictable results.

IBM ROM BASIC
-------------
If you want to exclude IBM ROM BASIC from the EPROM images, change the
"basic" define to 0 in make_dos.bat/make_win.bat/make_linux.sh.


Modifying the BIOS
==================
Because some XT clones only have a single 8K ROM socket, the entire BIOS
has been designed to fit into an 8K ROM. Many features have been added, and
now that space is almost full.

If you try to add some additional code and build the BIOS, you will likely
see an error similar to this:

pcxtbios.asm(242): Error! E582: forced error:
pcxtbios.asm(242): Note! N592: macro called from file pcxtbios.asm(1419)
pcxtbios.asm(242):  574: Too many errors

This indicates that the entry point on line 1419 can't be met, because the
code before that point is too large and has pushed past the target address.
The BIOS has several hard entry points that must be preserved in order to
maintain 100% compatibility with IBM BIOSes.

To get around this, you can move any string or proc that isn't directly after
an entry point to free up code space where it's needed. The code has been
optimized so that with the most common BIOS options enabled, most of the
free space is grouped before the entry point at FA6E (line 4828). Depending
on the options enabled, there will be 57 to 213 bytes free at that location.

There may also be free space in other areas if more options are disabled.
For example, if TEST_CPU and ENHANCED_KEYB are both disabled, there will be
130 bytes free before the entry point at E6F2 (line 1664).

You can refer to the listing file (pcxtbios.lst) generated during the build
process to determine the size of various procs to see what can be moved
around.

You can also view the BIOS image (pcxtbios.bin) with a hex editor and search
for strings of the "pad" byte (90h) to visually see the free space. Add E000h
to the offset in the BIOS image to find the matching entry point in the
source code. For example, offset 1A6E in pcxtbios.bin corresponds to the
FA6E entry point in pcxtbios.asm.


BIOS History from Ya`akov Miles
===============================
From: Ya`akov Miles <multi%dac.triumf.cdn%ubc.csnet at RELAY.CS.NET>
To:   Info-IBMPC at MIT-MC
Re:   BIOS Musings

You may be interested in a history of where this BIOS came from, and how it
arrived in its present form. A heavily patched, partially-functionally BIOS
(with no copyright statement, or other visible indication of origin) was
supplied with my IBM-PC/XT compatible 10 MHz motherboard.

In order to get my motherboard to function correctly, in other words, to
work with the parity interrupt enabled and to operate with the NEC "V20",
it was necessary to disassemble and thoroughly go through this "anonymous"
BIOS, which was hinted as supplied by Taiwan, while limping along on a name
brand BIOS, as supplied on my previous motherboard by a different vendor.

In the course of this disassembly, aided by comparison with the published
IBM-PC/XT listings, it became apparent that the synchronization on
horizontal retrace in the video INT 10h service was the root cause of the
failure to operate with the NEC "V20", and that correcting it to correspond
with logic (as in IBM's BIOS) caused the glitch to disappear. I am unable to
account as to why several name brand BIOS brands (excluding IBM's) had
similar glitches--maybe they they were produced from similar source code,
although this seems unlikely.

In any case, as evidenced by DEBUG, some of these name-brand BIOS were full
of machine-level patches--did the vendor ever bother to reassemble and
optimize the source code? The code that I examined was full of recursive
INT(errupt) instructions, which did not to contribute to screaming fast
BIOS. Therefore, the assembly code was rearranged so as to eliminate some of
the unnecessary CALL, JMP, and especially INT instructions, as the
optimization proceeded with the later releases.

The BIOS is copyright (c) Anonymous, because there was no indication of the
original authors...

ps: While playing around with my 10 MHz motherboard, I encountered an
    unusual program called HELPME.COM, which ran at a higher pitch than
    normal. Since this program behaved normally on other (8 MHz) turbo
    motherboards, my curiosity was aroused. This eventually led me to
    discover that the 10 MHz motherboard was refreshed in hardware by
    channel 1 of the 8253 timer IC, and that this channel appeared to be
    counting down from an unusually fast oscillator. Maybe this could cause
    problems with other programs...

;---------------------------------------------------------------------------
; Email Header from Original BIOS
;---------------------------------------------------------------------------
; Date:     Wed, 13 Jan 88 04:26 PST
; From:     <MULTI%TRIUMFCL.BITNET@CUNYVM.CUNY.EDU>
; Subject:  BIOS.ASM update INFO-IBMPC librarys
; To:       hicks@walker-emh.arpa
;---------------------------------------------------------------------------
