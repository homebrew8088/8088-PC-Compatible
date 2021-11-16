mov al, 0x80
out 0x03, al
mov al, 0xaa
out 0x02, al
mov al, 0xaa
out 0x01, al
mov al, 0xaa
out 0x00, al
jmp 0xf800:0x0000








MOV DX,  0X0443
MOV AL, 0X80
OUT DX, AL
MOV AL, 0X55
MOV DX,  0X0440
OUT DX, AL
MOV DX,  0X0441
OUT DX, AL
MOV DX,  0X0442
OUT DX, AL
JMP 0XF800:0000

