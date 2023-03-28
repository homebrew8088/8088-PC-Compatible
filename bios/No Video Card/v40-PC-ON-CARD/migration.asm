[BITS 16]
CPU 8086
ORG 0X0000
	mov AH, 0x0E
	mov BX, str_monitor_transfer
write_message:
	mov AL, [CS:BX]
	CMP AL, 0
	JE message_done
	INT 0x10
	INC BX
	JMP write_message
message_done:
	mov AX, 0F910h
	mov	ES, AX
	mov AX, 007D0h
	mov DS, AX
	xor BX, BX			
    MOV AH, 0x0E
move_one_byte:
	MOV AL, [ES:BX]
	MOV [DS:BX], AL
	INC BX
    CMP BX, 0x5000
	JNE move_one_byte
    MOV BX, str_monitor_transfer2
write_message_2:
	mov AL, [CS:BX]
	CMP AL, 0
	JE message_2_done
	INT 0x10
	INC BX
	CMP AL, 0x0A
	JMP write_message_2
message_2_done:
	MOV AX, 0FFFFh
	MOV SP, AX
	MOV AX, 007C0h
	MOV DS, AX
	MOV ES, AX
	MOV SS, AX
	JMP 07C0h:0100H
str_monitor_transfer:
     db 0x0D, 0x0A, 'Loading Monitor...', 0x0D, 0x0A, 0
str_monitor_transfer2:
     db 'Launching...', 0x0D, 0x0A, 0
