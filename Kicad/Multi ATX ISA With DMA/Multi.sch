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
$Comp
L 74xx:74LS139 U117
U 2 1 5FEFF66E
P 5700 13450
F 0 "U117" H 5700 13817 50  0000 C CNN
F 1 "74LS139" H 5700 13726 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5700 13450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 5700 13450 50  0001 C CNN
	2    5700 13450
	1    0    0    -1  
$EndComp
Text Label 9100 4625 2    50   ~ 0
IRQ1
Text Label 9100 5325 2    50   ~ 0
NMI
Text Label 2075 2100 2    50   ~ 0
GND
Text Label 2075 2000 2    50   ~ 0
12+
Text Label 2075 1800 2    50   ~ 0
12-
Text Label 2075 1700 2    50   ~ 0
DRQ2
Text Label 2075 1600 2    50   ~ 0
5-
Text Label 2075 1500 2    50   ~ 0
IRQ2
Text Label 2075 1400 2    50   ~ 0
5+
Text Label 2075 1300 2    50   ~ 0
RESOUT
Text Label 2075 1200 2    50   ~ 0
GND
Text Label 2075 2600 2    50   ~ 0
DACK3
Text Label 2075 2700 2    50   ~ 0
DRQ3
Text Label 2075 2800 2    50   ~ 0
DACK1
Text Label 2075 2900 2    50   ~ 0
DRQ1
Text Label 2075 3000 2    50   ~ 0
REFRQ
Text Label 2075 3200 2    50   ~ 0
IRQ7
Text Label 2075 3300 2    50   ~ 0
IRQ6
Text Label 2075 3400 2    50   ~ 0
IRQ5
Text Label 2075 3500 2    50   ~ 0
IRQ4
Text Label 2075 3600 2    50   ~ 0
IRQ3
Text Label 2075 3700 2    50   ~ 0
DACK2
Text Label 2075 3800 2    50   ~ 0
TC
Text Label 2075 3900 2    50   ~ 0
ALE
Text Label 2075 4000 2    50   ~ 0
5+
Text Label 2075 4200 2    50   ~ 0
GND
Text Label 3475 1300 0    50   ~ 0
D7
Text Label 3475 1400 0    50   ~ 0
D6
Text Label 3475 1500 0    50   ~ 0
D5
Text Label 3475 1600 0    50   ~ 0
D4
Text Label 3475 1700 0    50   ~ 0
D3
Text Label 3475 1800 0    50   ~ 0
D2
Text Label 3475 1900 0    50   ~ 0
D1
Text Label 3475 2000 0    50   ~ 0
D0
Text Label 3475 2100 0    50   ~ 0
RDY1
Text Label 3475 2200 0    50   ~ 0
AEN
Text Label 3475 2300 0    50   ~ 0
A19
Text Label 3475 2400 0    50   ~ 0
A18
Text Label 3475 2500 0    50   ~ 0
A17
Text Label 3475 2600 0    50   ~ 0
A16
Text Label 3475 2700 0    50   ~ 0
A15
Text Label 3475 2800 0    50   ~ 0
A14
Text Label 3475 2900 0    50   ~ 0
A13
Text Label 3475 3000 0    50   ~ 0
A12
Text Label 3475 3100 0    50   ~ 0
A11
Text Label 3475 3200 0    50   ~ 0
A10
Text Label 3475 3300 0    50   ~ 0
A9
Text Label 3475 3400 0    50   ~ 0
A8
Text Label 3475 3500 0    50   ~ 0
A7
Text Label 3475 3600 0    50   ~ 0
A6
Text Label 3475 3700 0    50   ~ 0
A5
Text Label 3475 3800 0    50   ~ 0
A4
Text Label 3475 3900 0    50   ~ 0
A3
Text Label 3475 4000 0    50   ~ 0
A2
Text Label 3475 4100 0    50   ~ 0
A1
Text Label 3475 4200 0    50   ~ 0
A0
Text Label 3475 1200 0    50   ~ 0
CH_CK
Text Label 5200 13350 2    50   ~ 0
GND
Text Label 5200 13650 2    50   ~ 0
SPK_EN_
Text Label 5200 13450 2    50   ~ 0
SPK_OUT
Text Label 6200 13350 0    50   ~ 0
SPK_PIN
Text Label 13200 13625 2    50   ~ 0
D0
Text Label 13200 13525 2    50   ~ 0
D1
Text Label 13200 13425 2    50   ~ 0
D2
Text Label 13200 13325 2    50   ~ 0
D3
Text Label 13200 13225 2    50   ~ 0
D4
Text Label 13200 13125 2    50   ~ 0
D5
Text Label 13200 13025 2    50   ~ 0
D6
Text Label 13200 12925 2    50   ~ 0
D7
$Comp
L Switch:SW_Push SW1
U 1 1 5FF2F753
P 2075 6575
F 0 "SW1" H 2075 6860 50  0001 C CNN
F 1 "RESET" H 2075 6768 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2075 6775 50  0001 C CNN
F 3 "~" H 2075 6775 50  0001 C CNN
	1    2075 6575
	-1   0    0    1   
$EndComp
Text Label 2275 6575 0    50   ~ 0
RESET
$Comp
L 74xx:74LS74 U14
U 1 1 5FF31A0C
P 6975 7475
F 0 "U14" H 6975 7956 50  0001 C CNN
F 1 "74LS74" H 6975 7864 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6975 7475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 6975 7475 50  0001 C CNN
	1    6975 7475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U14
U 2 1 5FF327F5
P 6975 8175
F 0 "U14" H 6975 8656 50  0001 C CNN
F 1 "74LS74" H 6975 8564 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6975 8175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 6975 8175 50  0001 C CNN
	2    6975 8175
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U14
U 3 1 5FF335DC
P 6975 8925
F 0 "U14" H 7205 8971 50  0001 L CNN
F 1 "74LS74" V 6700 8925 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6975 8925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 6975 8925 50  0001 C CNN
	3    6975 8925
	0    1    1    0   
$EndComp
Text Label 6675 7475 2    50   ~ 0
PCLK88
Text Label 6675 7375 2    50   ~ 0
FB2
Text Label 6975 7175 2    50   ~ 0
5+
Text Label 6975 7775 2    50   ~ 0
5+
Text Label 7275 7375 0    50   ~ 0
HF_PCLK
Text Label 7275 7575 0    50   ~ 0
FB2
Text Label 6575 8925 2    50   ~ 0
GND
Text Label 7375 8925 0    50   ~ 0
5+
Text Label 5400 11600 2    50   ~ 0
SPK_PIN
$Comp
L 74xx:74LS138 U13
U 1 1 5FF39086
P 3450 13575
F 0 "U13" H 3450 14356 50  0001 C CNN
F 1 "74LS138" H 3450 14264 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3450 13575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 3450 13575 50  0001 C CNN
	1    3450 13575
	1    0    0    -1  
$EndComp
Text Label 3450 12975 2    50   ~ 0
5+
Text Label 1750 12950 2    50   ~ 0
5+
Text Label 1250 13850 2    50   ~ 0
IO_0XXX
Text Label 1250 13950 2    50   ~ 0
A11
Text Label 1250 13750 2    50   ~ 0
5+
Text Label 1250 13450 2    50   ~ 0
A10
Text Label 1250 13350 2    50   ~ 0
A9
Text Label 1250 13250 2    50   ~ 0
A8
Text Label 1750 14250 2    50   ~ 0
GND
Text Label 2250 13250 0    50   ~ 0
IO_00XX
Text Label 2950 13875 2    50   ~ 0
IO_00XX
Text Label 2950 13975 2    50   ~ 0
A4
Text Label 2950 13775 2    50   ~ 0
5+
Text Label 2950 13475 2    50   ~ 0
A7
Text Label 2950 13375 2    50   ~ 0
A6
Text Label 2950 13275 2    50   ~ 0
A5
Text Label 3450 14275 2    50   ~ 0
GND
Text Label 3950 13575 0    50   ~ 0
IO_006X
$Comp
L Device:R R1
U 1 1 5FF4869F
P 1150 4775
F 0 "R1" H 1220 4821 50  0001 L CNN
F 1 "510 ohm" V 1035 4775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1080 4775 50  0001 C CNN
F 3 "~" H 1150 4775 50  0001 C CNN
	1    1150 4775
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5FF48A61
P 2050 4850
F 0 "D1" H 2043 5067 50  0001 C CNN
F 1 "POWER" H 2043 4975 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2050 4850 50  0001 C CNN
F 3 "~" H 2050 4850 50  0001 C CNN
	1    2050 4850
	1    0    0    -1  
$EndComp
Text Label 1000 4775 2    50   ~ 0
GND
Text Label 1300 4775 0    50   ~ 0
LED_GND
Text Label 1900 4850 2    50   ~ 0
LED_GND
Text Label 2200 4850 0    50   ~ 0
5+
$Comp
L Device:R U3
U 1 1 5FF4B88D
P 5550 11600
F 0 "U3" H 5620 11646 50  0001 L CNN
F 1 "33 ohm" V 5435 11600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 11600 50  0001 C CNN
F 3 "~" H 5550 11600 50  0001 C CNN
	1    5550 11600
	0    1    1    0   
$EndComp
Text Label 5700 11600 0    50   ~ 0
SPK_PIN_O
Text Label 5600 11850 2    50   ~ 0
SPK_PIN_O
Text Label 5600 12050 2    50   ~ 0
GND
Text Label 5600 12150 2    50   ~ 0
5+
$Comp
L 74xx:74LS04 U16
U 1 1 5FF518D3
P 9500 7125
F 0 "U16" H 9500 7442 50  0001 C CNN
F 1 "74LS04" H 9500 7350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 7125 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9500 7125 50  0001 C CNN
	1    9500 7125
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U16
U 2 1 5FF5211D
P 9500 7450
F 0 "U16" H 9500 7767 50  0001 C CNN
F 1 "74LS04" H 9500 7675 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 7450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9500 7450 50  0001 C CNN
	2    9500 7450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U16
U 3 1 5FF5313C
P 9500 7775
F 0 "U16" H 9500 8092 50  0001 C CNN
F 1 "74LS04" H 9500 8000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 7775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9500 7775 50  0001 C CNN
	3    9500 7775
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U16
U 7 1 5FF55544
P 9425 9150
F 0 "U16" V 9058 9150 50  0001 C CNN
F 1 "74LS04" V 9150 9150 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9425 9150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9425 9150 50  0001 C CNN
	7    9425 9150
	0    1    1    0   
$EndComp
Text Label 8925 9150 2    50   ~ 0
GND
Text Label 9925 9150 0    50   ~ 0
5+
Text Label 9800 7450 0    50   ~ 0
NMI
Text Label 9200 7450 2    50   ~ 0
NMI_INPUT
Text Label 9200 7125 2    50   ~ 0
NMI_EN
Text Label 9800 7125 0    50   ~ 0
NMI_EN_139
$Comp
L 74xx:74LS139 U17
U 1 1 5FF5A2F8
P 8025 12875
F 0 "U17" H 8025 13242 50  0001 C CNN
F 1 "74LS139" H 8025 13150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8025 12875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 8025 12875 50  0001 C CNN
	1    8025 12875
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U17
U 3 1 5FF5AFDE
P 7975 14125
F 0 "U17" V 7608 14125 50  0001 C CNN
F 1 "74LS139" V 7700 14125 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7975 14125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 7975 14125 50  0001 C CNN
	3    7975 14125
	0    1    1    0   
$EndComp
Text Label 7475 14125 2    50   ~ 0
GND
Text Label 8475 14125 0    50   ~ 0
5+
Text Label 8525 12775 0    50   ~ 0
NMI_INPUT
Text Label 7525 12775 2    50   ~ 0
GND
Text Label 7525 13075 2    50   ~ 0
NMI_EN_139
Text Label 7525 12875 2    50   ~ 0
CH_CK
Text Label 1025 4975 2    50   ~ 0
CH_CK
$Comp
L 74xx:74LS573 U15
U 1 1 60133ADF
P 13700 13425
F 0 "U15" H 13700 14406 50  0000 C CNN
F 1 "74LS573" H 13700 14315 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 13700 13425 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 13700 13425 50  0001 C CNN
	1    13700 13425
	1    0    0    -1  
$EndComp
Text Label 13200 13925 2    50   ~ 0
GND
Text Label 13700 14225 0    50   ~ 0
GND
Text Label 13700 12625 0    50   ~ 0
5+
Text Label 14200 13625 0    50   ~ 0
SPK_GO
Text Label 14200 13525 0    50   ~ 0
SPK_EN
Text Label 14200 13125 0    50   ~ 0
NMI_EN
Text Label 7525 13675 2    50   ~ 0
IO_006X
Text Label 7525 13475 2    50   ~ 0
A0
Text Label 7525 13375 2    50   ~ 0
A1
Text Label 8525 13375 0    50   ~ 0
IO_0060
Text Label 8525 13475 0    50   ~ 0
IO_0061
$Comp
L 74xx:74LS139 U117
U 1 1 60244EB2
P 5700 12850
F 0 "U117" H 5700 13217 50  0000 C CNN
F 1 "74LS139" H 5700 13126 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5700 12850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 5700 12850 50  0001 C CNN
	1    5700 12850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U117
U 3 1 60245F47
P 5700 14125
F 0 "U117" V 5333 14125 50  0000 C CNN
F 1 "74LS139" V 5424 14125 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5700 14125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 5700 14125 50  0001 C CNN
	3    5700 14125
	0    1    1    0   
$EndComp
Text Label 5200 14125 2    50   ~ 0
GND
Text Label 6200 14125 0    50   ~ 0
5+
Text Label 9275 13100 2    50   ~ 0
IO_0061
Text Label 9275 12900 2    50   ~ 0
IOWR
Text Label 9275 12800 2    50   ~ 0
GND
Text Label 10275 12800 0    50   ~ 0
PORT_0X61_EN
$Comp
L 74xx:74LS04 U16
U 4 1 602C2470
P 9500 8425
F 0 "U16" H 9500 8742 50  0000 C CNN
F 1 "74LS04" H 9500 8651 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 8425 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9500 8425 50  0001 C CNN
	4    9500 8425
	1    0    0    -1  
$EndComp
Text Label 9200 8425 2    50   ~ 0
PORT_0X61_EN
Text Label 9800 8425 0    50   ~ 0
PORT_0X61_CS
Text Label 13200 13825 2    50   ~ 0
PORT_0X61_CS
Text Label 12975 10625 0    50   ~ 0
IOWR
Text Label 12975 10725 0    50   ~ 0
IORD
Text Label 12975 10825 0    50   ~ 0
IO_00EX
Text Label 12975 10925 0    50   ~ 0
A2
Text Label 12975 11125 0    50   ~ 0
5+
Text Label 12975 11225 0    50   ~ 0
GND
Text Label 12975 11325 0    50   ~ 0
GND
Text Label 3950 13975 0    50   ~ 0
IO_00EX
$Comp
L 74xx:74LS04 U16
U 6 1 6028B501
P 9500 8750
F 0 "U16" H 9500 9067 50  0001 C CNN
F 1 "74LS04" H 9500 8975 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 8750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9500 8750 50  0001 C CNN
	6    9500 8750
	1    0    0    -1  
$EndComp
Text Label 12975 11025 0    50   ~ 0
IN_IRQ6
$Comp
L Connector:Bus_ISA_8bit J7
U 1 1 60827AD0
P 5225 2650
F 0 "J7" H 5225 4417 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 5225 4326 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 5225 2650 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 5225 2650 50  0001 C CNN
	1    5225 2650
	1    0    0    -1  
$EndComp
Text Label 4525 2450 2    50   ~ 0
IORD
Text Label 4525 2350 2    50   ~ 0
IOWR
Text Label 4525 2250 2    50   ~ 0
MRD
Text Label 4525 2150 2    50   ~ 0
MWR
Text Label 4525 2050 2    50   ~ 0
GND
Text Label 4525 1950 2    50   ~ 0
12+
Text Label 4525 1750 2    50   ~ 0
12-
Text Label 4525 1650 2    50   ~ 0
DRQ2
Text Label 4525 1550 2    50   ~ 0
5-
Text Label 4525 1450 2    50   ~ 0
IRQ2
Text Label 4525 1350 2    50   ~ 0
5+
Text Label 4525 1250 2    50   ~ 0
RESOUT
Text Label 4525 1150 2    50   ~ 0
GND
Text Label 4525 2550 2    50   ~ 0
DACK3
Text Label 4525 2650 2    50   ~ 0
DRQ3
Text Label 4525 2750 2    50   ~ 0
DACK1
Text Label 4525 2850 2    50   ~ 0
DRQ1
Text Label 4525 2950 2    50   ~ 0
REFRQ
Text Label 4525 3050 2    50   ~ 0
CLK88
Text Label 4525 3150 2    50   ~ 0
IRQ7
Text Label 4525 3250 2    50   ~ 0
IRQ6
Text Label 4525 3350 2    50   ~ 0
IRQ5
Text Label 4525 3450 2    50   ~ 0
IRQ4
Text Label 4525 3550 2    50   ~ 0
IRQ3
Text Label 4525 3650 2    50   ~ 0
DACK2
Text Label 4525 3750 2    50   ~ 0
TC
Text Label 4525 3850 2    50   ~ 0
ALE
Text Label 4525 3950 2    50   ~ 0
5+
Text Label 4525 4150 2    50   ~ 0
GND
Text Label 5925 1250 0    50   ~ 0
D7
Text Label 5925 1350 0    50   ~ 0
D6
Text Label 5925 1450 0    50   ~ 0
D5
Text Label 5925 1550 0    50   ~ 0
D4
Text Label 5925 1650 0    50   ~ 0
D3
Text Label 5925 1750 0    50   ~ 0
D2
Text Label 5925 1850 0    50   ~ 0
D1
Text Label 5925 1950 0    50   ~ 0
D0
Text Label 5925 2050 0    50   ~ 0
RDY1
Text Label 5925 2150 0    50   ~ 0
AEN
Text Label 5925 2250 0    50   ~ 0
A19
Text Label 5925 2350 0    50   ~ 0
A18
Text Label 5925 2450 0    50   ~ 0
A17
Text Label 5925 2550 0    50   ~ 0
A16
Text Label 5925 2650 0    50   ~ 0
A15
Text Label 5925 2750 0    50   ~ 0
A14
Text Label 5925 2850 0    50   ~ 0
A13
Text Label 5925 2950 0    50   ~ 0
A12
Text Label 5925 3050 0    50   ~ 0
A11
Text Label 5925 3150 0    50   ~ 0
A10
Text Label 5925 3250 0    50   ~ 0
A9
Text Label 5925 3350 0    50   ~ 0
A8
Text Label 5925 3450 0    50   ~ 0
A7
Text Label 5925 3550 0    50   ~ 0
A6
Text Label 5925 3650 0    50   ~ 0
A5
Text Label 5925 3750 0    50   ~ 0
A4
Text Label 5925 3850 0    50   ~ 0
A3
Text Label 5925 3950 0    50   ~ 0
A2
Text Label 5925 4050 0    50   ~ 0
A1
Text Label 5925 4150 0    50   ~ 0
A0
Text Label 5925 1150 0    50   ~ 0
CH_CK
$Comp
L Connector:Bus_ISA_8bit J8
U 1 1 6082A1D1
P 7325 2600
F 0 "J8" H 7325 4367 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 7325 4276 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 7325 2600 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 7325 2600 50  0001 C CNN
	1    7325 2600
	1    0    0    -1  
$EndComp
Text Label 6625 2400 2    50   ~ 0
IORD
Text Label 6625 2300 2    50   ~ 0
IOWR
Text Label 6625 2200 2    50   ~ 0
MRD
Text Label 6625 2100 2    50   ~ 0
MWR
Text Label 6625 2000 2    50   ~ 0
GND
Text Label 6625 1900 2    50   ~ 0
12+
Text Label 6625 1700 2    50   ~ 0
12-
Text Label 6625 1600 2    50   ~ 0
DRQ2
Text Label 6625 1500 2    50   ~ 0
5-
Text Label 6625 1400 2    50   ~ 0
IRQ2
Text Label 6625 1300 2    50   ~ 0
5+
Text Label 6625 1200 2    50   ~ 0
RESOUT
Text Label 6625 1100 2    50   ~ 0
GND
Text Label 6625 2500 2    50   ~ 0
DACK3
Text Label 6625 2600 2    50   ~ 0
DRQ3
Text Label 6625 2700 2    50   ~ 0
DACK1
Text Label 6625 2800 2    50   ~ 0
DRQ1
Text Label 6625 2900 2    50   ~ 0
REFRQ
Text Label 6625 3000 2    50   ~ 0
CLK88
Text Label 6625 3100 2    50   ~ 0
IRQ7
Text Label 6625 3200 2    50   ~ 0
IRQ6
Text Label 6625 3300 2    50   ~ 0
IRQ5
Text Label 6625 3400 2    50   ~ 0
IRQ4
Text Label 6625 3500 2    50   ~ 0
IRQ3
Text Label 6625 3600 2    50   ~ 0
DACK2
Text Label 6625 3700 2    50   ~ 0
TC
Text Label 6625 3800 2    50   ~ 0
ALE
Text Label 6625 3900 2    50   ~ 0
5+
Text Label 6625 4100 2    50   ~ 0
GND
Text Label 8025 1200 0    50   ~ 0
D7
Text Label 8025 1300 0    50   ~ 0
D6
Text Label 8025 1400 0    50   ~ 0
D5
Text Label 8025 1500 0    50   ~ 0
D4
Text Label 8025 1600 0    50   ~ 0
D3
Text Label 8025 1700 0    50   ~ 0
D2
Text Label 8025 1800 0    50   ~ 0
D1
Text Label 8025 1900 0    50   ~ 0
D0
Text Label 8025 2000 0    50   ~ 0
RDY1
Text Label 8025 2100 0    50   ~ 0
AEN
Text Label 8025 2200 0    50   ~ 0
A19
Text Label 8025 2300 0    50   ~ 0
A18
Text Label 8025 2400 0    50   ~ 0
A17
Text Label 8025 2500 0    50   ~ 0
A16
Text Label 8025 2600 0    50   ~ 0
A15
Text Label 8025 2700 0    50   ~ 0
A14
Text Label 8025 2800 0    50   ~ 0
A13
Text Label 8025 2900 0    50   ~ 0
A12
Text Label 8025 3000 0    50   ~ 0
A11
Text Label 8025 3100 0    50   ~ 0
A10
Text Label 8025 3200 0    50   ~ 0
A9
Text Label 8025 3300 0    50   ~ 0
A8
Text Label 8025 3400 0    50   ~ 0
A7
Text Label 8025 3500 0    50   ~ 0
A6
Text Label 8025 3600 0    50   ~ 0
A5
Text Label 8025 3700 0    50   ~ 0
A4
Text Label 8025 3800 0    50   ~ 0
A3
Text Label 8025 3900 0    50   ~ 0
A2
Text Label 8025 4000 0    50   ~ 0
A1
Text Label 8025 4100 0    50   ~ 0
A0
Text Label 8025 1100 0    50   ~ 0
CH_CK
$Comp
L Connector:Bus_ISA_8bit J9
U 1 1 639CB683
P 9425 2625
F 0 "J9" H 9425 4392 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 9425 4301 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 9425 2625 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 9425 2625 50  0001 C CNN
	1    9425 2625
	1    0    0    -1  
$EndComp
Text Label 8725 2425 2    50   ~ 0
IORD
Text Label 8725 2325 2    50   ~ 0
IOWR
Text Label 8725 2225 2    50   ~ 0
MRD
Text Label 8725 2125 2    50   ~ 0
MWR
Text Label 8725 2025 2    50   ~ 0
GND
Text Label 8725 1925 2    50   ~ 0
12+
Text Label 8725 1725 2    50   ~ 0
12-
Text Label 8725 1625 2    50   ~ 0
DRQ2
Text Label 8725 1525 2    50   ~ 0
5-
Text Label 8725 1425 2    50   ~ 0
IRQ2
Text Label 8725 1325 2    50   ~ 0
5+
Text Label 8725 1225 2    50   ~ 0
RESOUT
Text Label 8725 1125 2    50   ~ 0
GND
Text Label 8725 2525 2    50   ~ 0
DACK3
Text Label 8725 2625 2    50   ~ 0
DRQ3
Text Label 8725 2725 2    50   ~ 0
DACK1
Text Label 8725 2825 2    50   ~ 0
DRQ1
Text Label 8725 2925 2    50   ~ 0
REFRQ
Text Label 8725 3025 2    50   ~ 0
CLK88
Text Label 8725 3125 2    50   ~ 0
IRQ7
Text Label 8725 3225 2    50   ~ 0
IRQ6
Text Label 8725 3325 2    50   ~ 0
IRQ5
Text Label 8725 3425 2    50   ~ 0
IRQ4
Text Label 8725 3525 2    50   ~ 0
IRQ3
Text Label 8725 3625 2    50   ~ 0
DACK2
Text Label 8725 3725 2    50   ~ 0
TC
Text Label 8725 3825 2    50   ~ 0
ALE
Text Label 8725 3925 2    50   ~ 0
5+
Text Label 8725 4125 2    50   ~ 0
GND
Text Label 10125 1225 0    50   ~ 0
D7
Text Label 10125 1325 0    50   ~ 0
D6
Text Label 10125 1425 0    50   ~ 0
D5
Text Label 10125 1525 0    50   ~ 0
D4
Text Label 10125 1625 0    50   ~ 0
D3
Text Label 10125 1725 0    50   ~ 0
D2
Text Label 10125 1825 0    50   ~ 0
D1
Text Label 10125 1925 0    50   ~ 0
D0
Text Label 10125 2025 0    50   ~ 0
RDY1
Text Label 10125 2125 0    50   ~ 0
AEN
Text Label 10125 2225 0    50   ~ 0
A19
Text Label 10125 2325 0    50   ~ 0
A18
Text Label 10125 2425 0    50   ~ 0
A17
Text Label 10125 2525 0    50   ~ 0
A16
Text Label 10125 2625 0    50   ~ 0
A15
Text Label 10125 2725 0    50   ~ 0
A14
Text Label 10125 2825 0    50   ~ 0
A13
Text Label 10125 2925 0    50   ~ 0
A12
Text Label 10125 3025 0    50   ~ 0
A11
Text Label 10125 3125 0    50   ~ 0
A10
Text Label 10125 3225 0    50   ~ 0
A9
Text Label 10125 3325 0    50   ~ 0
A8
Text Label 10125 3425 0    50   ~ 0
A7
Text Label 10125 3525 0    50   ~ 0
A6
Text Label 10125 3625 0    50   ~ 0
A5
Text Label 10125 3725 0    50   ~ 0
A4
Text Label 10125 3825 0    50   ~ 0
A3
Text Label 10125 3925 0    50   ~ 0
A2
Text Label 10125 4025 0    50   ~ 0
A1
Text Label 10125 4125 0    50   ~ 0
A0
Text Label 10125 1125 0    50   ~ 0
CH_CK
$Comp
L W83C42P:W83C42P U19
U 1 1 60848F25
P 8300 9950
F 0 "U19" H 8300 10015 50  0000 C CNN
F 1 "82C42/83C42" H 8300 9924 50  0000 C CNN
F 2 "Package_LCC:PLCC-44_THT-Socket" H 8300 9950 50  0001 C CNN
F 3 "" H 8300 9950 50  0001 C CNN
	1    8300 9950
	1    0    0    -1  
$EndComp
Text Label 7950 11100 2    50   ~ 0
D0
Text Label 7950 11175 2    50   ~ 0
D1
Text Label 7950 11325 2    50   ~ 0
D3
Text Label 7950 11400 2    50   ~ 0
D4
Text Label 7950 11475 2    50   ~ 0
D5
Text Label 7950 11550 2    50   ~ 0
D6
Text Label 7950 11625 2    50   ~ 0
D7
Text Label 7950 11250 2    50   ~ 0
D2
Text Label 7950 10200 2    50   ~ 0
T0
Text Label 7950 10425 2    50   ~ 0
RESET
Text Label 7950 10725 2    50   ~ 0
IORD
Text Label 7950 10800 2    50   ~ 0
A2
Text Label 7950 10875 2    50   ~ 0
IOWR
Text Label 7950 11700 2    50   ~ 0
GND
Text Label 8650 10125 0    50   ~ 0
5+
Text Label 8650 10275 0    50   ~ 0
KBD_DATA
Text Label 8650 10350 0    50   ~ 0
KBD_CLK
Text Label 8650 10500 0    50   ~ 0
IRQ1
Text Label 8650 10575 0    50   ~ 0
5+
Text Label 9400 10375 2    50   ~ 0
T0
Text Label 8650 10200 0    50   ~ 0
T1
Text Label 9375 10600 2    50   ~ 0
T1
$Comp
L Connector:Mini-DIN-6 J2
U 1 1 60887EA5
P 9675 11475
F 0 "J2" H 9675 11842 50  0000 C CNN
F 1 "Mini-DIN-6" H 9675 11751 50  0000 C CNN
F 2 "My:6_PIN_DIN" H 9675 11475 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 9675 11475 50  0001 C CNN
	1    9675 11475
	1    0    0    -1  
$EndComp
Text Label 9975 11375 0    50   ~ 0
T0
Text Label 9975 11575 0    50   ~ 0
T1
Text Label 9375 11475 2    50   ~ 0
5+
Text Label 9975 11475 0    50   ~ 0
GND
Text Label 2475 12025 2    50   ~ 0
GND
Text Label 2975 11025 0    50   ~ 0
IO_0XXX
Text Label 1975 11025 2    50   ~ 0
A12
Text Label 1975 11125 2    50   ~ 0
A13
Text Label 1975 11225 2    50   ~ 0
A14
Text Label 1975 11525 2    50   ~ 0
5+
Text Label 1975 11625 2    50   ~ 0
HOLDA
Text Label 1975 11725 2    50   ~ 0
A15
Text Label 2475 10725 2    50   ~ 0
5+
$Comp
L 74xx:74LS138 U12
U 1 1 5FF38345
P 1750 13550
F 0 "U12" H 1750 14331 50  0001 C CNN
F 1 "74LS138" H 1750 14239 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1750 13550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 1750 13550 50  0001 C CNN
	1    1750 13550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U9
U 1 1 5FF377FE
P 2475 11325
F 0 "U9" H 2475 12106 50  0001 C CNN
F 1 "74LS138" H 2475 12014 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2475 11325 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 2475 11325 50  0001 C CNN
	1    2475 11325
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U17
U 2 1 60138DE8
P 8025 13475
F 0 "U17" H 8025 13842 50  0000 C CNN
F 1 "74LS139" H 8025 13751 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8025 13475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 8025 13475 50  0001 C CNN
	2    8025 13475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U20
U 7 1 6088CF4D
P 10925 11425
F 0 "U20" V 10558 11425 50  0000 C CNN
F 1 "74LS07" V 10649 11425 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10925 11425 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 10925 11425 50  0001 C CNN
	7    10925 11425
	0    1    1    0   
$EndComp
Text Label 10425 11425 2    50   ~ 0
GND
Text Label 11425 11425 0    50   ~ 0
5+
Text Label 11025 10800 0    50   ~ 0
T1
Text Label 11375 10325 0    50   ~ 0
T0
Text Label 10425 10800 2    50   ~ 0
KBD_DATA
Text Label 10775 10325 2    50   ~ 0
KBD_CLK_INVERTED
$Comp
L 74xx:74LS04 U16
U 5 1 60896907
P 9500 8100
F 0 "U16" H 9500 8417 50  0000 C CNN
F 1 "74LS04" H 9500 8326 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 8100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9500 8100 50  0001 C CNN
	5    9500 8100
	1    0    0    -1  
$EndComp
Text Label 9200 8100 2    50   ~ 0
KBD_CLK
Text Label 9800 8100 0    50   ~ 0
KBD_CLK_INVERTED
Text Label 1900 7325 0    50   ~ 0
RDY1
$Comp
L pspice:CAP C2
U 1 1 6090F6BD
P 15525 1975
F 0 "C2" V 15210 1975 50  0000 C CNN
F 1 "0.1uF" V 15301 1975 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15525 1975 50  0001 C CNN
F 3 "~" H 15525 1975 50  0001 C CNN
	1    15525 1975
	0    1    1    0   
$EndComp
Text Label 15775 1975 0    50   ~ 0
GND
Text Label 15275 1975 2    50   ~ 0
5+
$Comp
L pspice:CAP C3
U 1 1 6090F6C5
P 15525 2450
F 0 "C3" V 15210 2450 50  0000 C CNN
F 1 "0.1uF" V 15301 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15525 2450 50  0001 C CNN
F 3 "~" H 15525 2450 50  0001 C CNN
	1    15525 2450
	0    1    1    0   
$EndComp
Text Label 15775 2450 0    50   ~ 0
GND
Text Label 15275 2450 2    50   ~ 0
5+
$Comp
L pspice:CAP C4
U 1 1 6090F6CD
P 15525 2925
F 0 "C4" V 15210 2925 50  0000 C CNN
F 1 "0.1uF" V 15301 2925 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15525 2925 50  0001 C CNN
F 3 "~" H 15525 2925 50  0001 C CNN
	1    15525 2925
	0    1    1    0   
$EndComp
Text Label 15775 2925 0    50   ~ 0
GND
Text Label 15275 2925 2    50   ~ 0
5+
$Comp
L pspice:CAP C6
U 1 1 6090F6D5
P 15550 3325
F 0 "C6" V 15235 3325 50  0000 C CNN
F 1 "0.1uF" V 15326 3325 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15550 3325 50  0001 C CNN
F 3 "~" H 15550 3325 50  0001 C CNN
	1    15550 3325
	0    1    1    0   
$EndComp
Text Label 15800 3325 0    50   ~ 0
GND
Text Label 15300 3325 2    50   ~ 0
5+
$Comp
L pspice:CAP C5
U 1 1 6090F6DD
P 15650 3925
F 0 "C5" V 15335 3925 50  0000 C CNN
F 1 "0.1uF" V 15426 3925 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15650 3925 50  0001 C CNN
F 3 "~" H 15650 3925 50  0001 C CNN
	1    15650 3925
	0    1    1    0   
$EndComp
Text Label 15900 3925 0    50   ~ 0
GND
Text Label 15400 3925 2    50   ~ 0
5+
$Comp
L pspice:CAP C7
U 1 1 609109BD
P 16525 1500
F 0 "C7" V 16210 1500 50  0000 C CNN
F 1 "0.1uF" V 16301 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 16525 1500 50  0001 C CNN
F 3 "~" H 16525 1500 50  0001 C CNN
	1    16525 1500
	0    1    1    0   
$EndComp
Text Label 16775 1500 0    50   ~ 0
GND
Text Label 16275 1500 2    50   ~ 0
5+
$Comp
L pspice:CAP C8
U 1 1 609109C5
P 16550 2025
F 0 "C8" V 16235 2025 50  0000 C CNN
F 1 "0.1uF" V 16326 2025 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 16550 2025 50  0001 C CNN
F 3 "~" H 16550 2025 50  0001 C CNN
	1    16550 2025
	0    1    1    0   
$EndComp
Text Label 16800 2025 0    50   ~ 0
GND
Text Label 16300 2025 2    50   ~ 0
5+
$Comp
L pspice:CAP C12
U 1 1 609109DD
P 16575 3375
F 0 "C12" V 16260 3375 50  0000 C CNN
F 1 "0.1uF" V 16351 3375 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 16575 3375 50  0001 C CNN
F 3 "~" H 16575 3375 50  0001 C CNN
	1    16575 3375
	0    1    1    0   
$EndComp
Text Label 16825 3375 0    50   ~ 0
GND
Text Label 16325 3375 2    50   ~ 0
5+
$Comp
L pspice:CAP C1
U 1 1 639CB684
P 15550 1425
F 0 "C1" V 15235 1425 50  0000 C CNN
F 1 "0.1uF" V 15326 1425 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15550 1425 50  0001 C CNN
F 3 "~" H 15550 1425 50  0001 C CNN
	1    15550 1425
	0    1    1    0   
$EndComp
Text Label 15800 1425 0    50   ~ 0
GND
Text Label 15300 1425 2    50   ~ 0
5+
Text Label 12475 10625 2    50   ~ 0
D7
Text Label 12475 10725 2    50   ~ 0
D6
Text Label 12475 10825 2    50   ~ 0
D5
Text Label 12475 10925 2    50   ~ 0
D4
Text Label 12475 11025 2    50   ~ 0
D3
Text Label 12475 11125 2    50   ~ 0
D2
Text Label 12475 11225 2    50   ~ 0
D1
Text Label 12475 11325 2    50   ~ 0
D0
$Comp
L Connector_Generic:Conn_02x08_Odd_Even CH376
U 1 1 60303B9D
P 12675 10925
F 0 "CH376" H 12725 11442 50  0000 C CNN
F 1 "PORT 0XE0" H 12725 11351 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 12675 10925 50  0001 C CNN
F 3 "~" H 12675 10925 50  0001 C CNN
	1    12675 10925
	1    0    0    -1  
$EndComp
Text Label 8725 1825 2    50   ~ 0
NC
Text Label 6625 1800 2    50   ~ 0
NC
Text Label 4525 1850 2    50   ~ 0
NC
Text Label 2075 1900 2    50   ~ 0
NC
Text Label 7950 10575 2    50   ~ 0
IO_0060
$Comp
L pspice:CAP C23
U 1 1 60C27F20
P 12475 1450
F 0 "C23" V 12160 1450 50  0000 C CNN
F 1 "0.1uF" V 12251 1450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12475 1450 50  0001 C CNN
F 3 "~" H 12475 1450 50  0001 C CNN
	1    12475 1450
	0    1    1    0   
$EndComp
Text Label 12725 1450 0    50   ~ 0
GND
Text Label 12225 1450 2    50   ~ 0
5+
$Comp
L pspice:CAP C27
U 1 1 60C88A69
P 13875 1350
F 0 "C27" V 13560 1350 50  0000 C CNN
F 1 "0.1uF" V 13651 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13875 1350 50  0001 C CNN
F 3 "~" H 13875 1350 50  0001 C CNN
	1    13875 1350
	0    1    1    0   
$EndComp
Text Label 14125 1350 0    50   ~ 0
GND
Text Label 13625 1350 2    50   ~ 0
5+
$Comp
L pspice:CAP C29
U 1 1 60C88A71
P 13900 2300
F 0 "C29" V 13585 2300 50  0000 C CNN
F 1 "0.1uF" V 13676 2300 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13900 2300 50  0001 C CNN
F 3 "~" H 13900 2300 50  0001 C CNN
	1    13900 2300
	0    1    1    0   
$EndComp
Text Label 14150 2300 0    50   ~ 0
GND
Text Label 13650 2300 2    50   ~ 0
5+
$Comp
L pspice:CAP C28
U 1 1 60C88A79
P 13875 3200
F 0 "C28" V 13560 3200 50  0000 C CNN
F 1 "0.1uF" V 13651 3200 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13875 3200 50  0001 C CNN
F 3 "~" H 13875 3200 50  0001 C CNN
	1    13875 3200
	0    1    1    0   
$EndComp
Text Label 14125 3200 0    50   ~ 0
GND
Text Label 13625 3200 2    50   ~ 0
5+
Text Label 14100 4000 0    50   ~ 0
GND
Text Label 13600 4000 2    50   ~ 0
5+
Text Label 7950 10650 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5FF4D2DE
P 5800 11950
F 0 "J3" H 5880 11942 50  0001 L CNN
F 1 "SPK" H 5880 11896 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5800 11950 50  0001 C CNN
F 3 "~" H 5800 11950 50  0001 C CNN
	1    5800 11950
	1    0    0    -1  
$EndComp
Text Label 7150 6925 2    50   ~ 0
5+
Text Label 7650 6925 0    50   ~ 0
GND
$Comp
L pspice:CAP C22
U 1 1 60C284C4
P 7400 6925
F 0 "C22" V 7085 6925 50  0000 C CNN
F 1 "0.1uF" V 7176 6925 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7400 6925 50  0001 C CNN
F 3 "~" H 7400 6925 50  0001 C CNN
	1    7400 6925
	0    1    1    0   
$EndComp
Text Label 3550 6550 2    50   ~ 0
5+
Text Label 4050 6550 0    50   ~ 0
GND
$Comp
L pspice:CAP C24
U 1 1 60C27F30
P 3800 6550
F 0 "C24" V 3485 6550 50  0000 C CNN
F 1 "0.1uF" V 3576 6550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3800 6550 50  0001 C CNN
F 3 "~" H 3800 6550 50  0001 C CNN
	1    3800 6550
	0    1    1    0   
$EndComp
Text Label 12250 2400 2    50   ~ 0
5+
Text Label 12750 2400 0    50   ~ 0
GND
$Comp
L pspice:CAP C25
U 1 1 60C27F28
P 12500 2400
F 0 "C25" V 12185 2400 50  0000 C CNN
F 1 "0.1uF" V 12276 2400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12500 2400 50  0001 C CNN
F 3 "~" H 12500 2400 50  0001 C CNN
	1    12500 2400
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J10
U 1 1 60FDE0BB
P 9300 4925
F 0 "J10" H 9350 5442 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 9350 5351 50  0000 C CNN
F 2 "My:2x08_PIN_EDGE_CARD" H 9300 4925 50  0001 C CNN
F 3 "~" H 9300 4925 50  0001 C CNN
	1    9300 4925
	1    0    0    -1  
$EndComp
Text Label 9600 5325 0    50   ~ 0
SPK_OUT
Text Label 9600 5225 0    50   ~ 0
SPK_GO
Text Label 9600 5125 0    50   ~ 0
HF_PCLK
Text Label 9600 4725 0    50   ~ 0
READY
Text Label 9600 4925 0    50   ~ 0
HOLDA
Text Label 9600 4625 0    50   ~ 0
RESET
Text Label 9100 5125 2    50   ~ 0
IO_008X
Text Label 9100 4925 2    50   ~ 0
IO_004X
Text Label 9100 4825 2    50   ~ 0
IO_002X
Text Label 9100 4725 2    50   ~ 0
IO_000X
Text Label 3950 13675 0    50   ~ 0
IO_008X
Text Label 3950 13475 0    50   ~ 0
IO_004X
Text Label 3950 13375 0    50   ~ 0
IO_002X
Text Label 3950 13275 0    50   ~ 0
IO_000X
Text Label 9100 5025 2    50   ~ 0
IO_006X
Text Label 7275 8275 0    50   ~ 0
FB1
Text Label 6675 8075 2    50   ~ 0
FB1
Text Label 6675 8175 2    50   ~ 0
OSC88HF
Text Label 6975 7875 2    50   ~ 0
5+
Text Label 6975 8475 2    50   ~ 0
5+
Text Label 7275 8075 0    50   ~ 0
HF_OSC
Text Label 7950 10275 2    50   ~ 0
HF_OSC
Text Label 9600 4825 0    50   ~ 0
HOLD
Text Label 9200 7775 2    50   ~ 0
SPK_EN
Text Label 2075 3100 2    50   ~ 0
CLK88
Text Label 8725 4025 2    50   ~ 0
OSC88
Text Label 6625 4000 2    50   ~ 0
OSC88
Text Label 4525 4050 2    50   ~ 0
OSC88
Text Label 2075 4100 2    50   ~ 0
OSC88
$Comp
L pspice:CAP C9
U 1 1 61121934
P 16575 2700
F 0 "C9" V 16260 2700 50  0000 C CNN
F 1 "0.1uF" V 16351 2700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 16575 2700 50  0001 C CNN
F 3 "~" H 16575 2700 50  0001 C CNN
	1    16575 2700
	0    1    1    0   
$EndComp
Text Label 16825 2700 0    50   ~ 0
GND
Text Label 16325 2700 2    50   ~ 0
5+
Text Label 2075 2200 2    50   ~ 0
MWR
Text Label 2075 2300 2    50   ~ 0
MRD
Text Label 2075 2400 2    50   ~ 0
IOWR
Text Label 2075 2500 2    50   ~ 0
IORD
$Comp
L Connector:Bus_ISA_8bit J1
U 1 1 5FEF12BE
P 2775 2700
F 0 "J1" H 2775 4467 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 2775 4376 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 2775 2700 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 2775 2700 50  0001 C CNN
	1    2775 2700
	1    0    0    -1  
$EndComp
Text Label 16250 4100 2    50   ~ 0
5+
Text Label 16750 4100 0    50   ~ 0
GND
$Comp
L pspice:CAP C10
U 1 1 61037BD9
P 16500 4100
F 0 "C10" V 16185 4100 50  0000 C CNN
F 1 "0.1uF" V 16276 4100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 16500 4100 50  0001 C CNN
F 3 "~" H 16500 4100 50  0001 C CNN
	1    16500 4100
	0    1    1    0   
$EndComp
Text Label 9800 7775 0    50   ~ 0
SPK_EN_
$Comp
L Device:R R6
U 1 1 6101E0B3
P 1750 7325
F 0 "R6" H 1820 7371 50  0001 L CNN
F 1 "10k ohm" V 1650 7175 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1680 7325 50  0001 C CNN
F 3 "~" H 1750 7325 50  0001 C CNN
	1    1750 7325
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 6101EA33
P 1175 4975
F 0 "R7" H 1245 5021 50  0001 L CNN
F 1 "10k ohm" V 1075 4825 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1105 4975 50  0001 C CNN
F 3 "~" H 1175 4975 50  0001 C CNN
	1    1175 4975
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 6101EC76
P 9550 10375
F 0 "R8" H 9620 10421 50  0001 L CNN
F 1 "10k ohm" V 9450 10225 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9480 10375 50  0001 C CNN
F 3 "~" H 9550 10375 50  0001 C CNN
	1    9550 10375
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 6101EEA7
P 9525 10600
F 0 "R9" H 9595 10646 50  0001 L CNN
F 1 "10k ohm" V 9425 10450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9455 10600 50  0001 C CNN
F 3 "~" H 9525 10600 50  0001 C CNN
	1    9525 10600
	0    1    1    0   
$EndComp
Text Label 1600 7325 2    50   ~ 0
5+
Text Label 1325 4975 0    50   ~ 0
5+
Text Label 9700 10375 0    50   ~ 0
5+
Text Label 9675 10600 0    50   ~ 0
5+
$Comp
L Device:R_Network08 RN2
U 1 1 61020D8E
P 3350 5175
F 0 "RN2" V 2733 5175 50  0000 C CNN
F 1 "10K ohm" V 2824 5175 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3825 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3350 5175 50  0001 C CNN
	1    3350 5175
	0    1    1    0   
$EndComp
Text Label 3150 5375 2    50   ~ 0
DACK2
Text Label 3150 5275 2    50   ~ 0
DACK1
Text Label 3150 5175 2    50   ~ 0
REFRQ
Text Label 3150 5475 2    50   ~ 0
DACK3
Text Label 3150 4775 2    50   ~ 0
MWR
Text Label 3150 4875 2    50   ~ 0
MRD
Text Label 3150 4975 2    50   ~ 0
IOWR
Text Label 3150 5075 2    50   ~ 0
IORD
Text Label 3550 4775 0    50   ~ 0
5+
Text Label 1325 5400 0    50   ~ 0
GND
$Comp
L Device:R R13
U 1 1 61051EF0
P 1175 5400
F 0 "R13" H 1245 5446 50  0001 L CNN
F 1 "10k ohm" V 1075 5250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1105 5400 50  0001 C CNN
F 3 "~" H 1175 5400 50  0001 C CNN
	1    1175 5400
	0    1    1    0   
$EndComp
Text Label 1325 5175 0    50   ~ 0
GND
$Comp
L Device:R R12
U 1 1 61051C50
P 1175 5175
F 0 "R12" H 1245 5221 50  0001 L CNN
F 1 "10k ohm" V 1075 5025 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1105 5175 50  0001 C CNN
F 3 "~" H 1175 5175 50  0001 C CNN
	1    1175 5175
	0    1    1    0   
$EndComp
Text Label 1325 6425 0    50   ~ 0
GND
Text Label 1025 5400 2    50   ~ 0
TC
Text Label 1025 5175 2    50   ~ 0
AEN
Text Label 925  6525 2    50   ~ 0
HOLD
Text Label 925  6425 2    50   ~ 0
NMI_EN
Text Label 2375 5525 0    50   ~ 0
GND
Text Label 1975 5525 2    50   ~ 0
DRQ1
Text Label 1975 5625 2    50   ~ 0
DRQ3
Text Label 1975 5725 2    50   ~ 0
DRQ2
Text Label 925  6625 2    50   ~ 0
DRQ0
Text Label 9600 5025 0    50   ~ 0
DRQ0
$Comp
L Device:R_Network03 RN1
U 1 1 610AC981
P 2175 5625
F 0 "RN1" V 1858 5625 50  0000 C CNN
F 1 "10k ohm" V 1949 5625 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP4" V 2450 5625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2175 5625 50  0001 C CNN
	1    2175 5625
	0    1    1    0   
$EndComp
Text Label 4075 8925 2    50   ~ 0
GND
Text Label 4075 8700 2    50   ~ 0
GND
Text Label 4375 8700 0    50   ~ 0
X2_8284
Text Label 4375 8925 0    50   ~ 0
X1_8284
$Comp
L Device:R R4
U 1 1 61042BB1
P 4225 8925
F 0 "R4" H 4295 8971 50  0001 L CNN
F 1 "510 ohm" V 4110 8925 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4155 8925 50  0001 C CNN
F 3 "~" H 4225 8925 50  0001 C CNN
	1    4225 8925
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61041F82
P 4225 8700
F 0 "R2" H 4295 8746 50  0001 L CNN
F 1 "510 ohm" V 4110 8700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4155 8700 50  0001 C CNN
F 3 "~" H 4225 8700 50  0001 C CNN
	1    4225 8700
	0    1    1    0   
$EndComp
Text Label 4500 7375 2    50   ~ 0
PCLK
$Comp
L Device:R R18
U 1 1 6101AF6C
P 4650 7125
F 0 "R18" H 4720 7171 50  0001 L CNN
F 1 "27 ohm" V 4535 7125 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 7125 50  0001 C CNN
F 3 "~" H 4650 7125 50  0001 C CNN
	1    4650 7125
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 6101D71B
P 4650 7375
F 0 "R17" H 4720 7421 50  0001 L CNN
F 1 "27 ohm" V 4535 7375 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 7375 50  0001 C CNN
F 3 "~" H 4650 7375 50  0001 C CNN
	1    4650 7375
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6101DAFF
P 4650 7600
F 0 "R3" H 4720 7646 50  0001 L CNN
F 1 "27 ohm" V 4535 7600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 7600 50  0001 C CNN
F 3 "~" H 4650 7600 50  0001 C CNN
	1    4650 7600
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 6101E046
P 4650 7825
F 0 "R14" H 4720 7871 50  0001 L CNN
F 1 "27 ohm" V 4535 7825 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4580 7825 50  0001 C CNN
F 3 "~" H 4650 7825 50  0001 C CNN
	1    4650 7825
	0    1    1    0   
$EndComp
Text Label 4500 7600 2    50   ~ 0
OSC
Text Label 4500 7825 2    50   ~ 0
OSC
Text Label 4500 7125 2    50   ~ 0
CLK
Text Label 4800 7125 0    50   ~ 0
CLK88
Text Label 4800 7375 0    50   ~ 0
PCLK88
Text Label 4800 7600 0    50   ~ 0
OSC88HF
Text Label 4800 7825 0    50   ~ 0
OSC88
Text Label 3875 7725 0    50   ~ 0
PCLK
Text Label 5025 8425 2    50   ~ 0
X2_8284
Text Label 5025 8125 2    50   ~ 0
X1_8284
Text Label 3875 8325 0    50   ~ 0
X2_8284
Text Label 3875 8125 0    50   ~ 0
X1_8284
Text Label 3875 7825 0    50   ~ 0
OSC
Text Label 3875 7125 0    50   ~ 0
CLK
Text Label 3175 6825 2    50   ~ 0
5+
Text Label 2475 7125 2    50   ~ 0
RESET
Text Label 3175 8625 2    50   ~ 0
GND
Text Label 2475 8125 2    50   ~ 0
GND
Text Label 2475 7925 2    50   ~ 0
GND
Text Label 2475 7825 2    50   ~ 0
GND
Text Label 2475 7625 2    50   ~ 0
5+
Text Label 2475 7525 2    50   ~ 0
GND
Text Label 2475 7425 2    50   ~ 0
GND
Text Label 2475 7325 2    50   ~ 0
RDY1
Text Label 3875 7325 0    50   ~ 0
READY
Text Label 1950 7000 0    50   ~ 0
RESET
Text Label 1650 7000 2    50   ~ 0
POWER_GOOD
$Comp
L Device:R R5
U 1 1 5FF28804
P 1800 7000
F 0 "R5" H 1870 7046 50  0001 L CNN
F 1 "10k ohm" V 1870 7000 50  0000 C TNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 7000 50  0001 C CNN
F 3 "~" H 1800 7000 50  0001 C CNN
	1    1800 7000
	0    -1   -1   0   
$EndComp
$Comp
L Timer:8284 U11
U 1 1 5FF2451F
P 3175 7725
F 0 "U11" H 3175 8806 50  0000 C CNN
F 1 "8284" H 3175 8715 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 3175 7725 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 3175 7725 50  0001 C CNN
	1    3175 7725
	1    0    0    -1  
$EndComp
Text Label 1875 6575 2    50   ~ 0
GND
Text Label 3875 7525 0    50   ~ 0
RESOUT
$Comp
L Device:Crystal Y2
U 1 1 5FF2B16C
P 5025 8275
F 0 "Y2" H 5025 8543 50  0001 C CNN
F 1 "14.31818 MHz" V 5025 8451 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 5025 8275 50  0001 C CNN
F 3 "~" H 5025 8275 50  0001 C CNN
	1    5025 8275
	0    -1   -1   0   
$EndComp
Text Label 13550 5575 0    50   ~ 0
GND
$Comp
L Switch:SW_Push_DPDT 8x8mm1
U 1 1 60F1C9B0
P 13350 5675
F 0 "8x8mm1" H 13350 6160 50  0000 C CNN
F 1 "PWR SW" H 13350 6069 50  0000 C CNN
F 2 "My:6 PIN DTDP" H 13350 5875 50  0001 C CNN
F 3 "~" H 13350 5875 50  0001 C CNN
	1    13350 5675
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C26
U 1 1 60C88A81
P 13850 4000
F 0 "C26" V 13535 4000 50  0000 C CNN
F 1 "0.1uF" V 13626 4000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13850 4000 50  0001 C CNN
F 3 "~" H 13850 4000 50  0001 C CNN
	1    13850 4000
	0    1    1    0   
$EndComp
Text Label 13150 5475 2    50   ~ 0
POWER_ON
Text Label 12775 6600 2    50   ~ 0
GND
Text Label 12775 6500 2    50   ~ 0
POWER_ON
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 60FF488D
P 12975 6500
F 0 "J6" H 13055 6492 50  0001 L CNN
F 1 "PWR ON" H 13055 6446 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12975 6500 50  0001 C CNN
F 3 "~" H 12975 6500 50  0001 C CNN
	1    12975 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x12_Top_Bottom ATXPOWER1
U 1 1 60C3693A
P 11925 5950
F 0 "ATXPOWER1" H 11975 6575 50  0001 C CNN
F 1 "Conn_02x12_Top_Bottom" H 11975 6576 50  0001 C CNN
F 2 "My:24_PIN_ATX_POWER" H 11925 5950 50  0001 C CNN
F 3 "~" H 11925 5950 50  0001 C CNN
	1    11925 5950
	1    0    0    -1  
$EndComp
Text Label 12225 5750 0    50   ~ 0
POWER_ON
Text Label 12225 5550 0    50   ~ 0
12-
Text Label 12225 5650 0    50   ~ 0
GND
Text Label 12225 5950 0    50   ~ 0
GND
Text Label 12225 6050 0    50   ~ 0
GND
Text Label 12225 6250 0    50   ~ 0
5+
Text Label 11725 6350 2    50   ~ 0
12+
Text Label 11725 6150 2    50   ~ 0
POWER_GOOD
Text Label 11725 5950 2    50   ~ 0
5+
Text Label 11725 5850 2    50   ~ 0
GND
Text Label 11725 5750 2    50   ~ 0
5+
Text Label 11725 5650 2    50   ~ 0
GND
$Comp
L 74xx:74LS245 U2
U 1 1 6241FD68
P 11575 13375
F 0 "U2" H 11575 14356 50  0000 C CNN
F 1 "74LS245" H 11575 14265 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 11575 13375 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 11575 13375 50  0001 C CNN
	1    11575 13375
	1    0    0    -1  
$EndComp
Text Label 11075 13575 2    50   ~ 0
D0
Text Label 11075 13475 2    50   ~ 0
D1
Text Label 11075 13375 2    50   ~ 0
D2
Text Label 11075 13275 2    50   ~ 0
D3
Text Label 11075 13175 2    50   ~ 0
D4
Text Label 11075 13075 2    50   ~ 0
D5
Text Label 11075 12975 2    50   ~ 0
D6
Text Label 11075 12875 2    50   ~ 0
D7
Text Label 14200 12925 0    50   ~ 0
PORT_61_7
Text Label 14200 13025 0    50   ~ 0
PORT_61_6
Text Label 14200 13225 0    50   ~ 0
PORT_61_4
Text Label 14200 13325 0    50   ~ 0
PORT_61_3
Text Label 14200 13425 0    50   ~ 0
PORT_61_2
Text Label 12075 13575 0    50   ~ 0
SPK_GO
Text Label 12075 13475 0    50   ~ 0
SPK_EN
Text Label 12075 13075 0    50   ~ 0
NMI_EN
Text Label 12075 12875 0    50   ~ 0
PORT_61_7
Text Label 12075 12975 0    50   ~ 0
PORT_61_6
Text Label 12075 13175 0    50   ~ 0
PORT_61_4
Text Label 12075 13275 0    50   ~ 0
PORT_61_3
Text Label 12075 13375 0    50   ~ 0
PORT_61_2
Text Label 11575 12575 0    50   ~ 0
5+
Text Label 11575 14175 0    50   ~ 0
GND
Text Label 11075 13875 2    50   ~ 0
PORT_61_RD
Text Label 11075 13775 2    50   ~ 0
GND
$Comp
L 74xx:74LS139 U1
U 1 1 6242E5F1
P 9775 12900
F 0 "U1" H 9775 13267 50  0000 C CNN
F 1 "74LS139" H 9775 13176 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9775 12900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 9775 12900 50  0001 C CNN
	1    9775 12900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U1
U 2 1 624308B9
P 9775 13400
F 0 "U1" H 9775 13767 50  0000 C CNN
F 1 "74LS139" H 9775 13676 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9775 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 9775 13400 50  0001 C CNN
	2    9775 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U1
U 3 1 62430F1D
P 9775 13900
F 0 "U1" V 9408 13900 50  0000 C CNN
F 1 "74LS139" V 9499 13900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9775 13900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 9775 13900 50  0001 C CNN
	3    9775 13900
	0    1    1    0   
$EndComp
Text Label 9275 13300 2    50   ~ 0
GND
Text Label 9275 13400 2    50   ~ 0
IORD
Text Label 9275 13600 2    50   ~ 0
IO_0061
Text Label 9275 13900 2    50   ~ 0
GND
Text Label 10275 13900 0    50   ~ 0
5+
Text Label 10275 13300 0    50   ~ 0
PORT_61_RD
$Comp
L Device:R_Network03 RN3
U 1 1 62440244
P 1125 6525
F 0 "RN3" V 808 6525 50  0000 C CNN
F 1 "10k ohm" V 899 6525 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP4" V 1400 6525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1125 6525 50  0001 C CNN
	1    1125 6525
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C13
U 1 1 6245F169
P 12525 3150
F 0 "C13" V 12210 3150 50  0000 C CNN
F 1 "0.1uF" V 12301 3150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12525 3150 50  0001 C CNN
F 3 "~" H 12525 3150 50  0001 C CNN
	1    12525 3150
	0    1    1    0   
$EndComp
Text Label 12775 3150 0    50   ~ 0
GND
Text Label 12275 3150 2    50   ~ 0
5+
Text Label 12750 3950 0    50   ~ 0
GND
Text Label 12250 3950 2    50   ~ 0
5+
$Comp
L pspice:CAP C11
U 1 1 6245F173
P 12500 3950
F 0 "C11" V 12185 3950 50  0000 C CNN
F 1 "0.1uF" V 12276 3950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12500 3950 50  0001 C CNN
F 3 "~" H 12500 3950 50  0001 C CNN
	1    12500 3950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS670 U64
U 1 1 610632BC
P 18575 10900
F 0 "U64" H 18575 11881 50  0000 C CNN
F 1 "74LS670" H 18575 11790 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 18575 10900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 18575 10900 50  0001 C CNN
	1    18575 10900
	1    0    0    -1  
$EndComp
Text Label 18175 6700 0    50   ~ 0
A7
Text Label 18175 6600 0    50   ~ 0
A6
Text Label 18175 6500 0    50   ~ 0
A5
Text Label 18175 6400 0    50   ~ 0
A4
Text Label 16775 6700 2    50   ~ 0
A3
Text Label 16775 6600 2    50   ~ 0
A2
Text Label 16775 6500 2    50   ~ 0
A1
Text Label 16775 6400 2    50   ~ 0
A0
Text Label 16825 13150 0    50   ~ 0
GND
Text Label 16950 11250 0    50   ~ 0
GND
Text Label 16450 11250 2    50   ~ 0
5+
$Comp
L pspice:CAP C63
U 1 1 6106B923
P 16700 11250
F 0 "C63" V 16385 11250 50  0000 C CNN
F 1 "0.1uF" V 16476 11250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 16700 11250 50  0001 C CNN
F 3 "~" H 16700 11250 50  0001 C CNN
	1    16700 11250
	0    1    1    0   
$EndComp
Text Label 18375 5700 0    50   ~ 0
GND
Text Label 17875 5700 2    50   ~ 0
5+
$Comp
L pspice:CAP C64
U 1 1 6106BA7C
P 18125 5700
F 0 "C64" V 17810 5700 50  0000 C CNN
F 1 "0.1uF" V 17901 5700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 18125 5700 50  0001 C CNN
F 3 "~" H 18125 5700 50  0001 C CNN
	1    18125 5700
	0    1    1    0   
$EndComp
Text Label 16775 8300 2    50   ~ 0
D0
Text Label 16775 8400 2    50   ~ 0
D1
Text Label 16775 8500 2    50   ~ 0
D2
Text Label 16775 8600 2    50   ~ 0
D3
Text Label 16775 8700 2    50   ~ 0
D4
Text Label 16775 8800 2    50   ~ 0
D5
Text Label 16775 8900 2    50   ~ 0
D6
Text Label 16775 9000 2    50   ~ 0
D7
Text Label 15300 6525 0    50   ~ 0
GND
$Comp
L pspice:CAP C65
U 1 1 61169660
P 15050 6525
F 0 "C65" V 14735 6525 50  0000 C CNN
F 1 "0.1uF" V 14826 6525 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15050 6525 50  0001 C CNN
F 3 "~" H 15050 6525 50  0001 C CNN
	1    15050 6525
	0    1    1    0   
$EndComp
Text Label 14800 6525 2    50   ~ 0
5+
$Comp
L Interface:8237 U61
U 1 1 61463853
P 17475 7700
F 0 "U61" H 17475 6011 50  0000 C CNN
F 1 "8237" H 17475 5920 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 17475 7900 50  0001 C CNN
F 3 "https://pdos.csail.mit.edu/6.828/2012/readings/hardware/8237A.pdf" H 17475 8000 50  0001 C CNN
	1    17475 7700
	1    0    0    -1  
$EndComp
Text Label 18075 10400 2    50   ~ 0
D0
Text Label 18075 10500 2    50   ~ 0
D1
Text Label 18075 10600 2    50   ~ 0
D2
Text Label 18075 10700 2    50   ~ 0
D3
Text Label 18075 10900 2    50   ~ 0
A0
Text Label 18075 11000 2    50   ~ 0
A1
Text Label 18075 11100 2    50   ~ 0
760_EN
Text Label 18075 11300 2    50   ~ 0
DACK3
Text Label 18075 11400 2    50   ~ 0
DACK2
Text Label 18075 11500 2    50   ~ 0
AEN_OE
Text Label 18575 11800 0    50   ~ 0
GND
Text Label 18575 10100 0    50   ~ 0
5+
Text Label 19075 10400 0    50   ~ 0
A16
Text Label 19075 10500 0    50   ~ 0
A17
Text Label 19075 10600 0    50   ~ 0
A18
Text Label 19075 10700 0    50   ~ 0
A19
Text Label 17575 6100 0    50   ~ 0
5+
Text Label 17475 6100 2    50   ~ 0
5+
Text Label 18175 7000 0    50   ~ 0
HOLD
Text Label 18175 7400 0    50   ~ 0
MWR
Text Label 18175 7300 0    50   ~ 0
MRD
Text Label 18175 7800 0    50   ~ 0
EOP
$Comp
L Device:R R62
U 1 1 6146BFF5
P 19100 7750
F 0 "R62" H 19170 7796 50  0000 L CNN
F 1 "10k ohm" H 19170 7705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 19030 7750 50  0001 C CNN
F 3 "~" H 19100 7750 50  0001 C CNN
	1    19100 7750
	1    0    0    -1  
$EndComp
Text Label 19100 7600 0    50   ~ 0
EOP
Text Label 19100 7900 0    50   ~ 0
5+
Text Label 18175 8100 0    50   ~ 0
DACK0
Text Label 18175 8200 0    50   ~ 0
DACK1
Text Label 18175 8300 0    50   ~ 0
DACK2
Text Label 18175 8400 0    50   ~ 0
DACK3
Text Label 18175 8700 0    50   ~ 0
ADSTB
Text Label 18175 9000 0    50   ~ 0
AEN
Text Label 17475 9300 0    50   ~ 0
GND
Text Label 16775 8100 2    50   ~ 0
RESOUT
Text Label 16775 7700 2    50   ~ 0
DRQ1
Text Label 16775 7600 2    50   ~ 0
DRQ0_
Text Label 16775 7800 2    50   ~ 0
DRQ2
Text Label 16775 7900 2    50   ~ 0
DRQ3
Text Label 16775 7400 2    50   ~ 0
IOWR
Text Label 16775 7300 2    50   ~ 0
IORD
Text Label 16775 7200 2    50   ~ 0
HOLDA
Text Label 16775 7000 2    50   ~ 0
READY
Text Label 16775 6900 2    50   ~ 0
IO_000X
Text Label 16025 6375 2    50   ~ 0
CLK
Text Label 16025 6675 0    50   ~ 0
CLK88_1
Text Label 16775 7100 2    50   ~ 0
CLK88_1
$Comp
L 74xx:74LS04 U63
U 1 1 61470FF9
P 14700 7075
F 0 "U63" H 14700 7392 50  0000 C CNN
F 1 "74LS04" H 14700 7301 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14700 7075 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14700 7075 50  0001 C CNN
	1    14700 7075
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U63
U 7 1 61471E02
P 14600 8700
F 0 "U63" V 14233 8700 50  0000 C CNN
F 1 "74LS04" V 14324 8700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14600 8700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14600 8700 50  0001 C CNN
	7    14600 8700
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS04 U63
U 2 1 61472C9C
P 14625 7625
F 0 "U63" H 14625 7942 50  0000 C CNN
F 1 "74LS04" H 14625 7851 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14625 7625 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14625 7625 50  0001 C CNN
	2    14625 7625
	1    0    0    -1  
$EndComp
Text Label 14325 7625 2    50   ~ 0
AEN
Text Label 14925 7625 0    50   ~ 0
AEN_OE
Text Label 15100 8700 0    50   ~ 0
5+
Text Label 14100 8700 2    50   ~ 0
GND
Text Label 17325 12250 0    50   ~ 0
A11
Text Label 17325 12150 0    50   ~ 0
A12
Text Label 17325 12050 0    50   ~ 0
A13
Text Label 17325 12350 0    50   ~ 0
A10
Text Label 17325 12450 0    50   ~ 0
A9
Text Label 17325 12550 0    50   ~ 0
A8
Text Label 16325 12550 2    50   ~ 0
D0
Text Label 16325 12450 2    50   ~ 0
D1
Text Label 16325 12350 2    50   ~ 0
D2
Text Label 16325 12250 2    50   ~ 0
D3
Text Label 16325 12150 2    50   ~ 0
D4
Text Label 16325 12050 2    50   ~ 0
D5
Text Label 16325 11950 2    50   ~ 0
D6
Text Label 16325 11850 2    50   ~ 0
D7
Text Label 16325 12750 2    50   ~ 0
ADSTB
Text Label 16325 12850 2    50   ~ 0
AEN_OE
Text Label 5200 12850 2    50   ~ 0
IO_008X
Text Label 5200 12750 2    50   ~ 0
IOWR
Text Label 5200 13050 2    50   ~ 0
GND
$Comp
L 74xx:74LS04 U63
U 3 1 614D3A02
P 14625 8125
F 0 "U63" H 14625 8442 50  0000 C CNN
F 1 "74LS04" H 14625 8351 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14625 8125 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 14625 8125 50  0001 C CNN
	3    14625 8125
	1    0    0    -1  
$EndComp
Text Label 14325 8125 2    50   ~ 0
EOP
Text Label 14925 8125 0    50   ~ 0
TC
$Comp
L Device:R R61
U 1 1 6174F842
P 15950 7700
F 0 "R61" H 16020 7746 50  0000 L CNN
F 1 "10k ohm" H 16020 7655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15880 7700 50  0001 C CNN
F 3 "~" H 15950 7700 50  0001 C CNN
	1    15950 7700
	1    0    0    -1  
$EndComp
Text Label 15950 7850 0    50   ~ 0
GND
Text Label 15950 7550 2    50   ~ 0
DRQ0_
$Comp
L Device:R R63
U 1 1 623CE352
P 16025 6525
F 0 "R63" H 16095 6571 50  0000 L CNN
F 1 "27 ohm" H 16095 6480 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 15955 6525 50  0001 C CNN
F 3 "~" H 16025 6525 50  0001 C CNN
	1    16025 6525
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS573 U65
U 1 1 610661C4
P 16825 12350
F 0 "U65" H 16825 13331 50  0000 C CNN
F 1 "74LS573" H 16825 13240 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 16825 12350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 16825 12350 50  0001 C CNN
	1    16825 12350
	1    0    0    -1  
$EndComp
Text Label 17325 11850 0    50   ~ 0
A15
Text Label 17325 11950 0    50   ~ 0
A14
Text Label 16825 11550 0    50   ~ 0
5+
Text Label 6200 12750 0    50   ~ 0
760_EN
$Comp
L 74xx:74LS07 U20
U 2 1 6088AC3C
P 10725 10800
F 0 "U20" H 10725 11117 50  0000 C CNN
F 1 "74LS07" H 10725 11026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10725 10800 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 10725 10800 50  0001 C CNN
	2    10725 10800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U20
U 1 1 6088A1DA
P 11075 10325
F 0 "U20" H 11075 10642 50  0000 C CNN
F 1 "74LS07" H 11075 10551 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 11075 10325 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 11075 10325 50  0001 C CNN
	1    11075 10325
	1    0    0    -1  
$EndComp
Text Label 8450 -1875 2    50   ~ 0
GND
Text Label 8450 -1975 2    50   ~ 0
12+
Text Label 8450 -2175 2    50   ~ 0
12-
Text Label 8450 -2275 2    50   ~ 0
DRQ2
Text Label 8450 -2375 2    50   ~ 0
5-
Text Label 8450 -2475 2    50   ~ 0
IRQ2
Text Label 8450 -2575 2    50   ~ 0
5+
Text Label 8450 -2675 2    50   ~ 0
RESOUT
Text Label 8450 -2775 2    50   ~ 0
GND
Text Label 8450 -1375 2    50   ~ 0
DACK3
Text Label 8450 -1275 2    50   ~ 0
DRQ3
Text Label 8450 -1175 2    50   ~ 0
DACK1
Text Label 8450 -1075 2    50   ~ 0
DRQ1
Text Label 8450 -975 2    50   ~ 0
REFRQ
Text Label 8450 -775 2    50   ~ 0
IRQ7
Text Label 8450 -675 2    50   ~ 0
IRQ6
Text Label 8450 -575 2    50   ~ 0
IRQ5
Text Label 8450 -475 2    50   ~ 0
IRQ4
Text Label 8450 -375 2    50   ~ 0
IRQ3
Text Label 8450 -275 2    50   ~ 0
DACK2
Text Label 8450 -175 2    50   ~ 0
TC
Text Label 8450 -75  2    50   ~ 0
ALE
Text Label 8450 25   2    50   ~ 0
5+
Text Label 8450 225  2    50   ~ 0
GND
Text Label 9850 -2675 0    50   ~ 0
D7
Text Label 9850 -2575 0    50   ~ 0
D6
Text Label 9850 -2475 0    50   ~ 0
D5
Text Label 9850 -2375 0    50   ~ 0
D4
Text Label 9850 -2275 0    50   ~ 0
D3
Text Label 9850 -2175 0    50   ~ 0
D2
Text Label 9850 -2075 0    50   ~ 0
D1
Text Label 9850 -1975 0    50   ~ 0
D0
Text Label 9850 -1875 0    50   ~ 0
RDY1
Text Label 9850 -1775 0    50   ~ 0
AEN
Text Label 9850 -1675 0    50   ~ 0
A19
Text Label 9850 -1575 0    50   ~ 0
A18
Text Label 9850 -1475 0    50   ~ 0
A17
Text Label 9850 -1375 0    50   ~ 0
A16
Text Label 9850 -1275 0    50   ~ 0
A15
Text Label 9850 -1175 0    50   ~ 0
A14
Text Label 9850 -1075 0    50   ~ 0
A13
Text Label 9850 -975 0    50   ~ 0
A12
Text Label 9850 -875 0    50   ~ 0
A11
Text Label 9850 -775 0    50   ~ 0
A10
Text Label 9850 -675 0    50   ~ 0
A9
Text Label 9850 -575 0    50   ~ 0
A8
Text Label 9850 -475 0    50   ~ 0
A7
Text Label 9850 -375 0    50   ~ 0
A6
Text Label 9850 -275 0    50   ~ 0
A5
Text Label 9850 -175 0    50   ~ 0
A4
Text Label 9850 -75  0    50   ~ 0
A3
Text Label 9850 25   0    50   ~ 0
A2
Text Label 9850 125  0    50   ~ 0
A1
Text Label 9850 225  0    50   ~ 0
A0
Text Label 9850 -2775 0    50   ~ 0
CH_CK
Text Label 8450 -2075 2    50   ~ 0
NC
Text Label 8450 -875 2    50   ~ 0
CLK88
Text Label 8450 125  2    50   ~ 0
OSC88
Text Label 8450 -1775 2    50   ~ 0
MWR
Text Label 8450 -1675 2    50   ~ 0
MRD
Text Label 8450 -1575 2    50   ~ 0
IOWR
Text Label 8450 -1475 2    50   ~ 0
IORD
$Comp
L Connector:Bus_ISA_8bit J11
U 1 1 6396CDAC
P 9150 -1275
F 0 "J11" H 9150 492 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 9150 401 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 9150 -1275 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 9150 -1275 50  0001 C CNN
	1    9150 -1275
	1    0    0    -1  
$EndComp
Text Label 5575 -1775 2    50   ~ 0
GND
Text Label 5575 -1875 2    50   ~ 0
12+
Text Label 5575 -2075 2    50   ~ 0
12-
Text Label 5575 -2175 2    50   ~ 0
DRQ2
Text Label 5575 -2275 2    50   ~ 0
5-
Text Label 5575 -2375 2    50   ~ 0
IRQ2
Text Label 5575 -2475 2    50   ~ 0
5+
Text Label 5575 -2575 2    50   ~ 0
RESOUT
Text Label 5575 -2675 2    50   ~ 0
GND
Text Label 5575 -1275 2    50   ~ 0
DACK3
Text Label 5575 -1175 2    50   ~ 0
DRQ3
Text Label 5575 -1075 2    50   ~ 0
DACK1
Text Label 5575 -975 2    50   ~ 0
DRQ1
Text Label 5575 -875 2    50   ~ 0
REFRQ
Text Label 5575 -675 2    50   ~ 0
IRQ7
Text Label 5575 -575 2    50   ~ 0
IRQ6
Text Label 5575 -475 2    50   ~ 0
IRQ5
Text Label 5575 -375 2    50   ~ 0
IRQ4
Text Label 5575 -275 2    50   ~ 0
IRQ3
Text Label 5575 -175 2    50   ~ 0
DACK2
Text Label 5575 -75  2    50   ~ 0
TC
Text Label 5575 25   2    50   ~ 0
ALE
Text Label 5575 125  2    50   ~ 0
5+
Text Label 5575 325  2    50   ~ 0
GND
Text Label 6975 -2575 0    50   ~ 0
D7
Text Label 6975 -2475 0    50   ~ 0
D6
Text Label 6975 -2375 0    50   ~ 0
D5
Text Label 6975 -2275 0    50   ~ 0
D4
Text Label 6975 -2175 0    50   ~ 0
D3
Text Label 6975 -2075 0    50   ~ 0
D2
Text Label 6975 -1975 0    50   ~ 0
D1
Text Label 6975 -1875 0    50   ~ 0
D0
Text Label 6975 -1775 0    50   ~ 0
RDY1
Text Label 6975 -1675 0    50   ~ 0
AEN
Text Label 6975 -1575 0    50   ~ 0
A19
Text Label 6975 -1475 0    50   ~ 0
A18
Text Label 6975 -1375 0    50   ~ 0
A17
Text Label 6975 -1275 0    50   ~ 0
A16
Text Label 6975 -1175 0    50   ~ 0
A15
Text Label 6975 -1075 0    50   ~ 0
A14
Text Label 6975 -975 0    50   ~ 0
A13
Text Label 6975 -875 0    50   ~ 0
A12
Text Label 6975 -775 0    50   ~ 0
A11
Text Label 6975 -675 0    50   ~ 0
A10
Text Label 6975 -575 0    50   ~ 0
A9
Text Label 6975 -475 0    50   ~ 0
A8
Text Label 6975 -375 0    50   ~ 0
A7
Text Label 6975 -275 0    50   ~ 0
A6
Text Label 6975 -175 0    50   ~ 0
A5
Text Label 6975 -75  0    50   ~ 0
A4
Text Label 6975 25   0    50   ~ 0
A3
Text Label 6975 125  0    50   ~ 0
A2
Text Label 6975 225  0    50   ~ 0
A1
Text Label 6975 325  0    50   ~ 0
A0
Text Label 6975 -2675 0    50   ~ 0
CH_CK
Text Label 5575 -1975 2    50   ~ 0
NC
Text Label 5575 -775 2    50   ~ 0
CLK88
Text Label 5575 225  2    50   ~ 0
OSC88
Text Label 5575 -1675 2    50   ~ 0
MWR
Text Label 5575 -1575 2    50   ~ 0
MRD
Text Label 5575 -1475 2    50   ~ 0
IOWR
Text Label 5575 -1375 2    50   ~ 0
IORD
$Comp
L Connector:Bus_ISA_8bit J5
U 1 1 6396DBFD
P 6275 -1175
F 0 "J5" H 6275 592 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 6275 501 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 6275 -1175 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 6275 -1175 50  0001 C CNN
	1    6275 -1175
	1    0    0    -1  
$EndComp
Text Label 2250 -2025 2    50   ~ 0
GND
Text Label 2250 -2125 2    50   ~ 0
12+
Text Label 2250 -2325 2    50   ~ 0
12-
Text Label 2250 -2425 2    50   ~ 0
DRQ2
Text Label 2250 -2525 2    50   ~ 0
5-
Text Label 2250 -2625 2    50   ~ 0
IRQ2
Text Label 2250 -2725 2    50   ~ 0
5+
Text Label 2250 -2825 2    50   ~ 0
RESOUT
Text Label 2250 -2925 2    50   ~ 0
GND
Text Label 2250 -1525 2    50   ~ 0
DACK3
Text Label 2250 -1425 2    50   ~ 0
DRQ3
Text Label 2250 -1325 2    50   ~ 0
DACK1
Text Label 2250 -1225 2    50   ~ 0
DRQ1
Text Label 2250 -1125 2    50   ~ 0
REFRQ
Text Label 2250 -925 2    50   ~ 0
IRQ7
Text Label 2250 -825 2    50   ~ 0
IRQ6
Text Label 2250 -725 2    50   ~ 0
IRQ5
Text Label 2250 -625 2    50   ~ 0
IRQ4
Text Label 2250 -525 2    50   ~ 0
IRQ3
Text Label 2250 -425 2    50   ~ 0
DACK2
Text Label 2250 -325 2    50   ~ 0
TC
Text Label 2250 -225 2    50   ~ 0
ALE
Text Label 2250 -125 2    50   ~ 0
5+
Text Label 2250 75   2    50   ~ 0
GND
Text Label 3650 -2825 0    50   ~ 0
D7
Text Label 3650 -2725 0    50   ~ 0
D6
Text Label 3650 -2625 0    50   ~ 0
D5
Text Label 3650 -2525 0    50   ~ 0
D4
Text Label 3650 -2425 0    50   ~ 0
D3
Text Label 3650 -2325 0    50   ~ 0
D2
Text Label 3650 -2225 0    50   ~ 0
D1
Text Label 3650 -2125 0    50   ~ 0
D0
Text Label 3650 -2025 0    50   ~ 0
RDY1
Text Label 3650 -1925 0    50   ~ 0
AEN
Text Label 3650 -1825 0    50   ~ 0
A19
Text Label 3650 -1725 0    50   ~ 0
A18
Text Label 3650 -1625 0    50   ~ 0
A17
Text Label 3650 -1525 0    50   ~ 0
A16
Text Label 3650 -1425 0    50   ~ 0
A15
Text Label 3650 -1325 0    50   ~ 0
A14
Text Label 3650 -1225 0    50   ~ 0
A13
Text Label 3650 -1125 0    50   ~ 0
A12
Text Label 3650 -1025 0    50   ~ 0
A11
Text Label 3650 -925 0    50   ~ 0
A10
Text Label 3650 -825 0    50   ~ 0
A9
Text Label 3650 -725 0    50   ~ 0
A8
Text Label 3650 -625 0    50   ~ 0
A7
Text Label 3650 -525 0    50   ~ 0
A6
Text Label 3650 -425 0    50   ~ 0
A5
Text Label 3650 -325 0    50   ~ 0
A4
Text Label 3650 -225 0    50   ~ 0
A3
Text Label 3650 -125 0    50   ~ 0
A2
Text Label 3650 -25  0    50   ~ 0
A1
Text Label 3650 75   0    50   ~ 0
A0
Text Label 3650 -2925 0    50   ~ 0
CH_CK
Text Label 2250 -2225 2    50   ~ 0
NC
Text Label 2250 -1025 2    50   ~ 0
CLK88
Text Label 2250 -25  2    50   ~ 0
OSC88
Text Label 2250 -1925 2    50   ~ 0
MWR
Text Label 2250 -1825 2    50   ~ 0
MRD
Text Label 2250 -1725 2    50   ~ 0
IOWR
Text Label 2250 -1625 2    50   ~ 0
IORD
$Comp
L Connector:Bus_ISA_8bit J4
U 1 1 6396E453
P 2950 -1425
F 0 "J4" H 2950 342 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 2950 251 50  0001 C CNN
F 2 "Motherboard:8-bit-ISA" H 2950 -1425 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 2950 -1425 50  0001 C CNN
	1    2950 -1425
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C14
U 1 1 63970443
P 17650 1150
F 0 "C14" V 17335 1150 50  0000 C CNN
F 1 "0.1uF" V 17426 1150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 17650 1150 50  0001 C CNN
F 3 "~" H 17650 1150 50  0001 C CNN
	1    17650 1150
	0    1    1    0   
$EndComp
Text Label 17900 1150 0    50   ~ 0
GND
Text Label 17400 1150 2    50   ~ 0
5+
$Comp
L pspice:CAP C17
U 1 1 6397044B
P 19050 1050
F 0 "C17" V 18735 1050 50  0000 C CNN
F 1 "0.1uF" V 18826 1050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 19050 1050 50  0001 C CNN
F 3 "~" H 19050 1050 50  0001 C CNN
	1    19050 1050
	0    1    1    0   
$EndComp
Text Label 19300 1050 0    50   ~ 0
GND
Text Label 18800 1050 2    50   ~ 0
5+
$Comp
L pspice:CAP C19
U 1 1 63970453
P 19075 2000
F 0 "C19" V 18760 2000 50  0000 C CNN
F 1 "0.1uF" V 18851 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 19075 2000 50  0001 C CNN
F 3 "~" H 19075 2000 50  0001 C CNN
	1    19075 2000
	0    1    1    0   
$EndComp
Text Label 19325 2000 0    50   ~ 0
GND
Text Label 18825 2000 2    50   ~ 0
5+
$Comp
L pspice:CAP C18
U 1 1 6397045B
P 19050 2900
F 0 "C18" V 18735 2900 50  0000 C CNN
F 1 "0.1uF" V 18826 2900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 19050 2900 50  0001 C CNN
F 3 "~" H 19050 2900 50  0001 C CNN
	1    19050 2900
	0    1    1    0   
$EndComp
Text Label 19300 2900 0    50   ~ 0
GND
Text Label 18800 2900 2    50   ~ 0
5+
Text Label 17425 2100 2    50   ~ 0
5+
Text Label 17925 2100 0    50   ~ 0
GND
$Comp
L pspice:CAP C15
U 1 1 63970465
P 17675 2100
F 0 "C15" V 17360 2100 50  0000 C CNN
F 1 "0.1uF" V 17451 2100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 17675 2100 50  0001 C CNN
F 3 "~" H 17675 2100 50  0001 C CNN
	1    17675 2100
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C16
U 1 1 6397046B
P 17700 2850
F 0 "C16" V 17385 2850 50  0000 C CNN
F 1 "0.1uF" V 17476 2850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 17700 2850 50  0001 C CNN
F 3 "~" H 17700 2850 50  0001 C CNN
	1    17700 2850
	0    1    1    0   
$EndComp
Text Label 17950 2850 0    50   ~ 0
GND
Text Label 17450 2850 2    50   ~ 0
5+
$EndSCHEMATC
