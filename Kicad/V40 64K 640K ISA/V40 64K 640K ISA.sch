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
Text Label 12200 9750 2    50   ~ 0
IORD
Text Label 12200 9650 2    50   ~ 0
IOWR
Text Label 12200 9550 2    50   ~ 0
MRD
Text Label 12200 9450 2    50   ~ 0
MWR
Text Label 12200 9350 2    50   ~ 0
GND
Text Label 12200 9250 2    50   ~ 0
12+
Text Label 12200 9050 2    50   ~ 0
12-
Text Label 12200 8950 2    50   ~ 0
DRQ2
Text Label 12200 8850 2    50   ~ 0
5-
Text Label 12200 8750 2    50   ~ 0
IRQ2
Text Label 12200 8650 2    50   ~ 0
5+
Text Label 12200 8550 2    50   ~ 0
RESOUT
Text Label 12200 8450 2    50   ~ 0
GND
Text Label 12200 9850 2    50   ~ 0
DACK3
Text Label 12200 9950 2    50   ~ 0
DRQ3
Text Label 12200 10050 2    50   ~ 0
DACK1
Text Label 12200 10150 2    50   ~ 0
DRQ1
Text Label 12200 10250 2    50   ~ 0
REFRQ
Text Label 12200 10350 2    50   ~ 0
CLK88
Text Label 12200 10450 2    50   ~ 0
IRQ7
Text Label 12200 10550 2    50   ~ 0
IRQ6
Text Label 12200 10650 2    50   ~ 0
IRQ5
Text Label 12200 10750 2    50   ~ 0
IRQ4
Text Label 12200 10850 2    50   ~ 0
IRQ3
Text Label 12200 10950 2    50   ~ 0
DACK2
Text Label 12200 11050 2    50   ~ 0
TC
Text Label 12200 11150 2    50   ~ 0
ALE
Text Label 12200 11250 2    50   ~ 0
5+
Text Label 13600 8550 0    50   ~ 0
D7
Text Label 13600 8650 0    50   ~ 0
D6
Text Label 13600 8750 0    50   ~ 0
D5
Text Label 13600 8850 0    50   ~ 0
D4
Text Label 13600 8950 0    50   ~ 0
D3
Text Label 13600 9050 0    50   ~ 0
D2
Text Label 13600 9150 0    50   ~ 0
D1
Text Label 13600 9250 0    50   ~ 0
D0
Text Label 13600 9350 0    50   ~ 0
RDY1
Text Label 13600 9450 0    50   ~ 0
AEN
Text Label 13600 9550 0    50   ~ 0
A19
Text Label 13600 9650 0    50   ~ 0
A18
Text Label 13600 9750 0    50   ~ 0
A17
Text Label 13600 9850 0    50   ~ 0
A16
Text Label 13600 9950 0    50   ~ 0
A15
Text Label 13600 10050 0    50   ~ 0
A14
Text Label 13600 10150 0    50   ~ 0
A13
Text Label 13600 10250 0    50   ~ 0
A12
Text Label 13600 10350 0    50   ~ 0
A11
Text Label 13600 10450 0    50   ~ 0
A10
Text Label 13600 10550 0    50   ~ 0
A9
Text Label 13600 10650 0    50   ~ 0
A8
Text Label 13600 10750 0    50   ~ 0
A7
Text Label 13600 10850 0    50   ~ 0
A6
Text Label 13600 10950 0    50   ~ 0
A5
Text Label 13600 11050 0    50   ~ 0
A4
Text Label 13600 11150 0    50   ~ 0
A3
Text Label 13600 11250 0    50   ~ 0
A2
Text Label 13600 11350 0    50   ~ 0
A1
Text Label 13600 8450 0    50   ~ 0
CH_CK
Text Label 11025 5050 0    50   ~ 0
GND
Text Label 10525 5050 2    50   ~ 0
5+
Text Label 12200 9150 2    50   ~ 0
NC
Text Label 12200 11350 2    50   ~ 0
OSC88
Text Label 13600 11450 0    50   ~ 0
A0
Text Label 12200 11450 2    50   ~ 0
GND
$Comp
L Connector:Bus_ISA_8bit J9
U 1 1 6082C528
P 12900 9950
F 0 "J9" H 12900 11717 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 12900 11626 50  0001 C CNN
F 2 "My:BUS_8_BIT" H 12900 9950 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 12900 9950 50  0001 C CNN
	1    12900 9950
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:AS6C4008-55PCN U4
U 1 1 6106DB5F
P 17125 6800
F 0 "U4" H 17125 8081 50  0000 C CNN
F 1 "AS6C4008" H 17125 7990 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 17125 6900 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 17125 6900 50  0001 C CNN
	1    17125 6800
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 61060B29
P 15125 5175
F 0 "C3" V 14810 5175 50  0000 C CNN
F 1 "0.1uF" V 14901 5175 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15125 5175 50  0001 C CNN
F 3 "~" H 15125 5175 50  0001 C CNN
	1    15125 5175
	0    1    1    0   
$EndComp
Text Label 15375 5175 0    50   ~ 0
GND
Text Label 14875 5175 2    50   ~ 0
5+
$Comp
L 74xx:74LS138 U6
U 1 1 61061086
P 15400 3125
F 0 "U6" H 15400 3906 50  0000 C CNN
F 1 "74LS138" H 15400 3815 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 15400 3125 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 15400 3125 50  0001 C CNN
	1    15400 3125
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U5
U 1 1 610617D6
P 12475 2675
F 0 "U5" H 12475 3042 50  0000 C CNN
F 1 "74LS139" H 12475 2951 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12475 2675 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 12475 2675 50  0001 C CNN
	1    12475 2675
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS139 U5
U 3 1 61062281
P 12475 3975
F 0 "U5" V 12108 3975 50  0000 C CNN
F 1 "74LS139" V 12199 3975 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12475 3975 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 12475 3975 50  0001 C CNN
	3    12475 3975
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C4
U 1 1 61063D21
P 17425 5075
F 0 "C4" V 17110 5075 50  0000 C CNN
F 1 "0.1uF" V 17201 5075 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 17425 5075 50  0001 C CNN
F 3 "~" H 17425 5075 50  0001 C CNN
	1    17425 5075
	0    1    1    0   
$EndComp
Text Label 17675 5075 0    50   ~ 0
GND
Text Label 17175 5075 2    50   ~ 0
5+
$Comp
L pspice:CAP C5
U 1 1 61063F07
P 12875 2000
F 0 "C5" V 12560 2000 50  0000 C CNN
F 1 "0.1uF" V 12651 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12875 2000 50  0001 C CNN
F 3 "~" H 12875 2000 50  0001 C CNN
	1    12875 2000
	0    1    1    0   
$EndComp
Text Label 13125 2000 0    50   ~ 0
GND
Text Label 12625 2000 2    50   ~ 0
5+
Text Label 17625 6600 0    50   ~ 0
D7
Text Label 17625 6500 0    50   ~ 0
D6
Text Label 17625 6400 0    50   ~ 0
D5
Text Label 17625 6300 0    50   ~ 0
D4
Text Label 17625 6200 0    50   ~ 0
D3
Text Label 17625 6100 0    50   ~ 0
D2
Text Label 17625 6000 0    50   ~ 0
D1
Text Label 17625 5900 0    50   ~ 0
D0
Text Label 16625 7700 2    50   ~ 0
A18
Text Label 16625 7600 2    50   ~ 0
A17
Text Label 16625 7500 2    50   ~ 0
A16
Text Label 16625 7400 2    50   ~ 0
A15
Text Label 16625 7300 2    50   ~ 0
A14
Text Label 16625 7200 2    50   ~ 0
A13
Text Label 16625 7100 2    50   ~ 0
A12
Text Label 16625 7000 2    50   ~ 0
A11
Text Label 16625 6900 2    50   ~ 0
A10
Text Label 16625 6800 2    50   ~ 0
A9
Text Label 16625 6700 2    50   ~ 0
A8
Text Label 16625 6600 2    50   ~ 0
A7
Text Label 16625 6500 2    50   ~ 0
A6
Text Label 16625 6400 2    50   ~ 0
A5
Text Label 16625 6300 2    50   ~ 0
A4
Text Label 16625 6200 2    50   ~ 0
A3
Text Label 16625 6100 2    50   ~ 0
A2
Text Label 16625 6000 2    50   ~ 0
A1
Text Label 16625 5900 2    50   ~ 0
A0
Text Label 17125 5700 0    50   ~ 0
5+
Text Label 12975 3975 0    50   ~ 0
5+
Text Label 15400 2525 0    50   ~ 0
5+
Text Label 15400 3825 0    50   ~ 0
GND
Text Label 11975 3975 2    50   ~ 0
GND
Text Label 17125 7900 2    50   ~ 0
GND
Text Label 17625 7000 0    50   ~ 0
MRD
Text Label 17625 7100 0    50   ~ 0
MWR
Text Label 11975 2575 2    50   ~ 0
GND
Text Label 11975 2675 2    50   ~ 0
A19
Text Label 11975 2875 2    50   ~ 0
GND
Text Label 12975 2575 0    50   ~ 0
512K_CS
Text Label 12975 2675 0    50   ~ 0
UPPER_512K
Text Label 14900 2825 2    50   ~ 0
A16
Text Label 14900 2925 2    50   ~ 0
A17
Text Label 14900 3025 2    50   ~ 0
A18
Text Label 14900 3425 2    50   ~ 0
GND
Text Label 14900 3525 2    50   ~ 0
UPPER_512K
Text Label 15900 3525 0    50   ~ 0
64K_ROM_CS
Text Label 17625 6900 0    50   ~ 0
512K_CS
Text Label 10125 7900 2    50   ~ 0
MRD
Text Label 10125 7600 2    50   ~ 0
5+
Text Label 10725 8000 2    50   ~ 0
GND
Text Label 10725 5500 0    50   ~ 0
5+
Text Label 10125 5600 2    50   ~ 0
A0
Text Label 10125 5700 2    50   ~ 0
A1
Text Label 10125 5800 2    50   ~ 0
A2
Text Label 10125 5900 2    50   ~ 0
A3
Text Label 10125 6000 2    50   ~ 0
A4
Text Label 10125 6100 2    50   ~ 0
A5
Text Label 10125 6200 2    50   ~ 0
A6
Text Label 10125 6300 2    50   ~ 0
A7
Text Label 10125 6400 2    50   ~ 0
A8
Text Label 10125 6500 2    50   ~ 0
A9
Text Label 11325 5600 0    50   ~ 0
D0
Text Label 11325 5700 0    50   ~ 0
D1
Text Label 11325 5800 0    50   ~ 0
D2
Text Label 11325 5900 0    50   ~ 0
D3
Text Label 11325 6000 0    50   ~ 0
D4
Text Label 11325 6100 0    50   ~ 0
D5
Text Label 11325 6200 0    50   ~ 0
D6
Text Label 11325 6300 0    50   ~ 0
D7
$Comp
L pspice:CAP C1
U 1 1 6086EA25
P 10775 5050
F 0 "C1" V 10460 5050 50  0000 C CNN
F 1 "0.1uF" V 10551 5050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10775 5050 50  0001 C CNN
F 3 "~" H 10775 5050 50  0001 C CNN
	1    10775 5050
	0    1    1    0   
$EndComp
$Comp
L Memory_RAM:628128_DIP32_SSOP32 U3
U 1 1 622F9A5A
P 14900 6700
F 0 "U3" H 14900 7881 50  0000 C CNN
F 1 "AS6C1008" H 14900 7790 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 14900 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 14900 6700 50  0001 C CNN
	1    14900 6700
	1    0    0    -1  
$EndComp
Text Label 14400 7500 2    50   ~ 0
A16
Text Label 14400 7400 2    50   ~ 0
A15
Text Label 14400 7300 2    50   ~ 0
A14
Text Label 14400 7200 2    50   ~ 0
A13
Text Label 14400 7100 2    50   ~ 0
A12
Text Label 14400 7000 2    50   ~ 0
A11
Text Label 14400 6900 2    50   ~ 0
A10
Text Label 14400 6800 2    50   ~ 0
A9
Text Label 14400 6700 2    50   ~ 0
A8
Text Label 14400 6600 2    50   ~ 0
A7
Text Label 14400 6500 2    50   ~ 0
A6
Text Label 14400 6400 2    50   ~ 0
A5
Text Label 14400 6300 2    50   ~ 0
A4
Text Label 14400 6200 2    50   ~ 0
A3
Text Label 14400 6100 2    50   ~ 0
A2
Text Label 14400 6000 2    50   ~ 0
A1
Text Label 14400 5900 2    50   ~ 0
A0
Text Label 14900 7700 2    50   ~ 0
GND
Text Label 14900 5700 0    50   ~ 0
5+
Text Label 15400 6900 0    50   ~ 0
5+
Text Label 15400 6600 0    50   ~ 0
D7
Text Label 15400 6500 0    50   ~ 0
D6
Text Label 15400 6400 0    50   ~ 0
D5
Text Label 15400 6300 0    50   ~ 0
D4
Text Label 15400 6200 0    50   ~ 0
D3
Text Label 15400 6100 0    50   ~ 0
D2
Text Label 15400 6000 0    50   ~ 0
D1
Text Label 15400 5900 0    50   ~ 0
D0
Text Label 15400 7000 0    50   ~ 0
MRD
Text Label 15400 7100 0    50   ~ 0
MWR
$Comp
L pspice:CAP C6
U 1 1 622FCCE5
P 15600 2050
F 0 "C6" V 15285 2050 50  0000 C CNN
F 1 "0.1uF" V 15376 2050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 15600 2050 50  0001 C CNN
F 3 "~" H 15600 2050 50  0001 C CNN
	1    15600 2050
	0    1    1    0   
$EndComp
Text Label 15850 2050 0    50   ~ 0
GND
Text Label 15350 2050 2    50   ~ 0
5+
Text Label 15400 6800 0    50   ~ 0
128K_CS
Text Label 12950 3225 0    50   ~ 0
128K_CS
$Comp
L 74xx:74LS139 U5
U 2 1 622FD818
P 12450 3325
F 0 "U5" H 12450 3692 50  0000 C CNN
F 1 "74LS139" H 12450 3601 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12450 3325 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls139a.pdf" H 12450 3325 50  0001 C CNN
	2    12450 3325
	1    0    0    -1  
$EndComp
Text Label 11950 3325 2    50   ~ 0
A17
Text Label 11950 3225 2    50   ~ 0
A18
Text Label 11950 3525 2    50   ~ 0
UPPER_512K
$Comp
L Memory_Flash:SST39SF040 U1
U 1 1 62DD667A
P 10725 6800
F 0 "U1" H 10725 8281 50  0000 C CNN
F 1 "64K ROM" H 10725 8190 50  0000 C CNN
F 2 "Socket:DIP_Socket-32_W11.9_W12.7_W15.24_W17.78_W18.5_3M_232-1285-00-0602J" H 10725 7100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 10725 7100 50  0001 C CNN
	1    10725 6800
	1    0    0    -1  
$EndComp
Text Label 14900 3325 2    50   ~ 0
5+
Text Label 10125 7800 2    50   ~ 0
64K_ROM_CS
$Comp
L Memory_Flash:SST39SF010 U2
U 1 1 636185BF
P 12700 6750
F 0 "U2" H 12700 8231 50  0000 C CNN
F 1 "64K" H 12700 8140 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 12700 7050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25022B.pdf" H 12700 7050 50  0001 C CNN
	1    12700 6750
	1    0    0    -1  
$EndComp
Text Label 10125 7400 2    50   ~ 0
GND
Text Label 10125 7300 2    50   ~ 0
GND
Text Label 10125 7200 2    50   ~ 0
GND
Text Label 10125 7100 2    50   ~ 0
A15
Text Label 10125 7000 2    50   ~ 0
A14
Text Label 10125 6900 2    50   ~ 0
A13
Text Label 10125 6800 2    50   ~ 0
A12
Text Label 10125 6700 2    50   ~ 0
A11
Text Label 10125 6600 2    50   ~ 0
A10
Text Label 12100 7850 2    50   ~ 0
MRD
Text Label 12700 7950 2    50   ~ 0
GND
Text Label 12700 5450 0    50   ~ 0
5+
Text Label 12100 5550 2    50   ~ 0
A0
Text Label 12100 5650 2    50   ~ 0
A1
Text Label 12100 5750 2    50   ~ 0
A2
Text Label 12100 5850 2    50   ~ 0
A3
Text Label 12100 5950 2    50   ~ 0
A4
Text Label 12100 6050 2    50   ~ 0
A5
Text Label 12100 6150 2    50   ~ 0
A6
Text Label 12100 6250 2    50   ~ 0
A7
Text Label 12100 6350 2    50   ~ 0
A8
Text Label 12100 6450 2    50   ~ 0
A9
Text Label 13300 5550 0    50   ~ 0
D0
Text Label 13300 5650 0    50   ~ 0
D1
Text Label 13300 5750 0    50   ~ 0
D2
Text Label 13300 5850 0    50   ~ 0
D3
Text Label 13300 5950 0    50   ~ 0
D4
Text Label 13300 6050 0    50   ~ 0
D5
Text Label 13300 6150 0    50   ~ 0
D6
Text Label 13300 6250 0    50   ~ 0
D7
Text Label 12100 7350 2    50   ~ 0
GND
Text Label 12100 7250 2    50   ~ 0
GND
Text Label 12100 7150 2    50   ~ 0
GND
Text Label 12100 7050 2    50   ~ 0
A15
Text Label 12100 6950 2    50   ~ 0
A14
Text Label 12100 6850 2    50   ~ 0
A13
Text Label 12100 6750 2    50   ~ 0
A12
Text Label 12100 6650 2    50   ~ 0
A11
Text Label 12100 6550 2    50   ~ 0
A10
Text Label 12100 7550 2    50   ~ 0
MWR
Text Label 15900 3425 0    50   ~ 0
E0000_CS
Text Label 12100 7750 2    50   ~ 0
E0000_CS
Text Label 13175 4950 0    50   ~ 0
GND
Text Label 12675 4950 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 636485DC
P 12925 4950
F 0 "C2" V 12610 4950 50  0000 C CNN
F 1 "0.1uF" V 12701 4950 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12925 4950 50  0001 C CNN
F 3 "~" H 12925 4950 50  0001 C CNN
	1    12925 4950
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS573 U8
U 1 1 63615401
P 6625 4800
F 0 "U8" H 6625 5781 50  0000 C CNN
F 1 "74LS573" H 6625 5690 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6625 4800 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 6625 4800 50  0001 C CNN
	1    6625 4800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS573 U10
U 1 1 636160A8
P 6750 6900
F 0 "U10" H 6750 7881 50  0000 C CNN
F 1 "74LS573" H 6750 7790 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6750 6900 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 6750 6900 50  0001 C CNN
	1    6750 6900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U9
U 1 1 63616BA2
P 6625 9375
F 0 "U9" H 6625 10356 50  0000 C CNN
F 1 "74LS245" H 6625 10265 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6625 9375 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 6625 9375 50  0001 C CNN
	1    6625 9375
	1    0    0    -1  
$EndComp
$Comp
L V40:70208 U7
U 1 1 6361786E
P 4575 5425
F 0 "U7" H 4519 3721 50  0000 L CNN
F 1 "70208" H 4519 3630 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_THT-Socket" H 4575 5425 50  0001 C CNN
F 3 "" H 4575 5425 50  0001 C CNN
	1    4575 5425
	1    0    0    -1  
$EndComp
Text Label 6725 3575 0    50   ~ 0
GND
Text Label 6225 3575 2    50   ~ 0
5+
$Comp
L pspice:CAP C10
U 1 1 636189B2
P 6475 3575
F 0 "C10" V 6160 3575 50  0000 C CNN
F 1 "0.1uF" V 6251 3575 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6475 3575 50  0001 C CNN
F 3 "~" H 6475 3575 50  0001 C CNN
	1    6475 3575
	0    1    1    0   
$EndComp
Text Label 6625 5775 0    50   ~ 0
GND
Text Label 6125 5775 2    50   ~ 0
5+
$Comp
L pspice:CAP C9
U 1 1 63618C4A
P 6375 5775
F 0 "C9" V 6060 5775 50  0000 C CNN
F 1 "0.1uF" V 6151 5775 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6375 5775 50  0001 C CNN
F 3 "~" H 6375 5775 50  0001 C CNN
	1    6375 5775
	0    1    1    0   
$EndComp
Text Label 6500 8175 0    50   ~ 0
GND
Text Label 6000 8175 2    50   ~ 0
5+
$Comp
L pspice:CAP C8
U 1 1 63618ECD
P 6250 8175
F 0 "C8" V 5935 8175 50  0000 C CNN
F 1 "0.1uF" V 6026 8175 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6250 8175 50  0001 C CNN
F 3 "~" H 6250 8175 50  0001 C CNN
	1    6250 8175
	0    1    1    0   
$EndComp
Text Label 3725 5275 0    50   ~ 0
GND
Text Label 3225 5275 2    50   ~ 0
5+
$Comp
L pspice:CAP C7
U 1 1 63619466
P 3475 5275
F 0 "C7" V 3160 5275 50  0000 C CNN
F 1 "0.1uF" V 3251 5275 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3475 5275 50  0001 C CNN
F 3 "~" H 3475 5275 50  0001 C CNN
	1    3475 5275
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 63619596
P 5425 6525
F 0 "Y1" H 5425 6793 50  0000 C CNN
F 1 "Crystal" H 5425 6702 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 5425 6525 50  0001 C CNN
F 3 "~" H 5425 6525 50  0001 C CNN
	1    5425 6525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6361A560
P 5075 8175
F 0 "R1" V 5282 8175 50  0000 C CNN
F 1 "10K ohm" V 5191 8175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5005 8175 50  0001 C CNN
F 3 "~" H 5075 8175 50  0001 C CNN
	1    5075 8175
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6361B035
P 5800 10175
F 0 "R2" V 6007 10175 50  0000 C CNN
F 1 "10K ohm" V 5916 10175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 10175 50  0001 C CNN
F 3 "~" H 5800 10175 50  0001 C CNN
	1    5800 10175
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J1
U 1 1 6361C52F
P 10125 10750
F 0 "J1" H 10175 11267 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 10175 11176 50  0000 C CNN
F 2 "My:16_EDGE_CARD_BUS" H 10125 10750 50  0001 C CNN
F 3 "~" H 10125 10750 50  0001 C CNN
	1    10125 10750
	1    0    0    -1  
$EndComp
Text Label 9925 10450 2    50   ~ 0
IRQ1
Text Label 9925 11150 2    50   ~ 0
NMI
Text Label 10425 10450 0    50   ~ 0
RESET
Text Label 10425 10550 0    50   ~ 0
READY
Text Label 10425 10650 0    50   ~ 0
HOLD
Text Label 10425 10750 0    50   ~ 0
HOLDA
Text Label 10425 10850 0    50   ~ 0
DRQ0
Text Label 10425 10950 0    50   ~ 0
HF_PCLK
Text Label 10425 11050 0    50   ~ 0
SPK_GO
Text Label 10425 11150 0    50   ~ 0
SPK_OUT
Text Label 7125 9175 0    50   ~ 0
D4
Text Label 7125 9275 0    50   ~ 0
D3
Text Label 7125 9375 0    50   ~ 0
D2
Text Label 7125 9475 0    50   ~ 0
D1
Text Label 7125 9575 0    50   ~ 0
D0
Text Label 7125 9075 0    50   ~ 0
D5
Text Label 7125 8975 0    50   ~ 0
D6
Text Label 7125 8875 0    50   ~ 0
D7
Text Label 7250 6400 0    50   ~ 0
A7
Text Label 7250 6500 0    50   ~ 0
A6
Text Label 7250 6600 0    50   ~ 0
A5
Text Label 7250 6700 0    50   ~ 0
A4
Text Label 7250 6800 0    50   ~ 0
A3
Text Label 7250 6900 0    50   ~ 0
A2
Text Label 7250 7000 0    50   ~ 0
A1
Text Label 7250 7100 0    50   ~ 0
A0
Text Label 7125 4300 0    50   ~ 0
A19
Text Label 7125 4400 0    50   ~ 0
A18
Text Label 7125 4500 0    50   ~ 0
A17
Text Label 7125 4600 0    50   ~ 0
A16
Text Label 6125 4300 2    50   ~ 0
A19_
Text Label 6125 4400 2    50   ~ 0
A18_
Text Label 6125 4500 2    50   ~ 0
A17_
Text Label 6125 4600 2    50   ~ 0
A16_
Text Label 6625 4000 2    50   ~ 0
5+
Text Label 6125 5200 2    50   ~ 0
ALE
Text Label 6125 5300 2    50   ~ 0
HOLDA
Text Label 6625 5600 0    50   ~ 0
GND
Text Label 5575 6525 0    50   ~ 0
X2
Text Label 5275 6525 2    50   ~ 0
X1
Text Label 6250 6400 2    50   ~ 0
AD7
Text Label 6250 6500 2    50   ~ 0
AD6
Text Label 6250 6600 2    50   ~ 0
AD5
Text Label 6250 6700 2    50   ~ 0
AD4
Text Label 6250 6800 2    50   ~ 0
AD3
Text Label 6250 6900 2    50   ~ 0
AD2
Text Label 6250 7000 2    50   ~ 0
AD1
Text Label 6250 7100 2    50   ~ 0
AD0
Text Label 6250 7300 2    50   ~ 0
ALE
Text Label 6250 7400 2    50   ~ 0
HOLDA
Text Label 6750 7700 0    50   ~ 0
GND
Text Label 6750 6100 2    50   ~ 0
5+
Text Label 6125 8875 2    50   ~ 0
AD7
Text Label 6125 8975 2    50   ~ 0
AD6
Text Label 6125 9075 2    50   ~ 0
AD5
Text Label 6125 9175 2    50   ~ 0
AD4
Text Label 6125 9275 2    50   ~ 0
AD3
Text Label 6125 9375 2    50   ~ 0
AD2
Text Label 6125 9475 2    50   ~ 0
AD1
Text Label 6125 9575 2    50   ~ 0
AD0
Text Label 6125 9875 2    50   ~ 0
DEN
Text Label 6125 9775 2    50   ~ 0
DTR
Text Label 5950 10175 0    50   ~ 0
DEN
Text Label 5650 10175 2    50   ~ 0
5+
Text Label 3425 5975 1    50   ~ 0
RESET
Text Label 3025 5975 1    50   ~ 0
HOLD
Text Label 3125 5975 1    50   ~ 0
HOLDA
Text Label 4475 7975 0    50   ~ 0
HF_PCLK
Text Label 4475 7775 0    50   ~ 0
SPK_GO
Text Label 4475 7875 0    50   ~ 0
SPK_OUT
Text Label 4475 7675 0    50   ~ 0
POLL
Text Label 4925 8175 2    50   ~ 0
POLL
Text Label 5225 8175 0    50   ~ 0
GND
Text Label 4475 7175 0    50   ~ 0
GND
Text Label 4475 7375 0    50   ~ 0
ALE
Text Label 4475 6975 0    50   ~ 0
X1
Text Label 4475 7075 0    50   ~ 0
X2
Text Label 4475 6375 0    50   ~ 0
MWR
Text Label 4475 6475 0    50   ~ 0
IOWR
Text Label 4475 6675 0    50   ~ 0
DTR
Text Label 4475 6775 0    50   ~ 0
DEN
Text Label 2125 7275 2    50   ~ 0
AD7
Text Label 2125 7375 2    50   ~ 0
AD6
Text Label 2125 7475 2    50   ~ 0
AD5
Text Label 2125 7575 2    50   ~ 0
AD4
Text Label 2125 7675 2    50   ~ 0
AD3
Text Label 2125 7775 2    50   ~ 0
AD2
Text Label 2125 7875 2    50   ~ 0
AD1
Text Label 2125 7975 2    50   ~ 0
AD0
Text Label 2125 7175 2    50   ~ 0
GND
Text Label 2125 6375 2    50   ~ 0
A15
Text Label 2125 6475 2    50   ~ 0
A14
Text Label 2125 6575 2    50   ~ 0
A13
Text Label 2125 6675 2    50   ~ 0
A12
Text Label 2125 6775 2    50   ~ 0
A11
Text Label 2125 6875 2    50   ~ 0
A10
Text Label 2125 6975 2    50   ~ 0
A9
Text Label 2125 7075 2    50   ~ 0
A8
Text Label 2825 5975 1    50   ~ 0
A19_
Text Label 2725 5975 1    50   ~ 0
A18_
Text Label 2625 5975 1    50   ~ 0
A17_
Text Label 2525 5975 1    50   ~ 0
A16_
Text Label 2925 5975 1    50   ~ 0
REFRQ
Text Label 3325 5975 1    50   ~ 0
5+
Text Label 3625 5975 1    50   ~ 0
NMI
Text Label 3525 5975 1    50   ~ 0
RDY1
Text Label 4025 5975 1    50   ~ 0
MRD
Text Label 4125 5975 1    50   ~ 0
IORD
Text Label 3525 8375 3    50   ~ 0
IRQ1
Text Label 3625 8375 3    50   ~ 0
IRQ2
Text Label 3725 8375 3    50   ~ 0
IRQ3
Text Label 3825 8375 3    50   ~ 0
IRQ4
Text Label 3925 8375 3    50   ~ 0
IRQ5
Text Label 4025 8375 3    50   ~ 0
IRQ6
Text Label 4125 8375 3    50   ~ 0
IRQ7
Text Label 6625 8575 2    50   ~ 0
5+
Text Label 6625 10175 0    50   ~ 0
GND
$EndSCHEMATC
