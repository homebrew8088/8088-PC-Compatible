## This BIOS is for the 80188 with a CGA card

This is my basic BIOS adjusted for the 80188.\
For my project the only setup code needed for the 80188 processor is.

<pre>
MOV DX, 0XFFFE     ;Set DX to the Relocation Register\
MOV AX, 0X40FF     ;Set AX to the new value\
OUT DX, AX         ;OUT to port 0XFFFE
</pre>

This sets the internal interrupt controller as the slave making the external interrupt controller the master.

IO PORT 0XFFFE
Bit 15 |Bit 14       |Bit 13 |Bit 12       |Bit 11 - Bit 0 
-------|-------------|-------|-------------|-------
X 	   |Slave/Master |X      |M/IO         |Relocation Address 
0      |1 = S, 0 = M |0      |1 = M, 0 = IO|12 Bits if Mem Address, 8 Bits if IO Address

