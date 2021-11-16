INT16: ;Keyboard

	CMP AH, 0X00			;Check ah 
	JZ .WAIT_FOR_KEY			;ah=0
	CMP AH, 0X01					
	JZ .CHECK_ZERO_FLAG			;ah=1
	CMP AH, 0X02					
	JZ .GET_SHIFT_FLAGS			;ah=2
	STI
	IRET

  .WAIT_FOR_KEY:
	PUSH BX
	PUSH DS
  .WAIT_FOR_KEY_LOOP:
	STI
	MOV AX, 0X0040
	MOV DS, AX
	CLI
	MOV BX, [0X001A]			;Tail
	CMP BX, [0X001C]			;Head
	JZ .WAIT_FOR_KEY_LOOP
	MOV AX, [BX]				;GET SCAN CODE / CHAR CODE 
	ADD BX, 0X0002			   	;Mov bx forward through buffer
	CMP BX, [0X0082]			;Check to see if at the end
	JB .NOT_END_OF_BUFFER		;Jump over next step if not at the end
	MOV BX, [0X0080]			;Set bx back to begining 
	.NOT_END_OF_BUFFER:
	MOV [0X001A], BX	
	POP DS
	POP BX
	CMP AL, 0XE0
	JZ .AL_0
	STI
	IRET
	
  .AL_0:
	MOV AL, 0x00
	IRET

  .CHECK_ZERO_FLAG:	
  	PUSH BX				
	PUSH DS
	MOV AX, 0X0040
	MOV DS, AX

	MOV BX, [0X001A]			;Tail
	CMP BX, [0X001C]			;Head
	MOV AX, [BX]
	POP DS
	POP BX
	
	PUSH AX					;STORE AX
	PUSHF					;STORE FLAGES
	POP AX					;AX = FLAGS
    PUSH BP					;STORE BP
	MOV BP, SP             	;Copy SP to BP for use as index
	ADD BP, 0X08			;offset 8
	AND WORD [BP], 0XFFBF	;CLEAR ZF
	AND AX, 0X0040			;ONLY ZF
	OR	WORD [BP], AX		;SET ZF
	POP BP               	;RESTORE BASE POINTER
	POP AX					;RESTORE AX
	STI
	IRET
	
  .GET_SHIFT_FLAGS:	  
	MOV AX, 0X0000			;FOR NOW RETURNS NOTHING. 
	STI
	IRET
