[BITS 16]
CPU 8086
ORG 0X0100

START:
	MOV AL, 0X03
	OUT 0X0D, AL			; DMA Master Clear register - reset DMA

	MOV AL, 0X40			; single mode, verify, channel 0
	OUT 0X0B, AL			; DMA Mode register
	MOV AL, 0X59			; channel 1 SINGLE, READ?? MEM->IO, AUTO INITIAL
	OUT 0X0B, AL			; DMA Mode register
	MOV AL, 0X42			; single mode, verify, channel 2
	OUT 0X0B, AL			; DMA Mode register
	MOV AL, 0XCB			; CASCADE mode, verify, channel 3 ?? CHECKS HOLD FUNCTION
	OUT 0X0B, AL 			; DMA Mode register
 	MOV AL, 0X00			; DMA Command register bits:
 				; DACK active low, DREQ active high,
 				; late write, fixed priority,
 				; normal timing, controller enable
 				; channel 0 addr hold disable
 				; memory to memory disable
 	OUT 0X08, AL			; DMA Command register
	OUT 0X81, AL			; DMA Page, channel 2
 	OUT 0X82, AL			; DMA Page, channel 3
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				;SET UP CHANNEL 1			
	MOV AL, 0XFF			;
	OUT 0X0C, AL			;RESET FLIP-FLOP
	MOV AL, 0X60			;LOW BYTE ADDRESS 
	OUT 0X02, AL			;
	MOV AL, 0X01			;HIGH BYTE
	OUT 0X02, AL			;

	MOV AL, 0XFF			;
	OUT 0X0C, AL			;RESET FLIP-FLOP
	MOV AL, 0X00			;LOW COUNT BYTE -1
	OUT 0X03, AL			;
	MOV AL, 0X00			;HIGH BYTE
	OUT 0X03, AL

	MOV AL, 0X07			;PAGE 0X0# ADDRESS 0X#0000
 	OUT 0X83, AL			; DMA Page, channels 0,1
				;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	MOV AL, 0X01
	OUT 0X0A, AL			; unmask DMA channel 1
	MOV AL, 0X03
	OUT 0X0A, AL			; unmask DMA channel 3

	RET
