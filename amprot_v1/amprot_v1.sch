EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "AmProt"
Date "2021-07-02"
Rev "1"
Comp "Jernej Jakob <jernej.jakob@gmail.com>"
Comment1 "github.com/jjakob/amprot"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny13A-PU U1
U 1 1 60DF5575
P 1700 4400
F 0 "U1" H 1171 4446 50  0000 R CNN
F 1 "ATtiny13A-PU" H 1171 4355 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1700 4400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8126.pdf" H 1700 4400 50  0001 C CNN
	1    1700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60DF5E14
P 1700 5000
F 0 "#PWR02" H 1700 4750 50  0001 C CNN
F 1 "GND" H 1705 4827 50  0000 C CNN
F 2 "" H 1700 5000 50  0001 C CNN
F 3 "" H 1700 5000 50  0001 C CNN
	1    1700 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 60DF6339
P 4950 4400
F 0 "J1" H 4620 4496 50  0000 R CNN
F 1 "ISP" H 4620 4405 50  0000 R CNN
F 2 "" V 4700 4450 50  0001 C CNN
F 3 " ~" H 3675 3850 50  0001 C CNN
	1    4950 4400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60DF83A8
P 5050 4800
F 0 "#PWR020" H 5050 4550 50  0001 C CNN
F 1 "GND" H 5055 4627 50  0000 C CNN
F 2 "" H 5050 4800 50  0001 C CNN
F 3 "" H 5050 4800 50  0001 C CNN
	1    5050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4100 4200 4100
Wire Wire Line
	4200 4300 4550 4300
Wire Wire Line
	2300 4200 4300 4200
Wire Wire Line
	2300 4300 4050 4300
Wire Wire Line
	4050 4300 4050 4400
Wire Wire Line
	4050 4400 4550 4400
Wire Wire Line
	2300 4600 4400 4600
Wire Wire Line
	4400 4600 4400 4500
Wire Wire Line
	4400 4500 4550 4500
$Comp
L Regulator_Linear:LM78L05_TO92 U2
U 1 1 60DFADA6
P 4350 1200
F 0 "U2" H 4350 1442 50  0000 C CNN
F 1 "LM78L05_TO92" H 4350 1351 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4350 1425 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/MC78L06A-D.pdf" H 4350 1150 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 60DFE7FC
P 5250 3050
F 0 "J7" H 5222 3074 50  0000 R CNN
F 1 "CC/CA LED jumper" H 5222 2983 50  0000 R CNN
F 2 "" H 5250 3050 50  0001 C CNN
F 3 "~" H 5250 3050 50  0001 C CNN
	1    5250 3050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 60DFF38A
P 5250 3450
F 0 "J8" H 5222 3474 50  0000 R CNN
F 1 "LED red/green" H 5222 3383 50  0000 R CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 "~" H 5250 3450 50  0001 C CNN
	1    5250 3450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 60DFFC40
P 5250 2550
F 0 "J6" H 5222 2524 50  0000 R CNN
F 1 "Mute switch" H 5222 2433 50  0000 R CNN
F 2 "" H 5250 2550 50  0001 C CNN
F 3 "~" H 5250 2550 50  0001 C CNN
	1    5250 2550
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 60E01215
P 3100 3000
F 0 "Q2" H 3291 3046 50  0000 L CNN
F 1 "BC547" H 3291 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3300 2925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3100 3000 50  0001 L CNN
	1    3100 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60E103EC
P 4700 3350
F 0 "R9" V 4493 3350 50  0000 C CNN
F 1 "470" V 4584 3350 50  0000 C CNN
F 2 "" V 4630 3350 50  0001 C CNN
F 3 "~" H 4700 3350 50  0001 C CNN
	1    4700 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 60E11122
P 4700 3550
F 0 "R10" V 4800 3550 50  0000 C CNN
F 1 "470" V 4900 3550 50  0000 C CNN
F 2 "" V 4630 3550 50  0001 C CNN
F 3 "~" H 4700 3550 50  0001 C CNN
	1    4700 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3450 4950 3450
Wire Wire Line
	4950 3450 4950 3050
Wire Wire Line
	4950 3050 5050 3050
Wire Wire Line
	5050 3550 4850 3550
Wire Wire Line
	4850 3350 5050 3350
Wire Wire Line
	4550 3350 4450 3350
Wire Wire Line
	4200 3350 4200 4100
Connection ~ 4200 4100
Wire Wire Line
	4550 3550 4300 3550
Wire Wire Line
	4300 3550 4300 4200
Connection ~ 4300 4200
Wire Wire Line
	4300 4200 4550 4200
$Comp
L power:GND #PWR018
U 1 1 60E126DC
P 5050 3150
F 0 "#PWR018" H 5050 2900 50  0001 C CNN
F 1 "GND" H 5055 2977 50  0000 C CNN
F 2 "" H 5050 3150 50  0001 C CNN
F 3 "" H 5050 3150 50  0001 C CNN
	1    5050 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 60E13046
P 5050 2950
F 0 "#PWR017" H 5050 2800 50  0001 C CNN
F 1 "+5V" H 5065 3123 50  0000 C CNN
F 2 "" H 5050 2950 50  0001 C CNN
F 3 "" H 5050 2950 50  0001 C CNN
	1    5050 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 60E139A5
P 5050 3900
F 0 "#PWR019" H 5050 3750 50  0001 C CNN
F 1 "+5V" H 5065 4073 50  0000 C CNN
F 2 "" H 5050 3900 50  0001 C CNN
F 3 "" H 5050 3900 50  0001 C CNN
	1    5050 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60E13D83
P 1700 3400
F 0 "#PWR01" H 1700 3250 50  0001 C CNN
F 1 "+5V" H 1715 3573 50  0000 C CNN
F 2 "" H 1700 3400 50  0001 C CNN
F 3 "" H 1700 3400 50  0001 C CNN
	1    1700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 60E15674
P 1900 3550
F 0 "C1" H 1992 3596 50  0000 L CNN
F 1 "100n" H 1992 3505 50  0000 L CNN
F 2 "" H 1900 3550 50  0001 C CNN
F 3 "~" H 1900 3550 50  0001 C CNN
	1    1900 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60E15CCF
P 1900 3650
F 0 "#PWR03" H 1900 3400 50  0001 C CNN
F 1 "GND" H 1905 3477 50  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3400 1700 3450
Wire Wire Line
	1900 3450 1700 3450
Connection ~ 1700 3450
Wire Wire Line
	1700 3450 1700 3800
$Comp
L Device:R R8
U 1 1 60E218F3
P 4450 2650
F 0 "R8" V 4243 2650 50  0000 C CNN
F 1 "470" V 4334 2650 50  0000 C CNN
F 2 "" V 4380 2650 50  0001 C CNN
F 3 "~" H 4450 2650 50  0001 C CNN
	1    4450 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 60E2867E
P 4800 2550
F 0 "R11" V 4593 2550 50  0000 C CNN
F 1 "470" V 4684 2550 50  0000 C CNN
F 2 "" V 4730 2550 50  0001 C CNN
F 3 "~" H 4800 2550 50  0001 C CNN
	1    4800 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2550 4950 2550
$Comp
L power:+5V #PWR013
U 1 1 60E291EA
P 4650 2550
F 0 "#PWR013" H 4650 2400 50  0001 C CNN
F 1 "+5V" H 4665 2723 50  0000 C CNN
F 2 "" H 4650 2550 50  0001 C CNN
F 3 "" H 4650 2550 50  0001 C CNN
	1    4650 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 60E2A115
P 5250 2150
F 0 "J5" H 5222 2174 50  0000 R CNN
F 1 "B-" H 5222 2083 50  0000 R CNN
F 2 "" H 5250 2150 50  0001 C CNN
F 3 "~" H 5250 2150 50  0001 C CNN
	1    5250 2150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 60E2BB40
P 5250 1900
F 0 "J4" H 5222 1924 50  0000 R CNN
F 1 "B+" H 5222 1833 50  0000 R CNN
F 2 "" H 5250 1900 50  0001 C CNN
F 3 "~" H 5250 1900 50  0001 C CNN
	1    5250 1900
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 60E2C13A
P 5250 1500
F 0 "J3" H 5222 1524 50  0000 R CNN
F 1 "GND" H 5222 1433 50  0000 R CNN
F 2 "" H 5250 1500 50  0001 C CNN
F 3 "~" H 5250 1500 50  0001 C CNN
	1    5250 1500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 60E2C579
P 5250 850
F 0 "J2" H 5222 874 50  0000 R CNN
F 1 "V+ (12V)" H 5222 783 50  0000 R CNN
F 2 "" H 5250 850 50  0001 C CNN
F 3 "~" H 5250 850 50  0001 C CNN
	1    5250 850 
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60E2CFEF
P 3650 3050
F 0 "R4" H 3720 3096 50  0000 L CNN
F 1 "10k" H 3720 3005 50  0000 L CNN
F 2 "" V 3580 3050 50  0001 C CNN
F 3 "~" H 3650 3050 50  0001 C CNN
	1    3650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60E2D6E0
P 3650 3400
F 0 "R5" H 3720 3446 50  0000 L CNN
F 1 "47k" H 3720 3355 50  0000 L CNN
F 2 "" V 3580 3400 50  0001 C CNN
F 3 "~" H 3650 3400 50  0001 C CNN
	1    3650 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60E2DCA4
P 2800 2800
F 0 "R1" H 2870 2846 50  0000 L CNN
F 1 "390k" H 2870 2755 50  0000 L CNN
F 2 "" V 2730 2800 50  0001 C CNN
F 3 "~" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3000 2800 3000
Wire Wire Line
	2800 3000 2800 2950
$Comp
L Device:R R2
U 1 1 60E2FFDC
P 2800 3200
F 0 "R2" H 2870 3246 50  0000 L CNN
F 1 "10k" H 2870 3155 50  0000 L CNN
F 2 "" V 2730 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3050 2800 3000
Connection ~ 2800 3000
Wire Wire Line
	4600 2650 5050 2650
Wire Wire Line
	3200 3200 3650 3200
Wire Wire Line
	3650 3200 3650 3250
Connection ~ 3650 3200
Wire Wire Line
	3650 3550 3900 3550
Wire Wire Line
	2800 2450 3750 2450
Wire Wire Line
	3750 2450 3750 1900
$Comp
L power:+5V #PWR09
U 1 1 60E48642
P 3650 2900
F 0 "#PWR09" H 3650 2750 50  0001 C CNN
F 1 "+5V" H 3665 3073 50  0000 C CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60E49113
P 2800 3350
F 0 "#PWR04" H 2800 3100 50  0001 C CNN
F 1 "GND" H 2805 3177 50  0000 C CNN
F 2 "" H 2800 3350 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2650 3200 2800
Wire Wire Line
	2800 2450 2800 2650
Wire Wire Line
	3200 2650 4050 2650
Wire Wire Line
	3900 2150 5050 2150
Wire Wire Line
	3750 1900 5050 1900
Wire Wire Line
	4050 2650 4050 4300
Connection ~ 4050 2650
Wire Wire Line
	4050 2650 4200 2650
Connection ~ 4050 4300
$Comp
L Device:R R7
U 1 1 60E5A6B4
P 4200 2850
F 0 "R7" H 4270 2896 50  0000 L CNN
F 1 "100k" H 4270 2805 50  0000 L CNN
F 2 "" V 4130 2850 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60E5AD3D
P 4200 3000
F 0 "#PWR010" H 4200 2750 50  0001 C CNN
F 1 "GND" H 4205 2827 50  0000 C CNN
F 2 "" H 4200 3000 50  0001 C CNN
F 3 "" H 4200 3000 50  0001 C CNN
	1    4200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2700 4200 2650
Connection ~ 4200 2650
Wire Wire Line
	4200 2650 4300 2650
Wire Wire Line
	3900 2150 3900 3550
$Comp
L power:GND #PWR016
U 1 1 60E63D47
P 5050 1500
F 0 "#PWR016" H 5050 1250 50  0001 C CNN
F 1 "GND" H 5055 1327 50  0000 C CNN
F 2 "" H 5050 1500 50  0001 C CNN
F 3 "" H 5050 1500 50  0001 C CNN
	1    5050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60E7EA69
P 3700 1350
F 0 "C3" H 3792 1396 50  0000 L CNN
F 1 "680n" H 3792 1305 50  0000 L CNN
F 2 "" H 3700 1350 50  0001 C CNN
F 3 "~" H 3700 1350 50  0001 C CNN
	1    3700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1500 4350 1500
Connection ~ 5050 1500
Wire Wire Line
	4350 1500 3700 1500
Wire Wire Line
	3700 1500 3700 1450
Connection ~ 4350 1500
Wire Wire Line
	3700 1250 3700 1200
Wire Wire Line
	3700 1200 4050 1200
Wire Wire Line
	5050 850  4800 850 
Wire Wire Line
	3700 850  3700 1200
Connection ~ 3700 1200
$Comp
L power:+5V #PWR015
U 1 1 60E833B0
P 4800 1200
F 0 "#PWR015" H 4800 1050 50  0001 C CNN
F 1 "+5V" H 4815 1373 50  0000 C CNN
F 2 "" H 4800 1200 50  0001 C CNN
F 3 "" H 4800 1200 50  0001 C CNN
	1    4800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1200 4800 1200
Wire Wire Line
	4200 4100 4200 4300
$Comp
L Device:R R3
U 1 1 60EB43F7
P 2800 7300
F 0 "R3" V 2593 7300 50  0000 C CNN
F 1 "2k2" V 2684 7300 50  0000 C CNN
F 2 "" V 2730 7300 50  0001 C CNN
F 3 "~" H 2800 7300 50  0001 C CNN
	1    2800 7300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC546 Q3
U 1 1 60EB4F9C
P 3200 7300
F 0 "Q3" H 3391 7346 50  0000 L CNN
F 1 "BC546" H 3391 7255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3400 7225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3200 7300 50  0001 L CNN
	1    3200 7300
	1    0    0    -1  
$EndComp
$Comp
L Relay:G2RL-24-DC12 RL1
U 1 1 60EB6BEA
P 3700 6550
F 0 "RL1" H 4330 6596 50  0000 L CNN
F 1 "G2RL-24-DC12" H 4330 6505 50  0000 L CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 4350 6500 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 3700 6550 50  0001 C CNN
	1    3700 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6850 3700 6950
Wire Wire Line
	3700 6950 3900 6950
$Comp
L Connector:Conn_01x01_Male J9
U 1 1 60EC91E3
P 5250 5950
F 0 "J9" H 5222 5974 50  0000 R CNN
F 1 "AMP+" H 5222 5883 50  0000 R CNN
F 2 "" H 5250 5950 50  0001 C CNN
F 3 "~" H 5250 5950 50  0001 C CNN
	1    5250 5950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 60ECACAD
P 5250 6150
F 0 "J10" H 5222 6174 50  0000 R CNN
F 1 "SPEAKER-" H 5222 6083 50  0000 R CNN
F 2 "" H 5250 6150 50  0001 C CNN
F 3 "~" H 5250 6150 50  0001 C CNN
	1    5250 6150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J11
U 1 1 60ECB64B
P 5250 6350
F 0 "J11" H 5222 6374 50  0000 R CNN
F 1 "SPEAKER+" H 5222 6283 50  0000 R CNN
F 2 "" H 5250 6350 50  0001 C CNN
F 3 "~" H 5250 6350 50  0001 C CNN
	1    5250 6350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 5950 3800 5950
Wire Wire Line
	3800 5950 3800 6250
Wire Wire Line
	5050 6150 4900 6150
Wire Wire Line
	4000 6150 4000 6250
Wire Wire Line
	5050 6350 4950 6350
Wire Wire Line
	4950 6350 4950 6850
Wire Wire Line
	4950 6850 4100 6850
Wire Wire Line
	3900 6050 4200 6050
Wire Wire Line
	3900 6050 3900 6950
Wire Wire Line
	4200 6050 4200 6250
$Comp
L Diode:1N4148 D2
U 1 1 60EE62C3
P 2650 6750
F 0 "D2" V 2604 6830 50  0000 L CNN
F 1 "1N4148" V 2695 6830 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2650 6575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2650 6750 50  0001 C CNN
	1    2650 6750
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 60EE737E
P 2650 6400
F 0 "D1" V 2696 6320 50  0000 R CNN
F 1 "36V" V 2605 6320 50  0000 R CNN
F 2 "" H 2650 6400 50  0001 C CNN
F 3 "~" H 2650 6400 50  0001 C CNN
	1    2650 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6250 2650 6200
Wire Wire Line
	2650 6200 3300 6200
Wire Wire Line
	3300 6200 3300 6250
$Comp
L power:VAA #PWR07
U 1 1 60EE9377
P 3300 6200
F 0 "#PWR07" H 3300 6050 50  0001 C CNN
F 1 "VAA" H 3315 6373 50  0000 C CNN
F 2 "" H 3300 6200 50  0001 C CNN
F 3 "" H 3300 6200 50  0001 C CNN
	1    3300 6200
	1    0    0    -1  
$EndComp
Connection ~ 3300 6200
$Comp
L power:VAA #PWR014
U 1 1 60EEB959
P 4800 850
F 0 "#PWR014" H 4800 700 50  0001 C CNN
F 1 "VAA" H 4815 1023 50  0000 C CNN
F 2 "" H 4800 850 50  0001 C CNN
F 3 "" H 4800 850 50  0001 C CNN
	1    4800 850 
	1    0    0    -1  
$EndComp
Connection ~ 4800 850 
Wire Wire Line
	4800 850  3700 850 
Wire Wire Line
	2650 6900 3300 6900
Wire Wire Line
	3300 6900 3300 6850
Wire Wire Line
	3300 6900 3300 7100
Connection ~ 3300 6900
$Comp
L power:GND #PWR08
U 1 1 60EF6941
P 3300 7500
F 0 "#PWR08" H 3300 7250 50  0001 C CNN
F 1 "GND" H 3305 7327 50  0000 C CNN
F 2 "" H 3300 7500 50  0001 C CNN
F 3 "" H 3300 7500 50  0001 C CNN
	1    3300 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7300 2400 7300
Wire Wire Line
	2400 7300 2400 4400
Wire Wire Line
	2400 4400 2300 4400
Wire Wire Line
	2650 6600 2650 6550
Wire Wire Line
	2950 7300 3000 7300
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 60F15555
P 3400 5250
F 0 "Q4" H 3591 5296 50  0000 L CNN
F 1 "BC547" H 3591 5205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3600 5175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 3400 5250 50  0001 L CNN
	1    3400 5250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 60F16171
P 2950 5050
F 0 "Q1" H 3141 5096 50  0000 L CNN
F 1 "BC547" H 3141 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3150 4975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 2950 5050 50  0001 L CNN
	1    2950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5250 3200 5250
Wire Wire Line
	2300 4500 3050 4500
$Comp
L power:GND #PWR06
U 1 1 60F1FE69
P 3050 5250
F 0 "#PWR06" H 3050 5000 50  0001 C CNN
F 1 "GND" H 3055 5077 50  0000 C CNN
F 2 "" H 3050 5250 50  0001 C CNN
F 3 "" H 3050 5250 50  0001 C CNN
	1    3050 5250
	1    0    0    -1  
$EndComp
Connection ~ 3050 5250
Wire Wire Line
	2750 5050 2750 5500
Wire Wire Line
	2750 5500 2950 5500
Wire Wire Line
	3500 5500 3500 5450
$Comp
L Device:R R6
U 1 1 60F23498
P 3800 5700
F 0 "R6" H 3870 5746 50  0000 L CNN
F 1 "100k" H 3870 5655 50  0000 L CNN
F 2 "" V 3730 5700 50  0001 C CNN
F 3 "~" H 3800 5700 50  0001 C CNN
	1    3800 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 60F241A9
P 2950 5600
F 0 "C2" H 3042 5646 50  0000 L CNN
F 1 "10uF ceramic" H 3042 5555 50  0000 L CNN
F 2 "" H 2950 5600 50  0001 C CNN
F 3 "~" H 2950 5600 50  0001 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60F24DB7
P 2950 5700
F 0 "#PWR05" H 2950 5450 50  0001 C CNN
F 1 "GND" H 2955 5527 50  0000 C CNN
F 2 "" H 2950 5700 50  0001 C CNN
F 3 "" H 2950 5700 50  0001 C CNN
	1    2950 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5500 3800 5500
Wire Wire Line
	3800 5500 3800 5550
Connection ~ 3500 5500
Connection ~ 2950 5500
Wire Wire Line
	2950 5500 3500 5500
NoConn ~ 3600 6250
Text Notes 950  2350 0    50   ~ 0
R1, R2, R4, R5 form a voltage divider that senses B+/B- level.\nIf either falls too low, Q2 will turn off.\nCompute the divider ratios so that B is 0.65V and\nE is 0V at the low voltage detection threshold.\nDisplayed values are computed for B+=26V B-=23V\n(undervoltage thresholds)
Text Notes 5750 5700 0    50   ~ 0
R6, C2 (R12, C4) form a lowpass filter from the power amp output.\nCompute the filter so that its attenuation will guarantee a filter\noutput voltage <0.5V at maximum amp output voltage and\nlowest design (-3dB) output frequency.\nFor an amp with +/-40V rails and -3dB freq. 20Hz:\n0.5V/40V=1/80=-40dB\n1st order = 6dB/octave\n40dB/(6dB/octave)=6.6 octaves (round up to 7 octaves)\n7 octaves below 20Hz = 20/(2^7) = 0.156Hz\n1/(2*pi*R*C)=1/(2*pi*100k*10uF)=0.159Hz\nSince C2 will never see more than +/-0.7V (VBE)\nit can be a low-voltage ceramic type (the voltage-dependent\nnonlinearity ceramics otherwise exhibit are not important\nin this application)
Text Notes 5750 6350 0    50   ~ 0
Disconnect the speaker + fom the amp output,\nconnect the amp to AMP+, speaker to SPEAKER+.\nConnect "SPEAKER-" directly to the speaker output jack.\nIf the amp is not BTL (SPEAKER- connects to POWER GND),\nomit Q5, Q6, C4, R12.
Text Notes 5550 2150 0    50   ~ 0
Connect B+/B- to the amp power rails.\nIf the amp is single rail, omit R4/R5\nand connect Q2 E to GND.
$Comp
L Transistor_BJT:BC547 Q6
U 1 1 60F89B47
P 4650 5250
F 0 "Q6" H 4841 5296 50  0000 L CNN
F 1 "BC547" H 4841 5205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4850 5175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 4650 5250 50  0001 L CNN
	1    4650 5250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 60F89B4D
P 4200 5050
F 0 "Q5" H 4391 5096 50  0000 L CNN
F 1 "BC547" H 4391 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4400 4975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 4200 5050 50  0001 L CNN
	1    4200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5250 4450 5250
Wire Wire Line
	4300 4850 4750 4850
Wire Wire Line
	4750 4850 4750 5050
$Comp
L power:GND #PWR012
U 1 1 60F89B58
P 4300 5250
F 0 "#PWR012" H 4300 5000 50  0001 C CNN
F 1 "GND" H 4305 5077 50  0000 C CNN
F 2 "" H 4300 5250 50  0001 C CNN
F 3 "" H 4300 5250 50  0001 C CNN
	1    4300 5250
	1    0    0    -1  
$EndComp
Connection ~ 4300 5250
Wire Wire Line
	4000 5050 4000 5500
Wire Wire Line
	4000 5500 4200 5500
Wire Wire Line
	4750 5500 4750 5450
$Comp
L Device:R R12
U 1 1 60F89B62
P 4900 5700
F 0 "R12" H 4970 5746 50  0000 L CNN
F 1 "100k" H 4970 5655 50  0000 L CNN
F 2 "" V 4830 5700 50  0001 C CNN
F 3 "~" H 4900 5700 50  0001 C CNN
	1    4900 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60F89B68
P 4200 5600
F 0 "C4" H 4292 5646 50  0000 L CNN
F 1 "10uF ceramic" H 4292 5555 50  0000 L CNN
F 2 "" H 4200 5600 50  0001 C CNN
F 3 "~" H 4200 5600 50  0001 C CNN
	1    4200 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60F89B6E
P 4200 5700
F 0 "#PWR011" H 4200 5450 50  0001 C CNN
F 1 "GND" H 4205 5527 50  0000 C CNN
F 2 "" H 4200 5700 50  0001 C CNN
F 3 "" H 4200 5700 50  0001 C CNN
	1    4200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5500 4900 5550
Connection ~ 4200 5500
Wire Wire Line
	4200 5500 4750 5500
Wire Wire Line
	4750 5500 4900 5500
Connection ~ 4750 5500
Wire Wire Line
	4900 5850 4900 6150
Connection ~ 4900 6150
Wire Wire Line
	4900 6150 4000 6150
Wire Wire Line
	4300 4850 3500 4850
Connection ~ 4300 4850
Wire Wire Line
	3800 5850 3800 5950
Connection ~ 3800 5950
Wire Wire Line
	3500 4850 3500 5050
Wire Wire Line
	3050 4850 3500 4850
Connection ~ 3500 4850
Wire Wire Line
	3050 4500 3050 4850
Connection ~ 3050 4850
Text Notes 5550 1250 0    50   ~ 0
V+ must equal the relay coil voltage.\nRange 8-30V (LM78L05 limitation)
Text Notes 600  6600 0    50   ~ 0
Select D1 (zener) so that Vz+VAA < Q3 Vceo|Vcbo.\nFor 12V relay and BC546:\nVz(D1) < (65V - 12V - safety margin)\nVz(D1) < 53V - safety margin\n(higher Vz will give faster relay turn-off)
Text Notes 3750 7350 0    50   ~ 0
Use a sealed relay to prevent contact tarnishing which will give\nerratic or distorted amp output.\nIf more parallel relays are needed and the transistor current exceeds\n100mA, substitute Q3 and recompute R3 for the new hFE.
$Comp
L Transistor_BJT:BD139 Q7
U 1 1 60FE28A1
P 8600 1700
F 0 "Q7" V 8929 1700 50  0000 C CNN
F 1 "BD139" V 8838 1700 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 8800 1625 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 8600 1700 50  0001 L CNN
	1    8600 1700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC558 Q8
U 1 1 60FE406C
P 9100 1850
F 0 "Q8" H 9291 1804 50  0000 L CNN
F 1 "BC558" H 9291 1895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9300 1775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 9100 1850 50  0001 L CNN
	1    9100 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 60FE4B3B
P 9300 1600
F 0 "R15" V 9093 1600 50  0000 C CNN
F 1 "3.3" V 9184 1600 50  0000 C CNN
F 2 "" V 9230 1600 50  0001 C CNN
F 3 "~" H 9300 1600 50  0001 C CNN
	1    9300 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 60FE5608
P 9500 1850
F 0 "R16" V 9293 1850 50  0000 C CNN
F 1 "1k" V 9384 1850 50  0000 C CNN
F 2 "" V 9430 1850 50  0001 C CNN
F 3 "~" H 9500 1850 50  0001 C CNN
	1    9500 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 60FE5D71
P 8300 1900
F 0 "R13" H 8370 1946 50  0000 L CNN
F 1 "1k5" H 8370 1855 50  0000 L CNN
F 2 "" V 8230 1900 50  0001 C CNN
F 3 "~" H 8300 1900 50  0001 C CNN
	1    8300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 60FE64AD
P 8300 2200
F 0 "R14" H 8370 2246 50  0000 L CNN
F 1 "1k5" H 8370 2155 50  0000 L CNN
F 2 "" V 8230 2200 50  0001 C CNN
F 3 "~" H 8300 2200 50  0001 C CNN
	1    8300 2200
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431LP U3
U 1 1 60FE6D20
P 8600 2550
F 0 "U3" V 8646 2480 50  0000 R CNN
F 1 "TL431LP" V 8555 2480 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8600 2400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 8600 2550 50  0001 C CIN
	1    8600 2550
	0    1    -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 60FE7CD3
P 9700 2750
F 0 "R18" H 9770 2796 50  0000 L CNN
F 1 "4k64" H 9770 2705 50  0000 L CNN
F 2 "" V 9630 2750 50  0001 C CNN
F 3 "~" H 9700 2750 50  0001 C CNN
	1    9700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 60FE8A75
P 9700 2300
F 0 "R17" H 9770 2346 50  0000 L CNN
F 1 "17k8" H 9770 2255 50  0000 L CNN
F 2 "" V 9630 2300 50  0001 C CNN
F 3 "~" H 9700 2300 50  0001 C CNN
	1    9700 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 60FE9070
P 10350 1750
F 0 "R19" H 10420 1796 50  0000 L CNN
F 1 "1k8" H 10420 1705 50  0000 L CNN
F 2 "" V 10280 1750 50  0001 C CNN
F 3 "~" H 10350 1750 50  0001 C CNN
	1    10350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 60FE9D7E
P 10350 2050
F 0 "D3" V 10389 1932 50  0000 R CNN
F 1 "LED" V 10298 1932 50  0000 R CNN
F 2 "" H 10350 2050 50  0001 C CNN
F 3 "~" H 10350 2050 50  0001 C CNN
	1    10350 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 1900 8600 2050
Wire Wire Line
	8300 2350 8600 2350
Connection ~ 8600 2350
Wire Wire Line
	8600 2350 8600 2450
Wire Wire Line
	8400 1600 8300 1600
Wire Wire Line
	8300 1600 8300 1750
Wire Wire Line
	8800 1600 9000 1600
Wire Wire Line
	9000 1650 9000 1600
Connection ~ 9000 1600
Wire Wire Line
	9000 1600 9150 1600
Wire Wire Line
	9450 1600 9700 1600
Wire Wire Line
	9700 1600 9700 1850
Connection ~ 9700 1600
Wire Wire Line
	9700 1850 9650 1850
Connection ~ 9700 1850
Wire Wire Line
	9700 1850 9700 2150
Wire Wire Line
	9700 2600 9700 2550
Wire Wire Line
	8700 2550 9700 2550
Connection ~ 9700 2550
Wire Wire Line
	9700 2550 9700 2450
Wire Wire Line
	8600 2650 8600 2900
Wire Wire Line
	8600 2900 9700 2900
Wire Wire Line
	10350 2900 10350 2200
Connection ~ 9700 2900
$Comp
L Connector:Conn_01x01_Male J13
U 1 1 61015297
P 10000 3100
F 0 "J13" V 10154 3012 50  0000 R CNN
F 1 "GND" V 10063 3012 50  0000 R CNN
F 2 "" H 10000 3100 50  0001 C CNN
F 3 "~" H 10000 3100 50  0001 C CNN
	1    10000 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J14
U 1 1 61015BF0
P 10550 1600
F 0 "J14" H 10522 1532 50  0000 R CNN
F 1 "V+ (12V 0.2A)" H 10522 1623 50  0000 R CNN
F 2 "" H 10550 1600 50  0001 C CNN
F 3 "~" H 10550 1600 50  0001 C CNN
	1    10550 1600
	-1   0    0    1   
$EndComp
Connection ~ 10350 1600
$Comp
L Connector:Conn_01x01_Male J12
U 1 1 6101642C
P 8100 1600
F 0 "J12" H 8208 1781 50  0000 C CNN
F 1 "B+" H 8208 1690 50  0000 C CNN
F 2 "" H 8100 1600 50  0001 C CNN
F 3 "~" H 8100 1600 50  0001 C CNN
	1    8100 1600
	1    0    0    -1  
$EndComp
Connection ~ 8300 1600
Wire Wire Line
	9000 2050 8600 2050
Connection ~ 8600 2050
Wire Wire Line
	8600 2050 8600 2350
Wire Wire Line
	9700 1600 10000 1600
Wire Wire Line
	9700 2900 10000 2900
$Comp
L Device:CP C5
U 1 1 6101E6EB
P 10000 2550
F 0 "C5" H 10118 2596 50  0000 L CNN
F 1 "120uF 16V" H 10118 2505 50  0000 L CNN
F 2 "" H 10038 2400 50  0001 C CNN
F 3 "~" H 10000 2550 50  0001 C CNN
	1    10000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2900 10000 2700
Connection ~ 10000 2900
Wire Wire Line
	10000 2400 10000 1600
Connection ~ 10000 1600
Wire Wire Line
	10000 1600 10350 1600
Text Notes 9000 1300 0    50   ~ 0
R15 sets the output current limit.\nChange only after consulting Q7 SOA table.\nQ7 must be heatsinked.\nR13+R14 provide base current to Q7.\nIf substituting Q7, compute so that\nIb > ( Iout(max) / hFE(min) )\nR=U/I=(V(B+)-Vout)/Ib\nIb*Vout < U3 Pd(max)
Wire Notes Line
	11150 600  11150 3400
Wire Notes Line
	7700 3400 7700 600 
Text Notes 8000 3350 0    50   ~ 0
Preregulator (place on separate PCB)
$Comp
L Device:R R20
U 1 1 61058DD4
P 4700 3050
F 0 "R20" V 4493 3050 50  0000 C CNN
F 1 "100k" V 4584 3050 50  0000 C CNN
F 2 "" V 4630 3050 50  0001 C CNN
F 3 "~" H 4700 3050 50  0001 C CNN
	1    4700 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 3050 4850 3050
Connection ~ 4950 3050
Wire Wire Line
	4550 3050 4450 3050
Wire Wire Line
	4450 3050 4450 3350
Connection ~ 4450 3350
Wire Wire Line
	4450 3350 4200 3350
Text Notes 5450 3000 0    50   ~ 0
R20 is used to detect J7 position and can be omitted\nif the code is compiled with a fixed CC or CA config.
Wire Wire Line
	9300 1850 9350 1850
Text Notes 7750 1800 0    50   ~ 0
B+ max 80V\n(Q7 Vceo)
Wire Notes Line
	11150 600  7700 600 
Wire Notes Line
	11150 3400 7700 3400
Wire Wire Line
	10000 2900 10350 2900
$EndSCHEMATC
