[BITS 16]
CPU 8086
ORG 0X0000

	MOV AX, CS			;Setup Stack
	MOV SS, AX
	MOV DS, AX
	MOV SP, 0XFFEE

	CALL LCD_SETUP	

	MOV BX, MSG1
	MOV CX, MSG1.END - MSG1
      MSG1_LOOP:
	MOV AL, [BX]
	CALL PRINT_AL
	INC BX
	LOOP MSG1_LOOP

	MOV CX, 0XFFFF
	DB 0XE2, 0XFE	
	MOV CX, 0XFFFF
	DB 0XE2, 0XFE	
	MOV CX, 0XFFFF
	DB 0XE2, 0XFE	
	MOV CX, 0XFFFF
	DB 0XE2, 0XFE

	MOV BX, MSG2
	MOV CX, MSG2.END - MSG2
    MSG2_LOOP:
	MOV AL, [BX]
	CALL PRINT_AL
	INC BX
	LOOP MSG2_LOOP

	MOV CX, 0XFFFF
	DB 0XE2, 0XFE	
	MOV CX, 0XFFFF
	DB 0XE2, 0XFE	
	MOV CX, 0XFFFF
	DB 0XE2, 0XFE	
	MOV CX, 0XFFFF
	DB 0XE2, 0XFE

	MOV BX, MSG3
	MOV CX, MSG3.END - MSG3
    MSG3_LOOP:
	MOV AL, [BX]
	CALL PRINT_AL
	INC BX
	LOOP MSG3_LOOP

	HLT
   MSG1:
	DB 'Hello!!', 0X0A, 0X0D
	DB 'World!!', 0X0A, 0X0D
	.END:
   MSG2:
	DB 0X0A, 0X0D,	'Scroll!!', 0X0A, 0X0D, 0X0A, 0X0D	
	.END:
   MSG3:
	DB 'Hello!!', 0X0A, 0X0D
	DB 'World!!', 0X0A, 0X0D, 0X0A, 0X0D		
	.END:


    DELAY:

	RET
LCD_SETUP:
	PUSH DS
	PUSH AX
				;Setup 8255
	MOV AL, 0XC0			;MODE 2 PORT B OUTPUT
	OUT 0X03, AL			;WRITE TO 8255 COMMAND PORT
	MOV AL, 0X31			;b00110001
	OUT 0X01, AL			;PORT B IS THE LCD CONTROL PORT 
				;SETUP LCD
	MOV AL, 0X06			;Increment cursor (shift cursor to right)
	CALL .WRITE_COMMAND			
	MOV AL, 0X0F			;Display on, cursor blinking
	CALL .WRITE_COMMAND
	MOV AL, 0X38			;2 lines and 5×7 matrix
	CALL .WRITE_COMMAND
	MOV AL, 0X01			;Clear display screen
	CALL .WRITE_COMMAND

	MOV AX, 0X0040			;BIOS DATA AREA SEGMENT
	MOV DS, AX			;SET DS
	MOV WORD [0X0050], 0X0000	;WRITE ZERO TO COL, ROW

	POP AX
	POP DS
	RET

.WRITE_COMMAND:
	PUSH CX
	PUSH AX
	OUT 0X00, AL
	MOV AL, 0X11
	OUT 0X01, AL
	MOV AL, 0X10
	OUT 0X01, AL
	MOV CX, 0x0500
    	DB 0XE2, 0xFE        ;LOOP HOLD FOR A BIT'
	MOV AL, 0X31
	OUT 0X01, AL
	POP AX
	POP CX
	RET



PRINT_AL:
	
	PUSH CX
	PUSH BX
	PUSH AX
	PUSH DS
	CMP AL, 0X0D
	JE .ENTER
	CMP AL, 0X0A
	JE .LINE_FEED
	CMP AL, 0X08
	JE .BACKSPACE

	CALL .WRITE_CHAR

	MOV AX, 0X0040			;BIOS DATA AREA
	MOV DS, AX			;SET DS
	MOV AL, [0X0050]			;GET CURRENT COL
	INC AL			;INC COL
	CMP AL, 20			;CHECK FOR END
	JB .NOT_END_COLS			;JMP NOT END

	MOV BYTE [0X0050], 0X00	;IF END WRITE ZERO
	MOV AL, [0X0051]			;GET CURRENT ROW
	INC AL			;INC ROW
	CMP AL, 4			;CHECK FOR END
	JB .NOT_END_ROWS			;JMP NOT END

	CALL .SCROLL_UP

	JMP .END_WRITE_CHAR

    .NOT_END_COLS:
	MOV [0X0050], AL
	JMP .END_WRITE_CHAR

    .NOT_END_ROWS:
	MOV [0X0051], AL
	JMP .END_WRITE_CHAR

    .ROW_INDEX:
	DB 0X80, 0XC0, 0X94, 0XD4	

;;;;;;;;;;;WORK ING PROGRESS
    .BACKSPACE:
	MOV AX, 0X0040			;BIOS DATA AREA
	MOV DS, AX			;SET DS
	MOV AL, [0X0050]			;GET CURRENT COL
	CMP AL, 0X00			;CHECK FOR COL 0, DONT WANT TO BACKSPACE PAST
	JE .END_WRITE_CHAR			;JMP TO END IF 0
	DEC AL			;DEC COL	
	MOV [0X0050], AL			;SAVE COL
	MOV BX, .ROW_INDEX			;THIS MOVES THE CURSOR
	ADD BL, [0X0051]			;
	MOV AL, [CS:BX]			;
	ADD AL, [0X0050]			;
	CALL .WRITE_COMMAND			;

	MOV AL, 0X20
	CALL .WRITE_CHAR
	JMP .END_WRITE_CHAR

    .LINE_FEED:
	MOV AX, 0X0040			;BIOS DATA AREA
	MOV DS, AX			;SET DS
	MOV AL, [0X0051]			;GET CURRENT ROW
	INC AL			;INC ROW
	CMP AL, 4			;CHECK FOR END
	JB .NOT_END_ROWS			;JMP NOT END
	CALL .SCROLL_UP
	JMP .END_WRITE_CHAR

    .ENTER:
	MOV AX, 0X0040			;BIOS DATA AREA
	MOV DS, AX			;SET DS
	MOV BYTE [0X0050], 0X00			;GET CURRENT COL	
	JMP .END_WRITE_CHAR

    .END_WRITE_CHAR:	

	MOV BX, .ROW_INDEX			;THIS MOVES THE CURSOR
	ADD BL, [0X0051]
	MOV AL, [CS:BX]
	ADD AL, [0X0050]
	CALL .WRITE_COMMAND

	POP DS
	POP AX
	POP BX
	POP CX
	RET

.READ_CHAR:
	PUSH CX
	MOV AL, 0X37
	OUT 0X01, AL
	MOV AL, 0X36
	OUT 0X01, AL
	MOV AL, 0X27
	OUT 0X01, AL	
	MOV AL, 0X37
	OUT 0X01, AL
	MOV CX, 0X0030
    	DB 0XE2, 0xFE        ;LOOP HOLD FOR A BIT'	
	POP CX
	IN AL, 0X00
	RET

.WRITE_CHAR:
	PUSH CX
	PUSH AX
	OUT 0X00, AL
	MOV AL, 0X15
	OUT 0X01, AL
	MOV AL, 0X14
	OUT 0X01, AL
	MOV CX, 0X0030
    	DB 0XE2, 0xFE        ;LOOP HOLD FOR A BIT'	
	MOV AL, 0X35
	OUT 0X01, AL
	POP AX
	POP CX
	RET

.SCROLL_UP:
	PUSH AX
	PUSH CX
	PUSH SI
	PUSH DI
	PUSH DS

	MOV SI, 0XC0
	MOV DI, 0X80
	CALL .SCROLL_UP_SUB

	MOV SI, 0X94
	MOV DI, 0XC0
	CALL .SCROLL_UP_SUB

	MOV SI, 0XD4
	MOV DI, 0X94
	CALL .SCROLL_UP_SUB

	MOV AL, 0XD4
	CALL .WRITE_COMMAND
	MOV CX, 20
	MOV AL, 0X20
     .LINE4:
	CALL .WRITE_CHAR
	LOOP .LINE4
	JMP .END_SCROLL

    .SCROLL_UP_SUB:
	MOV CX, 20
     .LOOP_LINES_1_3:
	MOV AX, SI			
	CALL .WRITE_COMMAND
	CALL .READ_CHAR
	PUSH AX
	MOV AX, DI
	CALL .WRITE_COMMAND
	POP AX
	CALL .WRITE_CHAR
	INC SI,
	INC DI
	LOOP .LOOP_LINES_1_3
	RET

    .END_SCROLL:
	
	POP DS
	POP DI
	POP SI
	POP CX
	POP AX
	RET 

.WRITE_COMMAND:
	PUSH CX
	PUSH AX
	OUT 0X00, AL
	MOV AL, 0X11
	OUT 0X01, AL
	MOV AL, 0X10
	OUT 0X01, AL
	MOV CX, 0x0500
    	DB 0XE2, 0xFE        ;LOOP HOLD FOR A BIT'
	MOV AL, 0X31
	OUT 0X01, AL
	POP AX
	POP CX
	RET



































