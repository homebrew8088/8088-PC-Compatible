BIOS_DATA_AREA:
	;0x0400 (4 words)	IO ports for COM1-COM4 serial (each address is 1 word, zero if none)
	DW 0X0000
	DW 0X0000
	DW 0X0000
	DW 0X0000

	;0x0408 (4 words)	IO ports for LPT1-LPT4 parallel (each address is 1 word, zero if none)
	DW 0X0000
	DW 0X0000
	DW 0X0000
	DW 0X0000	;!!

	;0x0410 (word)		(Equip Flag) packed bit flags for detected hardware
	;look up number google, right now one floppy drive, 80x25 color, no coprocessor
	DW 0X002D

	;0x0412	 (byte)		MFG test
	DB 0x01

	;0x0413 (word)		Memory Size
	DW 0x0200			;200 512K, 

	;0x0415 (word)		IO Ram Size
	DW 0x0000

	;0x0417 (byte)		keyboard state flag 0
	DB 0X00

	;0x0418 (byte)		keyboard state flag 1
	DB 0X00	

	;0x0419 (byte)		ALT_INPUT
	DB 0X00	

	;0x041A (word) 		keyboard head 
	DW 0x001E

	;0x041C (word)		keyboard tail
	DW 0x001E 

	;0x041E (32 bytes)	keyboard buffer
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00

	;0x043E 		DISKETTE DATA AREAS
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00

	;0x0449 (byte)		Display Mode [VIDEO DISPLAY DATA AREA]
	DB 0X03				;80x25  8x8   640x200   16 Colors 0xB800 CGA

	;0x044A (word)		number of columns in text mode
	DW 0X0014

	;0X044C (word)
	DW 0X0000

	;0X044E (word)
	DW 0X0000	

	;0X0450 (16 BYTE AS WORD)	:CURSOR_POSN 8 PAGES   col, row
	DW 0X0000, 0X0000
	DW 0X0000, 0X0000
	DW 0X0000, 0X0000
	DW 0X0000, 0X0000

	;0X0460 (word)		Cursor Mode
	DW 0X0000
	;0x0462			Active Page
	DB 0X00

	;0x0463 (2 bytes, taken as a word)	base IO port for video
	DB 0X00
	DB 0X00

	;0x0465	(byte)
	DB 0x00

	;0x0466	(byte)
	DB 0x00

	;0x0467	(word)
	DW 0x0000

	;0x0469	(word)
	DW 0x0000

	;0x046B	(byte)
	DB 0x00

	;0x046C (word)		# of IRQ0 timer ticks since boot
	DW 0X0000
	DW 0X0000

	;LATER 0x0470
	DB 0X00, 0X00
	DB 0X00, 0X00, 0X00
	;
	
	;0x0475 (byte)		# of hard disk drives detected
	DB 0X00
	
	;LATER 0x0476
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00
	;
	
	;0x0480 (word)		keyboard buffer start
	DW 0X001E
	;0x0482 (word)		keyboard buffer end
	DW 0X003E
	
	;LATER 0x0484
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00, 0X00
	DB 0X00, 0X00, 0X00
	
	;0x0497 (byte)		last keyboard LED/Shift key state
	DB 0X00	

.END:





.CHARACTER_CODES_UPPERCASE:
DB 0X00, 0X1B, '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', 0X08, 0X09 ;0X00-0X0F
DB 'Q','W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '{', '}', 0X0D, 0x00, 'A', 'S'    ;0X10-0X1F
DB 'D','F', 'G', 'H', 'J', 'K', 'L', ':', '"', '~', 0x00, '|', 'Z', 'X', 'C', 'V'     ;0X20-0X2F
.CHARACTER_CODES_LOWERCASE:
DB 0X00, 0X1B, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', 0X08, 0X09 ;0X00-0X0F
DB 'q','w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', 0X0D, 0x00, 'a', 's'    ;0X10-0X1F
DB 'd','f', 'g', 'h', 'j', 'k', 'l', ';', 0x27, '`', 0x00, 0X5C, 'z', 'x', 'c', 'v'   ;0X20-0X2F
.CHARACTER_CODES_CTRL:
