EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 20000 15000
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 16950 4625 2    50   ~ 0
IORD
Text Label 16950 4525 2    50   ~ 0
IOWR
Text Label 16950 4425 2    50   ~ 0
MRD
Text Label 16950 4325 2    50   ~ 0
MWR
Text Label 16950 4225 2    50   ~ 0
GND
Text Label 16950 4125 2    50   ~ 0
12+
Text Label 16950 3925 2    50   ~ 0
12-
Text Label 16950 3825 2    50   ~ 0
DRQ2
Text Label 16950 3725 2    50   ~ 0
5-
Text Label 16950 3625 2    50   ~ 0
IRQ2
Text Label 16950 3525 2    50   ~ 0
5+
Text Label 16950 3425 2    50   ~ 0
RESOUT
Text Label 16950 3325 2    50   ~ 0
GND
Text Label 16950 4725 2    50   ~ 0
DACK3
Text Label 16950 4825 2    50   ~ 0
DRQ3
Text Label 16950 4925 2    50   ~ 0
DACK1
Text Label 16950 5025 2    50   ~ 0
DRQ1
Text Label 16950 5125 2    50   ~ 0
REFRQ
Text Label 16950 5225 2    50   ~ 0
CLK88
Text Label 16950 5325 2    50   ~ 0
IRQ7
Text Label 16950 5425 2    50   ~ 0
IRQ6
Text Label 16950 5525 2    50   ~ 0
IRQ5
Text Label 16950 5625 2    50   ~ 0
IRQ4
Text Label 16950 5725 2    50   ~ 0
IRQ3
Text Label 16950 5825 2    50   ~ 0
DACK2
Text Label 16950 5925 2    50   ~ 0
TC
Text Label 16950 6025 2    50   ~ 0
ALE
Text Label 16950 6125 2    50   ~ 0
5+
Text Label 18350 3425 0    50   ~ 0
D7
Text Label 18350 3525 0    50   ~ 0
D6
Text Label 18350 3625 0    50   ~ 0
D5
Text Label 18350 3725 0    50   ~ 0
D4
Text Label 18350 3825 0    50   ~ 0
D3
Text Label 18350 3925 0    50   ~ 0
D2
Text Label 18350 4025 0    50   ~ 0
D1
Text Label 18350 4125 0    50   ~ 0
D0
Text Label 18350 4225 0    50   ~ 0
RDY1
Text Label 18350 4325 0    50   ~ 0
AEN
Text Label 18350 4425 0    50   ~ 0
A19
Text Label 18350 4525 0    50   ~ 0
A18
Text Label 18350 4625 0    50   ~ 0
A17
Text Label 18350 4725 0    50   ~ 0
A16
Text Label 18350 4825 0    50   ~ 0
A15
Text Label 18350 4925 0    50   ~ 0
A14
Text Label 18350 5025 0    50   ~ 0
A13
Text Label 18350 5125 0    50   ~ 0
A12
Text Label 18350 5225 0    50   ~ 0
A11
Text Label 18350 5325 0    50   ~ 0
A10
Text Label 18350 5425 0    50   ~ 0
A9
Text Label 18350 5525 0    50   ~ 0
A8
Text Label 18350 5625 0    50   ~ 0
A7
Text Label 18350 5725 0    50   ~ 0
A6
Text Label 18350 5825 0    50   ~ 0
A5
Text Label 18350 5925 0    50   ~ 0
A4
Text Label 18350 6025 0    50   ~ 0
A3
Text Label 18350 6125 0    50   ~ 0
A2
Text Label 18350 6225 0    50   ~ 0
A1
Text Label 18350 3325 0    50   ~ 0
CH_CK
Text Label 6625 1825 0    50   ~ 0
GND
Text Label 6125 1825 2    50   ~ 0
5+
Text Label 16950 4025 2    50   ~ 0
NC
Text Label 16950 6225 2    50   ~ 0
OSC88
Text Label 18350 6325 0    50   ~ 0
A0
Text Label 16950 6325 2    50   ~ 0
GND
$Comp
L Connector:Bus_ISA_8bit J9
U 1 1 6082C528
P 17650 4825
F 0 "J9" H 17650 6592 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 17650 6501 50  0001 C CNN
F 2 "My:BUS_8_BIT" H 17650 4825 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 17650 4825 50  0001 C CNN
	1    17650 4825
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C1
U 1 1 6086EA25
P 6375 1825
F 0 "C1" V 6060 1825 50  0000 C CNN
F 1 "0.1uF" V 6151 1825 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6375 1825 50  0001 C CNN
F 3 "~" H 6375 1825 50  0001 C CNN
	1    6375 1825
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 610632BC
P 12075 3450
F 0 "U2" H 12075 4431 50  0000 C CNN
F 1 "74LS573" H 12075 4340 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 12075 3450 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 12075 3450 50  0001 C CNN
	1    12075 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS573 U3
U 1 1 610661C4
P 12050 5925
F 0 "U3" H 12050 6906 50  0000 C CNN
F 1 "74LS573" H 12050 6815 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 12050 5925 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 12050 5925 50  0001 C CNN
	1    12050 5925
	1    0    0    -1  
$EndComp
Text Label 12575 2950 0    50   ~ 0
A19
Text Label 12575 3050 0    50   ~ 0
A18
Text Label 12575 3150 0    50   ~ 0
A17
Text Label 12575 3250 0    50   ~ 0
A16
Text Label 12550 5425 0    50   ~ 0
A7
Text Label 12550 5525 0    50   ~ 0
A6
Text Label 12550 5625 0    50   ~ 0
A5
Text Label 12550 5725 0    50   ~ 0
A4
Text Label 12550 5825 0    50   ~ 0
A3
Text Label 12550 5925 0    50   ~ 0
A2
Text Label 12550 6025 0    50   ~ 0
A1
Text Label 12550 6125 0    50   ~ 0
A0
Text Label 11575 3250 2    50   ~ 0
A16_
Text Label 11575 3150 2    50   ~ 0
A17_
Text Label 11575 3050 2    50   ~ 0
A18_
Text Label 11575 2950 2    50   ~ 0
A19_
Text Label 12075 2650 0    50   ~ 0
5+
Text Label 12075 4250 0    50   ~ 0
GND
Text Label 12050 5125 0    50   ~ 0
5+
Text Label 12050 6725 0    50   ~ 0
GND
Text Label 8450 4525 0    50   ~ 0
A16_
Text Label 8450 4625 0    50   ~ 0
A17_
Text Label 8450 4725 0    50   ~ 0
A18_
Text Label 8450 4825 0    50   ~ 0
A19_
Text Label 12175 4800 0    50   ~ 0
GND
Text Label 11675 4800 2    50   ~ 0
5+
$Comp
L pspice:CAP C3
U 1 1 6106B923
P 11925 4800
F 0 "C3" V 11610 4800 50  0000 C CNN
F 1 "0.1uF" V 11701 4800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 11925 4800 50  0001 C CNN
F 3 "~" H 11925 4800 50  0001 C CNN
	1    11925 4800
	0    1    1    0   
$EndComp
Text Label 12350 7225 0    50   ~ 0
GND
Text Label 11850 7225 2    50   ~ 0
5+
$Comp
L pspice:CAP C4
U 1 1 6106BA7C
P 12100 7225
F 0 "C4" V 11785 7225 50  0000 C CNN
F 1 "0.1uF" V 11876 7225 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12100 7225 50  0001 C CNN
F 3 "~" H 12100 7225 50  0001 C CNN
	1    12100 7225
	0    1    1    0   
$EndComp
Text Label 12125 2475 0    50   ~ 0
GND
Text Label 11625 2475 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 6106C0FE
P 11875 2475
F 0 "C2" V 11560 2475 50  0000 C CNN
F 1 "0.1uF" V 11651 2475 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 11875 2475 50  0001 C CNN
F 3 "~" H 11875 2475 50  0001 C CNN
	1    11875 2475
	0    1    1    0   
$EndComp
Text Label 11550 5425 2    50   ~ 0
AD7
Text Label 11550 5525 2    50   ~ 0
AD6
Text Label 11550 5625 2    50   ~ 0
AD5
Text Label 11550 5725 2    50   ~ 0
AD4
Text Label 11550 5825 2    50   ~ 0
AD3
Text Label 11550 5925 2    50   ~ 0
AD2
Text Label 11550 6025 2    50   ~ 0
AD1
Text Label 11550 6125 2    50   ~ 0
AD0
Text Label 11575 7750 2    50   ~ 0
AD7
Text Label 11575 7850 2    50   ~ 0
AD6
Text Label 11575 7950 2    50   ~ 0
AD5
Text Label 11575 8050 2    50   ~ 0
AD4
Text Label 11575 8150 2    50   ~ 0
AD3
Text Label 11575 8250 2    50   ~ 0
AD2
Text Label 11575 8350 2    50   ~ 0
AD1
Text Label 11575 8450 2    50   ~ 0
AD0
Text Label 12575 8450 0    50   ~ 0
D0
Text Label 12575 8350 0    50   ~ 0
D1
Text Label 12575 8250 0    50   ~ 0
D2
Text Label 12575 8150 0    50   ~ 0
D3
Text Label 12575 8050 0    50   ~ 0
D4
Text Label 12575 7950 0    50   ~ 0
D5
Text Label 12575 7850 0    50   ~ 0
D6
Text Label 12575 7750 0    50   ~ 0
D7
Text Label 12075 7450 2    50   ~ 0
5+
Text Label 12075 9050 0    50   ~ 0
GND
Text Label 11550 6325 2    50   ~ 0
ALE
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J1
U 1 1 6106BEE1
P 17625 7575
F 0 "J1" H 17675 8092 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 17675 8001 50  0000 C CNN
F 2 "My:16_EDGE_CARD_BUS" H 17625 7575 50  0001 C CNN
F 3 "~" H 17625 7575 50  0001 C CNN
	1    17625 7575
	1    0    0    -1  
$EndComp
Text Label 17425 7275 2    50   ~ 0
IRQ1
Text Label 17425 7375 2    50   ~ 0
IO_000X
Text Label 17425 7475 2    50   ~ 0
IO_002X
Text Label 17425 7575 2    50   ~ 0
IO_004X
Text Label 17425 7675 2    50   ~ 0
IO_006X
Text Label 17425 7775 2    50   ~ 0
IO_008X
Text Label 17425 7975 2    50   ~ 0
NMI
Text Label 17925 7975 0    50   ~ 0
SPK_OUT
Text Label 17925 7875 0    50   ~ 0
SPK_GO
Text Label 17925 7775 0    50   ~ 0
HF_PCLK
Text Label 17925 7675 0    50   ~ 0
DRQ0
Text Label 17925 7575 0    50   ~ 0
HOLDA
Text Label 17925 7475 0    50   ~ 0
HOLD
Text Label 17925 7375 0    50   ~ 0
READY
Text Label 17925 7275 0    50   ~ 0
RESET
Text Label 7050 3525 2    50   ~ 0
HOLDA
Text Label 7050 3725 2    50   ~ 0
HOLD
Text Label 12550 11200 0    50   ~ 0
IORD
Text Label 12550 10900 0    50   ~ 0
MRD
Text Label 12550 11800 0    50   ~ 0
MWR
Text Label 12550 11500 0    50   ~ 0
IOWR
Text Label 8450 2325 0    50   ~ 0
DTR
Text Label 8450 2425 0    50   ~ 0
DEN
Text Label 11575 8750 2    50   ~ 0
DEN
Text Label 11575 8650 2    50   ~ 0
DTR
Text Label 11550 6425 2    50   ~ 0
HOLDA
Text Label 11575 3950 2    50   ~ 0
HOLDA
Text Label 11575 3850 2    50   ~ 0
ALE
Text Label 2800 3900 0    50   ~ 0
X1
Text Label 2800 4100 0    50   ~ 0
X2
Text Label 8450 2525 0    50   ~ 0
ALE
Text Label 11200 9100 2    50   ~ 0
5+
Text Label 11500 9100 0    50   ~ 0
DEN
$Comp
L Device:R R5
U 1 1 61072939
P 11350 9100
F 0 "R5" V 11143 9100 50  0000 C CNN
F 1 "10K ohm" V 11234 9100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11280 9100 50  0001 C CNN
F 3 "~" H 11350 9100 50  0001 C CNN
	1    11350 9100
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U4
U 1 1 61063CD3
P 12075 8250
F 0 "U4" H 12075 9231 50  0000 C CNN
F 1 "74LS245" H 12075 9140 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 12075 8250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 12075 8250 50  0001 C CNN
	1    12075 8250
	1    0    0    -1  
$EndComp
Text Label 7050 4125 2    50   ~ 0
GND
Text Label 8375 11200 0    50   ~ 0
SPK_GO
Text Label 8375 11100 0    50   ~ 0
HF_PCLK
Text Label 8375 11300 0    50   ~ 0
SPK_OUT
Text Label 8375 6925 0    50   ~ 0
IRQ7
Text Label 8375 7025 0    50   ~ 0
IRQ6
Text Label 8375 7125 0    50   ~ 0
IRQ5
Text Label 8375 7225 0    50   ~ 0
IRQ4
Text Label 8375 7425 0    50   ~ 0
IRQ2
Text Label 8375 7325 0    50   ~ 0
IRQ3
Text Label 8375 7525 0    50   ~ 0
IRQ1
$Comp
L Device:Crystal Y1
U 1 1 610DE620
P 2975 4525
F 0 "Y1" H 2975 4257 50  0000 C CNN
F 1 "Crystal" H 2975 4348 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 2975 4525 50  0001 C CNN
F 3 "~" H 2975 4525 50  0001 C CNN
	1    2975 4525
	-1   0    0    1   
$EndComp
Text Label 2825 4525 2    50   ~ 0
X1
Text Label 3125 4525 0    50   ~ 0
X2
$Comp
L Device:R R2
U 1 1 610DFCED
P 3400 4050
F 0 "R2" V 3193 4050 50  0000 C CNN
F 1 "510 ohm" V 3284 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 4050 50  0001 C CNN
F 3 "~" H 3400 4050 50  0001 C CNN
	1    3400 4050
	0    -1   -1   0   
$EndComp
Text Label 3550 3825 0    50   ~ 0
GND
$Comp
L Device:R R3
U 1 1 610DF419
P 3400 3825
F 0 "R3" V 3193 3825 50  0000 C CNN
F 1 "510 ohm" V 3284 3825 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 3825 50  0001 C CNN
F 3 "~" H 3400 3825 50  0001 C CNN
	1    3400 3825
	0    -1   -1   0   
$EndComp
Text Label 3550 4050 0    50   ~ 0
GND
Text Label 3250 3825 2    50   ~ 0
X2
Text Label 3250 4050 2    50   ~ 0
X1
$Comp
L MCU_Intel:8088 U1
U 1 1 6113D842
P 7750 3825
F 0 "U1" H 7750 5806 50  0000 C CNN
F 1 "8088" H 7750 5715 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 7800 3925 50  0001 C CIN
F 3 "http://datasheets.chipdb.org/Intel/x86/808x/datashts/8088/231456-006.pdf" H 7750 3875 50  0001 C CNN
	1    7750 3825
	1    0    0    -1  
$EndComp
$Comp
L Interface:8259 U7
U 1 1 6113F110
P 7775 7725
F 0 "U7" H 7775 9006 50  0000 C CNN
F 1 "8259" H 7775 8915 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 7775 7725 50  0001 C CIN
F 3 "http://pdos.csail.mit.edu/6.828/2005/readings/hardware/8259A.pdf" H 7775 7725 50  0001 C CNN
	1    7775 7725
	1    0    0    -1  
$EndComp
$Comp
L Timer:8253 U8
U 1 1 6114018C
P 7775 10700
F 0 "U8" H 7775 11881 50  0000 C CNN
F 1 "8253" H 7775 11790 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 7825 10950 50  0001 C CNN
F 3 "http://www.cpcwiki.eu/imgs/e/e3/8253.pdf" H 7325 11600 50  0001 C CNN
	1    7775 10700
	1    0    0    -1  
$EndComp
$Comp
L Timer:8284 U6
U 1 1 61142859
P 2100 3500
F 0 "U6" H 2100 4581 50  0000 C CNN
F 1 "8284" H 2100 4490 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 2100 3500 50  0001 C CIN
F 3 "http://www.cpu-galaxy.at/cpu/ram%20rom%20eprom/other_intel_chips/other_intel-Dateien/D8284A_Datasheet.pdf" H 2100 3500 50  0001 C CNN
	1    2100 3500
	1    0    0    -1  
$EndComp
Text Label 11550 12200 2    50   ~ 0
HOLDA
Text Label 8450 5025 0    50   ~ 0
IO_M
Text Label 8450 5125 0    50   ~ 0
WR
Text Label 8450 5225 0    50   ~ 0
RD
Text Label 11550 10900 2    50   ~ 0
RD
Text Label 11550 11300 2    50   ~ 0
RD
$Comp
L Device:R R4
U 1 1 61146C76
P 11875 10025
F 0 "R4" V 11668 10025 50  0000 C CNN
F 1 "10K ohm" V 11759 10025 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 11805 10025 50  0001 C CNN
F 3 "~" H 11875 10025 50  0001 C CNN
	1    11875 10025
	0    1    1    0   
$EndComp
Text Label 12025 10025 0    50   ~ 0
PU1
Text Label 11550 11000 2    50   ~ 0
PU1
Text Label 11550 11200 2    50   ~ 0
PU1
Text Label 11550 11500 2    50   ~ 0
PU1
Text Label 11550 11900 2    50   ~ 0
PU1
Text Label 11550 11600 2    50   ~ 0
WR
Text Label 11550 11800 2    50   ~ 0
WR
Text Label 11725 10025 2    50   ~ 0
5+
Text Label 12050 10600 0    50   ~ 0
5+
Text Label 12050 12500 0    50   ~ 0
GND
Text Label 11550 12100 2    50   ~ 0
IO_M
Text Label 7850 5625 0    50   ~ 0
GND
Text Label 7650 5625 0    50   ~ 0
GND
Text Label 8450 2725 0    50   ~ 0
AD0
Text Label 8450 2825 0    50   ~ 0
AD1
Text Label 8450 2925 0    50   ~ 0
AD2
Text Label 8450 3025 0    50   ~ 0
AD3
Text Label 8450 3125 0    50   ~ 0
AD4
Text Label 8450 3225 0    50   ~ 0
AD5
Text Label 8450 3325 0    50   ~ 0
AD6
Text Label 8450 3425 0    50   ~ 0
AD7
Text Label 8450 3625 0    50   ~ 0
A8
Text Label 8450 3725 0    50   ~ 0
A9
Text Label 8450 3825 0    50   ~ 0
A10
Text Label 8450 3925 0    50   ~ 0
A11
Text Label 8450 4025 0    50   ~ 0
A12
Text Label 8450 4125 0    50   ~ 0
A13
Text Label 8450 4225 0    50   ~ 0
A14
Text Label 8450 4325 0    50   ~ 0
A15
Text Label 7750 2025 2    50   ~ 0
5+
Text Label 7050 4325 2    50   ~ 0
5+
Text Label 7050 3325 2    50   ~ 0
INTA
Text Label 7050 3125 2    50   ~ 0
INTR
Text Label 7050 2925 2    50   ~ 0
NMI
Text Label 7050 2325 2    50   ~ 0
CLK_88
Text Label 2800 2900 0    50   ~ 0
CLK1
$Comp
L Device:R R1
U 1 1 6115385B
P 3325 2725
F 0 "R1" V 3118 2725 50  0000 C CNN
F 1 "27 ohm" V 3209 2725 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3255 2725 50  0001 C CNN
F 3 "~" H 3325 2725 50  0001 C CNN
	1    3325 2725
	0    1    1    0   
$EndComp
Text Label 3475 2725 0    50   ~ 0
CLK_88
Text Label 3175 2725 2    50   ~ 0
CLK1
Text Label 2800 3100 0    50   ~ 0
READY1
$Comp
L 74xx:74LS257 U5
U 1 1 6114181C
P 12050 11500
F 0 "U5" H 12050 12581 50  0000 C CNN
F 1 "74LS257" H 12050 12490 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12050 11500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 12050 11500 50  0001 C CNN
	1    12050 11500
	1    0    0    -1  
$EndComp
Text Label 7775 8825 0    50   ~ 0
GND
Text Label 7175 8425 2    50   ~ 0
INTR
Text Label 7175 8525 2    50   ~ 0
INTA
Text Label 7175 7825 2    50   ~ 0
A0
Text Label 7175 6925 2    50   ~ 0
D0
Text Label 7175 7025 2    50   ~ 0
D1
Text Label 7175 7125 2    50   ~ 0
D2
Text Label 7175 7225 2    50   ~ 0
D3
Text Label 7175 7325 2    50   ~ 0
D4
Text Label 7175 7425 2    50   ~ 0
D5
Text Label 7175 7525 2    50   ~ 0
D6
Text Label 7175 7625 2    50   ~ 0
D7
Text Label 7175 10000 2    50   ~ 0
D0
Text Label 7175 10100 2    50   ~ 0
D1
Text Label 7175 10200 2    50   ~ 0
D2
Text Label 7175 10300 2    50   ~ 0
D3
Text Label 7175 10400 2    50   ~ 0
D4
Text Label 7175 10500 2    50   ~ 0
D5
Text Label 7175 10600 2    50   ~ 0
D6
Text Label 7175 10700 2    50   ~ 0
D7
Text Label 7175 10900 2    50   ~ 0
IORD
Text Label 7175 11000 2    50   ~ 0
IOWR
Text Label 7175 8225 2    50   ~ 0
IORD
Text Label 7175 8125 2    50   ~ 0
IOWR
Text Label 7175 11100 2    50   ~ 0
A0
Text Label 7175 11200 2    50   ~ 0
A1
Text Label 7175 8025 2    50   ~ 0
IO_002X
Text Label 7175 11400 2    50   ~ 0
IO_004X
Text Label 8375 8225 0    50   ~ 0
5+
Text Label 7775 6625 0    50   ~ 0
5+
Text Label 7775 9700 0    50   ~ 0
5+
Text Label 8375 10100 0    50   ~ 0
HF_PCLK
Text Label 8375 10600 0    50   ~ 0
HF_PCLK
Text Label 8375 10700 0    50   ~ 0
5+
Text Label 8375 10300 0    50   ~ 0
IRQ0
Text Label 8375 10200 0    50   ~ 0
5+
Text Label 8375 7625 0    50   ~ 0
IRQ0
Text Label 7775 11700 0    50   ~ 0
GND
Text Label 6925 6425 0    50   ~ 0
GND
Text Label 6425 6425 2    50   ~ 0
5+
$Comp
L pspice:CAP C7
U 1 1 61168CB8
P 6675 6425
F 0 "C7" V 6360 6425 50  0000 C CNN
F 1 "0.1uF" V 6451 6425 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6675 6425 50  0001 C CNN
F 3 "~" H 6675 6425 50  0001 C CNN
	1    6675 6425
	0    1    1    0   
$EndComp
Text Label 1725 1925 0    50   ~ 0
GND
Text Label 1225 1925 2    50   ~ 0
5+
$Comp
L pspice:CAP C6
U 1 1 61169247
P 1475 1925
F 0 "C6" V 1160 1925 50  0000 C CNN
F 1 "0.1uF" V 1251 1925 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1475 1925 50  0001 C CNN
F 3 "~" H 1475 1925 50  0001 C CNN
	1    1475 1925
	0    1    1    0   
$EndComp
Text Label 8700 9425 0    50   ~ 0
GND
$Comp
L pspice:CAP C8
U 1 1 61169660
P 8450 9425
F 0 "C8" V 8135 9425 50  0000 C CNN
F 1 "0.1uF" V 8226 9425 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8450 9425 50  0001 C CNN
F 3 "~" H 8450 9425 50  0001 C CNN
	1    8450 9425
	0    1    1    0   
$EndComp
Text Label 8200 9425 2    50   ~ 0
5+
Text Label 12775 10250 0    50   ~ 0
GND
Text Label 12275 10250 2    50   ~ 0
5+
$Comp
L pspice:CAP C5
U 1 1 6116A3B9
P 12525 10250
F 0 "C5" V 12210 10250 50  0000 C CNN
F 1 "0.1uF" V 12301 10250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12525 10250 50  0001 C CNN
F 3 "~" H 12525 10250 50  0001 C CNN
	1    12525 10250
	0    1    1    0   
$EndComp
Text Label 2100 2600 0    50   ~ 0
5+
Text Label 1400 3200 2    50   ~ 0
GND
Text Label 1400 3300 2    50   ~ 0
GND
Text Label 1400 3400 2    50   ~ 0
5+
Text Label 1400 3600 2    50   ~ 0
GND
Text Label 1400 3700 2    50   ~ 0
GND
Text Label 1400 3900 2    50   ~ 0
GND
Text Label 2100 4400 2    50   ~ 0
GND
Text Label 1400 2900 2    50   ~ 0
RESET
Text Label 2800 3300 0    50   ~ 0
RESET1
Text Label 7050 2725 2    50   ~ 0
RESET1
Text Label 1400 3100 2    50   ~ 0
RDY1
Text Label 7050 2525 2    50   ~ 0
READY1
Text Label 8375 10800 0    50   ~ 0
DRQ0
$EndSCHEMATC
