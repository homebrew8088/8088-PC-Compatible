=======================================================================
	Enhanced BIOS for the EMM Computers V40/8088 Mainboard
       		Version 3.2, 7th December 2021
=======================================================================

Most of the code here is from the original/modified Anonymous BIOS
(please see readme-original.txt for more information).

The additions here are based on Elijah M. Miller's custom BIOS with
modifications and further tweaks and repackaging by Jack Zeal

Build Process:

The build script expects you to have NASM (https://www.nasm.us/)
installed in \Program Files\NASM.  It also expects the utilities
"padbin" (http://www.pineight.com/gba/gbfs.zip) and "romcksum32"
(https://github.com/agroza/romcksum) installed one directory
above this repository.

Basically, disc.asm gets built with NASM, while the main pcxtbios.asm
gets built with WASM (inclouded in the win32 directory).
We then pad disc.asm to 2k, set an appropriate Option ROM checksum
and drop it at the bottom of the 32k image.

Run make_win.bat and it should generate a file in eproms/27256.
This will be a 32k image you can flash and go.

Modifications relative to the original Anonymous BIOS:

disc.asm produces an Option ROM designed to be installed at 0xF8000
This provides rudimentary initialize-read-write functionality for the
CH376S controller module when mounted at address 0x60.

The main pcxtbios.asm has been extended with a function called INIT_V40
which provides the hardware-specific initialization for the V40 onboard
peripherals and keyboard controller.

Configuration Gimmick:

The EMM Mainboard has none of the configuration switches a conventional XT
clone has.  If you have two floppy drives, enable the ASSUME_TWO_FLOPPIES
option in before assembly, or it will assume one.

Embeddable ROM:

This is a 12k (8k for main ROM, 4k for disc) BIOS that's in a 32k chip.
To make more use of the other 20k, it's set up to believe that an INT18
handler (typically Cassette Basic) is installed at F9000.  This is
a brief stub that copies whatever it finds from F9100 to FDFFF down to
07C0:0100, then executes it.

Viable embedded options include a some of the "512 byte boot sector" demos
or very simple programs that only use BIOS facilities, not DOS.
A good example would be the Palo Alto Tiny BASIC interpreter
https://www.vcfed.org/forum/forum/technical-support/vintage-computer-programming/40493-palo-alto-tiny-basic-download

Experimentation seems to show that the detection for "hit space at boot"
may not work with the 8088 card.

Next steps:
* Fixing the boot up autosense which is convinced we have a game port 
and RTC

* Tweaking performance settings.  The wait states on memory above 640k
are particularly touchy-- lower them too much and some video cards have
a fit.
