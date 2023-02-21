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
L Interface:8255 U1
U 1 1 63F4CB60
P 3025 3525
F 0 "U1" H 3025 1744 50  0000 C CNN
F 1 "8255" H 3025 1835 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 3025 3825 50  0001 C CNN
F 3 "http://aturing.umcs.maine.edu/~meadow/courses/cos335/Intel8255A.pdf" H 3025 3825 50  0001 C CNN
	1    3025 3525
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS138 U2
U 1 1 63F512AA
P 5125 1850
F 0 "U2" H 5125 2631 50  0000 C CNN
F 1 "74LS138" H 5125 2540 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5125 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 5125 1850 50  0001 C CNN
	1    5125 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U4
U 1 1 63F516DD
P 7075 1825
F 0 "U4" H 7075 2606 50  0000 C CNN
F 1 "74LS138" H 7075 2515 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7075 1825 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 7075 1825 50  0001 C CNN
	1    7075 1825
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U3
U 1 1 63F522BE
P 5675 3800
F 0 "U3" H 5675 4581 50  0000 C CNN
F 1 "74LS138" H 5675 4490 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5675 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 5675 3800 50  0001 C CNN
	1    5675 3800
	1    0    0    -1  
$EndComp
Text Label 2325 2325 2    50   ~ 0
PC7
Text Label 2325 2425 2    50   ~ 0
PC6
Text Label 2325 2525 2    50   ~ 0
PC5
Text Label 2325 2625 2    50   ~ 0
PC4
Text Label 2325 2725 2    50   ~ 0
PC3
Text Label 2325 2825 2    50   ~ 0
PC2
Text Label 2325 2925 2    50   ~ 0
PC1
Text Label 2325 3025 2    50   ~ 0
PC0
Text Label 2325 3225 2    50   ~ 0
PB7
Text Label 2325 3325 2    50   ~ 0
PB6
Text Label 2325 3425 2    50   ~ 0
PB5
Text Label 2325 3525 2    50   ~ 0
PB4
Text Label 2325 3625 2    50   ~ 0
PB3
Text Label 2325 3725 2    50   ~ 0
PB2
Text Label 2325 3825 2    50   ~ 0
PB1
Text Label 2325 3925 2    50   ~ 0
PB0
Text Label 2325 4125 2    50   ~ 0
PA7
Text Label 2325 4225 2    50   ~ 0
PA6
Text Label 2325 4325 2    50   ~ 0
PA5
Text Label 2325 4425 2    50   ~ 0
PA4
Text Label 2325 4525 2    50   ~ 0
PA3
Text Label 2325 4625 2    50   ~ 0
PA2
Text Label 2325 4725 2    50   ~ 0
PA1
Text Label 2325 4825 2    50   ~ 0
PA0
Text Label 3025 5125 2    50   ~ 0
5+
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J5
U 1 1 63F5A72C
P 3350 6300
F 0 "J5" H 3400 6717 50  0000 C CNN
F 1 "INTR A SELECT" H 3400 6626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 3350 6300 50  0001 C CNN
F 3 "~" H 3350 6300 50  0001 C CNN
	1    3350 6300
	1    0    0    -1  
$EndComp
Text Label 3650 6100 0    50   ~ 0
IRQ7
Text Label 3650 6200 0    50   ~ 0
IRQ6
Text Label 3650 6300 0    50   ~ 0
IRQ5
Text Label 3650 6400 0    50   ~ 0
IRQ4
Text Label 3650 6500 0    50   ~ 0
IRQ3
Text Label 3650 6600 0    50   ~ 0
IRQ2
Text Label 3150 6100 2    50   ~ 0
PC3
Text Label 3150 6200 2    50   ~ 0
PC3
Text Label 3150 6300 2    50   ~ 0
PC3
Text Label 3150 6400 2    50   ~ 0
PC3
Text Label 3150 6500 2    50   ~ 0
PC3
Text Label 3150 6600 2    50   ~ 0
PC3
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 63F5C375
P 1975 6300
F 0 "J4" H 2025 6717 50  0000 C CNN
F 1 "INTR B SELECT" H 2025 6626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 1975 6300 50  0001 C CNN
F 3 "~" H 1975 6300 50  0001 C CNN
	1    1975 6300
	1    0    0    -1  
$EndComp
Text Label 1775 6100 2    50   ~ 0
PC0
Text Label 1775 6200 2    50   ~ 0
PC0
Text Label 1775 6300 2    50   ~ 0
PC0
Text Label 1775 6400 2    50   ~ 0
PC0
Text Label 1775 6500 2    50   ~ 0
PC0
Text Label 1775 6600 2    50   ~ 0
PC0
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J6
U 1 1 63F5DED0
P 5500 6000
F 0 "J6" H 5550 6517 50  0000 C CNN
F 1 "8255 BASE PORT" H 5550 6426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 5500 6000 50  0001 C CNN
F 3 "~" H 5500 6000 50  0001 C CNN
	1    5500 6000
	1    0    0    -1  
$EndComp
Text Label 700  2450 2    50   ~ 0
PC7
Text Label 700  2550 2    50   ~ 0
PC6
Text Label 700  2650 2    50   ~ 0
PC5
Text Label 700  2750 2    50   ~ 0
PC4
Text Label 1200 2450 0    50   ~ 0
PC3
Text Label 1200 2550 0    50   ~ 0
PC2
Text Label 1200 2650 0    50   ~ 0
PC1
Text Label 1200 2750 0    50   ~ 0
PC0
Text Label 675  3450 2    50   ~ 0
PB7
Text Label 675  3550 2    50   ~ 0
PB6
Text Label 675  3650 2    50   ~ 0
PB5
Text Label 675  3750 2    50   ~ 0
PB4
Text Label 1175 3450 0    50   ~ 0
PB3
Text Label 1175 3550 0    50   ~ 0
PB2
Text Label 1175 3650 0    50   ~ 0
PB1
Text Label 1175 3750 0    50   ~ 0
PB0
Text Label 700  4425 2    50   ~ 0
PA7
Text Label 700  4525 2    50   ~ 0
PA6
Text Label 700  4625 2    50   ~ 0
PA5
Text Label 700  4725 2    50   ~ 0
PA4
Text Label 1200 4425 0    50   ~ 0
PA3
Text Label 1200 4525 0    50   ~ 0
PA2
Text Label 1200 4625 0    50   ~ 0
PA1
Text Label 1200 4725 0    50   ~ 0
PA0
Text Label 5300 5800 2    50   ~ 0
CS8255
Text Label 3725 4525 0    50   ~ 0
CS8255
Text Label 5300 5900 2    50   ~ 0
CS8255
Text Label 5300 6000 2    50   ~ 0
CS8255
Text Label 5300 6100 2    50   ~ 0
CS8255
Text Label 5300 6200 2    50   ~ 0
CS8255
Text Label 5300 6300 2    50   ~ 0
CS8255
Text Label 8475 3800 2    50   ~ 0
IRQ7
Text Label 8475 3900 2    50   ~ 0
IRQ6
Text Label 8475 4000 2    50   ~ 0
IRQ5
Text Label 8475 4100 2    50   ~ 0
IRQ4
Text Label 8475 4200 2    50   ~ 0
IRQ3
Text Label 8475 2100 2    50   ~ 0
IRQ2
Text Label 8475 4800 2    50   ~ 0
GND
Text Label 8475 4600 2    50   ~ 0
5+
Text Label 9875 3300 0    50   ~ 0
A15
Text Label 9875 3400 0    50   ~ 0
A14
Text Label 9875 3500 0    50   ~ 0
A13
Text Label 9875 3600 0    50   ~ 0
A12
Text Label 9875 3700 0    50   ~ 0
A11
Text Label 9875 3800 0    50   ~ 0
A10
Text Label 9875 3900 0    50   ~ 0
A9
Text Label 9875 4700 0    50   ~ 0
A1
Text Label 9875 4000 0    50   ~ 0
A8
Text Label 9875 4100 0    50   ~ 0
A7
Text Label 9875 4200 0    50   ~ 0
A6
Text Label 9875 4300 0    50   ~ 0
A5
Text Label 9875 4400 0    50   ~ 0
A4
Text Label 9875 4500 0    50   ~ 0
A3
Text Label 9875 4600 0    50   ~ 0
A2
Text Label 9875 4800 0    50   ~ 0
A0
$Comp
L Connector:Bus_ISA_8bit J7
U 1 1 63F4BBE0
P 9175 3300
F 0 "J7" H 9175 5067 50  0000 C CNN
F 1 "Bus_ISA_8bit" H 9175 4976 50  0000 C CNN
F 2 "My:BUS_8_BIT" H 9175 3300 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 9175 3300 50  0001 C CNN
	1    9175 3300
	1    0    0    -1  
$EndComp
Text Label 4625 2150 2    50   ~ 0
A15
Text Label 4625 1750 2    50   ~ 0
A14
Text Label 4625 1650 2    50   ~ 0
A13
Text Label 4625 1550 2    50   ~ 0
A12
Text Label 6575 1725 2    50   ~ 0
A10
Text Label 6575 1625 2    50   ~ 0
A9
Text Label 6575 1525 2    50   ~ 0
A8
Text Label 5175 3700 2    50   ~ 0
A6
Text Label 5175 3600 2    50   ~ 0
A5
Text Label 5175 3500 2    50   ~ 0
A4
Text Label 4625 2050 2    50   ~ 0
5+
Text Label 4625 2250 2    50   ~ 0
GND
Text Label 5125 2550 2    50   ~ 0
GND
Text Label 5125 1250 2    50   ~ 0
5+
Text Label 3025 1925 2    50   ~ 0
GND
Text Label 3725 2925 0    50   ~ 0
D7
Text Label 3725 3025 0    50   ~ 0
D6
Text Label 3725 3125 0    50   ~ 0
D5
Text Label 3725 3225 0    50   ~ 0
D4
Text Label 3725 3325 0    50   ~ 0
D3
Text Label 3725 3425 0    50   ~ 0
D2
Text Label 3725 3525 0    50   ~ 0
D1
Text Label 3725 3625 0    50   ~ 0
D0
Text Label 3725 3925 0    50   ~ 0
A1
Text Label 3725 4025 0    50   ~ 0
A0
Text Label 3725 4325 0    50   ~ 0
IOW
Text Label 3725 4425 0    50   ~ 0
IOR
Text Label 3725 4825 0    50   ~ 0
RST
Text Label 8475 1900 2    50   ~ 0
RST
Text Label 8475 1800 2    50   ~ 0
GND
Text Label 8475 2000 2    50   ~ 0
5+
Text Label 9875 1900 0    50   ~ 0
D7
Text Label 9875 2000 0    50   ~ 0
D6
Text Label 9875 2100 0    50   ~ 0
D5
Text Label 9875 2200 0    50   ~ 0
D4
Text Label 9875 2300 0    50   ~ 0
D3
Text Label 9875 2400 0    50   ~ 0
D2
Text Label 9875 2500 0    50   ~ 0
D1
Text Label 9875 2600 0    50   ~ 0
D0
Text Label 8475 3000 2    50   ~ 0
IOW
Text Label 8475 3100 2    50   ~ 0
IOR
Text Label 5625 1550 0    50   ~ 0
IO_0XXX
Text Label 6575 2225 2    50   ~ 0
IO_0XXX
Text Label 6575 2125 2    50   ~ 0
A11
Text Label 7575 1925 0    50   ~ 0
IO_04XX
Text Label 7075 2525 2    50   ~ 0
GND
Text Label 6575 2025 2    50   ~ 0
5+
Text Label 7075 1225 2    50   ~ 0
5+
Text Label 5675 4500 2    50   ~ 0
GND
Text Label 5675 3200 2    50   ~ 0
5+
Text Label 5175 4000 2    50   ~ 0
5+
Text Label 5175 4100 2    50   ~ 0
A7
Text Label 5175 4200 2    50   ~ 0
IO_04XX
Text Label 6175 3500 0    50   ~ 0
IO_040X
Text Label 6175 3600 0    50   ~ 0
IO_041X
Text Label 6175 3700 0    50   ~ 0
IO_042X
Text Label 6175 3800 0    50   ~ 0
IO_043X
Text Label 6175 3900 0    50   ~ 0
IO_044X
Text Label 6175 4000 0    50   ~ 0
IO_045X
Text Label 6175 4100 0    50   ~ 0
IO_046X
Text Label 6175 4200 0    50   ~ 0
IO_047X
Text Label 5300 5700 2    50   ~ 0
CS8255
Text Label 5300 6400 2    50   ~ 0
CS8255
Text Label 5800 5700 0    50   ~ 0
IO_040X
Text Label 5800 5800 0    50   ~ 0
IO_041X
Text Label 5800 5900 0    50   ~ 0
IO_042X
Text Label 5800 6000 0    50   ~ 0
IO_043X
Text Label 5800 6100 0    50   ~ 0
IO_044X
Text Label 5800 6200 0    50   ~ 0
IO_045X
Text Label 5800 6300 0    50   ~ 0
IO_046X
Text Label 5800 6400 0    50   ~ 0
IO_047X
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 63F4CED4
P 900 2550
F 0 "J1" H 950 2967 50  0000 C CNN
F 1 "PORT C" H 950 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 900 2550 50  0001 C CNN
F 3 "~" H 900 2550 50  0001 C CNN
	1    900  2550
	1    0    0    -1  
$EndComp
Text Label 1200 2350 0    50   ~ 0
GND
Text Label 700  2350 2    50   ~ 0
5+
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 63F4F0CC
P 900 4525
F 0 "J3" H 950 4942 50  0000 C CNN
F 1 "PORT A" H 950 4851 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 900 4525 50  0001 C CNN
F 3 "~" H 900 4525 50  0001 C CNN
	1    900  4525
	1    0    0    -1  
$EndComp
Text Label 1175 3350 0    50   ~ 0
GND
Text Label 1200 4325 0    50   ~ 0
GND
Text Label 675  3350 2    50   ~ 0
5+
Text Label 700  4325 2    50   ~ 0
5+
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 63F4E965
P 875 3550
F 0 "J2" H 925 3967 50  0000 C CNN
F 1 "PORT B" H 925 3876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 875 3550 50  0001 C CNN
F 3 "~" H 875 3550 50  0001 C CNN
	1    875  3550
	1    0    0    -1  
$EndComp
Text Label 2275 6100 0    50   ~ 0
IRQ7
Text Label 2275 6200 0    50   ~ 0
IRQ6
Text Label 2275 6300 0    50   ~ 0
IRQ5
Text Label 2275 6400 0    50   ~ 0
IRQ4
Text Label 2275 6500 0    50   ~ 0
IRQ3
Text Label 2275 6600 0    50   ~ 0
IRQ2
$Comp
L pspice:CAP C1
U 1 1 63F74908
P 3100 1375
F 0 "C1" V 2785 1375 50  0000 C CNN
F 1 "0.1uF" V 2876 1375 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3100 1375 50  0001 C CNN
F 3 "~" H 3100 1375 50  0001 C CNN
	1    3100 1375
	0    1    1    0   
$EndComp
Text Label 3350 1375 0    50   ~ 0
GND
Text Label 2850 1375 2    50   ~ 0
5+
$Comp
L pspice:CAP C2
U 1 1 63F75EBE
P 5600 800
F 0 "C2" V 5285 800 50  0000 C CNN
F 1 "0.1uF" V 5376 800 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5600 800 50  0001 C CNN
F 3 "~" H 5600 800 50  0001 C CNN
	1    5600 800 
	0    1    1    0   
$EndComp
Text Label 5850 800  0    50   ~ 0
GND
Text Label 5350 800  2    50   ~ 0
5+
$Comp
L pspice:CAP C3
U 1 1 63F7670E
P 5950 2875
F 0 "C3" V 5635 2875 50  0000 C CNN
F 1 "0.1uF" V 5726 2875 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5950 2875 50  0001 C CNN
F 3 "~" H 5950 2875 50  0001 C CNN
	1    5950 2875
	0    1    1    0   
$EndComp
Text Label 6200 2875 0    50   ~ 0
GND
Text Label 5700 2875 2    50   ~ 0
5+
$Comp
L pspice:CAP C4
U 1 1 63F76BF9
P 7475 850
F 0 "C4" V 7160 850 50  0000 C CNN
F 1 "0.1uF" V 7251 850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7475 850 50  0001 C CNN
F 3 "~" H 7475 850 50  0001 C CNN
	1    7475 850 
	0    1    1    0   
$EndComp
Text Label 7725 850  0    50   ~ 0
GND
Text Label 7225 850  2    50   ~ 0
5+
Text Label 1600 2200 2    50   ~ 0
PC7
Text Label 1600 2300 2    50   ~ 0
PC6
Text Label 1600 2400 2    50   ~ 0
PC5
Text Label 1600 2500 2    50   ~ 0
PC4
Text Label 1600 2600 2    50   ~ 0
PC3
Text Label 1600 2700 2    50   ~ 0
PC2
Text Label 1600 2800 2    50   ~ 0
PC1
Text Label 1600 2900 2    50   ~ 0
PC0
Text Label 2000 2600 0    50   ~ 0
GND
$Comp
L Device:R_Network04 RN2
U 1 1 63F53EDC
P 1825 3400
F 0 "RN2" V 2150 3400 50  0000 C CNN
F 1 "4.7k OHM" V 2059 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2400 3400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1825 3400 50  0001 C CNN
	1    1825 3400
	0    1    1    0   
$EndComp
Text Label 2025 3600 0    50   ~ 0
GND
Text Label 2025 4650 0    50   ~ 0
GND
Text Label 1625 4250 2    50   ~ 0
PA7
Text Label 1625 4350 2    50   ~ 0
PA6
Text Label 1625 4450 2    50   ~ 0
PA5
Text Label 1625 4550 2    50   ~ 0
PA4
Text Label 1625 4650 2    50   ~ 0
PA3
Text Label 1625 4750 2    50   ~ 0
PA2
Text Label 1625 4850 2    50   ~ 0
PA1
Text Label 1625 4950 2    50   ~ 0
PA0
Text Label 1625 3200 2    50   ~ 0
PB7
Text Label 1625 3300 2    50   ~ 0
PB6
Text Label 1625 3400 2    50   ~ 0
PB5
Text Label 1625 3500 2    50   ~ 0
PB4
Text Label 1625 3600 2    50   ~ 0
PB3
Text Label 1625 3700 2    50   ~ 0
PB2
Text Label 1625 3800 2    50   ~ 0
PB1
Text Label 1625 3900 2    50   ~ 0
PB0
$Comp
L Device:R_Network04 RN1
U 1 1 63F59081
P 1800 2400
F 0 "RN1" V 2125 2400 50  0000 C CNN
F 1 "4.7k OHM" V 2034 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2375 2400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1800 2400 50  0001 C CNN
	1    1800 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network04 RN3
U 1 1 63F598EE
P 1800 2800
F 0 "RN3" V 2125 2800 50  0000 C CNN
F 1 "4.7k OHM" V 2034 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2375 2800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1800 2800 50  0001 C CNN
	1    1800 2800
	0    1    1    0   
$EndComp
Text Label 2000 2200 0    50   ~ 0
GND
$Comp
L Device:R_Network04 RN4
U 1 1 63F5AE60
P 1825 3800
F 0 "RN4" V 2150 3800 50  0000 C CNN
F 1 "4.7k OHM" V 2059 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2400 3800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1825 3800 50  0001 C CNN
	1    1825 3800
	0    1    1    0   
$EndComp
Text Label 2025 3200 0    50   ~ 0
GND
$Comp
L Device:R_Network04 RN5
U 1 1 63F5B7FF
P 1825 4450
F 0 "RN5" V 2150 4450 50  0000 C CNN
F 1 "4.7k OHM" V 2059 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2400 4450 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1825 4450 50  0001 C CNN
	1    1825 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network04 RN6
U 1 1 63F5C2FB
P 1825 4850
F 0 "RN6" V 2150 4850 50  0000 C CNN
F 1 "4.7k OHM" V 2059 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP5" V 2400 4850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1825 4850 50  0001 C CNN
	1    1825 4850
	0    1    1    0   
$EndComp
Text Label 2025 4250 0    50   ~ 0
GND
$EndSCHEMATC
