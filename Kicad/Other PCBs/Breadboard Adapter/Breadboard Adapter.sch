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
Text Label 9350 4275 2    50   ~ 0
12+
Text Label 9350 4075 2    50   ~ 0
12-
Text Label 9350 3975 2    50   ~ 0
DRQ2
Text Label 9350 3875 2    50   ~ 0
5-
Text Label 9350 3775 2    50   ~ 0
IRQ2
Text Label 9350 3675 2    50   ~ 0
5+
Text Label 9350 3575 2    50   ~ 0
RESOUT
Text Label 9350 3475 2    50   ~ 0
GND
Text Label 9350 4875 2    50   ~ 0
DACK3
Text Label 9350 4975 2    50   ~ 0
DRQ3
Text Label 9350 5075 2    50   ~ 0
DACK1
Text Label 9350 5175 2    50   ~ 0
DRQ1
Text Label 9350 5275 2    50   ~ 0
REFRQ
Text Label 9350 5375 2    50   ~ 0
CLK88
Text Label 9350 5475 2    50   ~ 0
IRQ7
Text Label 9350 5575 2    50   ~ 0
IRQ6
Text Label 9350 5675 2    50   ~ 0
IRQ5
Text Label 9350 5775 2    50   ~ 0
IRQ4
Text Label 9350 5875 2    50   ~ 0
IRQ3
Text Label 9350 5975 2    50   ~ 0
DACK2
Text Label 9350 6075 2    50   ~ 0
TC
Text Label 9350 6175 2    50   ~ 0
ALE
Text Label 9350 6275 2    50   ~ 0
5+
Text Label 9350 4175 2    50   ~ 0
NC
Text Label 9350 6375 2    50   ~ 0
OSC88
Text Label 9350 6475 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J1
U 1 1 6106BEE1
P 10025 7725
F 0 "J1" H 10075 8242 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 10075 8151 50  0000 C CNN
F 2 "My:2x08_PIN_EDGE_CARD" H 10025 7725 50  0001 C CNN
F 3 "~" H 10025 7725 50  0001 C CNN
	1    10025 7725
	1    0    0    -1  
$EndComp
Text Label 9825 7425 2    50   ~ 0
IRQ1
Text Label 9825 7525 2    50   ~ 0
IO_000X
Text Label 9825 7625 2    50   ~ 0
IO_002X
Text Label 9825 7725 2    50   ~ 0
IO_004X
Text Label 9825 7825 2    50   ~ 0
IO_006X
Text Label 9825 7925 2    50   ~ 0
IO_008X
Text Label 9825 8125 2    50   ~ 0
NMI
Text Label 10325 8125 0    50   ~ 0
SPK_OUT
Text Label 10325 8025 0    50   ~ 0
SPK_GO
Text Label 10325 7925 0    50   ~ 0
HF_PCLK
Text Label 10325 7825 0    50   ~ 0
DRQ0
Text Label 10325 7725 0    50   ~ 0
HOLDA
Text Label 10325 7625 0    50   ~ 0
HOLD
Text Label 10325 7525 0    50   ~ 0
READY
Text Label 10325 7425 0    50   ~ 0
RESET
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 6363F9C3
P 4075 6150
F 0 "J2" H 4182 7017 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 4182 6926 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 4225 6150 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 4225 6150 50  0001 C CNN
	1    4075 6150
	1    0    0    -1  
$EndComp
Text Label 4675 5550 0    50   ~ 0
POWER_SUPPLY
Text Label 4075 7050 0    50   ~ 0
GND
$Comp
L Switch:SW_Push_DPDT SW1
U 1 1 6364076E
P 5875 6100
F 0 "SW1" H 5875 6585 50  0000 C CNN
F 1 "SW_Push_DPDT" H 5875 6494 50  0000 C CNN
F 2 "My:6 PIN DTDP" H 5875 6300 50  0001 C CNN
F 3 "~" H 5875 6300 50  0001 C CNN
	1    5875 6100
	1    0    0    -1  
$EndComp
Text Label 5675 5900 2    50   ~ 0
5+
Text Label 6075 6000 0    50   ~ 0
POWER_SUPPLY
$Comp
L pspice:CAP C1
U 1 1 63646386
P 5650 4425
F 0 "C1" V 5965 4425 50  0000 C CNN
F 1 "4.7uF" V 5874 4425 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 5650 4425 50  0001 C CNN
F 3 "~" H 5650 4425 50  0001 C CNN
	1    5650 4425
	0    1    1    0   
$EndComp
Text Label 5400 4425 2    50   ~ 0
GND
Text Label 5900 4425 0    50   ~ 0
RESET
Text Label 6700 5100 2    50   ~ 0
5+
Text Label 7100 4400 0    50   ~ 0
RESET
$Comp
L Device:R_Network03 RN2
U 1 1 636476CE
P 10075 8825
F 0 "RN2" V 10400 8825 50  0000 C CNN
F 1 "10K ohm" V 10309 8825 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP4" V 10350 8825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10075 8825 50  0001 C CNN
	1    10075 8825
	0    -1   -1   0   
$EndComp
Text Label 9875 8925 2    50   ~ 0
GND
Text Label 10275 8925 0    50   ~ 0
NMI
Text Label 10275 8725 0    50   ~ 0
HOLD
$Comp
L Device:R_Network08 RN1
U 1 1 6364884B
P 6900 4700
F 0 "RN1" V 7425 4700 50  0000 C CNN
F 1 "10K ohm" V 7334 4700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 7375 4700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 6900 4700 50  0001 C CNN
	1    6900 4700
	0    -1   -1   0   
$EndComp
Text Label 9350 4375 2    50   ~ 0
GND
Text Label 9350 4475 2    50   ~ 0
MWR
Text Label 9350 4575 2    50   ~ 0
MRD
Text Label 9350 4675 2    50   ~ 0
IOWR
Text Label 9350 4775 2    50   ~ 0
IORD
Text Label 7100 4900 0    50   ~ 0
MWR
Text Label 7100 4800 0    50   ~ 0
MRD
Text Label 7100 4700 0    50   ~ 0
IOWR
Text Label 7100 4600 0    50   ~ 0
IORD
Text Label 7100 4500 0    50   ~ 0
RDY1
$Comp
L Connector_Generic:Conn_01x31 J3
U 1 1 6364E93A
P 8600 4975
F 0 "J3" H 8680 5017 50  0000 L CNN
F 1 "Conn_01x31" H 8680 4926 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x31_P2.54mm_Vertical" H 8600 4975 50  0001 C CNN
F 3 "~" H 8600 4975 50  0001 C CNN
	1    8600 4975
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x31 J4
U 1 1 636509A5
P 11175 4975
F 0 "J4" H 11093 6692 50  0000 C CNN
F 1 "Conn_01x31" H 11093 6601 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x31_P2.54mm_Vertical" H 11175 4975 50  0001 C CNN
F 3 "~" H 11175 4975 50  0001 C CNN
	1    11175 4975
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Bus_ISA_8bit J9
U 1 1 6082C528
P 10050 4975
F 0 "J9" H 10050 6742 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 10050 6651 50  0001 C CNN
F 2 "My:8-bit-ISA" H 10050 4975 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 10050 4975 50  0001 C CNN
	1    10050 4975
	1    0    0    -1  
$EndComp
Text Label 10750 6475 0    50   ~ 0
A0
Text Label 10750 3475 0    50   ~ 0
CH_CK
Text Label 10750 6375 0    50   ~ 0
A1
Text Label 10750 6275 0    50   ~ 0
A2
Text Label 10750 6175 0    50   ~ 0
A3
Text Label 10750 6075 0    50   ~ 0
A4
Text Label 10750 5975 0    50   ~ 0
A5
Text Label 10750 5875 0    50   ~ 0
A6
Text Label 10750 5775 0    50   ~ 0
A7
Text Label 10750 5675 0    50   ~ 0
A8
Text Label 10750 5575 0    50   ~ 0
A9
Text Label 10750 5475 0    50   ~ 0
A10
Text Label 10750 5375 0    50   ~ 0
A11
Text Label 10750 5275 0    50   ~ 0
A12
Text Label 10750 5175 0    50   ~ 0
A13
Text Label 10750 5075 0    50   ~ 0
A14
Text Label 10750 4975 0    50   ~ 0
A15
Text Label 10750 4875 0    50   ~ 0
A16
Text Label 10750 4775 0    50   ~ 0
A17
Text Label 10750 4675 0    50   ~ 0
A18
Text Label 10750 4575 0    50   ~ 0
A19
Text Label 10750 4475 0    50   ~ 0
AEN
Text Label 10750 4375 0    50   ~ 0
RDY1
Text Label 10750 4275 0    50   ~ 0
D0
Text Label 10750 4175 0    50   ~ 0
D1
Text Label 10750 4075 0    50   ~ 0
D2
Text Label 10750 3975 0    50   ~ 0
D3
Text Label 10750 3875 0    50   ~ 0
D4
Text Label 10750 3775 0    50   ~ 0
D5
Text Label 10750 3675 0    50   ~ 0
D6
Text Label 10750 3575 0    50   ~ 0
D7
Text Label 8400 4275 2    50   ~ 0
12+
Text Label 8400 4075 2    50   ~ 0
12-
Text Label 8400 3975 2    50   ~ 0
DRQ2
Text Label 8400 3875 2    50   ~ 0
5-
Text Label 8400 3775 2    50   ~ 0
IRQ2
Text Label 8400 3675 2    50   ~ 0
5+
Text Label 8400 3575 2    50   ~ 0
RESOUT
Text Label 8400 3475 2    50   ~ 0
GND
Text Label 8400 4875 2    50   ~ 0
DACK3
Text Label 8400 4975 2    50   ~ 0
DRQ3
Text Label 8400 5075 2    50   ~ 0
DACK1
Text Label 8400 5175 2    50   ~ 0
DRQ1
Text Label 8400 5275 2    50   ~ 0
REFRQ
Text Label 8400 5375 2    50   ~ 0
CLK88
Text Label 8400 5475 2    50   ~ 0
IRQ7
Text Label 8400 5575 2    50   ~ 0
IRQ6
Text Label 8400 5675 2    50   ~ 0
IRQ5
Text Label 8400 5775 2    50   ~ 0
IRQ4
Text Label 8400 5875 2    50   ~ 0
IRQ3
Text Label 8400 5975 2    50   ~ 0
DACK2
Text Label 8400 6075 2    50   ~ 0
TC
Text Label 8400 6175 2    50   ~ 0
ALE
Text Label 8400 6275 2    50   ~ 0
5+
Text Label 8400 4175 2    50   ~ 0
NC
Text Label 8400 6375 2    50   ~ 0
OSC88
Text Label 8400 6475 2    50   ~ 0
GND
Text Label 8400 4375 2    50   ~ 0
GND
Text Label 8400 4475 2    50   ~ 0
MWR
Text Label 8400 4575 2    50   ~ 0
MRD
Text Label 8400 4675 2    50   ~ 0
IOWR
Text Label 8400 4775 2    50   ~ 0
IORD
Text Label 11375 3575 0    50   ~ 0
D7
Text Label 11375 3675 0    50   ~ 0
D6
Text Label 11375 3775 0    50   ~ 0
D5
Text Label 11375 3875 0    50   ~ 0
D4
Text Label 11375 3975 0    50   ~ 0
D3
Text Label 11375 4075 0    50   ~ 0
D2
Text Label 11375 4175 0    50   ~ 0
D1
Text Label 11375 4275 0    50   ~ 0
D0
Text Label 11375 4375 0    50   ~ 0
RDY1
Text Label 11375 4475 0    50   ~ 0
AEN
Text Label 11375 4575 0    50   ~ 0
A19
Text Label 11375 4675 0    50   ~ 0
A18
Text Label 11375 4775 0    50   ~ 0
A17
Text Label 11375 4875 0    50   ~ 0
A16
Text Label 11375 4975 0    50   ~ 0
A15
Text Label 11375 5075 0    50   ~ 0
A14
Text Label 11375 5175 0    50   ~ 0
A13
Text Label 11375 5275 0    50   ~ 0
A12
Text Label 11375 5375 0    50   ~ 0
A11
Text Label 11375 5475 0    50   ~ 0
A10
Text Label 11375 5575 0    50   ~ 0
A9
Text Label 11375 5675 0    50   ~ 0
A8
Text Label 11375 5775 0    50   ~ 0
A7
Text Label 11375 5875 0    50   ~ 0
A6
Text Label 11375 5975 0    50   ~ 0
A5
Text Label 11375 6075 0    50   ~ 0
A4
Text Label 11375 6175 0    50   ~ 0
A3
Text Label 11375 6275 0    50   ~ 0
A2
Text Label 11375 6375 0    50   ~ 0
A1
Text Label 11375 3475 0    50   ~ 0
CH_CK
Text Label 11375 6475 0    50   ~ 0
A0
$Comp
L Connector_Generic:Conn_01x08 J6
U 1 1 63665793
P 11000 7750
F 0 "J6" H 10918 8267 50  0000 C CNN
F 1 "Conn_01x8" H 10918 8176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 11000 7750 50  0001 C CNN
F 3 "~" H 11000 7750 50  0001 C CNN
	1    11000 7750
	-1   0    0    -1  
$EndComp
Text Label 11200 8150 0    50   ~ 0
SPK_OUT
Text Label 11200 8050 0    50   ~ 0
SPK_GO
Text Label 11200 7950 0    50   ~ 0
HF_PCLK
Text Label 11200 7850 0    50   ~ 0
DRQ0
Text Label 11200 7750 0    50   ~ 0
HOLDA
Text Label 11200 7650 0    50   ~ 0
HOLD
Text Label 11200 7550 0    50   ~ 0
READY
Text Label 11200 7450 0    50   ~ 0
RESET
$Comp
L Connector_Generic:Conn_01x08 J5
U 1 1 636684BE
P 8875 7725
F 0 "J5" H 8955 7717 50  0000 L CNN
F 1 "Conn_01x8" H 8955 7626 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 8875 7725 50  0001 C CNN
F 3 "~" H 8875 7725 50  0001 C CNN
	1    8875 7725
	1    0    0    -1  
$EndComp
Text Label 8675 7425 2    50   ~ 0
IRQ1
Text Label 8675 7525 2    50   ~ 0
IO_000X
Text Label 8675 7625 2    50   ~ 0
IO_002X
Text Label 8675 7725 2    50   ~ 0
IO_004X
Text Label 8675 7825 2    50   ~ 0
IO_006X
Text Label 8675 7925 2    50   ~ 0
IO_008X
Text Label 8675 8125 2    50   ~ 0
NMI
Text Label 9825 8025 2    50   ~ 0
PIN7
Text Label 8675 8025 2    50   ~ 0
PIN7
$Comp
L 74xx:74LS138 U2
U 1 1 63650858
P 5325 8875
F 0 "U2" H 5325 9656 50  0000 C CNN
F 1 "74LS138" H 5325 9565 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5325 8875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 5325 8875 50  0001 C CNN
	1    5325 8875
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U1
U 1 1 63650D77
P 3900 10100
F 0 "U1" H 3900 10881 50  0000 C CNN
F 1 "74LS138" H 3900 10790 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3900 10100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 3900 10100 50  0001 C CNN
	1    3900 10100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U3
U 1 1 636518F3
P 5925 10325
F 0 "U3" H 5925 11106 50  0000 C CNN
F 1 "74LS138" H 5925 11015 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5925 10325 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 5925 10325 50  0001 C CNN
	1    5925 10325
	1    0    0    -1  
$EndComp
Text Label 4825 9175 2    50   ~ 0
HOLDA
Text Label 4825 9075 2    50   ~ 0
5+
Text Label 4825 9275 2    50   ~ 0
A15
Text Label 5325 8275 0    50   ~ 0
5+
Text Label 4825 8575 2    50   ~ 0
A12
Text Label 4825 8675 2    50   ~ 0
A13
Text Label 4825 8775 2    50   ~ 0
A14
Text Label 5825 8575 0    50   ~ 0
IO_0XXX
Text Label 5325 9575 0    50   ~ 0
GND
$Comp
L pspice:CAP C3
U 1 1 63654344
P 5300 7775
F 0 "C3" V 5615 7775 50  0000 C CNN
F 1 "4.7uF" V 5524 7775 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5300 7775 50  0001 C CNN
F 3 "~" H 5300 7775 50  0001 C CNN
	1    5300 7775
	0    1    1    0   
$EndComp
Text Label 5050 7775 2    50   ~ 0
5+
Text Label 5550 7775 0    50   ~ 0
GND
$Comp
L pspice:CAP C2
U 1 1 63654CD3
P 3800 9150
F 0 "C2" V 4115 9150 50  0000 C CNN
F 1 "4.7uF" V 4024 9150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3800 9150 50  0001 C CNN
F 3 "~" H 3800 9150 50  0001 C CNN
	1    3800 9150
	0    1    1    0   
$EndComp
Text Label 3550 9150 2    50   ~ 0
5+
Text Label 4050 9150 0    50   ~ 0
GND
$Comp
L pspice:CAP C4
U 1 1 63654F9A
P 6450 9400
F 0 "C4" V 6765 9400 50  0000 C CNN
F 1 "4.7uF" V 6674 9400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6450 9400 50  0001 C CNN
F 3 "~" H 6450 9400 50  0001 C CNN
	1    6450 9400
	0    1    1    0   
$EndComp
Text Label 6200 9400 2    50   ~ 0
5+
Text Label 6700 9400 0    50   ~ 0
GND
Text Label 3400 10400 2    50   ~ 0
IO_0XXX
Text Label 3900 9500 2    50   ~ 0
5+
Text Label 3400 10300 2    50   ~ 0
5+
Text Label 3900 10800 0    50   ~ 0
GND
Text Label 3400 10500 2    50   ~ 0
A11
Text Label 3400 9800 2    50   ~ 0
A8
Text Label 3400 9900 2    50   ~ 0
A9
Text Label 3400 10000 2    50   ~ 0
A10
Text Label 4400 9800 0    50   ~ 0
IO_00XX
Text Label 5425 10625 2    50   ~ 0
IO_00XX
Text Label 5425 10525 2    50   ~ 0
5+
Text Label 5425 10725 2    50   ~ 0
A4
Text Label 5425 10025 2    50   ~ 0
A5
Text Label 5425 10125 2    50   ~ 0
A6
Text Label 5425 10225 2    50   ~ 0
A7
Text Label 5925 9725 2    50   ~ 0
5+
Text Label 5925 11025 0    50   ~ 0
GND
Text Label 6425 10025 0    50   ~ 0
IO_000X
Text Label 6425 10125 0    50   ~ 0
IO_002X
Text Label 6425 10225 0    50   ~ 0
IO_004X
Text Label 6425 10325 0    50   ~ 0
IO_006X
Text Label 6425 10425 0    50   ~ 0
IO_008X
Text Label 6425 10725 0    50   ~ 0
IO_00EX
$EndSCHEMATC
