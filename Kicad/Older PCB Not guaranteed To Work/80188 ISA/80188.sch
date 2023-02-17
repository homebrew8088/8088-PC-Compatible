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
L 74xx:74LS573 U3
U 1 1 610632BC
P 13500 2025
F 0 "U3" H 13500 3006 50  0000 C CNN
F 1 "74LS573" H 13500 2915 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 13500 2025 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 13500 2025 50  0001 C CNN
	1    13500 2025
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 610661C4
P 13475 4500
F 0 "U2" H 13475 5481 50  0000 C CNN
F 1 "74LS573" H 13475 5390 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 13475 4500 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 13475 4500 50  0001 C CNN
	1    13475 4500
	1    0    0    -1  
$EndComp
Text Label 14000 1525 0    50   ~ 0
A19
Text Label 14000 1625 0    50   ~ 0
A18
Text Label 14000 1725 0    50   ~ 0
A17
Text Label 14000 1825 0    50   ~ 0
A16
Text Label 13975 4000 0    50   ~ 0
A7
Text Label 13975 4100 0    50   ~ 0
A6
Text Label 13975 4200 0    50   ~ 0
A5
Text Label 13975 4300 0    50   ~ 0
A4
Text Label 13975 4400 0    50   ~ 0
A3
Text Label 13975 4500 0    50   ~ 0
A2
Text Label 13975 4600 0    50   ~ 0
A1
Text Label 13975 4700 0    50   ~ 0
A0
Text Label 13000 1825 2    50   ~ 0
A16_
Text Label 13000 1725 2    50   ~ 0
A17_
Text Label 13000 1625 2    50   ~ 0
A18_
Text Label 13000 1525 2    50   ~ 0
A19_
Text Label 13500 1225 0    50   ~ 0
5+
Text Label 13500 2825 0    50   ~ 0
GND
Text Label 13475 3700 0    50   ~ 0
5+
Text Label 13475 5300 0    50   ~ 0
GND
Text Label 3200 4300 0    50   ~ 0
A16_
Text Label 3200 4400 0    50   ~ 0
A17_
Text Label 3200 4500 0    50   ~ 0
A18_
Text Label 3200 4600 0    50   ~ 0
A19_
Text Label 13600 3375 0    50   ~ 0
GND
Text Label 13100 3375 2    50   ~ 0
5+
$Comp
L pspice:CAP C3
U 1 1 6106B923
P 13350 3375
F 0 "C3" V 13035 3375 50  0000 C CNN
F 1 "0.1uF" V 13126 3375 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13350 3375 50  0001 C CNN
F 3 "~" H 13350 3375 50  0001 C CNN
	1    13350 3375
	0    1    1    0   
$EndComp
Text Label 13775 5800 0    50   ~ 0
GND
Text Label 13275 5800 2    50   ~ 0
5+
$Comp
L pspice:CAP C4
U 1 1 6106BA7C
P 13525 5800
F 0 "C4" V 13210 5800 50  0000 C CNN
F 1 "0.1uF" V 13301 5800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13525 5800 50  0001 C CNN
F 3 "~" H 13525 5800 50  0001 C CNN
	1    13525 5800
	0    1    1    0   
$EndComp
Text Label 13550 1050 0    50   ~ 0
GND
Text Label 13050 1050 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 6106C0FE
P 13300 1050
F 0 "C2" V 12985 1050 50  0000 C CNN
F 1 "0.1uF" V 13076 1050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13300 1050 50  0001 C CNN
F 3 "~" H 13300 1050 50  0001 C CNN
	1    13300 1050
	0    1    1    0   
$EndComp
Text Label 12975 4000 2    50   ~ 0
AD7
Text Label 12975 4100 2    50   ~ 0
AD6
Text Label 12975 4200 2    50   ~ 0
AD5
Text Label 12975 4300 2    50   ~ 0
AD4
Text Label 12975 4400 2    50   ~ 0
AD3
Text Label 12975 4500 2    50   ~ 0
AD2
Text Label 12975 4600 2    50   ~ 0
AD1
Text Label 12975 4700 2    50   ~ 0
AD0
Text Label 13000 6325 2    50   ~ 0
AD7
Text Label 13000 6425 2    50   ~ 0
AD6
Text Label 13000 6525 2    50   ~ 0
AD5
Text Label 13000 6625 2    50   ~ 0
AD4
Text Label 13000 6725 2    50   ~ 0
AD3
Text Label 13000 6825 2    50   ~ 0
AD2
Text Label 13000 6925 2    50   ~ 0
AD1
Text Label 13000 7025 2    50   ~ 0
AD0
Text Label 14000 7025 0    50   ~ 0
D0
Text Label 14000 6925 0    50   ~ 0
D1
Text Label 14000 6825 0    50   ~ 0
D2
Text Label 14000 6725 0    50   ~ 0
D3
Text Label 14000 6625 0    50   ~ 0
D4
Text Label 14000 6525 0    50   ~ 0
D5
Text Label 14000 6425 0    50   ~ 0
D6
Text Label 14000 6325 0    50   ~ 0
D7
Text Label 13500 6025 2    50   ~ 0
5+
Text Label 13500 7625 0    50   ~ 0
GND
Text Label 12975 4900 2    50   ~ 0
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
Text Label 3200 7600 0    50   ~ 0
HOLDA
Text Label 2000 7600 2    50   ~ 0
HOLD
Text Label 13975 9475 0    50   ~ 0
IORD
Text Label 13975 9775 0    50   ~ 0
MRD
Text Label 13975 10075 0    50   ~ 0
MWR
Text Label 13975 10375 0    50   ~ 0
IOWR
Text Label 3200 5600 0    50   ~ 0
DTR
Text Label 3200 5700 0    50   ~ 0
DEN
Text Label 13000 7325 2    50   ~ 0
DEN
Text Label 13000 7225 2    50   ~ 0
DTR
Text Label 12975 5000 2    50   ~ 0
HOLDA
Text Label 13000 2525 2    50   ~ 0
HOLDA
Text Label 13000 2425 2    50   ~ 0
ALE
Text Label 3200 5300 0    50   ~ 0
ALE
Text Label 12625 7675 2    50   ~ 0
5+
Text Label 12925 7675 0    50   ~ 0
DEN
$Comp
L Device:R R1
U 1 1 61072939
P 12775 7675
F 0 "R1" V 12568 7675 50  0000 C CNN
F 1 "10K ohm" V 12659 7675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 12705 7675 50  0001 C CNN
F 3 "~" H 12775 7675 50  0001 C CNN
	1    12775 7675
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS245 U4
U 1 1 61063CD3
P 13500 6825
F 0 "U4" H 13500 7806 50  0000 C CNN
F 1 "74LS245" H 13500 7715 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 13500 6825 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 13500 6825 50  0001 C CNN
	1    13500 6825
	1    0    0    -1  
$EndComp
Text Label 2000 4600 2    50   ~ 0
GND
Text Label 10750 12550 0    50   ~ 0
SPK_GO
Text Label 10750 12450 0    50   ~ 0
HF_PCLK
Text Label 10750 12650 0    50   ~ 0
SPK_OUT
Text Label 7350 11225 0    50   ~ 0
IRQ7
Text Label 7350 11325 0    50   ~ 0
IRQ6
Text Label 7350 11425 0    50   ~ 0
IRQ5
Text Label 7350 11525 0    50   ~ 0
IRQ4
Text Label 7350 11725 0    50   ~ 0
IRQ2
Text Label 7350 11625 0    50   ~ 0
IRQ3
Text Label 7350 11825 0    50   ~ 0
IRQ1
$Comp
L Device:Crystal Y1
U 1 1 610DE620
P 1425 2525
F 0 "Y1" H 1425 2257 50  0000 C CNN
F 1 "Crystal" H 1425 2348 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 1425 2525 50  0001 C CNN
F 3 "~" H 1425 2525 50  0001 C CNN
	1    1425 2525
	-1   0    0    1   
$EndComp
Text Label 1275 2525 2    50   ~ 0
X1
Text Label 1575 2525 0    50   ~ 0
X2
$Comp
L Interface:8259 U6
U 1 1 6113F110
P 6750 12025
F 0 "U6" H 6750 13306 50  0000 C CNN
F 1 "8259" H 6750 13215 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 6750 12025 50  0001 C CIN
F 3 "http://pdos.csail.mit.edu/6.828/2005/readings/hardware/8259A.pdf" H 6750 12025 50  0001 C CNN
	1    6750 12025
	1    0    0    -1  
$EndComp
$Comp
L Timer:8253 U7
U 1 1 6114018C
P 10150 12050
F 0 "U7" H 10150 13231 50  0000 C CNN
F 1 "8253" H 10150 13140 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 10200 12300 50  0001 C CNN
F 3 "http://www.cpcwiki.eu/imgs/e/e3/8253.pdf" H 9700 12950 50  0001 C CNN
	1    10150 12050
	1    0    0    -1  
$EndComp
Text Label 12975 10775 2    50   ~ 0
HOLDA
Text Label 14000 2225 0    50   ~ 0
IO_M
Text Label 3200 5400 0    50   ~ 0
WR
Text Label 3200 5200 0    50   ~ 0
RD
Text Label 12975 9475 2    50   ~ 0
RD
Text Label 12975 9875 2    50   ~ 0
RD
$Comp
L Device:R R5
U 1 1 61146C76
P 13300 8600
F 0 "R5" V 13093 8600 50  0000 C CNN
F 1 "10K ohm" V 13184 8600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 13230 8600 50  0001 C CNN
F 3 "~" H 13300 8600 50  0001 C CNN
	1    13300 8600
	0    1    1    0   
$EndComp
Text Label 13450 8600 0    50   ~ 0
PU1
Text Label 12975 9575 2    50   ~ 0
PU1
Text Label 12975 9775 2    50   ~ 0
PU1
Text Label 12975 10075 2    50   ~ 0
PU1
Text Label 12975 10475 2    50   ~ 0
PU1
Text Label 12975 10175 2    50   ~ 0
WR
Text Label 12975 10375 2    50   ~ 0
WR
Text Label 13150 8600 2    50   ~ 0
5+
Text Label 13475 9175 0    50   ~ 0
5+
Text Label 13475 11075 0    50   ~ 0
GND
Text Label 12975 10675 2    50   ~ 0
IO_M
Text Label 3200 2500 0    50   ~ 0
AD0
Text Label 3200 2600 0    50   ~ 0
AD1
Text Label 3200 2700 0    50   ~ 0
AD2
Text Label 3200 2800 0    50   ~ 0
AD3
Text Label 3200 2900 0    50   ~ 0
AD4
Text Label 3200 3000 0    50   ~ 0
AD5
Text Label 3200 3100 0    50   ~ 0
AD6
Text Label 3200 3200 0    50   ~ 0
AD7
Text Label 3200 3400 0    50   ~ 0
A8
Text Label 3200 3500 0    50   ~ 0
A9
Text Label 3200 3600 0    50   ~ 0
A10
Text Label 3200 3700 0    50   ~ 0
A11
Text Label 3200 3800 0    50   ~ 0
A12
Text Label 3200 3900 0    50   ~ 0
A13
Text Label 3200 4000 0    50   ~ 0
A14
Text Label 3200 4100 0    50   ~ 0
A15
Text Label 2000 5800 2    50   ~ 0
NMI
$Comp
L 74xx:74LS257 U8
U 1 1 6114181C
P 13475 10075
F 0 "U8" H 13475 11156 50  0000 C CNN
F 1 "74LS257" H 13475 11065 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 13475 10075 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 13475 10075 50  0001 C CNN
	1    13475 10075
	1    0    0    -1  
$EndComp
Text Label 6750 13125 0    50   ~ 0
GND
Text Label 6150 12725 2    50   ~ 0
INTR
Text Label 6150 12825 2    50   ~ 0
INTA
Text Label 6150 12125 2    50   ~ 0
A0
Text Label 6150 11225 2    50   ~ 0
D0
Text Label 6150 11325 2    50   ~ 0
D1
Text Label 6150 11425 2    50   ~ 0
D2
Text Label 6150 11525 2    50   ~ 0
D3
Text Label 6150 11625 2    50   ~ 0
D4
Text Label 6150 11725 2    50   ~ 0
D5
Text Label 6150 11825 2    50   ~ 0
D6
Text Label 6150 11925 2    50   ~ 0
D7
Text Label 9550 11350 2    50   ~ 0
D0
Text Label 9550 11450 2    50   ~ 0
D1
Text Label 9550 11550 2    50   ~ 0
D2
Text Label 9550 11650 2    50   ~ 0
D3
Text Label 9550 11750 2    50   ~ 0
D4
Text Label 9550 11850 2    50   ~ 0
D5
Text Label 9550 11950 2    50   ~ 0
D6
Text Label 9550 12050 2    50   ~ 0
D7
Text Label 9550 12250 2    50   ~ 0
IORD
Text Label 9550 12350 2    50   ~ 0
IOWR
Text Label 6150 12525 2    50   ~ 0
IORD
Text Label 6150 12425 2    50   ~ 0
IOWR
Text Label 9550 12450 2    50   ~ 0
A0
Text Label 9550 12550 2    50   ~ 0
A1
Text Label 6150 12325 2    50   ~ 0
IO_002X
Text Label 9550 12750 2    50   ~ 0
IO_004X
Text Label 7350 12525 0    50   ~ 0
5+
Text Label 6750 10925 0    50   ~ 0
5+
Text Label 10150 11050 0    50   ~ 0
5+
Text Label 10750 11450 0    50   ~ 0
HF_PCLK
Text Label 10750 11950 0    50   ~ 0
HF_PCLK
Text Label 10750 12050 0    50   ~ 0
5+
Text Label 10750 11650 0    50   ~ 0
IRQ0
Text Label 10750 11550 0    50   ~ 0
5+
Text Label 7350 11925 0    50   ~ 0
IRQ0
Text Label 10150 13050 0    50   ~ 0
GND
Text Label 5900 10725 0    50   ~ 0
GND
Text Label 5400 10725 2    50   ~ 0
5+
$Comp
L pspice:CAP C7
U 1 1 61168CB8
P 5650 10725
F 0 "C7" V 5335 10725 50  0000 C CNN
F 1 "0.1uF" V 5426 10725 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5650 10725 50  0001 C CNN
F 3 "~" H 5650 10725 50  0001 C CNN
	1    5650 10725
	0    1    1    0   
$EndComp
Text Label 9200 10825 0    50   ~ 0
GND
Text Label 8700 10825 2    50   ~ 0
5+
$Comp
L pspice:CAP C6
U 1 1 61169247
P 8950 10825
F 0 "C6" V 8635 10825 50  0000 C CNN
F 1 "0.1uF" V 8726 10825 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8950 10825 50  0001 C CNN
F 3 "~" H 8950 10825 50  0001 C CNN
	1    8950 10825
	0    1    1    0   
$EndComp
Text Label 12825 9125 0    50   ~ 0
GND
$Comp
L pspice:CAP C8
U 1 1 61169660
P 12575 9125
F 0 "C8" V 12260 9125 50  0000 C CNN
F 1 "0.1uF" V 12351 9125 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12575 9125 50  0001 C CNN
F 3 "~" H 12575 9125 50  0001 C CNN
	1    12575 9125
	0    1    1    0   
$EndComp
Text Label 12325 9125 2    50   ~ 0
5+
Text Label 2675 1225 0    50   ~ 0
GND
Text Label 2175 1225 2    50   ~ 0
5+
$Comp
L pspice:CAP C5
U 1 1 6116A3B9
P 2425 1225
F 0 "C5" V 2110 1225 50  0000 C CNN
F 1 "0.1uF" V 2201 1225 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2425 1225 50  0001 C CNN
F 3 "~" H 2425 1225 50  0001 C CNN
	1    2425 1225
	0    1    1    0   
$EndComp
Text Label 2600 7800 3    50   ~ 0
GND
Text Label 2000 2200 2    50   ~ 0
RESET
Text Label 2000 3500 2    50   ~ 0
RDY1
$Comp
L MCU_Intel:80188 U1
U 1 1 6174C192
P 2600 4900
F 0 "U1" H 2600 1911 50  0000 C CNN
F 1 "80188" H 2600 1820 50  0000 C CNN
F 2 "Package_LCC:PLCC-68_THT-Socket" H 2650 6200 50  0001 C CIN
F 3 "http://datasheets.chipdb.org/Intel/x86/8018x/datashts/27243002.PDF" H 2600 6150 50  0001 C CNN
	1    2600 4900
	1    0    0    -1  
$EndComp
Text Label 2000 2700 2    50   ~ 0
X2
Text Label 2000 2500 2    50   ~ 0
X1
Text Label 2700 2000 0    50   ~ 0
5+
Text Label 2500 2000 0    50   ~ 0
5+
Text Label 2000 3700 2    50   ~ 0
GND
Text Label 13000 2225 2    50   ~ 0
S2
Text Label 3200 5000 0    50   ~ 0
S2
Text Label 2000 6100 2    50   ~ 0
INTR
Text Label 2000 6500 2    50   ~ 0
INTA
Text Notes 2550 775  3    250  ~ 0
THIS PINOUT DOES NOT MATCH THE SOCKET!!!!!!!!!
Text Label 2000 6300 2    50   ~ 0
5+
$Comp
L Device:R R2
U 1 1 61998F40
P 5550 12950
F 0 "R2" V 5343 12950 50  0000 C CNN
F 1 "10K ohm" V 5434 12950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 12950 50  0001 C CNN
F 3 "~" H 5550 12950 50  0001 C CNN
	1    5550 12950
	0    1    1    0   
$EndComp
Text Label 5700 12950 0    50   ~ 0
INTA
Text Label 5400 12950 2    50   ~ 0
5+
$EndSCHEMATC
