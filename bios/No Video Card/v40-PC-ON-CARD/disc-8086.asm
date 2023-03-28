[BITS 16]
CPU 8086
ORG 0X0000


; Conservatively assume the 504M limit
; It may be possible to use MAX_HPC of 256 and get an 8Gb limit, but it's likely this will
; require device repartition/reformat if it was set up with a 504M geometry.

MAX_SPT equ 63
MAX_HPC equ 16
MAX_CYL equ 1024

; Set to 1 if you want the CH376S errors dumped to the screen.
%define DISPLAY_CH376S_ERRORS 0

; Define the port numbers for easier swap if it ever supports the CH376S loaded elsewhere (i. e. two units)
COMMAND_PORT equ 0xE4
DATA_PORT equ 0xE0

; And ROM sector if we want to load it higher.  Right now, it fits into a 4k box so it can theoretically go as high
; as 0xFD000 and still clear the main BIOS at 0xFE00

ROM_SECTOR equ 0xF800

; Define CH376S commands by name for improved legibility
CH376S_GET_IC_VER equ		0x01
CH376S_RESET_ALL equ 		0x05
CH376S_CHECK_EXIST equ 		0x06
CH376S_SET_USB_MODE equ 	0x15
CH376S_GET_STATUS equ 		0x22
CH376S_RD_USB_DATA0 equ		0x27
CH376S_WR_USB_DATA	equ		0x2C
CH376S_WR_REQ_DATA	equ		0x2D
CH376S_DISK_CONNECT equ		0x30
CH376S_DISK_MOUNT equ		0x31
CH376S_DISK_CAPACITY equ	0x3E
CH376S_DISK_READ equ		0x54
CH376S_DISK_RD_GO equ		0x55
CH376S_DISK_WRITE equ		0x56
CH376S_DISK_WR_GO equ		0x57


CH376S_USB_INT_SUCCESS equ  	0x14
CH376S_USB_INT_DISCONNECT equ	0x16
CH376S_USB_INT_BUF_OVER equ		0x17
CH376S_USB_INT_DISK_READ equ	0x1D
CH376S_USB_INT_DISK_WRITE equ	0x1E
CH376S_USB_INT_DISK_ERR equ 	0x1F

CH376S_CMD_RET_SUCCESS equ  	0x51


;Header so it's recognized as an option card

DB 0x55
DB 0xAA

; Uses 8 512-byte pages.  Expand if this grows over 4kb.
DB 0x08

; Code starts here.  Save everything before we start.

PUSHF
PUSH AX
PUSH BX
PUSH CX
PUSH DX

INITIALIZE_CH376S_0XE0:


	MOV CX, END_CHECKPOINT_1 - CHECKPOINT_1
    MOV BX, CHECKPOINT_1
    CALL WRITE_MESSAGE;

	MOV DX, 200			; Try to reset the thing 200 times
TRY_RESET:
	MOV AL, CH376S_RESET_ALL 		;COMMAND RESET
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT
									; It seems like using a longer delay like WAIT_16 is
									; actually less reliable for some reason than
									; this small delay
	CALL WAIT_2
	IN AL, DATA_PORT				; Docs say this should be 00 after reset.
	MOV AL, CH376S_CHECK_EXIST
	OUT COMMAND_PORT, AL
	MOV AL, 0X57					; Existence check:  Send 0x57, expect 0xA8 back
	OUT DATA_PORT, AL
	IN AL, DATA_PORT
	CMP AL, 0xA8
	JE CH376S_EXISTS
	DEC DX
	CMP DX, 0
	JE CH376S_EXIST_FAILED
	MOV AX, 0x0E2E		; Add a period for the display
	INT 0x10
	JMP TRY_RESET

CH376S_EXISTS:
	mov cx, END_MODE_SET_TEXT - MODE_SET_TEXT
    mov BX, MODE_SET_TEXT
    call WRITE_MESSAGE;

	MOV DX, 0020
CH376S_MODE_SET:
	;Set the mode to 0x07 first (valid USB host/reset USB)
	;then to 0x06 (valid USB host, auto generate SOF packet)

    MOV AL, CH376S_SET_USB_MODE 	; SET_USB_MODE
	OUT COMMAND_PORT, AL			; OUT COMMAND PORT
    MOV AL, 0X07					; MODE 0X07
	OUT DATA_PORT, AL				; OUT DATA PORT
	CALL WAIT_8						; DELAY TO GIVE IT TIME
	
    MOV AL, CH376S_SET_USB_MODE		; SET_USB_MODE
	OUT COMMAND_PORT, AL			; OUT COMMAND PORT
    MOV AL, 0X06					; MODE 0X06
	OUT DATA_PORT, AL				; OUT DATA PORT
	CALL WAIT_8						; DELAY TO GIVE IT TIME

	IN AL, DATA_PORT
	CMP AL, CH376S_CMD_RET_SUCCESS	; Once we have success, move on
	JE CH376S_RIGHT_MODE
	DEC DX
	CMP DX, 0
	JE CH376S_WRONG_MODE
	MOV AX, 0x0E2E					; Add a period for the display
	INT 0x10
	JMP CH376S_MODE_SET

CH376S_RIGHT_MODE:
	; DEBUG - print IC version
    MOV CX, END_REVINFO - REVINFO
    MOV BX, REVINFO
    CALL WRITE_MESSAGE;

    MOV AL, CH376S_GET_IC_VER	;GET IC Version
	OUT COMMAND_PORT, AL		;OUT COMMAND PORT
	IN AL, DATA_PORT			;READ IN STATUS DATA PORT
    CALL WIRTE_AL_INT10_E;

	
	MOV CX, 0
TRY_CONNECT:
	; Some comments suggested doing DISK_CONNECT then DISK_MOUNT
	CMP CX, 10
	JGE TRY_MOUNT ; GIVE UP
    MOV AL, CH376S_DISK_CONNECT	;DISK_CONNECT
	OUT COMMAND_PORT, AL		;OUT COMMAND PORT

	CALL AWAIT_INTERRUPT

	MOV AL, CH376S_GET_STATUS		;GET_STATUS AFTER INTERRUPT
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT				
	IN AL, DATA_PORT				;READ IN STATUS DATA PORT
	INC CX
	CMP AL, CH376S_USB_INT_SUCCESS  ;CHECK FOR USB_INT_SUCCESS
	JNE TRY_CONNECT

	MOV CX, 0
TRY_MOUNT:
	CMP CX, 10
	JGE MOUNT_FINISHED				;GIVE UP IF WE TRIED 10 TIMES
    MOV AL, CH376S_DISK_MOUNT		;DISK_MOUNT
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT

AWAIT_MOUNT:
	IN AL, COMMAND_PORT				; Loop waiting for the interrupt
	AND AL, 0x80
	JNZ AWAIT_MOUNT
	MOV AL, CH376S_GET_STATUS		;GET_STATUS AFTER INTERRUPT
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT				
	IN AL, DATA_PORT				;READ IN STATUS DATA PORT
	INC CX
	CMP AL, CH376S_USB_INT_SUCCESS	;CHECK FOR USB_INT_SUCCESS
	JNE TRY_MOUNT

MOUNT_FINISHED:
	; After the mount operation, the data port is stuffed with the device name.  
	; Let's show it so we have proof we're talking to the right drive
    MOV AL, CH376S_RD_USB_DATA0		; Read device data
    OUT COMMAND_PORT, AL
    IN AL, DATA_PORT				; READ IN STATUS DATA PORT
    MOV BL, AL						; The first byte is length of the name

	CMP AL, 0
	JE NO_DISC_FOUND
	CMP AL, 0xE8 					; When it doesn't wake up right,
	JE NO_DISC_FOUND				; it often returns E8 constantly

	
	; Print the "Device ID" string
	PUSH BX
    MOV CX, END_DEVINFO - DEVINFO
	MOV BX, DEVINFO
    call WRITE_MESSAGE;			
	POP BX
	
	SUB BL, 8			; The first 8 characters of the response struct
	MOV CX, 8			; are not human readable.  Skip to vendor/product/Revision
SKIP_HEADER:			
	IN AL, DATA_PORT
	LOOP SKIP_HEADER

    MOV AH, 0x0E		; INT 0x10 operation for writing character
NEXT_ID_CHAR:
    CMP BL, 0
    JE AFTER_IDENT
    IN AL, DATA_PORT	;Read and print BL-count characters
    INT 0x10
    DEC BL
    JMP NEXT_ID_CHAR
    AFTER_IDENT:

	MOV AX, 0x0E20		; Write space
	INT 0x10
	MOV AL, 0x3A		; Write colon
	INT 0x10
	MOV AL, 0x20		; Write space
	INT 0x10

 	CALL GET_CAPACITY


	CALL WRITE_SECTORS_IN_MB		; Display size on screen

	; Check if we're above the maximum size for the BIOS
	CMP DX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	JL BELOW_SIZE
	CMP DX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	JG ABOVE_SIZE
	CMP AX, (MAX_SPT * MAX_HPC * MAX_CYL) % 65536
	JLE BELOW_SIZE

ABOVE_SIZE:
	MOV CX, END_OVERSIZE_MESSAGE - OVERSIZE_MESSAGE
    MOV BX, OVERSIZE_MESSAGE
    CALL WRITE_MESSAGE;

BELOW_SIZE:
	; If we have a device that's smaller than the dimensions in the disk table
	; we should warn the user to update the table.
	; or some detection software may assume the wrong dimensions.
	MOV CX, (MAX_SPT * MAX_HPC)
	DIV CX
	CMP AX, [CS:DISK_1_TABLE]
	JGE BELOW_TABLE_SIZE

	MOV CX, END_BELOW_TABLE_SIZE_MESSAGE - BELOW_TABLE_SIZE_MESSAGE
    MOV BX, BELOW_TABLE_SIZE_MESSAGE
	CALL WRITE_MESSAGE

	PUSH AX
	MOV AL, AH
	CALL WIRTE_AL_INT10_E
	POP AX
	CALL WIRTE_AL_INT10_E

BELOW_TABLE_SIZE:

	; Beginning the final initialization steps.  Start with a message...

    MOV CX, END_RETURNING_TEXT - RETURNING_TEXT
    MOV BX, RETURNING_TEXT
    CALL WRITE_MESSAGE;
    

	; Set the interrupt vector at 0x004C to point to the INT13 code below.
    PUSH DS
    PUSH AX	
	XOR AX, AX
    MOV DS, AX
	; Vector migration logic based on examples at https://www.bttr-software.de/forum/board_entry.php?id=11433
	; Save old vector to INT 0x40 - this is reported as where old BIOSes really moved INT 0x13 to.
	MOV AX, DS:0x004C
	MOV DS:0x0100, AX
	MOV AX, DS:0x004E
	MOV DS:0x0102, AX
	
	; write our new vector into place
    MOV WORD DS:0x004C, INT13
    MOV WORD DS:0x004E, ROM_SECTOR

	; write the drive data table to INT 0x41 and 0x46
	MOV WORD DS:0x0104, DISK_1_TABLE
	MOV WORD DS:0x0106, ROM_SECTOR
	MOV WORD DS:0x0118, DISK_2_TABLE
	MOV WORD DS:0x0120, ROM_SECTOR
	POP AX
    POP DS

END_STARTUP:
    POP DX
    POP CX
    POP BX
    POP AX
    POPF
	RETF			;RETURN

NO_DISC_FOUND:
	MOV CX, END_NO_DISC_MSG - NO_DISC_MSG
    MOV BX, NO_DISC_MSG
    CALL WRITE_MESSAGE
	JMP END_STARTUP

CH376S_EXIST_FAILED:
	MOV CX, END_NO_CH376S_MSG - NO_CH376S_MSG
    MOV BX, NO_CH376S_MSG
    CALL WRITE_MESSAGE
	JMP END_STARTUP

CH376S_WRONG_MODE:
	CALL END_OF_LINE
	CALL WIRTE_AL_INT10_E ; Display actual responde code
	MOV CX, END_WRONG_MODE_MSG - WRONG_MODE_MSG
    MOV BX, WRONG_MODE_MSG
    CALL WRITE_MESSAGE
	JMP END_STARTUP

NO_DISC_MSG:
	DB 0x0D, 0x0A, 'No drive reported by module.  Skipping install.', 0x0D, 0x0A
END_NO_DISC_MSG:

NO_CH376S_MSG:
	DB 0x0D, 0x0A, 'CH376S Module does not respond to existence check.  Skipping install.', 0x0D, 0x0A
END_NO_CH376S_MSG:

WRONG_MODE_MSG:
	DB ' - CH376S failed switching USB mode.  Skipping Install.', 0x0D, 0x0A
END_WRONG_MODE_MSG:

CHECKPOINT_1:
    DB 'Standalone CH376S Firmware v0.50 (8086 version) - 2021-11-20', 0x0D, 0x0A, 'Resetting Module...'
END_CHECKPOINT_1:

MODE_SET_TEXT:
    DB 0x0D, 0x0A, 'Setting USB mode...'
END_MODE_SET_TEXT:

REVINFO:
	DB 0x0D, 0x0A, 'IC Revision: '
END_REVINFO:

DEVINFO:
	DB 0x0D, 0x0A, 'Device ID: '
END_DEVINFO:

RETURNING_TEXT:
    DB 0x0D, 0x0A, 'Returning to Main Exec', 0x0D, 0x0A
END_RETURNING_TEXT:


WRITE_MESSAGE:
    PUSH AX
    MOV AH, 0x0E
.WRITE_LOOP:
    MOV AL, [BX]
    INT 0x10
    INC BX
    LOOP .WRITE_LOOP
    POP AX
    RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;INT 0X13 SOFTWARE DISK INTERRUPTS
;DONT FORGET HARDWARE INTERRUPTS ARE DISABLED WHEN SOFTWARE INTERRUPTS ARE CALLED
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
INT13:
	PUSHF
	CMP DL, 0X81		;CHECK FOR DISK NUMBER BEING REQUESTED 
	JE .START_INT13		;JMP IF 0X80 C:
	JNE .NOT_A_DRIVE	;JMP IF NOT C: NOT A DRIVE IN THE SYSTEM
  .START_INT13:	
	POPF				; we don't need the pushed flags, so discard them.


	CMP AH, 0X00
	JE .RESET_DISK_SYSTEM 			;RESET DISK
	CMP AH, 0X0D
	JE .RESET_DISK_SYSTEM 			;RESET DISK
	CMP AH, 0X01
	JE .GET_STATUS_LAST_OPERATION	;GET STATUS OF LAST OPERATION 
	CMP AH, 0X02	
	JE .DISK_READ					;READ DISK CHS
	CMP AH, 0X03
	JE .WRITE_DISK					;WRITE DISK CHS
	CMP AH, 0X08
	JE .PARAMETERS					;GET DISK PARAMETERS
	CMP AH, 0X15
	JE .GET_DISK_TYPE				;GET DISK TYPE
	CMP AH, 0X10
	JE .PLACEHOLDER_RETURN			;Test if ready
	CMP AH, 0X11
	JE .PLACEHOLDER_RETURN			;Calibrate Drive
	CMP AH, 0X05
	JE .FORMAT_TRACK				;FORMAT TRACK
	CMP AH, 0X06
	JE .PLACEHOLDER_RETURN			;FORMAT TRACK/MARK BAD
	CMP AH, 0X04
	JE .PLACEHOLDER_RETURN			;VERIFY
	CMP AH, 0X0C
	JE .PLACEHOLDER_RETURN			;Seek to cylinder
	CMP AH, 0X12
	JE .PLACEHOLDER_RETURN			;Controller Diagnostic
	CMP AH, 0X13
	JE .PLACEHOLDER_RETURN			;Drive Diagnostic
	CMP AH, 0X14
	JE .PLACEHOLDER_RETURN			;Internal Diagnostic
	CMP AH, 0X16
	JE .PLACEHOLDER_RETURN			;Disc change detection
	CMP AH, 0X09					
	JE .PLACEHOLDER_RETURN			;Initialize format to disk table

									;FUNCTION NOT FOUND
	MOV AH, 0X01					;INVALID FUNCTION IN AH
	STC								;SET CARRY FLAG 	
	JMP .INT13_END_WITH_CARRY_FLAG

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PLACEHOLDER FOR FUNCTIONS THAT DON'T APPLY/WORK
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
.PLACEHOLDER_RETURN:	
	MOV AH, 0X00		;STATUS 0X00 SUCCESSFULL
	CLC					;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;RESET DISK 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
.RESET_DISK_SYSTEM:	
	MOV AH, 0X00		;STATUS 0X00 SUCCESSFULL
	CLC					;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;STATUS OF LAST OPERATION  
;THIS PROABLY WILL NEED WORK
;THE CH376 ERROR STATUS NUMBERS DO NOT MATCH PC COMPATABLE NUMBERS
;STATUS 0X14 IS SUCCESS AND INTERPRETED TO RETURN 0X00
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
.GET_STATUS_LAST_OPERATION:	
	
	MOV AL, CH376S_GET_STATUS			;GET_STATUS OF INT
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT				
	IN AL, DATA_PORT					;READ IN STATUS DATA PORT
	
	CMP AL, CH376S_USB_INT_SUCCESS		;CHECK FOR USB_INT_SUCCESS
	JNE .STATUS_DISK_ERROR				;IF USB_INT_SUCCESS
	
	MOV AH, 0X00						;STATUS 0X00 SUCCESSFULL
	CLC									;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG
	
.STATUS_DISK_ERROR:
	; Instead of returning the CH376S status code in AL,
	; map some of them to BIOS-friendly codes
	CMP AL, CH376S_USB_INT_DISCONNECT		; DISC DISCONNECTED
	JNE .NOT_0X16
	MOV AH, 0xAA							; BIOS CODE AA
	JMP .STATUS_SELECTED

.NOT_0X16:
	CMP AL, CH376S_USB_INT_BUF_OVER			; DATA ERROR OR BUFFER OVERFLOW
	JNE .NOT_0X17
	MOV AH, 0x10							; BIOS CODE 10
	JMP .STATUS_SELECTED

.NOT_0X17:
	CMP AL, CH376S_USB_INT_DISK_ERR			; STORAGE DEVICE FAILURE
	JNE .NOT_0X1F
	MOV AH, 0x20							; BIOS CODE 20
	JMP .STATUS_SELECTED

.NOT_0X1F:
	MOV AH, 0xBB							; BIOS CODE BB as catch all

.STATUS_SELECTED:
	STC										;SET CARRY FLAG 	
	JMP .INT13_END_WITH_CARRY_FLAG
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;READ DISK SECTOR	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LBA = (C × HPC + H) × SPT + (S − 1)
;MAX NUMBERS C = 0X3FF, H = 0XFF, S = 0X3F
;AH = 02h
;AL = number of sectors to read (must be nonzero)
;CH = low eight bits of cylinder number
;CL = sector number 1-63 (bits 0-5)
;high two bits of cylinder (bits 6-7, hard disk only)
;DH = head number
;DL = drive number (bit 7 set for hard disk)
;ES:BX -> data buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.DISK_READ:
	PUSH BX					;
	PUSH CX					;STORE REGISTERS
	PUSH DX					;
	PUSH ES					;
	PUSH DI					;Used for bulk read
	
	PUSH AX					;STORE AX / AL NUMBER OF SECTORS
	PUSH AX					;STORE AX / AL NUMBER OF SECTORS
	
	CALL CONVERT_CHS_TO_LBA

	PUSH DX					;STORE LBA UPPER
	PUSH AX					;STORE LBA LOWER
		
	
	MOV AL, CH376S_DISK_READ	;DISK_READ
	OUT COMMAND_PORT, AL		;OUT COMMAND PORT
	POP AX						;GET LOWER LBA
	OUT DATA_PORT, AL			;OUT DATA PORT
	MOV AL, AH					;NEXT BYTE
	OUT DATA_PORT, AL			;OUT DATA PORT
	POP AX						;GET UPPER LBA
	OUT DATA_PORT, AL			;OUT DATA PORT
	MOV AL, AH					;NEXT BYTE
	OUT DATA_PORT, AL			;OUT DATA PORT
	POP AX						;GET NUMBER OF SECTORS
	OUT DATA_PORT, AL			;OUT DATA PORT


.READ_SECTOR:
	CALL AWAIT_INTERRUPT

	MOV AL, CH376S_GET_STATUS		;GET_STATUS
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT
	IN AL, DATA_PORT				;READ IN STATUS DATA PORT
	CMP AL, CH376S_USB_INT_SUCCESS	;CHECK FOR USB_INT_SUCCESS COMPLETED READING
	JE .READ_DISK_SUCCESS			;IF USB_INT_SUCCESS
	CMP AL, CH376S_USB_INT_DISK_READ;COMPARE TO USB_INT_DISK_READ
%if DISPLAY_CH376S_ERRORS = 1
	JNE .NOT_1D						;IF NOT USB_INT_DISK_READ
%else
	JNE .READ_DISK_ERROR
%endif	

	MOV AL, CH376S_RD_USB_DATA0		;RD_USB_DATA0
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT
	IN AL, DATA_PORT				;READ NUMBER OF BYTES FROM DATA PORT 
	MOV AH, 0X00					;CLEAR AH
	MOV CX, AX						;SET CX TO NUMBER OF BYTES
.READ_IN_LOOP:		    ;LOOP LABLE
	IN AL, DATA_PORT	;READ BYTE
	MOV [ES:BX], AL		;STORE BYTE
	INC BX				;INC BX
	LOOP .READ_IN_LOOP	;LOOP UNTIL DONE

	MOV AL, CH376S_DISK_RD_GO		;DISK_RD_GO READ NEXT 64 BYTES
	OUT COMMAND_PORT, AL			;OUT COMMAND PORT
	JMP .READ_SECTOR				;LOOP UNTIL DONE
		
.NOT_1D:							; DEBUG FEATURE: DISPLAY ERROR MESSAGE
	CALL WIRTE_AL_INT10_E			; PRINTS ERROR NUMBER TO SCREEN
	PUSH AX
	PUSH DS
	MOV AX, CS						; GET CS 
	MOV DS, AX						; SET DS TO CS
	MOV AH, 0X0E					; FOR TELOTYPE
	MOV CX, .END_READ_ERROR_MESSAGE - .READ_ERROR_MESSAGE
	MOV BX, .READ_ERROR_MESSAGE	
	.LOOP_NOT_1D:
	MOV AL, [BX]					;GET BYTE 
	INT 0X10						;PRINT TO SCREEN
	INC BX							;INC BX
	LOOP .LOOP_NOT_1D				;LOOP UNTIL DONE
	POP DS
	POP AX
	JMP .READ_DISK_ERROR

	.READ_ERROR_MESSAGE:
	DB 0X0D, 0X0A, 'USB READ ERROR READING DISC', 0X0D, 0X0A
	.END_READ_ERROR_MESSAGE:

.READ_DISK_SUCCESS:

	POP AX
	POP DI
	POP ES
	POP DX
	POP CX
	POP BX
	MOV AH, 0X00		;STATUS 0X00 SUCCESSFULL
	CLC					;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG
	
.READ_DISK_ERROR:
	POP DI				; Discard the unwanted copy of AX on stack
	POP DI
	POP ES
	POP DX
	POP CX
	POP BX
	JMP .STATUS_DISK_ERROR



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;WRITE DISK SECTOR(S)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LBA = (C × HPC + H) × SPT + (S − 1)
;MAX NUMBERS C = 0X3FF, H = 0XFF, S = 0X3F
;AH = 03h
;AL = number of sectors to read (must be nonzero)
;CH = low eight bits of cylinder number
;CL = sector number 1-63 (bits 0-5)
;high two bits of cylinder (bits 6-7, hard disk only)
;DH = head number
;DL = drive number (bit 7 set for hard disk)
;ES:BX -> data buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.WRITE_DISK:
	PUSH BX					;
	PUSH CX					;STORE REGISTERS
	PUSH DX					;
	PUSH ES					;
	PUSH DS					; we'll need this for bulk writing
	PUSH SI					; We need this for string operation
	
	PUSH AX					;STORE AX / AL NUMBER OF SECTORS
	PUSH AX					;STORE AX / AL NUMBER OF SECTORS
	
	CALL CONVERT_CHS_TO_LBA

	PUSH DX					;STORE LBA UPPER
	PUSH AX					;STORE LBA LOWER

	MOV AL, CH376S_DISK_WRITE	;DISK_WRITE
	OUT COMMAND_PORT, AL		;OUT COMMAND PORT


	POP AX						;GET LOWER LBA
	OUT DATA_PORT, AL			;OUT DATA PORT


	MOV AL, AH					;NEXT BYTE
	OUT DATA_PORT, AL			;OUT DATA PORT


	POP AX						;GET UPPER LBA
	OUT DATA_PORT, AL			;OUT DATA PORT

	MOV AL, AH					;NEXT BYTE
	OUT DATA_PORT, AL			;OUT DATA PORT

	POP AX						;GET NUMBER OF SECTORS
	OUT DATA_PORT, AL			;OUT DATA PORT
	MOV AX, ES					; While the BIOS spec has the package at ES:BX
	MOV DS, AX					; REP OUTSB transfers from DS:BX
	
.WRITE_SECTOR:
	CALL AWAIT_INTERRUPT
	MOV AL, CH376S_GET_STATUS			;GET_STATUS
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT
	IN AL, DATA_PORT					;READ IN STATUS DATA PORT
	CMP AL, CH376S_USB_INT_SUCCESS		;CHECK FOR USB_INT_SUCCESS COMPLETED WRITING
	JE .WRITE_DISK_SUCCESS				;IF USB_INT_SUCCESS
	CMP AL, CH376S_USB_INT_DISK_WRITE	;COMPARE TO USB_INT_DISK_WRITE
%if DISPLAY_CH376S_ERRORS = 1
	JNE .NOT_1E			;IF NOT USB_INT_DISK_WRITE
%else
	JNE .WRITE_DISK_ERROR
%endif	
	MOV AL, CH376S_WR_USB_DATA			;COMMAND WR_HOST_DATA
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT
	MOV AL, 0X40
	OUT DATA_PORT, AL					;WRITE NUMBER OF BYTES TO PORT
	MOV AH, 0X00						;CLEAR AH
	MOV CX, AX							;SET CX TO NUMBER OF BYTES
 .WRITE_IN_LOOP:		;LOOP LABLE
  	MOV AL, [ES:BX]		;STORE BYTE
	OUT 0XE0, AL			;READ BYTE
	
	INC BX				;INC BX
	LOOP .WRITE_IN_LOOP	;LOOP UNTIL DONE
	MOV AL, CH376S_DISK_WR_GO			;DISK_WR_GO WRITE NEXT 64 BYTES
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT
	JMP .WRITE_SECTOR					;LOOP UNTIL DONE

		
.NOT_1E:							; Version for debugging which displays error text
	CALL WIRTE_AL_INT10_E			;PRINTS ERROR NUMBER TO SCREEN
	PUSH AX
	PUSH DS
	MOV AX, CS						;GET CS 
	MOV DS, AX						;SET DS TO CS
	MOV AH, 0X0E					;FOR TELOTYPE
	MOV CX, .END_WRITE_ERROR_MESSAGE - .WRITE_ERROR_MESSAGE
	MOV BX, .WRITE_ERROR_MESSAGE	
	.LOOP_NOT_1E:
	MOV AL, [BX]					;GET BYTE 
	INT 0X10						;PRINT TO SCREEN
	INC BX							;INC BX
	LOOP .LOOP_NOT_1E				;LOOP UNTIL DONE
	POP DS
	POP AX
	JMP .WRITE_DISK_ERROR

	.WRITE_ERROR_MESSAGE:
	DB 0X0D, 0X0A, 'USB WRITE ERROR', 0X0D, 0X0A
	.END_WRITE_ERROR_MESSAGE:

.WRITE_DISK_SUCCESS:
	POP AX
	POP SI
	POP DS
	POP ES
	POP DX
	POP CX
	POP BX
	MOV AH, 0X00		;STATUS 0X00 SUCCESSFULL
	CLC					;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG
	
.WRITE_DISK_ERROR:
	POP ES				; Discard the unwanted copy of AX on stack
	POP SI
	POP DS
	POP ES
	POP DX
	POP CX
	POP BX
	JMP .STATUS_DISK_ERROR
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;FORMAT A TRACK
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;LBA = (C × HPC + H) × SPT + (S − 1)
;MAX NUMBERS C = 0X3FF, H = 0XFF, S = 0X3F
;AH = 05h
;AL = Interleave value (ignored)
;CH = low eight bits of cylinder number
;CL = Low six bits ignored
;high two bits of cylinder (bits 6-7, hard disk only)
;DH = head number
;DL = drive number (bit 7 set for hard disk)
;ES:BX -> data buffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.FORMAT_TRACK:
	PUSH BX					;
	PUSH CX					;STORE REGISTERS
	PUSH DX					;

	AND CL, 0b11000000		;Remove the "sector" part of CX (ignored) and
	OR CL, 1				;treat it as "Sector 1", and
	CALL CONVERT_CHS_TO_LBA	;the CHS->LBA formula will get us the first block of the track

	PUSH DX					;STORE LBA UPPER
	PUSH AX					;STORE LBA LOWER

	MOV AL, CH376S_DISK_WRITE	;DISK_WRITE
	OUT COMMAND_PORT, AL		;OUT COMMAND PORT

	POP AX						;GET LOWER LBA
	OUT DATA_PORT, AL			;OUT DATA PORT
	MOV AL, AH					;NEXT BYTE
	OUT DATA_PORT, AL			;OUT DATA PORT
	POP AX						;GET UPPER LBA
	OUT DATA_PORT, AL			;OUT DATA PORT
	MOV AL, AH					;NEXT BYTE
	OUT DATA_PORT, AL			;OUT DATA PORT
	MOV AL, MAX_SPT				;ALWAYS DO MAX SECTORS IN A TRACK
	OUT DATA_PORT, AL			;OUT DATA PORT
	
.FORMAT_SECTOR:
	CALL AWAIT_INTERRUPT
	MOV AL, CH376S_GET_STATUS			;GET_STATUS
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT
	IN AL, DATA_PORT					;READ IN STATUS DATA PORT
	CMP AL, CH376S_USB_INT_SUCCESS		;CHECK FOR USB_INT_SUCCESS COMPLETED WRITING
	JE .FORMAT_DISK_SUCCESS				;IF USB_INT_SUCCESS
	CMP AL, CH376S_USB_INT_DISK_WRITE	;COMPARE TO USB_INT_DISK_WRITE
%if DISPLAY_CH376S_ERRORS = 1
	JNE .NOT_1E_FORMAT  				;IF NOT USB_INT_DISK_WRITE
%else
	JNE .FORMAT_DISK_ERROR
%endif
	MOV AL, CH376S_WR_USB_DATA			;COMMAND WR_HOST_DATA
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT
	MOV AL, 0X40
	OUT DATA_PORT, AL					;WRITE NUMBER OF BYTES TO PORT
	MOV AH, 0X00						;CLEAR AH
	MOV CX, AX							;SET CX TO NUMBER OF BYTES
	MOV AL, 00h
.FORMAT_BYTE:
	OUT DATA_PORT, AL
	LOOP .FORMAT_BYTE
	MOV AL, CH376S_DISK_WR_GO			;DISK_WR_GO READ NEXT 64 BYTES
	OUT COMMAND_PORT, AL				;OUT COMMAND PORT
	JMP .FORMAT_SECTOR					;LOOP UNTIL DONE

		
.NOT_1E_FORMAT:						; Debug version that displays error
	CALL WIRTE_AL_INT10_E			;PRINTS ERROR NUMBER TO SCREEN
	PUSH AX
	PUSH DS
	MOV AX, CS						;GET CS 
	MOV DS, AX						;SET DS TO CS
	MOV AH, 0X0E					;FOR TELOTYPE
	MOV CX, .END_FORMAT_ERROR_MESSAGE - .FORMAT_ERROR_MESSAGE
	MOV BX, .FORMAT_ERROR_MESSAGE	
	.LOOP_NOT_1E_FORMAT:
	MOV AL, [BX]					;GET BYTE 
	INT 0X10						;PRINT TO SCREEN
	INC BX							;INC BX
	LOOP .LOOP_NOT_1E_FORMAT				;LOOP UNTIL DONE
	POP DS
	POP AX
	JMP .FORMAT_DISK_ERROR

	.FORMAT_ERROR_MESSAGE:
	DB 0X0D, 0X0A, 'USB FORMAT ERROR', 0X0D, 0X0A
	.END_FORMAT_ERROR_MESSAGE:

.FORMAT_DISK_SUCCESS:
	POP DX
	POP CX
	POP BX
	MOV AH, 0X00		;STATUS 0X00 SUCCESSFULL
	CLC					;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG
	
.FORMAT_DISK_ERROR:
	POP DX
	POP CX
	POP BX
	JMP .STATUS_DISK_ERROR




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;GET PARAMETERS	0X08
;RETURNS
;AH=STATUS 0X00 IS GOOD
;BL=DOES NOT APPLY 
;CH=CYLINDERS
;CL=0-5 SECTORS PER TRACK 6-7 UPPER 2 BITS CYLINDER
;DH=NUMBER OF HEADS / SIDES -1
;DL=NUMBER OF DRIVES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
.PARAMETERS:
	PUSH AX					;STORE AX
	PUSH BX					;STORE BX
	
	CALL GET_CAPACITY
	; DX:AX now has sector count

	CMP AX, 0
	JNE .HAS_PARAMS
	CMP DX, 0
	JNE .HAS_PARAMS
	JMP .PARAMETERS_NOT_P

.HAS_PARAMS:
	; If we exceed (MAX_SPT * MAX_HPC * MAX_CYL)
	; just identify as the max amount
	CMP DX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	JL .SAFE_PARAMS
	CMP DX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	JG .USE_MAX_PARAMS
	CMP AX, (MAX_SPT * MAX_HPC * MAX_CYL) % 65536
	JLE .SAFE_PARAMS

.USE_MAX_PARAMS:
	MOV DX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	MOV AX, (MAX_SPT * MAX_HPC * MAX_CYL) % 65536

.SAFE_PARAMS:
	MOV CX, (MAX_SPT * MAX_HPC)
				     		
							; The cylinders and heads seem to be "maximum"
							; so on 1024 cylinders, 1023 is max
							; 16 heads, 15 is max
							; but 63 sectors per track the right answer is actually 63
	DIV CX					;DIV DX:AX / CX
	MOV DX, 0X0000			;CLEAR DX JUST IN CASE THERE SHOULD NOT BE A REMANDER 
	SUB AX, 1				; Max cylinder is number of cylinders minus one
	MOV CH, AL				;CH=0-7 CYLINDERS
    SHL AH, 1
    SHL AH, 1
    SHL AH, 1
    SHL AH, 1
    SHL AH, 1
    SHL AH, 1
	MOV CL, MAX_SPT			;SECTORS PER TRACK
	AND CL, 0X3F			;CLEAR BITS 7-6
	ADD CL, AH				;ADD IN 8-9 BITS CYLINDER
	MOV DH, MAX_HPC - 1		;NUMBER OF HEADS / SIDES
	MOV DL, 0X01			;NUMBER OF DRIVES
	JMP .END_PARAMETERS

.END_PARAMETERS:

	POP BX				;RESTORE BX
	POP AX				;RESTORE AX
	
	MOV AH, 0X00		;STATUS 0X00 SUCCESSFULL
	CLC					;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG
	
.PARAMETERS_NOT_P:
	
	POP BX				;RESTORE BX
	POP AX				;RESTORE AX
	
	MOV AH, 0X01		;STATUS 0X01 UNSUCCESSFULL
	STC 				;SET CARRY FLAG	
	JMP .INT13_END_WITH_CARRY_FLAG

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;GET DISK TYPE	0X15
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.GET_DISK_TYPE:
	PUSH BX						;STORE BX
	PUSH AX
	
	CALL GET_CAPACITY
	; DX:AX now has sector count - move to where the output wants it.
	MOV CX, DX
	MOV DX, AX
	; CX:DX now has the sector count

	CMP CX, 0
	JNE .HAS_DISK_TYPE_PARAMS
	CMP DX, 0
	JNE .HAS_DISK_TYPE_PARAMS
	JMP .GET_DISK_TYPE_NOT_P

.HAS_DISK_TYPE_PARAMS:
	; If we exceed 0xFAC53F sectors (MAX_SPT * MAX_HPC * MAX_CYL)
	; just identify as FAC53F
	CMP CX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	JL .SAFE_DISK_TYPE_PARAMS
	CMP CX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	JG .USE_MAX_DISK_TYPE_PARAMS
	CMP DX, (MAX_SPT * MAX_HPC * MAX_CYL) % 65536
	JLE .SAFE_DISK_TYPE_PARAMS

.USE_MAX_DISK_TYPE_PARAMS:
	MOV CX, (MAX_SPT * MAX_HPC * MAX_CYL) / 65536
	MOV DX, (MAX_SPT * MAX_HPC * MAX_CYL) % 65536

.SAFE_DISK_TYPE_PARAMS:
	MOV AX, 0X0300			;AH=0X03 FIXED DISK AL=RETURN 0X00
	JMP .END_GET_DISK_TYPE	;END
	
.GET_DISK_TYPE_NOT_P:
	MOV AX, 0X0000			;AH=0X00 WHEN NOT PRESENT 
	JMP .END_GET_DISK_TYPE
	
.END_GET_DISK_TYPE:

	POP AX
	POP BX					;RESTORE BX
	CLC						;CLEAR CARRY FLAG SUCCESFUL	
	JMP .INT13_END_WITH_CARRY_FLAG


	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;END INT 0X13 WITH UPDATED CARRY FLAG		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  .INT13_END_WITH_CARRY_FLAG:	;THIS IS HOW I RETURN THE CARRY FLAG
	PUSH AX						;STORE AX
	PUSHF						;STORE FLAGS
	POP AX						;GET AX = FLAGS
	PUSH BP						;STORE BP
	MOV BP, SP              	;Copy SP to BP for use as index
	ADD BP, 0X08				;offset 8
	AND WORD [BP], 0XFFFE		;CLEAR CF = ZER0
	AND AX, 0X0001				;ONLY CF 
	OR	WORD [BP], AX			;SET CF AX
	POP BP               		;RESTORE BASE POINTER
	POP AX						;RESTORE AX	
	IRET						;RETRUN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; WHEN REQUEST IS NOT A VALID DRIVE NUMBER
; INVOKE OLD BIOS VECTOR AND RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.NOT_A_DRIVE:
  	POPF ; we want the flags we stored before the original compare
	INT 0x40
	PUSH BP
	MOV BP,SP
	PUSHF
	POP WORD [SS:BP+6]
	POP BP
	IRET

WAIT_2:
	PUSH CX
	MOV CX, 0xFFFF		; 65536 runs = ~300k cycles = 40ms
DELAY: LOOP DELAY
	MOV CX, 0xFFFF		; 65536 runs = ~300k cycles = 40ms
DELAY2: LOOP DELAY2
	POP CX
	RET

WAIT_8:
	PUSH CX
	MOV CX, 8
  .LOOP1A:
	PUSH CX
	MOV CX, 0XFFFF
  .LOOP2A:
	LOOP .LOOP2A
	POP CX
	LOOP .LOOP1A
	POP CX
	RET
		
;;;;;;;;;;;;;;;;;;;;;;;
;WRITE TO SCREEN;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;
WIRTE_AL_INT10_E:

	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX

	MOV BL, AL

	MOV DH, AL
	MOV CL, 0X04
	SHR DH, CL

	MOV AL, DH
	AND AL, 0X0F
	CMP AL, 0X09
	JA LETTER_HIGH

	ADD AL, 0X30
	JMP PRINT_VALUE_HIGH

	LETTER_HIGH:
	ADD AL, 0X37

	PRINT_VALUE_HIGH:
	MOV AH, 0X0E
	INT 0X10

	MOV AL, BL
	AND AL, 0X0F
	CMP AL, 0X09
	JA LETTER_LOW

	ADD AL, 0X30
	JMP PRINT_VALUE_LOW

	LETTER_LOW:
	ADD AL, 0X37

	PRINT_VALUE_LOW:
	MOV AH, 0X0E
	INT 0X10

	POP DX
	POP CX
	POP BX
	POP AX

	RET


WRITE_SECTORS_IN_MB:
	; Assumes sectors in DX:ax
	; Likely to get confused on devices over 64Gb as the first div below
	; overflows.
	PUSH AX
	PUSH CX
	PUSH DX
	PUSH BX
	XOR BX, BX
	CMP DX, 2048 ; 2048 x 10000h + sectors will overflow the DIV
	JL CONVERT_TO_MB_GB
	MOV BL, 1 ; FLAG TO USE GB
	MOV AX, DX
	MOV DX, 0
			  ; Instead of dividing sectors (512 bytes) by 2048 to get MB
			  ; Divide 10000h-sectors (32Mb units) by 32 to get GB
	SHR AX,1	  ; This remains 8088 version because it's not performance critical
	SHR AX,1
	SHR AX,1
	SHR AX,1
	SHR AX,1
	JMP CONVERT_TO_DECIMAL


CONVERT_TO_MB_GB:
	MOV CX, 2048
	DIV CX

CONVERT_TO_DECIMAL:
	MOV DX, 0 ; Divide by 10000, take the digit and convert to ASCII, and print
	MOV CX, 10000
	DIV CX
	MOV AH, 0x0E
	OR AL, 0x30
	INT 0x10


	MOV AX, DX	  ;  Take remainder, divide by 1000, repeat
	mov DX, 0
	MOV CX, 1000
	DIV CX
	MOV AH, 0x0E
	OR AL, 0x30
	INT 0x10

	MOV AX, DX	  ;  Take remainder, divide by 100, repeat
	MOV DX, 0
	MOV CX, 100
	DIV CX
	MOV AH, 0x0E
	OR AL, 0x30
	INT 0x10

	MOV AX, DX
	MOV DX, 0
	MOV CX, 10	  ;  Take remainder, divide by 10, repeat
	DIV CX
	MOV AH, 0x0E
	OR AL, 0x30
	INT 0x10

	MOV AH, 0x0E
	MOV AL, DL	  ; Last remainder is a single digit.
	OR AL, 0x30
	INT 0x10
	CMP BL, 1
	JNE DISPLAY_M
	MOV AX, 0E47H	; Display "G"
	INT 0x10
	JMP LEAVE_SECTOR_DISPLAY
DISPLAY_M:
	MOV AX, 0E4DH    ; Display "M"
	INT 0x10
	

LEAVE_SECTOR_DISPLAY:
 
	POP BX
	POP DX
	POP CX
	POP AX
	RET

OVERSIZE_MESSAGE:
	DB 0x0D, 0x0A, '**** NOTE: Device exceeds 504M limit and will be presented as 504M ****'
END_OVERSIZE_MESSAGE:

BELOW_TABLE_SIZE_MESSAGE:
	DB 0x0D, 0x0A, '**** Device smaller than ROM parameter table.  Suggested cylinder count: 0x'
END_BELOW_TABLE_SIZE_MESSAGE:

AWAIT_INTERRUPT:
	PUSH AX
INTERRUPT_LOOP:
	IN AL, COMMAND_PORT				; Loop waiting for the interrupt
	AND AL, 0x80
	JNZ INTERRUPT_LOOP
	POP AX
	RET

; Expects CX to have cylinder/sector and DH to have head number
; Leaves sector count in DX:AX

CONVERT_CHS_TO_LBA:
	PUSH CX					;STORE CX / SECTOR NUMBER
	PUSH DX					;STORE DX / DH HEAD NUMBER

	MOV AL, CH				;GET LOWER CYLINDER NUMBER
	SHR CL, 0X01			;SHIFT RIGHT 6 TIMES FOR UPPER 2 BITS CYLINDER
	SHR CL, 0X01			;
	SHR CL, 0X01			;
	SHR CL, 0X01			;	
	SHR CL, 0X01			;
	SHR CL, 0X01			;

	MOV AH, CL				;AX HOLDS CYLINDER NUMBER			;
	MOV CX, MAX_HPC			;NUMBER OF HEADS / SIDES (HPC)
	MUL CX					;AX = C X HPC
	POP CX					;GET HEAD NUMBER
	MOV CL, CH				;MOV HEAD NUMBER
	MOV CH, 0X00			;CLEAR CH
	ADD AX, CX				;ADD IN HEAD (C X HPC + H)
	MOV CX, MAX_SPT			;SECTORS PER TRACK	
	MUL CX					;DX:AX (C X HPC + H) X SPT
	POP CX					;GET SECTOR NUMBER
	AND CX, 0X003F			;CLEAR OUT CYLINDER
	DEC CX					;(S - 1)
	ADD AX, CX				;LBA = (C × HPC + H) × SPT + (S − 1)
	ADC DX, 0X00			;IF THERE IS A CARRY POSIBLE I DONT KNOW
	RET

; Does the CH376S lookup and reads sector count into DX:AX
GET_CAPACITY:
	PUSH BX
 	MOV AL, CH376S_DISK_CAPACITY	; Get Disc Capacity
    OUT COMMAND_PORT, AL

	CALL AWAIT_INTERRUPT

	MOV AL, CH376S_RD_USB_DATA0 	; Read device data
    OUT COMMAND_PORT, AL
	IN AL, DATA_PORT    			; count- should be four bytes
    IN AL, DATA_PORT    			; lowest byte
	mov BL, AL
	IN AL, DATA_PORT    			; second lowest
	MOV BH, AL
	PUSH BX
	IN AL, DATA_PORT				; third
	MOV BL, AL
	IN AL, DATA_PORT				; fourth
	MOV BH, AL
	PUSH BX

	POP DX							; DX:AX now contains sector count.
	POP AX
	POP BX
	RET

END_OF_LINE:
	PUSH AX
	MOV AX, 0x0E0D		; Print a newline
    INT 0x10
    MOV AL, 0x0A		; and line feed
    INT 0x10
	POP AX
	RET;


; This is a cheat:  We put in the disc as the maximum specs we support, if anyone reads this vector
; it assumes a 504Mb drive.  Given that even dirt-cheap bulk drives are multiple gigabytes and we ignore most of it
; people using actual small drives may want to edit this to match the actual cylinder count.
; Since this is just a passive storage in memory, unlike int 0x13, function 8, we can't just calculate it on the fly
; unless we wanted to write it into RAM on boot.  We could locate it somewhere in the F0000 block but then we lose the
; "doesn't need to reserve any RAM for housekeeping" factor
DISK_1_TABLE:
	dw MAX_CYL  ; Cylinders
	dw MAX_HPC  ; Heads
	dw 0        ; Starts reduced write current cylinder
	dw 0		; Write precomp cylinder number
	db 0		; Max ECC Burst Length
	db 40h		; Control byte: Disable ECC retries, leave access retries, drive step speed 3ms
	db 0		; Standard Timeout
	db 0		; Formatting Timeout
	dw 0		; Landing Zone
	db MAX_SPT	; Sectors per track
	db 0		; reserved

DISK_2_TABLE:
	dw 0		; Cylinders
	dw 0  		; Heads
	dw 0        ; Starts reduced write current cylinder
	dw 0		; Write precomp cylinder number
	db 0		; Max ECC Burst Length
	db 00h		; Control byte: Disable ECC retries, leave access retries, drive step speed 3ms
	db 0		; Standard Timeout
	db 0		; Formatting Timeout
	dw 0		; Landing Zone
	db 0		; Sectors per track
	db 0		; reserved
