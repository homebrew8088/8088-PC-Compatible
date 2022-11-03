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
Text Label 14425 6925 0    50   ~ 0
D7
Text Label 14425 6825 0    50   ~ 0
D6
Text Label 14425 6725 0    50   ~ 0
D5
Text Label 14425 6625 0    50   ~ 0
D4
Text Label 14425 6525 0    50   ~ 0
D3
Text Label 14425 6425 0    50   ~ 0
D2
Text Label 14425 6325 0    50   ~ 0
D1
Text Label 14425 6225 0    50   ~ 0
D0
Text Label 13625 7625 2    50   ~ 0
A14
Text Label 13625 7525 2    50   ~ 0
A13
Text Label 13625 7425 2    50   ~ 0
A12
Text Label 13625 7325 2    50   ~ 0
A11
Text Label 13625 7225 2    50   ~ 0
A10
Text Label 13625 7125 2    50   ~ 0
A9
Text Label 13625 7025 2    50   ~ 0
A8
Text Label 13625 6925 2    50   ~ 0
A7
Text Label 13625 6825 2    50   ~ 0
A6
Text Label 13625 6725 2    50   ~ 0
A5
Text Label 13625 6625 2    50   ~ 0
A4
Text Label 13625 6525 2    50   ~ 0
A3
Text Label 13625 6425 2    50   ~ 0
A2
Text Label 13625 6325 2    50   ~ 0
A1
Text Label 3750 3275 0    50   ~ 0
GND
Text Label 3250 3275 2    50   ~ 0
5+
Text Label 13625 6225 2    50   ~ 0
A0
$Comp
L pspice:CAP C1
U 1 1 6086EA25
P 3500 3275
F 0 "C1" V 3185 3275 50  0000 C CNN
F 1 "0.1uF" V 3276 3275 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3500 3275 50  0001 C CNN
F 3 "~" H 3500 3275 50  0001 C CNN
	1    3500 3275
	0    1    1    0   
$EndComp
$Comp
L V40:70208 U1
U 1 1 6105D18A
P 5550 3375
F 0 "U1" H 5494 1671 50  0000 L CNN
F 1 "70208" H 5494 1580 50  0000 L CNN
F 2 "Package_LCC:PLCC-68_THT-Socket" H 5550 3375 50  0001 C CNN
F 3 "" H 5550 3375 50  0001 C CNN
	1    5550 3375
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS573 U2
U 1 1 610661C4
P 8200 4800
F 0 "U2" H 8200 5781 50  0000 C CNN
F 1 "74LS573" H 8200 5690 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 8200 4800 50  0001 C CNN
F 3 "74xx/74hc573.pdf" H 8200 4800 50  0001 C CNN
	1    8200 4800
	1    0    0    -1  
$EndComp
Text Label 3100 4325 2    50   ~ 0
A15
Text Label 3100 4425 2    50   ~ 0
A14
Text Label 3100 4525 2    50   ~ 0
A13
Text Label 3100 4625 2    50   ~ 0
A12
Text Label 3100 4725 2    50   ~ 0
A11
Text Label 3100 4825 2    50   ~ 0
A10
Text Label 3100 4925 2    50   ~ 0
A9
Text Label 3100 5025 2    50   ~ 0
A8
Text Label 8700 4300 0    50   ~ 0
A7
Text Label 8700 4400 0    50   ~ 0
A6
Text Label 8700 4500 0    50   ~ 0
A5
Text Label 8700 4600 0    50   ~ 0
A4
Text Label 8700 4700 0    50   ~ 0
A3
Text Label 8700 4800 0    50   ~ 0
A2
Text Label 8700 4900 0    50   ~ 0
A1
Text Label 8700 5000 0    50   ~ 0
A0
Text Label 8200 4000 0    50   ~ 0
5+
Text Label 8200 5600 0    50   ~ 0
GND
Text Label 3500 3925 1    50   ~ 0
A16_
Text Label 3600 3925 1    50   ~ 0
A17_
Text Label 3700 3925 1    50   ~ 0
A18_
Text Label 3800 3925 1    50   ~ 0
A19_
Text Label 8325 3675 0    50   ~ 0
GND
Text Label 7825 3675 2    50   ~ 0
5+
$Comp
L pspice:CAP C3
U 1 1 6106B923
P 8075 3675
F 0 "C3" V 7760 3675 50  0000 C CNN
F 1 "0.1uF" V 7851 3675 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8075 3675 50  0001 C CNN
F 3 "~" H 8075 3675 50  0001 C CNN
	1    8075 3675
	0    1    1    0   
$EndComp
Text Label 8500 6100 0    50   ~ 0
GND
Text Label 8000 6100 2    50   ~ 0
5+
$Comp
L pspice:CAP C4
U 1 1 6106BA7C
P 8250 6100
F 0 "C4" V 7935 6100 50  0000 C CNN
F 1 "0.1uF" V 8026 6100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8250 6100 50  0001 C CNN
F 3 "~" H 8250 6100 50  0001 C CNN
	1    8250 6100
	0    1    1    0   
$EndComp
Text Label 3100 5225 2    50   ~ 0
AD7
Text Label 3100 5325 2    50   ~ 0
AD6
Text Label 3100 5425 2    50   ~ 0
AD5
Text Label 3100 5525 2    50   ~ 0
AD4
Text Label 3100 5625 2    50   ~ 0
AD3
Text Label 3100 5725 2    50   ~ 0
AD2
Text Label 3100 5825 2    50   ~ 0
AD1
Text Label 3100 5925 2    50   ~ 0
AD0
Text Label 7700 4300 2    50   ~ 0
AD7
Text Label 7700 4400 2    50   ~ 0
AD6
Text Label 7700 4500 2    50   ~ 0
AD5
Text Label 7700 4600 2    50   ~ 0
AD4
Text Label 7700 4700 2    50   ~ 0
AD3
Text Label 7700 4800 2    50   ~ 0
AD2
Text Label 7700 4900 2    50   ~ 0
AD1
Text Label 7700 5000 2    50   ~ 0
AD0
Text Label 7725 6625 2    50   ~ 0
AD7
Text Label 7725 6725 2    50   ~ 0
AD6
Text Label 7725 6825 2    50   ~ 0
AD5
Text Label 7725 6925 2    50   ~ 0
AD4
Text Label 7725 7025 2    50   ~ 0
AD3
Text Label 7725 7125 2    50   ~ 0
AD2
Text Label 7725 7225 2    50   ~ 0
AD1
Text Label 7725 7325 2    50   ~ 0
AD0
Text Label 8725 7325 0    50   ~ 0
D0
Text Label 8725 7225 0    50   ~ 0
D1
Text Label 8725 7125 0    50   ~ 0
D2
Text Label 8725 7025 0    50   ~ 0
D3
Text Label 8725 6925 0    50   ~ 0
D4
Text Label 8725 6825 0    50   ~ 0
D5
Text Label 8725 6725 0    50   ~ 0
D6
Text Label 8725 6625 0    50   ~ 0
D7
Text Label 8225 6325 2    50   ~ 0
5+
Text Label 8225 7925 0    50   ~ 0
GND
Text Label 7700 5200 2    50   ~ 0
ALE
Text Label 3900 3925 1    50   ~ 0
REFRQ
Text Label 4100 3925 1    50   ~ 0
HOLDA
Text Label 4000 3925 1    50   ~ 0
HOLD
Text Label 4300 3925 1    50   ~ 0
5+
Text Label 4400 3925 1    50   ~ 0
RESET
Text Label 4600 3925 1    50   ~ 0
NMI
Text Label 5100 3925 1    50   ~ 0
IORD
Text Label 5000 3925 1    50   ~ 0
MRD
Text Label 5450 4325 0    50   ~ 0
MWR
Text Label 5450 4425 0    50   ~ 0
IOWR
Text Label 5450 4625 0    50   ~ 0
DTR
Text Label 5450 4725 0    50   ~ 0
DEN
Text Label 7725 7625 2    50   ~ 0
DEN
Text Label 7725 7525 2    50   ~ 0
DTR
Text Label 7700 5300 2    50   ~ 0
HOLDA
Text Label 5450 4925 0    50   ~ 0
X1
Text Label 5450 5025 0    50   ~ 0
X2
Text Label 5450 5125 0    50   ~ 0
GND
Text Label 5450 5325 0    50   ~ 0
ALE
Text Label 5450 5625 0    50   ~ 0
POLL
Text Label 5100 1325 0    50   ~ 0
POLL
Text Label 5450 5725 0    50   ~ 0
SPK_GO
Text Label 5450 5925 0    50   ~ 0
HF_PCLK
Text Label 5450 5825 0    50   ~ 0
SPK_OUT
Text Label 4600 6325 3    50   ~ 0
IRQ2
Text Label 4700 6325 3    50   ~ 0
IRQ3
Text Label 4500 6325 3    50   ~ 0
IRQ1
$Comp
L Device:Crystal Y1
U 1 1 610DE620
P 6375 4725
F 0 "Y1" H 6375 4457 50  0000 C CNN
F 1 "Crystal" H 6375 4548 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 6375 4725 50  0001 C CNN
F 3 "~" H 6375 4725 50  0001 C CNN
	1    6375 4725
	-1   0    0    1   
$EndComp
Text Label 6225 4725 2    50   ~ 0
X1
Text Label 6525 4725 0    50   ~ 0
X2
Text Label 3100 5125 2    50   ~ 0
GND
Text Label 4500 3925 1    50   ~ 0
RDY1
$Comp
L Memory_EEPROM:28C256 U5
U 1 1 63606A51
P 12425 7150
F 0 "U5" H 12425 8431 50  0000 C CNN
F 1 "28C256" H 12425 8340 50  0000 C CNN
F 2 "Socket:DIP_Socket-28_W11.9_W12.7_W15.24_W17.78_W18.5_3M_228-1277-00-0602J" H 12425 7150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 12425 7150 50  0001 C CNN
	1    12425 7150
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U6
U 1 1 636098EE
P 14025 7125
F 0 "U6" H 14025 8406 50  0000 C CNN
F 1 "62256" H 14025 8315 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 14025 7125 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 14025 7125 50  0001 C CNN
	1    14025 7125
	1    0    0    -1  
$EndComp
Text Label 12675 5475 0    50   ~ 0
GND
Text Label 12175 5475 2    50   ~ 0
5+
$Comp
L pspice:CAP C5
U 1 1 6360A970
P 12425 5475
F 0 "C5" V 12110 5475 50  0000 C CNN
F 1 "0.1uF" V 12201 5475 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12425 5475 50  0001 C CNN
F 3 "~" H 12425 5475 50  0001 C CNN
	1    12425 5475
	0    1    1    0   
$EndComp
Text Label 14150 5425 0    50   ~ 0
GND
Text Label 13650 5425 2    50   ~ 0
5+
$Comp
L pspice:CAP C6
U 1 1 6360AB57
P 13900 5425
F 0 "C6" V 13585 5425 50  0000 C CNN
F 1 "0.1uF" V 13676 5425 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 13900 5425 50  0001 C CNN
F 3 "~" H 13900 5425 50  0001 C CNN
	1    13900 5425
	0    1    1    0   
$EndComp
Text Label 12825 6950 0    50   ~ 0
D7
Text Label 12825 6850 0    50   ~ 0
D6
Text Label 12825 6750 0    50   ~ 0
D5
Text Label 12825 6650 0    50   ~ 0
D4
Text Label 12825 6550 0    50   ~ 0
D3
Text Label 12825 6450 0    50   ~ 0
D2
Text Label 12825 6350 0    50   ~ 0
D1
Text Label 12825 6250 0    50   ~ 0
D0
Text Label 12025 7650 2    50   ~ 0
A14
Text Label 12025 7550 2    50   ~ 0
A13
Text Label 12025 7450 2    50   ~ 0
A12
Text Label 12025 7350 2    50   ~ 0
A11
Text Label 12025 7250 2    50   ~ 0
A10
Text Label 12025 7150 2    50   ~ 0
A9
Text Label 12025 7050 2    50   ~ 0
A8
Text Label 12025 6950 2    50   ~ 0
A7
Text Label 12025 6850 2    50   ~ 0
A6
Text Label 12025 6750 2    50   ~ 0
A5
Text Label 12025 6650 2    50   ~ 0
A4
Text Label 12025 6550 2    50   ~ 0
A3
Text Label 12025 6450 2    50   ~ 0
A2
Text Label 12025 6350 2    50   ~ 0
A1
Text Label 12025 6250 2    50   ~ 0
A0
Text Label 5100 1525 0    50   ~ 0
HOLD
Text Label 12025 7850 2    50   ~ 0
MWR
Text Label 12025 7950 2    50   ~ 0
MRD
Text Label 13625 7825 2    50   ~ 0
MWR
Text Label 13625 7925 2    50   ~ 0
MRD
Text Label 12425 8250 0    50   ~ 0
GND
Text Label 14025 8225 0    50   ~ 0
GND
Text Label 14025 6025 0    50   ~ 0
5+
Text Label 12425 6050 0    50   ~ 0
5+
$Comp
L 74xx:74LS04 U3
U 1 1 6360F434
P 10575 3725
F 0 "U3" H 10575 4042 50  0000 C CNN
F 1 "74LS04" H 10575 3951 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10575 3725 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10575 3725 50  0001 C CNN
	1    10575 3725
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 7 1 6361066C
P 10450 3000
F 0 "U3" V 10083 3000 50  0000 C CNN
F 1 "74LS04" V 10174 3000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10450 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10450 3000 50  0001 C CNN
	7    10450 3000
	0    1    1    0   
$EndComp
Text Label 10750 2100 0    50   ~ 0
GND
Text Label 10250 2100 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 63611DC6
P 10500 2100
F 0 "C2" V 10185 2100 50  0000 C CNN
F 1 "0.1uF" V 10276 2100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10500 2100 50  0001 C CNN
F 3 "~" H 10500 2100 50  0001 C CNN
	1    10500 2100
	0    1    1    0   
$EndComp
Text Label 10950 3000 0    50   ~ 0
5+
Text Label 9950 3000 2    50   ~ 0
GND
Text Label 10275 3725 2    50   ~ 0
A15
Text Label 10875 3725 0    50   ~ 0
A15_
Text Label 12025 8050 2    50   ~ 0
A15_
Text Label 13625 8025 2    50   ~ 0
A15
$Comp
L Switch:SW_Push_DPDT SW1
U 1 1 6361FBE2
P 4225 10500
F 0 "SW1" H 4225 10985 50  0000 C CNN
F 1 "SW_Push_DPDT" H 4225 10894 50  0000 C CNN
F 2 "My:6 PIN DTDP" H 4225 10700 50  0001 C CNN
F 3 "~" H 4225 10700 50  0001 C CNN
	1    4225 10500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C7
U 1 1 636014DB
P 4600 2650
F 0 "C7" V 4285 2650 50  0000 C CNN
F 1 "4.7uF" V 4376 2650 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 4600 2650 50  0001 C CNN
F 3 "~" H 4600 2650 50  0001 C CNN
	1    4600 2650
	0    1    1    0   
$EndComp
Text Label 4350 2650 2    50   ~ 0
GND
Text Label 4850 2650 0    50   ~ 0
RESET
Text Label 6525 1800 0    50   ~ 0
RESET
Text Label 2425 11425 0    50   ~ 0
GND
Text Label 4425 10400 0    50   ~ 0
5+
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 63607A76
P 2425 10525
F 0 "J1" H 2532 11392 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 2532 11301 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 2575 10525 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2575 10525 50  0001 C CNN
	1    2425 10525
	1    0    0    -1  
$EndComp
Text Label 3025 9925 0    50   ~ 0
POWER_SUPPLY
Text Label 4025 10300 2    50   ~ 0
POWER_SUPPLY
Text Label 6525 1700 0    50   ~ 0
RDY1
Text Label 6125 2400 2    50   ~ 0
5+
Text Label 5100 1425 0    50   ~ 0
NMI
$Comp
L Device:R_Network03 RN1
U 1 1 6361058D
P 4900 1425
F 0 "RN1" H 5088 1471 50  0000 L CNN
F 1 "10K ohm" H 5088 1380 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP4" V 5175 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4900 1425 50  0001 C CNN
	1    4900 1425
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Network08 RN2
U 1 1 63610DE3
P 6325 2000
F 0 "RN2" H 6513 2046 50  0000 L CNN
F 1 "10K ohm" H 6513 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 6600 2000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6325 2000 50  0001 C CNN
	1    6325 2000
	0    -1   -1   0   
$EndComp
Text Label 6525 1900 0    50   ~ 0
DEN
$Comp
L 74xx:74LS245 U4
U 1 1 61063CD3
P 8225 7125
F 0 "U4" H 8225 8106 50  0000 C CNN
F 1 "74LS245" H 8225 8015 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 8225 7125 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8225 7125 50  0001 C CNN
	1    8225 7125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x18_Counter_Clockwise J2
U 1 1 636155EB
P 10350 10250
F 0 "J2" H 10400 11267 50  0000 C CNN
F 1 "Conn_02x18_Counter_Clockwise" H 10400 11176 50  0000 C CNN
F 2 "My:36_EDGE_CARD_BUS" H 10350 10250 50  0001 C CNN
F 3 "~" H 10350 10250 50  0001 C CNN
	1    10350 10250
	1    0    0    -1  
$EndComp
Text Label 4700 1525 2    50   ~ 0
GND
Text Label 10150 10450 2    50   ~ 0
A14
Text Label 10150 10550 2    50   ~ 0
A13
Text Label 10150 10650 2    50   ~ 0
A12
Text Label 10150 10750 2    50   ~ 0
A11
Text Label 10150 10850 2    50   ~ 0
A10
Text Label 10150 10950 2    50   ~ 0
A9
Text Label 10150 11050 2    50   ~ 0
A8
Text Label 10650 10350 0    50   ~ 0
A7
Text Label 10650 10450 0    50   ~ 0
A6
Text Label 10650 10550 0    50   ~ 0
A5
Text Label 10650 10650 0    50   ~ 0
A4
Text Label 10650 10750 0    50   ~ 0
A3
Text Label 10650 10850 0    50   ~ 0
A2
Text Label 10650 10950 0    50   ~ 0
A1
Text Label 10650 11050 0    50   ~ 0
A0
Text Label 10650 9550 0    50   ~ 0
D7
Text Label 10650 9650 0    50   ~ 0
D6
Text Label 10650 9750 0    50   ~ 0
D5
Text Label 10650 9850 0    50   ~ 0
D4
Text Label 10650 9950 0    50   ~ 0
D3
Text Label 10650 10050 0    50   ~ 0
D2
Text Label 10650 10150 0    50   ~ 0
D1
Text Label 10650 10250 0    50   ~ 0
D0
Text Label 10150 10350 2    50   ~ 0
A15
Text Label 10650 9450 0    50   ~ 0
5+
Text Label 10150 9450 2    50   ~ 0
GND
Text Label 6525 2000 0    50   ~ 0
MWR
Text Label 10650 11150 0    50   ~ 0
IOWR
Text Label 10150 11150 2    50   ~ 0
IORD
Text Label 6525 2100 0    50   ~ 0
MRD
Text Label 4800 6325 3    50   ~ 0
IRQ4
Text Label 4900 6325 3    50   ~ 0
IRQ5
Text Label 5000 6325 3    50   ~ 0
IRQ6
Text Label 5100 6325 3    50   ~ 0
IRQ7
Text Label 10150 9650 2    50   ~ 0
IRQ2
Text Label 10150 9750 2    50   ~ 0
IRQ3
Text Label 10150 9550 2    50   ~ 0
IRQ1
Text Label 10150 9850 2    50   ~ 0
IRQ4
Text Label 10150 9950 2    50   ~ 0
IRQ5
Text Label 10150 10050 2    50   ~ 0
IRQ6
Text Label 10150 10150 2    50   ~ 0
IRQ7
Text Label 6525 2300 0    50   ~ 0
IORD
Text Label 6525 2200 0    50   ~ 0
MRD
Text Label 6525 2400 0    50   ~ 0
SPK_GO
Text Label 10150 10250 2    50   ~ 0
SPK_OUT
$Comp
L Device:R_Network08 RN3
U 1 1 6365B522
P 4900 7025
F 0 "RN3" H 5088 7071 50  0000 L CNN
F 1 "10K ohm" H 5088 6980 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5175 7025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4900 7025 50  0001 C CNN
	1    4900 7025
	1    0    0    -1  
$EndComp
Text Label 4500 6825 0    50   ~ 0
GND
Text Label 4600 7225 3    50   ~ 0
IRQ2
Text Label 4700 7225 3    50   ~ 0
IRQ3
Text Label 4500 7225 3    50   ~ 0
IRQ1
Text Label 4800 7225 3    50   ~ 0
IRQ4
Text Label 4900 7225 3    50   ~ 0
IRQ5
Text Label 5000 7225 3    50   ~ 0
IRQ6
Text Label 5100 7225 3    50   ~ 0
IRQ7
$EndSCHEMATC
