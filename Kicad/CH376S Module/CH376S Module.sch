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
Text Label 6800 3050 2    50   ~ 0
INT
Text Label 6800 3250 2    50   ~ 0
WR
Text Label 6800 3350 2    50   ~ 0
RD
Text Label 6800 3450 2    50   ~ 0
GND
Text Label 6800 3750 2    50   ~ 0
A0
Text Label 6800 3950 2    50   ~ 0
D+
Text Label 6800 4050 2    50   ~ 0
D-
Text Label 7300 3050 0    50   ~ 0
3v3
Text Label 7300 3150 0    50   ~ 0
CS
Text Label 7300 4350 0    50   ~ 0
D0
Text Label 7300 4250 0    50   ~ 0
D1
Text Label 7300 4150 0    50   ~ 0
D2
Text Label 7300 4050 0    50   ~ 0
D3
Text Label 7300 3950 0    50   ~ 0
D4
Text Label 7300 3850 0    50   ~ 0
D5
Text Label 7300 3750 0    50   ~ 0
D6
Text Label 7300 3650 0    50   ~ 0
D7
Text Label 7300 3550 0    50   ~ 0
GND
Text Label 7300 3450 0    50   ~ 0
LED_PIN
$Comp
L Device:C_Small C5
U 1 1 62A6DD7B
P 6500 4925
F 0 "C5" H 6592 4971 50  0000 L CNN
F 1 "22pF" H 6592 4880 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6500 4925 50  0001 C CNN
F 3 "~" H 6500 4925 50  0001 C CNN
	1    6500 4925
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 62A6E0AD
P 4525 1800
F 0 "C3" H 4616 1846 50  0000 L CNN
F 1 "10uF" H 4616 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4525 1800 50  0001 C CNN
F 3 "~" H 4525 1800 50  0001 C CNN
	1    4525 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 62A6E5F4
P 4950 1825
F 0 "C6" H 5042 1871 50  0000 L CNN
F 1 "0.1uF" H 5042 1780 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4950 1825 50  0001 C CNN
F 3 "~" H 4950 1825 50  0001 C CNN
	1    4950 1825
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 62A6E8BF
P 6325 1875
F 0 "C7" H 6417 1921 50  0000 L CNN
F 1 "0.1uF" H 6417 1830 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6325 1875 50  0001 C CNN
F 3 "~" H 6325 1875 50  0001 C CNN
	1    6325 1875
	1    0    0    -1  
$EndComp
Text Label 4525 1900 3    50   ~ 0
GND
Text Label 4950 1925 3    50   ~ 0
GND
Text Label 6325 1975 3    50   ~ 0
GND
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 62A6FF9E
P 5650 1700
F 0 "U2" H 5650 1942 50  0000 C CNN
F 1 "LM1117-3.3" H 5650 1851 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5650 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5650 1700 50  0001 C CNN
	1    5650 1700
	1    0    0    -1  
$EndComp
Text Label 5650 2000 3    50   ~ 0
GND
Text Label 5950 1700 0    50   ~ 0
3v3
Text Label 6325 1775 0    50   ~ 0
3v3
Text Label 5350 1700 2    50   ~ 0
5+
Text Label 4950 1725 1    50   ~ 0
5+
Text Label 4525 1700 1    50   ~ 0
5+
$Comp
L Connector_Generic:Conn_01x04 USB1
U 1 1 62A72611
P 3550 1975
F 0 "USB1" H 3468 1550 50  0000 C CNN
F 1 "Conn_01x04" H 3468 1641 50  0000 C CNN
F 2 "Connector_USB:USB_A_CONNFLY_DS1095-WNR0" H 3550 1975 50  0001 C CNN
F 3 "~" H 3550 1975 50  0001 C CNN
	1    3550 1975
	-1   0    0    1   
$EndComp
Text Label 3750 2075 0    50   ~ 0
5+
Text Label 3750 1975 0    50   ~ 0
D-
Text Label 3750 1875 0    50   ~ 0
D+
Text Label 3750 1775 0    50   ~ 0
GND
$Comp
L Device:C_Small C2
U 1 1 62A73B27
P 5950 3900
F 0 "C2" H 6042 3946 50  0000 L CNN
F 1 "10nF" H 6042 3855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5950 3900 50  0001 C CNN
F 3 "~" H 5950 3900 50  0001 C CNN
	1    5950 3900
	1    0    0    -1  
$EndComp
Text Label 5950 3800 0    50   ~ 0
PIN_9
$Comp
L Device:C_Small C4
U 1 1 62A74798
P 5875 4925
F 0 "C4" H 5967 4971 50  0000 L CNN
F 1 "22pF" H 5967 4880 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5875 4925 50  0001 C CNN
F 3 "~" H 5875 4925 50  0001 C CNN
	1    5875 4925
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y2
U 1 1 62A74D7A
P 6275 4550
F 0 "Y2" H 6275 4818 50  0000 C CNN
F 1 "12 MHz" H 6275 4727 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 6275 4550 50  0001 C CNN
F 3 "~" H 6275 4550 50  0001 C CNN
	1    6275 4550
	1    0    0    -1  
$EndComp
Text Label 6800 4350 2    50   ~ 0
XO
Text Label 6800 4250 2    50   ~ 0
XI
Text Label 6425 4550 0    50   ~ 0
XO
Text Label 6500 4825 1    50   ~ 0
XO
Text Label 6500 5025 3    50   ~ 0
GND
Text Label 5875 5025 3    50   ~ 0
GND
Text Label 6125 4550 2    50   ~ 0
XI
Text Label 5875 4825 1    50   ~ 0
XI
Text Label 6800 4150 2    50   ~ 0
GND
Text Label 6800 3850 2    50   ~ 0
PIN_9
Text Label 5950 4000 3    50   ~ 0
GND
$Comp
L Device:C_Small C1
U 1 1 62A76E19
P 6225 3025
F 0 "C1" V 6454 3025 50  0000 C CNN
F 1 "0.47uF" V 6363 3025 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6225 3025 50  0001 C CNN
F 3 "~" H 6225 3025 50  0001 C CNN
	1    6225 3025
	0    -1   -1   0   
$EndComp
Text Label 6125 3025 2    50   ~ 0
3v3
Text Label 6800 3150 2    50   ~ 0
RST
Text Label 6325 3025 0    50   ~ 0
RST
$Comp
L Connector_Generic:Conn_02x14_Counter_Clockwise U1
U 1 1 62A77ABA
P 7000 3650
F 0 "U1" H 7050 4467 50  0000 C CNN
F 1 "CH376" H 7050 4376 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 7000 3650 50  0001 C CNN
F 3 "~" H 7000 3650 50  0001 C CNN
	1    7000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 62A7C9C5
P 8700 3400
F 0 "D1" H 8693 3617 50  0000 C CNN
F 1 "LED" H 8693 3526 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 8700 3400 50  0001 C CNN
F 3 "~" H 8700 3400 50  0001 C CNN
	1    8700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 62A7DB58
P 8175 3425
F 0 "R2" V 7968 3425 50  0000 C CNN
F 1 "1K ohm" V 8059 3425 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8105 3425 50  0001 C CNN
F 3 "~" H 8175 3425 50  0001 C CNN
	1    8175 3425
	0    1    1    0   
$EndComp
Text Label 8025 3425 2    50   ~ 0
LED_PIN
Text Label 8325 3425 0    50   ~ 0
LED
Text Label 8550 3400 2    50   ~ 0
LED
Text Label 8850 3400 0    50   ~ 0
3v3
$Comp
L Connector_Generic:Conn_02x08_Odd_Even P1
U 1 1 62A7F2FF
P 4200 5225
F 0 "P1" H 4250 5742 50  0000 C CNN
F 1 "HEADER" H 4250 5651 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 4200 5225 50  0001 C CNN
F 3 "~" H 4200 5225 50  0001 C CNN
	1    4200 5225
	1    0    0    -1  
$EndComp
Text Label 4000 4925 2    50   ~ 0
D0
Text Label 4000 5025 2    50   ~ 0
D1
Text Label 4000 5125 2    50   ~ 0
D2
Text Label 4000 5225 2    50   ~ 0
D3
Text Label 4000 5325 2    50   ~ 0
D4
Text Label 4000 5425 2    50   ~ 0
D5
Text Label 4000 5525 2    50   ~ 0
D6
Text Label 4000 5625 2    50   ~ 0
D7
Text Label 4500 5625 0    50   ~ 0
WR
Text Label 4500 5525 0    50   ~ 0
RD
Text Label 4500 5425 0    50   ~ 0
CS
Text Label 4500 5325 0    50   ~ 0
A0
Text Label 4500 5225 0    50   ~ 0
INT
Text Label 4500 5125 0    50   ~ 0
5+
Text Label 4500 5025 0    50   ~ 0
GND
Text Label 4500 4925 0    50   ~ 0
GND
$EndSCHEMATC
