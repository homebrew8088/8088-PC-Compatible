EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
$Comp
L MCU_Intel:I386EX_PQFP U1
U 1 1 62B8915F
P 5225 4000
F 0 "U1" H 5225 7581 50  0000 C CNN
F 1 "I386EX_PQFP" H 5225 7490 50  0000 C CNN
F 2 "Package_QFP:PQFP-132_24x24mm_P0.635mm_i386" H 5225 4000 50  0001 C CNN
F 3 "" H 5225 4000 50  0001 C CNN
	1    5225 4000
	1    0    0    -1  
$EndComp
Text Label 3925 3100 2    50   ~ 0
A19
Text Label 3925 3000 2    50   ~ 0
A18
Text Label 3925 2900 2    50   ~ 0
A17
$Comp
L Connector:Bus_ISA_8bit J2
U 1 1 62B8BE2E
P 10150 2400
F 0 "J2" H 10150 4167 50  0000 C CNN
F 1 "Bus_ISA_8bit" H 10150 4076 50  0000 C CNN
F 2 "My:BUS_8_BIT" H 10150 2400 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 10150 2400 50  0001 C CNN
	1    10150 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J1
U 1 1 62B8DB2C
P 9925 5025
F 0 "J1" H 9975 5542 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 9975 5451 50  0000 C CNN
F 2 "My:16_EDGE_CARD_BUS" H 9925 5025 50  0001 C CNN
F 3 "~" H 9925 5025 50  0001 C CNN
	1    9925 5025
	1    0    0    -1  
$EndComp
Text Label 9725 4725 2    50   ~ 0
IRQ1
Text Label 9725 4825 2    50   ~ 0
IO_000X
Text Label 9725 4925 2    50   ~ 0
IO_002X
Text Label 9725 5025 2    50   ~ 0
IO_004X
Text Label 9725 5125 2    50   ~ 0
IO_006X
Text Label 9725 5225 2    50   ~ 0
IO_008X
Text Label 9725 5425 2    50   ~ 0
NMI
Text Label 10225 5425 0    50   ~ 0
SPK_OUT
Text Label 10225 5325 0    50   ~ 0
SPK_GO
Text Label 10225 5225 0    50   ~ 0
HF_PCLK
Text Label 10225 5125 0    50   ~ 0
DRQ0
Text Label 10225 5025 0    50   ~ 0
HOLDA
Text Label 10225 4925 0    50   ~ 0
HOLD
Text Label 10225 4825 0    50   ~ 0
READY
Text Label 10225 4725 0    50   ~ 0
RESET
Text Label 3925 1300 2    50   ~ 0
A1
Text Label 3925 1400 2    50   ~ 0
A2
Text Label 3925 1500 2    50   ~ 0
A3
Text Label 3925 1600 2    50   ~ 0
A4
Text Label 3925 1700 2    50   ~ 0
A5
Text Label 3925 1800 2    50   ~ 0
A6
Text Label 3925 1900 2    50   ~ 0
A7
Text Label 3925 2000 2    50   ~ 0
A8
Text Label 3925 2100 2    50   ~ 0
A9
Text Label 3925 2200 2    50   ~ 0
A10
Text Label 3925 2300 2    50   ~ 0
A11
Text Label 3925 2400 2    50   ~ 0
A12
Text Label 3925 2500 2    50   ~ 0
A13
Text Label 3925 2600 2    50   ~ 0
A14
Text Label 3925 2700 2    50   ~ 0
A15
Text Label 3925 2800 2    50   ~ 0
A16
Text Label 3925 1200 2    50   ~ 0
A0
Text Label 3925 1000 2    50   ~ 0
ALE_
Text Label 2800 1025 2    50   ~ 0
8_BIT_EN
Text Label 4625 600  1    50   ~ 0
5+
Text Label 4725 600  1    50   ~ 0
5+
Text Label 4825 600  1    50   ~ 0
5+
Text Label 4925 600  1    50   ~ 0
5+
Text Label 5025 600  1    50   ~ 0
5+
Text Label 5125 600  1    50   ~ 0
5+
Text Label 5225 600  1    50   ~ 0
5+
Text Label 5325 600  1    50   ~ 0
5+
Text Label 5425 600  1    50   ~ 0
5+
Text Label 5525 600  1    50   ~ 0
5+
Text Label 5625 600  1    50   ~ 0
5+
Text Label 5725 600  1    50   ~ 0
5+
Text Label 6525 1600 0    50   ~ 0
HOLDA
Text Label 6525 1500 0    50   ~ 0
HOLD
Text Label 6525 5900 0    50   ~ 0
NMI
Text Label 6525 6900 0    50   ~ 0
RD
Text Label 6525 7000 0    50   ~ 0
WR
Text Label 3925 7100 2    50   ~ 0
PIPELINE_EN
Text Label 3925 5700 2    50   ~ 0
RESET
Text Label 1400 7050 0    50   ~ 0
PIPELINE_EN
Text Label 1400 5225 0    50   ~ 0
8_BIT_EN
Text Label 1000 5925 2    50   ~ 0
GND
Text Label 4625 7400 3    50   ~ 0
GND
Text Label 4725 7400 3    50   ~ 0
GND
Text Label 4825 7400 3    50   ~ 0
GND
Text Label 4925 7400 3    50   ~ 0
GND
Text Label 5025 7400 3    50   ~ 0
GND
Text Label 5125 7400 3    50   ~ 0
GND
Text Label 5225 7400 3    50   ~ 0
GND
Text Label 5325 7400 3    50   ~ 0
GND
Text Label 5425 7400 3    50   ~ 0
GND
Text Label 5525 7400 3    50   ~ 0
GND
Text Label 5625 7400 3    50   ~ 0
GND
Text Label 5725 7400 3    50   ~ 0
GND
Text Label 3925 4000 2    50   ~ 0
D0
Text Label 3925 4100 2    50   ~ 0
D1
Text Label 3925 4200 2    50   ~ 0
D2
Text Label 3925 4300 2    50   ~ 0
D3
Text Label 3925 4400 2    50   ~ 0
D4
Text Label 3925 4500 2    50   ~ 0
D5
Text Label 3925 4600 2    50   ~ 0
D6
Text Label 3925 4700 2    50   ~ 0
D7
Text Label 10850 1700 0    50   ~ 0
D0
Text Label 10850 1600 0    50   ~ 0
D1
Text Label 10850 1500 0    50   ~ 0
D2
Text Label 10850 1400 0    50   ~ 0
D3
Text Label 10850 1300 0    50   ~ 0
D4
Text Label 10850 1200 0    50   ~ 0
D5
Text Label 10850 1100 0    50   ~ 0
D6
Text Label 10850 1000 0    50   ~ 0
D7
Text Label 10850 2000 0    50   ~ 0
A19
Text Label 10850 2100 0    50   ~ 0
A18
Text Label 10850 2200 0    50   ~ 0
A17
Text Label 10850 3800 0    50   ~ 0
A1
Text Label 10850 3700 0    50   ~ 0
A2
Text Label 10850 3600 0    50   ~ 0
A3
Text Label 10850 3500 0    50   ~ 0
A4
Text Label 10850 3400 0    50   ~ 0
A5
Text Label 10850 3300 0    50   ~ 0
A6
Text Label 10850 3200 0    50   ~ 0
A7
Text Label 10850 3100 0    50   ~ 0
A8
Text Label 10850 3000 0    50   ~ 0
A9
Text Label 10850 2900 0    50   ~ 0
A10
Text Label 10850 2800 0    50   ~ 0
A11
Text Label 10850 2700 0    50   ~ 0
A12
Text Label 10850 2600 0    50   ~ 0
A13
Text Label 10850 2500 0    50   ~ 0
A14
Text Label 10850 2400 0    50   ~ 0
A15
Text Label 10850 2300 0    50   ~ 0
A16
Text Label 10850 3900 0    50   ~ 0
A0
Text Label 9450 3900 2    50   ~ 0
GND
Text Label 9450 3700 2    50   ~ 0
5+
Text Label 9450 3600 2    50   ~ 0
ALE
Text Label 9450 1800 2    50   ~ 0
GND
Text Label 9450 900  2    50   ~ 0
GND
Text Label 9450 1100 2    50   ~ 0
5+
Text Label 8250 650  2    50   ~ 0
5+
Text Label 7750 1250 2    50   ~ 0
PU_257
Text Label 7750 1350 2    50   ~ 0
RD
Text Label 7750 1550 2    50   ~ 0
PU_257
Text Label 7750 1950 2    50   ~ 0
PU_257
Text Label 7750 2250 2    50   ~ 0
HOLDA_JMP
Text Label 7750 2150 2    50   ~ 0
IO_M
Text Label 7750 1650 2    50   ~ 0
WR
Text Label 7750 1850 2    50   ~ 0
WR
Text Label 6525 6600 0    50   ~ 0
IO_M
Text Label 8750 950  0    50   ~ 0
IORD
Text Label 8750 1250 0    50   ~ 0
MRD
Text Label 8750 1550 0    50   ~ 0
MWR
Text Label 8750 1850 0    50   ~ 0
IOWR
Text Label 9450 2200 2    50   ~ 0
IORD
Text Label 9450 2000 2    50   ~ 0
MRD
Text Label 9450 1900 2    50   ~ 0
MWR
Text Label 9450 2100 2    50   ~ 0
IOWR
$Comp
L Timer:8284 U2
U 1 1 62BA39F5
P 1525 2325
F 0 "U2" H 1525 3406 50  0000 C CNN
F 1 "8284" H 1525 3315 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 1525 2325 50  0001 C CIN
F 3 "http://www.cpu-galaxy.at/cpu/ram%20rom%20eprom/other_intel_chips/other_intel-Dateien/D8284A_Datasheet.pdf" H 1525 2325 50  0001 C CNN
	1    1525 2325
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 62BAFE6F
P 2700 3050
F 0 "Y1" H 2700 3318 50  0000 C CNN
F 1 "Crystal" H 2700 3227 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 2700 3050 50  0001 C CNN
F 3 "~" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
Text Label 2225 2725 0    50   ~ 0
X1
Text Label 2225 2925 0    50   ~ 0
X2
Text Label 2850 3050 0    50   ~ 0
X2
Text Label 2550 3050 2    50   ~ 0
X1
Text Label 2225 1725 0    50   ~ 0
CLK1
Text Label 825  1925 2    50   ~ 0
RDY1
Text Label 825  2025 2    50   ~ 0
GND
Text Label 825  2125 2    50   ~ 0
GND
Text Label 825  2225 2    50   ~ 0
5+
Text Label 1525 1425 2    50   ~ 0
5+
Text Label 1525 3225 0    50   ~ 0
GND
Text Label 825  2725 2    50   ~ 0
GND
Text Label 825  2525 2    50   ~ 0
GND
Text Label 825  2425 2    50   ~ 0
GND
Text Label 825  1725 2    50   ~ 0
RESET
$Comp
L Device:R R3
U 1 1 62BB27B2
P 2800 1750
F 0 "R3" V 3007 1750 50  0000 C CNN
F 1 "27 ohm" V 2916 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2730 1750 50  0001 C CNN
F 3 "~" H 2800 1750 50  0001 C CNN
	1    2800 1750
	0    -1   -1   0   
$EndComp
Text Label 2650 1750 2    50   ~ 0
CLK1
Text Label 10850 1800 0    50   ~ 0
RDY1
Text Label 7675 700  0    50   ~ 0
GND
Text Label 7175 700  2    50   ~ 0
5+
$Comp
L pspice:CAP C1
U 1 1 62BA2A5A
P 7425 700
F 0 "C1" V 7110 700 50  0000 C CNN
F 1 "0.1uF" V 7201 700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7425 700 50  0001 C CNN
F 3 "~" H 7425 700 50  0001 C CNN
	1    7425 700 
	0    1    1    0   
$EndComp
Text Label 7750 1050 2    50   ~ 0
PU_257
Text Label 7750 950  2    50   ~ 0
RD
$Comp
L 74xx:74LS257 U3
U 1 1 62B9EF53
P 8250 1550
F 0 "U3" H 8250 2631 50  0000 C CNN
F 1 "74LS257" H 8250 2540 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8250 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 8250 1550 50  0001 C CNN
	1    8250 1550
	1    0    0    -1  
$EndComp
Text Label 1450 1200 0    50   ~ 0
GND
Text Label 950  1200 2    50   ~ 0
5+
$Comp
L pspice:CAP C3
U 1 1 62BB76A4
P 1200 1200
F 0 "C3" V 885 1200 50  0000 C CNN
F 1 "0.1uF" V 976 1200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1200 1200 50  0001 C CNN
F 3 "~" H 1200 1200 50  0001 C CNN
	1    1200 1200
	0    1    1    0   
$EndComp
Text Label 5275 275  0    50   ~ 0
GND
Text Label 4775 275  2    50   ~ 0
5+
$Comp
L pspice:CAP C4
U 1 1 62BB7B45
P 5025 275
F 0 "C4" V 4710 275 50  0000 C CNN
F 1 "0.1uF" V 4801 275 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5025 275 50  0001 C CNN
F 3 "~" H 5025 275 50  0001 C CNN
	1    5025 275 
	0    1    1    0   
$EndComp
Text Label 6525 3200 0    50   ~ 0
IRQ7
Text Label 9450 2900 2    50   ~ 0
IRQ7
Text Label 6525 3100 0    50   ~ 0
IRQ6
Text Label 6525 3000 0    50   ~ 0
IRQ5
Text Label 6525 2900 0    50   ~ 0
IRQ1
Text Label 9450 3000 2    50   ~ 0
IRQ6
Text Label 9450 3100 2    50   ~ 0
IRQ5
Text Label 6525 5200 0    50   ~ 0
SPK_OUT
Text Label 6525 5300 0    50   ~ 0
SPK_GO
Text Label 6525 5100 0    50   ~ 0
HF_PCLK
Text Label 6525 5400 0    50   ~ 0
HF_PCLK
Text Label 6525 5500 0    50   ~ 0
5+
Text Label 6525 5700 0    50   ~ 0
5+
Text Label 6525 5600 0    50   ~ 0
HF_PCLK
Text Label 3925 6900 2    50   ~ 0
FLT
Text Label 1400 6950 0    50   ~ 0
FLT
Text Label 3925 6600 2    50   ~ 0
SMI
Text Label 3925 6700 2    50   ~ 0
SMIACT
Text Label 1400 6750 0    50   ~ 0
SMI
Text Label 1400 6850 0    50   ~ 0
SMIACT
$Comp
L 74xx:74LS04 U4
U 1 1 62B9368C
P 8075 4075
F 0 "U4" H 8075 4392 50  0000 C CNN
F 1 "74LS04" H 8075 4301 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8075 4075 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8075 4075 50  0001 C CNN
	1    8075 4075
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U4
U 7 1 62B94263
P 8025 3625
F 0 "U4" V 7658 3625 50  0000 C CNN
F 1 "74LS04" V 7749 3625 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8025 3625 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8025 3625 50  0001 C CNN
	7    8025 3625
	0    1    1    0   
$EndComp
Text Label 7525 3625 2    50   ~ 0
GND
Text Label 8525 3625 0    50   ~ 0
5+
Text Label 8250 3225 0    50   ~ 0
GND
Text Label 7750 3225 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 62B96D4B
P 8000 3225
F 0 "C2" V 7685 3225 50  0000 C CNN
F 1 "0.1uF" V 7776 3225 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8000 3225 50  0001 C CNN
F 3 "~" H 8000 3225 50  0001 C CNN
	1    8000 3225
	0    1    1    0   
$EndComp
Text Label 8375 4075 0    50   ~ 0
READY_
$Comp
L 74xx:74LS04 U4
U 2 1 62B97A9C
P 8025 4575
F 0 "U4" H 8025 4892 50  0000 C CNN
F 1 "74LS04" H 8025 4801 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8025 4575 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8025 4575 50  0001 C CNN
	2    8025 4575
	1    0    0    -1  
$EndComp
Text Label 7725 4575 2    50   ~ 0
ALE_
Text Label 8325 4575 0    50   ~ 0
ALE
Text Label 3925 6400 2    50   ~ 0
TRST
Text Label 1400 6650 0    50   ~ 0
TRST
$Comp
L Device:R_Network08 R7
U 1 1 62B9A370
P 1200 6950
F 0 "R7" V 1407 6950 50  0000 C CNN
F 1 "4.7K ohm" H 1175 7225 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1130 6950 50  0001 C CNN
F 3 "~" H 1200 6950 50  0001 C CNN
	1    1200 6950
	0    -1   -1   0   
$EndComp
Text Label 1000 7350 2    50   ~ 0
5+
Text Label 7775 4075 2    50   ~ 0
RDY1
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 62BA5362
P 8850 4225
F 0 "J3" H 8930 4217 50  0000 L CNN
F 1 "Conn_01x02" H 8930 4126 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8850 4225 50  0001 C CNN
F 3 "~" H 8850 4225 50  0001 C CNN
	1    8850 4225
	1    0    0    -1  
$EndComp
Text Label 8650 4225 2    50   ~ 0
READY_
Text Label 8650 4325 2    50   ~ 0
READY_JMP
Text Label 6525 6500 0    50   ~ 0
READY_JMP
Text Label 1400 7350 0    50   ~ 0
PU_257
$Comp
L Device:R_Network08 R1
U 1 1 62BB3E99
P 1200 5525
F 0 "R1" V 1407 5525 50  0000 C CNN
F 1 "4.7K ohm" H 1175 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1130 5525 50  0001 C CNN
F 3 "~" H 1200 5525 50  0001 C CNN
	1    1200 5525
	0    -1   -1   0   
$EndComp
Text Label 1400 5925 0    50   ~ 0
READY_JMP
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 62BB9970
P 7725 2550
F 0 "J5" H 7805 2542 50  0000 L CNN
F 1 "Conn_01x02" H 7805 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7725 2550 50  0001 C CNN
F 3 "~" H 7725 2550 50  0001 C CNN
	1    7725 2550
	1    0    0    -1  
$EndComp
Text Label 7525 2550 2    50   ~ 0
HOLDA
Text Label 7525 2650 2    50   ~ 0
HOLDA_JMP
Text Label 1400 5825 0    50   ~ 0
HOLDA_JMP
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 62BBAB1B
P 1600 4075
F 0 "X1" H 1944 4121 50  0000 L CNN
F 1 "CXO_DIP8" H 1944 4030 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 2050 3725 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 1500 4075 50  0001 C CNN
	1    1600 4075
	1    0    0    -1  
$EndComp
Text Label 1600 3775 0    50   ~ 0
5+
Text Label 1600 4375 0    50   ~ 0
GND
Text Label 3925 5800 2    50   ~ 0
CLK2
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 62BBC9F6
P 2875 3625
F 0 "J4" H 2955 3667 50  0000 L CNN
F 1 "Conn_01x03" H 2955 3576 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2875 3625 50  0001 C CNN
F 3 "~" H 2875 3625 50  0001 C CNN
	1    2875 3625
	1    0    0    -1  
$EndComp
Text Label 2675 3625 2    50   ~ 0
CLK2
Text Label 1900 4075 0    50   ~ 0
OSC_OUTPUT
Text Label 2675 3725 2    50   ~ 0
OSC_OUTPUT
Text Label 2950 1750 0    50   ~ 0
8284_OUT
Text Label 2675 3525 2    50   ~ 0
8284_OUT
Text Label 1300 4075 2    50   ~ 0
OSC_EN
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 62B9F60C
P 975 4425
F 0 "J6" H 1055 4467 50  0000 L CNN
F 1 "Conn_01x03" H 1055 4376 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 975 4425 50  0001 C CNN
F 3 "~" H 975 4425 50  0001 C CNN
	1    975  4425
	1    0    0    -1  
$EndComp
Text Label 775  4425 2    50   ~ 0
OSC_EN
Text Label 775  4525 2    50   ~ 0
GND
Text Label 775  4325 2    50   ~ 0
5+
$Comp
L Connector_Generic:Conn_01x08 J8
U 1 1 62BA29A2
P 3350 5100
F 0 "J8" H 3430 5142 50  0000 L CNN
F 1 "Conn_01x08" H 3430 5051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3350 5100 50  0001 C CNN
F 3 "~" H 3350 5100 50  0001 C CNN
	1    3350 5100
	1    0    0    -1  
$EndComp
Text Label 3925 4800 2    50   ~ 0
D8
Text Label 3925 4900 2    50   ~ 0
D9
Text Label 3925 5000 2    50   ~ 0
D10
Text Label 3925 5100 2    50   ~ 0
D11
Text Label 3925 5200 2    50   ~ 0
D12
Text Label 3925 5300 2    50   ~ 0
D13
Text Label 3925 5400 2    50   ~ 0
D14
Text Label 3925 5500 2    50   ~ 0
D15
Text Label 3150 4800 2    50   ~ 0
D8
Text Label 3150 4900 2    50   ~ 0
D9
Text Label 3150 5000 2    50   ~ 0
D10
Text Label 3150 5100 2    50   ~ 0
D11
Text Label 3150 5200 2    50   ~ 0
D12
Text Label 3150 5300 2    50   ~ 0
D13
Text Label 3150 5400 2    50   ~ 0
D14
Text Label 3150 5500 2    50   ~ 0
D15
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 62BA6F16
P 3000 925
F 0 "J7" H 3080 917 50  0000 L CNN
F 1 "Conn_01x02" H 3080 826 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3000 925 50  0001 C CNN
F 3 "~" H 3000 925 50  0001 C CNN
	1    3000 925 
	1    0    0    -1  
$EndComp
Text Label 2800 925  2    50   ~ 0
8_BIT_EN_JMP
Text Label 3925 900  2    50   ~ 0
8_BIT_EN_JMP
$EndSCHEMATC
