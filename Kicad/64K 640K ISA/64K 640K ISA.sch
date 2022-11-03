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
Text Label 11800 10300 2    50   ~ 0
IORD
Text Label 11800 10200 2    50   ~ 0
IOWR
Text Label 11800 10100 2    50   ~ 0
MRD
Text Label 11800 10000 2    50   ~ 0
MWR
Text Label 11800 9900 2    50   ~ 0
GND
Text Label 11800 9800 2    50   ~ 0
12+
Text Label 11800 9600 2    50   ~ 0
12-
Text Label 11800 9500 2    50   ~ 0
DRQ2
Text Label 11800 9400 2    50   ~ 0
5-
Text Label 11800 9300 2    50   ~ 0
IRQ2
Text Label 11800 9200 2    50   ~ 0
5+
Text Label 11800 9100 2    50   ~ 0
RESOUT
Text Label 11800 9000 2    50   ~ 0
GND
Text Label 11800 10400 2    50   ~ 0
DACK3
Text Label 11800 10500 2    50   ~ 0
DRQ3
Text Label 11800 10600 2    50   ~ 0
DACK1
Text Label 11800 10700 2    50   ~ 0
DRQ1
Text Label 11800 10800 2    50   ~ 0
REFRQ
Text Label 11800 10900 2    50   ~ 0
CLK88
Text Label 11800 11000 2    50   ~ 0
IRQ7
Text Label 11800 11100 2    50   ~ 0
IRQ6
Text Label 11800 11200 2    50   ~ 0
IRQ5
Text Label 11800 11300 2    50   ~ 0
IRQ4
Text Label 11800 11400 2    50   ~ 0
IRQ3
Text Label 11800 11500 2    50   ~ 0
DACK2
Text Label 11800 11600 2    50   ~ 0
TC
Text Label 11800 11700 2    50   ~ 0
ALE
Text Label 11800 11800 2    50   ~ 0
5+
Text Label 13200 9100 0    50   ~ 0
D7
Text Label 13200 9200 0    50   ~ 0
D6
Text Label 13200 9300 0    50   ~ 0
D5
Text Label 13200 9400 0    50   ~ 0
D4
Text Label 13200 9500 0    50   ~ 0
D3
Text Label 13200 9600 0    50   ~ 0
D2
Text Label 13200 9700 0    50   ~ 0
D1
Text Label 13200 9800 0    50   ~ 0
D0
Text Label 13200 9900 0    50   ~ 0
RDY1
Text Label 13200 10000 0    50   ~ 0
AEN
Text Label 13200 10100 0    50   ~ 0
A19
Text Label 13200 10200 0    50   ~ 0
A18
Text Label 13200 10300 0    50   ~ 0
A17
Text Label 13200 10400 0    50   ~ 0
A16
Text Label 13200 10500 0    50   ~ 0
A15
Text Label 13200 10600 0    50   ~ 0
A14
Text Label 13200 10700 0    50   ~ 0
A13
Text Label 13200 10800 0    50   ~ 0
A12
Text Label 13200 10900 0    50   ~ 0
A11
Text Label 13200 11000 0    50   ~ 0
A10
Text Label 13200 11100 0    50   ~ 0
A9
Text Label 13200 11200 0    50   ~ 0
A8
Text Label 13200 11300 0    50   ~ 0
A7
Text Label 13200 11400 0    50   ~ 0
A6
Text Label 13200 11500 0    50   ~ 0
A5
Text Label 13200 11600 0    50   ~ 0
A4
Text Label 13200 11700 0    50   ~ 0
A3
Text Label 13200 11800 0    50   ~ 0
A2
Text Label 13200 11900 0    50   ~ 0
A1
Text Label 13200 9000 0    50   ~ 0
CH_CK
Text Label 10625 5600 0    50   ~ 0
GND
Text Label 10125 5600 2    50   ~ 0
5+
Text Label 11800 9700 2    50   ~ 0
NC
Text Label 11800 11900 2    50   ~ 0
OSC88
Text Label 13200 12000 0    50   ~ 0
A0
Text Label 11800 12000 2    50   ~ 0
GND
$Comp
L Connector:Bus_ISA_8bit J9
U 1 1 6082C528
P 12500 10500
F 0 "J9" H 12500 12267 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 12500 12176 50  0001 C CNN
F 2 "My:BUS_8_BIT" H 12500 10500 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 12500 10500 50  0001 C CNN
	1    12500 10500
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:AS6C4008-55PCN U4
U 1 1 6106DB5F
P 16725 7350
F 0 "U4" H 16725 8631 50  0000 C CNN
F 1 "AS6C4008" H 16725 8540 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 16725 7450 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 16725 7450 50  0001 C CNN
	1    16725 7350
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 61060B29
P 14725 5725
F 0 "C3" V 14410 5725 50  0000 C CNN
F 1 "0.1uF" V 14501 5725 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 14725 5725 50  0001 C CNN
F 3 "~" H 14725 5725 50  0001 C CNN
	1    14725 5725
	0    1    1    0   
$EndComp
Text Label 14975 5725 0    50   ~ 0
GND
Text Label 14475 5725 2    50   ~ 0
5+
$Comp
L 74xx:74LS138 U6
U 1 1 61061086
P 15000 3675
F 0 "U6" H 15000 4456 50  0000 C CNN
F 1 "74LS138" H 15000 4365 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 15000 3675 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 15000 3675 50  0001 C CNN
	1    15000 3675
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U5
U 1 1 610617D6
P 12075 3225
F 0 "U5" H 12075 3592 50  0000 C CNN
F 1 "74LS139" H 12075 3501 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12075 3225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 12075 3225 50  0001 C CNN
	1    12075 3225
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U5
U 3 1 61062281
P 12075 4525
F 0 "U5" V 11708 4525 50  0000 C CNN
F 1 "74LS139" V 11799 4525 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12075 4525 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 12075 4525 50  0001 C CNN
	3    12075 4525
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C4
U 1 1 61063D21
P 17025 5625
F 0 "C4" V 16710 5625 50  0000 C CNN
F 1 "0.1uF" V 16801 5625 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 17025 5625 50  0001 C CNN
F 3 "~" H 17025 5625 50  0001 C CNN
	1    17025 5625
	0    1    1    0   
$EndComp
Text Label 17275 5625 0    50   ~ 0
GND
Text Label 16775 5625 2    50   ~ 0
5+
$Comp
L pspice:CAP C5
U 1 1 61063F07
P 12475 2550
F 0 "C5" V 12160 2550 50  0000 C CNN
F 1 "0.1uF" V 12251 2550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12475 2550 50  0001 C CNN
F 3 "~" H 12475 2550 50  0001 C CNN
	1    12475 2550
	0    1    1    0   
$EndComp
Text Label 12725 2550 0    50   ~ 0
GND
Text Label 12225 2550 2    50   ~ 0
5+
Text Label 17225 7150 0    50   ~ 0
D7
Text Label 17225 7050 0    50   ~ 0
D6
Text Label 17225 6950 0    50   ~ 0
D5
Text Label 17225 6850 0    50   ~ 0
D4
Text Label 17225 6750 0    50   ~ 0
D3
Text Label 17225 6650 0    50   ~ 0
D2
Text Label 17225 6550 0    50   ~ 0
D1
Text Label 17225 6450 0    50   ~ 0
D0
Text Label 16225 8250 2    50   ~ 0
A18
Text Label 16225 8150 2    50   ~ 0
A17
Text Label 16225 8050 2    50   ~ 0
A16
Text Label 16225 7950 2    50   ~ 0
A15
Text Label 16225 7850 2    50   ~ 0
A14
Text Label 16225 7750 2    50   ~ 0
A13
Text Label 16225 7650 2    50   ~ 0
A12
Text Label 16225 7550 2    50   ~ 0
A11
Text Label 16225 7450 2    50   ~ 0
A10
Text Label 16225 7350 2    50   ~ 0
A9
Text Label 16225 7250 2    50   ~ 0
A8
Text Label 16225 7150 2    50   ~ 0
A7
Text Label 16225 7050 2    50   ~ 0
A6
Text Label 16225 6950 2    50   ~ 0
A5
Text Label 16225 6850 2    50   ~ 0
A4
Text Label 16225 6750 2    50   ~ 0
A3
Text Label 16225 6650 2    50   ~ 0
A2
Text Label 16225 6550 2    50   ~ 0
A1
Text Label 16225 6450 2    50   ~ 0
A0
Text Label 16725 6250 0    50   ~ 0
5+
Text Label 12575 4525 0    50   ~ 0
5+
Text Label 15000 3075 0    50   ~ 0
5+
Text Label 15000 4375 0    50   ~ 0
GND
Text Label 11575 4525 2    50   ~ 0
GND
Text Label 16725 8450 2    50   ~ 0
GND
Text Label 17225 7550 0    50   ~ 0
MRD
Text Label 17225 7650 0    50   ~ 0
MWR
Text Label 11575 3125 2    50   ~ 0
GND
Text Label 11575 3225 2    50   ~ 0
A19
Text Label 11575 3425 2    50   ~ 0
GND
Text Label 12575 3125 0    50   ~ 0
512K_CS
Text Label 12575 3225 0    50   ~ 0
UPPER_512K
Text Label 14500 3375 2    50   ~ 0
A16
Text Label 14500 3475 2    50   ~ 0
A17
Text Label 14500 3575 2    50   ~ 0
A18
Text Label 14500 3975 2    50   ~ 0
GND
Text Label 14500 4075 2    50   ~ 0
UPPER_512K
Text Label 15500 4075 0    50   ~ 0
64K_ROM_CS
Text Label 17225 7450 0    50   ~ 0
512K_CS
Text Label 9725 8450 2    50   ~ 0
MRD
Text Label 9725 8150 2    50   ~ 0
5+
Text Label 10325 8550 2    50   ~ 0
GND
Text Label 10325 6050 0    50   ~ 0
5+
Text Label 9725 6150 2    50   ~ 0
A0
Text Label 9725 6250 2    50   ~ 0
A1
Text Label 9725 6350 2    50   ~ 0
A2
Text Label 9725 6450 2    50   ~ 0
A3
Text Label 9725 6550 2    50   ~ 0
A4
Text Label 9725 6650 2    50   ~ 0
A5
Text Label 9725 6750 2    50   ~ 0
A6
Text Label 9725 6850 2    50   ~ 0
A7
Text Label 9725 6950 2    50   ~ 0
A8
Text Label 9725 7050 2    50   ~ 0
A9
Text Label 10925 6150 0    50   ~ 0
D0
Text Label 10925 6250 0    50   ~ 0
D1
Text Label 10925 6350 0    50   ~ 0
D2
Text Label 10925 6450 0    50   ~ 0
D3
Text Label 10925 6550 0    50   ~ 0
D4
Text Label 10925 6650 0    50   ~ 0
D5
Text Label 10925 6750 0    50   ~ 0
D6
Text Label 10925 6850 0    50   ~ 0
D7
$Comp
L pspice:CAP C1
U 1 1 6086EA25
P 10375 5600
F 0 "C1" V 10060 5600 50  0000 C CNN
F 1 "0.1uF" V 10151 5600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10375 5600 50  0001 C CNN
F 3 "~" H 10375 5600 50  0001 C CNN
	1    10375 5600
	0    1    1    0   
$EndComp
$Comp
L Memory_RAM:628128_DIP32_SSOP32 U3
U 1 1 622F9A5A
P 14500 7250
F 0 "U3" H 14500 8431 50  0000 C CNN
F 1 "AS6C1008" H 14500 8340 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 14500 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 14500 7250 50  0001 C CNN
	1    14500 7250
	1    0    0    -1  
$EndComp
Text Label 14000 8050 2    50   ~ 0
A16
Text Label 14000 7950 2    50   ~ 0
A15
Text Label 14000 7850 2    50   ~ 0
A14
Text Label 14000 7750 2    50   ~ 0
A13
Text Label 14000 7650 2    50   ~ 0
A12
Text Label 14000 7550 2    50   ~ 0
A11
Text Label 14000 7450 2    50   ~ 0
A10
Text Label 14000 7350 2    50   ~ 0
A9
Text Label 14000 7250 2    50   ~ 0
A8
Text Label 14000 7150 2    50   ~ 0
A7
Text Label 14000 7050 2    50   ~ 0
A6
Text Label 14000 6950 2    50   ~ 0
A5
Text Label 14000 6850 2    50   ~ 0
A4
Text Label 14000 6750 2    50   ~ 0
A3
Text Label 14000 6650 2    50   ~ 0
A2
Text Label 14000 6550 2    50   ~ 0
A1
Text Label 14000 6450 2    50   ~ 0
A0
Text Label 14500 8250 2    50   ~ 0
GND
Text Label 14500 6250 0    50   ~ 0
5+
Text Label 15000 7450 0    50   ~ 0
5+
Text Label 15000 7150 0    50   ~ 0
D7
Text Label 15000 7050 0    50   ~ 0
D6
Text Label 15000 6950 0    50   ~ 0
D5
Text Label 15000 6850 0    50   ~ 0
D4
Text Label 15000 6750 0    50   ~ 0
D3
Text Label 15000 6650 0    50   ~ 0
D2
Text Label 15000 6550 0    50   ~ 0
D1
Text Label 15000 6450 0    50   ~ 0
D0
Text Label 15000 7550 0    50   ~ 0
MRD
Text Label 15000 7650 0    50   ~ 0
MWR
$Comp
L pspice:CAP C6
U 1 1 622FCCE5
P 15200 2600
F 0 "C6" V 14885 2600 50  0000 C CNN
F 1 "0.1uF" V 14976 2600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15200 2600 50  0001 C CNN
F 3 "~" H 15200 2600 50  0001 C CNN
	1    15200 2600
	0    1    1    0   
$EndComp
Text Label 15450 2600 0    50   ~ 0
GND
Text Label 14950 2600 2    50   ~ 0
5+
Text Label 15000 7350 0    50   ~ 0
128K_CS
Text Label 12550 3775 0    50   ~ 0
128K_CS
$Comp
L 74xx:74LS139 U5
U 2 1 622FD818
P 12050 3875
F 0 "U5" H 12050 4242 50  0000 C CNN
F 1 "74LS139" H 12050 4151 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12050 3875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 12050 3875 50  0001 C CNN
	2    12050 3875
	1    0    0    -1  
$EndComp
Text Label 11550 3875 2    50   ~ 0
A17
Text Label 11550 3775 2    50   ~ 0
A18
Text Label 11550 4075 2    50   ~ 0
UPPER_512K
$Comp
L Memory_Flash:SST39SF040 U1
U 1 1 62DD667A
P 10325 7350
F 0 "U1" H 10325 8831 50  0000 C CNN
F 1 "64K" H 10325 8740 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 10325 7650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 10325 7650 50  0001 C CNN
	1    10325 7350
	1    0    0    -1  
$EndComp
Text Label 14500 3875 2    50   ~ 0
5+
Text Label 9725 8350 2    50   ~ 0
64K_ROM_CS
$Comp
L Memory_Flash:SST39SF010 U2
U 1 1 636185BF
P 12300 7300
F 0 "U2" H 12300 8781 50  0000 C CNN
F 1 "64K" H 12300 8690 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 12300 7600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 12300 7600 50  0001 C CNN
	1    12300 7300
	1    0    0    -1  
$EndComp
Text Label 9725 7950 2    50   ~ 0
GND
Text Label 9725 7850 2    50   ~ 0
GND
Text Label 9725 7750 2    50   ~ 0
GND
Text Label 9725 7650 2    50   ~ 0
A15
Text Label 9725 7550 2    50   ~ 0
A14
Text Label 9725 7450 2    50   ~ 0
A13
Text Label 9725 7350 2    50   ~ 0
A12
Text Label 9725 7250 2    50   ~ 0
A11
Text Label 9725 7150 2    50   ~ 0
A10
Text Label 11700 8400 2    50   ~ 0
MRD
Text Label 12300 8500 2    50   ~ 0
GND
Text Label 12300 6000 0    50   ~ 0
5+
Text Label 11700 6100 2    50   ~ 0
A0
Text Label 11700 6200 2    50   ~ 0
A1
Text Label 11700 6300 2    50   ~ 0
A2
Text Label 11700 6400 2    50   ~ 0
A3
Text Label 11700 6500 2    50   ~ 0
A4
Text Label 11700 6600 2    50   ~ 0
A5
Text Label 11700 6700 2    50   ~ 0
A6
Text Label 11700 6800 2    50   ~ 0
A7
Text Label 11700 6900 2    50   ~ 0
A8
Text Label 11700 7000 2    50   ~ 0
A9
Text Label 12900 6100 0    50   ~ 0
D0
Text Label 12900 6200 0    50   ~ 0
D1
Text Label 12900 6300 0    50   ~ 0
D2
Text Label 12900 6400 0    50   ~ 0
D3
Text Label 12900 6500 0    50   ~ 0
D4
Text Label 12900 6600 0    50   ~ 0
D5
Text Label 12900 6700 0    50   ~ 0
D6
Text Label 12900 6800 0    50   ~ 0
D7
Text Label 11700 7900 2    50   ~ 0
GND
Text Label 11700 7800 2    50   ~ 0
GND
Text Label 11700 7700 2    50   ~ 0
GND
Text Label 11700 7600 2    50   ~ 0
A15
Text Label 11700 7500 2    50   ~ 0
A14
Text Label 11700 7400 2    50   ~ 0
A13
Text Label 11700 7300 2    50   ~ 0
A12
Text Label 11700 7200 2    50   ~ 0
A11
Text Label 11700 7100 2    50   ~ 0
A10
Text Label 11700 8100 2    50   ~ 0
MWR
Text Label 15500 3975 0    50   ~ 0
E0000_CS
Text Label 11700 8300 2    50   ~ 0
E0000_CS
Text Label 12775 5500 0    50   ~ 0
GND
Text Label 12275 5500 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 636485DC
P 12525 5500
F 0 "C2" V 12210 5500 50  0000 C CNN
F 1 "0.1uF" V 12301 5500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12525 5500 50  0001 C CNN
F 3 "~" H 12525 5500 50  0001 C CNN
	1    12525 5500
	0    1    1    0   
$EndComp
$EndSCHEMATC
