EESchema Schematic File Version 4
LIBS:WateringSystem-cache
EELAYER 26 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CB6C6CB
P 5600 4200
F 0 "A1" H 5600 3114 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5600 3023 50  0000 C CNN
F 2 "Module:Arduino_Nano_WithMountingHoles" H 5750 3250 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5600 3200 50  0001 C CNN
	1    5600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5CB6C83E
P 5600 5500
F 0 "#PWR08" H 5600 5250 50  0001 C CNN
F 1 "GND" H 5605 5327 50  0000 C CNN
F 2 "" H 5600 5500 50  0001 C CNN
F 3 "" H 5600 5500 50  0001 C CNN
	1    5600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5200 5600 5300
Wire Wire Line
	5700 5200 5700 5300
Wire Wire Line
	5700 5300 5600 5300
Connection ~ 5600 5300
Wire Wire Line
	5600 5300 5600 5500
$Comp
L Device:R R3
U 1 1 5CB6D7DE
P 4350 4500
F 0 "R3" V 4143 4500 50  0000 C CNN
F 1 "100" V 4234 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4280 4500 50  0001 C CNN
F 3 "~" H 4350 4500 50  0001 C CNN
	1    4350 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5CB6D82F
P 3850 4800
F 0 "C3" H 3965 4846 50  0000 L CNN
F 1 "100n" H 3965 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 4650 50  0001 C CNN
F 3 "~" H 3850 4800 50  0001 C CNN
	1    3850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4500 4500 4500
$Comp
L power:GND #PWR06
U 1 1 5CB6D924
P 3850 5050
F 0 "#PWR06" H 3850 4800 50  0001 C CNN
F 1 "GND" H 3855 4877 50  0000 C CNN
F 2 "" H 3850 5050 50  0001 C CNN
F 3 "" H 3850 5050 50  0001 C CNN
	1    3850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5050 3850 4950
Wire Wire Line
	3850 4650 3850 4500
Wire Wire Line
	3850 4500 4200 4500
Wire Wire Line
	3850 4500 2550 4500
Connection ~ 3850 4500
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5CB71279
P 2250 4500
F 0 "Q1" H 2456 4546 50  0000 L CNN
F 1 "AO3400A" H 2456 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2450 4600 50  0001 C CNN
F 3 "~" H 2250 4500 50  0001 C CNN
	1    2250 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5CB712FC
P 2150 5050
F 0 "#PWR02" H 2150 4800 50  0001 C CNN
F 1 "GND" H 2155 4877 50  0000 C CNN
F 2 "" H 2150 5050 50  0001 C CNN
F 3 "" H 2150 5050 50  0001 C CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4700 2150 5050
$Comp
L Device:R R1
U 1 1 5CB71384
P 2550 4800
F 0 "R1" V 2343 4800 50  0000 C CNN
F 1 "47k" V 2434 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 4800 50  0001 C CNN
F 3 "~" H 2550 4800 50  0001 C CNN
	1    2550 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 4650 2550 4500
Connection ~ 2550 4500
Wire Wire Line
	2550 4500 2450 4500
$Comp
L power:GND #PWR04
U 1 1 5CB7152E
P 2550 5050
F 0 "#PWR04" H 2550 4800 50  0001 C CNN
F 1 "GND" H 2555 4877 50  0000 C CNN
F 2 "" H 2550 5050 50  0001 C CNN
F 3 "" H 2550 5050 50  0001 C CNN
	1    2550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4950 2550 5050
$Comp
L Device:D_Schottky D1
U 1 1 5CB71758
P 2150 3850
F 0 "D1" V 2104 3929 50  0000 L CNN
F 1 "SS14" V 2195 3929 50  0000 L CNN
F 2 "custom-footprints:SMA_DO-214AC" H 2150 3850 50  0001 C CNN
F 3 "~" H 2150 3850 50  0001 C CNN
	1    2150 3850
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5CB718F5
P 1000 3600
F 0 "J1" H 894 3885 50  0000 C CNN
F 1 "MOTOR_INTERFACE" H 894 3794 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1000 3600 50  0001 C CNN
F 3 "~" H 1000 3600 50  0001 C CNN
	1    1000 3600
	-1   0    0    -1  
$EndComp
Text Label 2200 3350 0    50   ~ 0
5V0
Wire Wire Line
	2150 4000 2150 4150
Wire Wire Line
	2150 3700 2150 3400
Wire Wire Line
	2150 3350 2200 3350
$Comp
L Device:C C1
U 1 1 5CB737B3
P 2450 3650
F 0 "C1" H 2565 3696 50  0000 L CNN
F 1 "22u" H 2565 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2488 3500 50  0001 C CNN
F 3 "~" H 2450 3650 50  0001 C CNN
	1    2450 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CB737E9
P 2450 3850
F 0 "#PWR03" H 2450 3600 50  0001 C CNN
F 1 "GND" H 2455 3677 50  0000 C CNN
F 2 "" H 2450 3850 50  0001 C CNN
F 3 "" H 2450 3850 50  0001 C CNN
	1    2450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3850 2450 3800
Wire Wire Line
	2450 3500 2450 3400
Wire Wire Line
	2450 3400 2150 3400
Connection ~ 2150 3400
Wire Wire Line
	2150 3400 2150 3350
$Comp
L Device:C C2
U 1 1 5CB73EA4
P 2850 3650
F 0 "C2" H 2965 3696 50  0000 L CNN
F 1 "1n" H 2965 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 3500 50  0001 C CNN
F 3 "~" H 2850 3650 50  0001 C CNN
	1    2850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2850 3400
Wire Wire Line
	2850 3400 2850 3500
Connection ~ 2450 3400
Wire Wire Line
	2850 3800 2850 3850
$Comp
L power:GND #PWR05
U 1 1 5CB7474D
P 2850 3850
F 0 "#PWR05" H 2850 3600 50  0001 C CNN
F 1 "GND" H 2855 3677 50  0000 C CNN
F 2 "" H 2850 3850 50  0001 C CNN
F 3 "" H 2850 3850 50  0001 C CNN
	1    2850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3200 5800 2700
Wire Wire Line
	5800 2700 5950 2700
Text Label 5950 2700 0    50   ~ 0
5V0
Wire Wire Line
	5700 3200 5700 2700
Wire Wire Line
	5700 2700 5600 2700
Text Label 5600 2700 0    50   ~ 0
3V3
Wire Wire Line
	1200 3700 1400 3700
Text Label 1400 3700 0    50   ~ 0
5V0
Wire Wire Line
	1200 3800 1400 3800
Wire Wire Line
	2150 4150 1750 4150
Connection ~ 2150 4150
Wire Wire Line
	2150 4150 2150 4300
Text Label 1750 4150 0    50   ~ 0
MOTOR_GND
Wire Wire Line
	1200 3600 1600 3600
$Comp
L power:GND #PWR01
U 1 1 5CB6FD87
P 1600 3600
F 0 "#PWR01" H 1600 3350 50  0001 C CNN
F 1 "GND" H 1605 3427 50  0000 C CNN
F 2 "" H 1600 3600 50  0001 C CNN
F 3 "" H 1600 3600 50  0001 C CNN
	1    1600 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 3500 1400 3500
Text Label 1400 3500 0    50   ~ 0
VIN
Wire Wire Line
	5500 3200 5500 2700
Wire Wire Line
	5500 2700 5400 2700
Text Label 5400 2700 0    50   ~ 0
VIN
$Comp
L cl-integrated_circuits:LCD_2x16_w_i2c U2
U 1 1 5CB70B45
P 8550 4550
F 0 "U2" H 8877 4603 60  0000 L CNN
F 1 "LCD_2x16_w_i2c" H 8877 4497 60  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8550 4550 60  0001 C CNN
F 3 "" H 8550 4550 60  0001 C CNN
	1    8550 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4500 7800 4500
Text Label 7800 4500 2    50   ~ 0
5V0
Wire Wire Line
	8150 4400 7950 4400
$Comp
L power:GND #PWR010
U 1 1 5CB717AE
P 7950 4400
F 0 "#PWR010" H 7950 4150 50  0001 C CNN
F 1 "GND" H 7955 4227 50  0000 C CNN
F 2 "" H 7950 4400 50  0001 C CNN
F 3 "" H 7950 4400 50  0001 C CNN
	1    7950 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CB72B54
P 7150 4250
F 0 "R7" V 6943 4250 50  0000 C CNN
F 1 "4k7" V 7034 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7080 4250 50  0001 C CNN
F 3 "~" H 7150 4250 50  0001 C CNN
	1    7150 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5CB72BB5
P 7450 4250
F 0 "R10" V 7243 4250 50  0000 C CNN
F 1 "4k7" V 7334 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7380 4250 50  0001 C CNN
F 3 "~" H 7450 4250 50  0001 C CNN
	1    7450 4250
	-1   0    0    1   
$EndComp
Text Label 6300 4600 0    50   ~ 0
SDA
Text Label 6300 4700 0    50   ~ 0
SCL
Wire Wire Line
	6100 4600 7150 4600
Wire Wire Line
	6100 4700 7450 4700
$Comp
L cl-integrated_circuits:ESP8266 U1
U 1 1 5CB70170
P 8150 5600
F 0 "U1" H 8150 6037 60  0000 C CNN
F 1 "ESP8266" H 8150 5931 60  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 8150 5600 60  0001 C CNN
F 3 "" H 8150 5600 60  0001 C CNN
	1    8150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CB70315
P 8800 5450
F 0 "#PWR012" H 8800 5200 50  0001 C CNN
F 1 "GND" H 8805 5277 50  0000 C CNN
F 2 "" H 8800 5450 50  0001 C CNN
F 3 "" H 8800 5450 50  0001 C CNN
	1    8800 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 5450 8800 5450
Text Label 6750 5550 0    50   ~ 0
3V3
Wire Wire Line
	4000 2800 3650 2800
Wire Wire Line
	4000 2900 3650 2900
Text Label 4600 3600 0    50   ~ 0
H_RX
Text Label 4600 3700 0    50   ~ 0
H_TX
Text Label 4600 3800 0    50   ~ 0
S_RX
Text Label 4600 3900 0    50   ~ 0
S_TX
Wire Wire Line
	2850 3000 3150 3000
Wire Wire Line
	2900 3100 3150 3100
Text Label 2700 2900 2    50   ~ 0
RX
Text Label 2700 2800 2    50   ~ 0
TX
Text Label 9550 5150 0    50   ~ 0
TX
$Comp
L Device:R R12
U 1 1 5CB810F7
P 9450 6000
F 0 "R12" V 9243 6000 50  0000 C CNN
F 1 "20k" V 9334 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9380 6000 50  0001 C CNN
F 3 "~" H 9450 6000 50  0001 C CNN
	1    9450 6000
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5CB81160
P 9450 5500
F 0 "R11" V 9243 5500 50  0000 C CNN
F 1 "10k" V 9334 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9380 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5CB8356A
P 9450 6200
F 0 "#PWR014" H 9450 5950 50  0001 C CNN
F 1 "GND" H 9455 6027 50  0000 C CNN
F 2 "" H 9450 6200 50  0001 C CNN
F 3 "" H 9450 6200 50  0001 C CNN
	1    9450 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 6150 9450 6200
Wire Wire Line
	9450 5350 9450 5150
Wire Wire Line
	9450 5150 9550 5150
Wire Wire Line
	9450 5650 9450 5750
Wire Wire Line
	7650 5450 7350 5450
Text Label 7350 5450 2    50   ~ 0
RX
Connection ~ 9450 5750
Wire Wire Line
	9450 5750 9450 5850
$Comp
L Device:R R8
U 1 1 5CB8BB15
P 7150 5550
F 0 "R8" V 6943 5550 50  0000 C CNN
F 1 "10k" V 7034 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7080 5550 50  0001 C CNN
F 3 "~" H 7150 5550 50  0001 C CNN
	1    7150 5550
	0    -1   1    0   
$EndComp
Wire Wire Line
	7650 5550 7300 5550
Wire Wire Line
	6750 5550 6900 5550
Wire Wire Line
	6900 5750 7650 5750
Connection ~ 6900 5550
Wire Wire Line
	6900 5550 7000 5550
Text Notes 6750 5100 0    50   ~ 0
use arduino Hardware Serial for checking messages with the monitor\nuse arduino Software Serial for communicating with the WIFI module
Text Notes 3450 2100 0    50   ~ 0
_RS_EMPTY interrupt used for shutting the motor. It cannot work with no water.
Wire Wire Line
	7450 5650 7650 5650
Wire Wire Line
	8650 5650 8950 5650
Wire Wire Line
	8950 5650 8950 6000
$Comp
L power:GND #PWR013
U 1 1 5CBB37D1
P 9100 6200
F 0 "#PWR013" H 9100 5950 50  0001 C CNN
F 1 "GND" H 9105 6027 50  0000 C CNN
F 2 "" H 9100 6200 50  0001 C CNN
F 3 "" H 9100 6200 50  0001 C CNN
	1    9100 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8950 6100 9100 6100
Wire Wire Line
	9100 6100 9100 6200
Wire Wire Line
	8650 5750 9450 5750
Text Notes 7800 6100 0    50   ~ 0
used for flashing \nnew software
Wire Wire Line
	7150 4400 7150 4600
Connection ~ 7150 4600
Wire Wire Line
	7450 4400 7450 4700
Connection ~ 7450 4700
Wire Wire Line
	7450 4100 7450 4000
Wire Wire Line
	7450 4000 7150 4000
Wire Wire Line
	7150 4000 7150 4100
Wire Wire Line
	7150 4000 7150 3800
Wire Wire Line
	7150 3800 7200 3800
Connection ~ 7150 4000
Text Label 7200 3800 0    50   ~ 0
5V0
Wire Wire Line
	7150 4600 8150 4600
Wire Wire Line
	7450 4700 8150 4700
Text Label 6700 4200 0    50   ~ 0
LR_LEVEL
Wire Wire Line
	6100 4300 6550 4300
Text Label 6700 4300 0    50   ~ 0
SR_LEVEL
Wire Wire Line
	6350 3550 6350 3700
$Comp
L Device:R R5
U 1 1 5CB9B706
P 6350 3850
F 0 "R5" V 6143 3850 50  0000 C CNN
F 1 "??" V 6234 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 3850 50  0001 C CNN
F 3 "~" H 6350 3850 50  0001 C CNN
	1    6350 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 4000 6350 4200
Connection ~ 6350 4200
Wire Wire Line
	6350 4200 6700 4200
Wire Wire Line
	6100 4200 6350 4200
$Comp
L Device:R R6
U 1 1 5CBB0F34
P 6550 3850
F 0 "R6" V 6343 3850 50  0000 C CNN
F 1 "??" V 6434 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6480 3850 50  0001 C CNN
F 3 "~" H 6550 3850 50  0001 C CNN
	1    6550 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4000 6550 4300
Connection ~ 6550 4300
Wire Wire Line
	6550 4300 6700 4300
Wire Wire Line
	6550 3700 6550 3550
Wire Wire Line
	6350 3550 6550 3550
Wire Wire Line
	6350 3550 6350 3350
Wire Wire Line
	6350 3350 6400 3350
Connection ~ 6350 3550
Text Label 6400 3350 0    50   ~ 0
5V0
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5CBB8377
P 8800 2950
F 0 "J4" H 8694 3235 50  0000 C CNN
F 1 "WATER_SENSOR" H 8694 3144 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8800 2950 50  0001 C CNN
F 3 "~" H 8800 2950 50  0001 C CNN
	1    8800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5CBB8759
P 8500 3250
F 0 "#PWR011" H 8500 3000 50  0001 C CNN
F 1 "GND" H 8505 3077 50  0000 C CNN
F 2 "" H 8500 3250 50  0001 C CNN
F 3 "" H 8500 3250 50  0001 C CNN
	1    8500 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 3250 8500 3150
Wire Wire Line
	8500 3150 8600 3150
Wire Wire Line
	8600 2950 8500 2950
Wire Wire Line
	8500 2950 8500 3150
Connection ~ 8500 3150
Wire Wire Line
	8600 2850 8200 2850
Wire Wire Line
	8600 3050 8200 3050
Text Label 8200 2850 2    50   ~ 0
LR_LEVEL
Text Label 8200 3050 2    50   ~ 0
SR_LEVEL
Text Notes 7900 2550 0    50   ~ 0
homemade water sensors
$Comp
L Device:R R4
U 1 1 5CBC5E37
P 4650 5500
F 0 "R4" V 4443 5500 50  0000 C CNN
F 1 "560" V 4534 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4580 5500 50  0001 C CNN
F 3 "~" H 4650 5500 50  0001 C CNN
	1    4650 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5CBC5ECB
P 4250 5500
F 0 "R2" V 4043 5500 50  0000 C CNN
F 1 "560" V 4134 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4180 5500 50  0001 C CNN
F 3 "~" H 4250 5500 50  0001 C CNN
	1    4250 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5CBC5F2E
P 4250 6000
F 0 "D2" V 4288 5882 50  0000 R CNN
F 1 "YELLOW" V 4197 5882 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4250 6000 50  0001 C CNN
F 3 "~" H 4250 6000 50  0001 C CNN
	1    4250 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5CBC5FF1
P 4650 6000
F 0 "D3" V 4688 5882 50  0000 R CNN
F 1 "RED" V 4597 5882 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4650 6000 50  0001 C CNN
F 3 "~" H 4650 6000 50  0001 C CNN
	1    4650 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3000 4000 3000
Wire Wire Line
	3650 3100 4000 3100
Wire Wire Line
	4250 5850 4250 5650
Wire Wire Line
	4250 6150 4250 6350
Wire Wire Line
	4250 6350 4450 6350
Wire Wire Line
	4650 6350 4650 6150
Wire Wire Line
	4650 5850 4650 5650
Wire Wire Line
	4250 4950 4350 4950
Wire Wire Line
	4250 4950 4250 5350
Wire Wire Line
	4650 5050 4750 5050
Wire Wire Line
	4650 5050 4650 5350
Text Label 4350 4950 0    50   ~ 0
YELLOW_LED
Text Label 4750 5050 0    50   ~ 0
RED_LED
Wire Wire Line
	5100 4200 4600 4200
Wire Wire Line
	5100 4300 4600 4300
Text Label 4600 4200 0    50   ~ 0
YELLOW_LED
Text Label 4600 4300 0    50   ~ 0
RED_LED
Wire Wire Line
	4450 6350 4450 6550
Connection ~ 4450 6350
Wire Wire Line
	4450 6350 4650 6350
$Comp
L power:GND #PWR07
U 1 1 5CBE35A5
P 4450 6550
F 0 "#PWR07" H 4450 6300 50  0001 C CNN
F 1 "GND" H 4455 6377 50  0000 C CNN
F 2 "" H 4450 6550 50  0001 C CNN
F 3 "" H 4450 6550 50  0001 C CNN
	1    4450 6550
	1    0    0    -1  
$EndComp
Text Label 2850 4500 0    50   ~ 0
M_FILTERED_PWM
Text Label 1400 3800 0    50   ~ 0
MOTOR_GND
NoConn ~ 6100 4900
NoConn ~ 6100 4800
NoConn ~ 6100 4500
NoConn ~ 6100 4400
NoConn ~ 6100 4000
NoConn ~ 6100 3700
NoConn ~ 6100 3600
NoConn ~ 5100 4000
NoConn ~ 5100 4100
NoConn ~ 5100 4400
NoConn ~ 5100 4600
NoConn ~ 5100 4700
NoConn ~ 5100 4800
NoConn ~ 5100 4900
NoConn ~ 8650 5550
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 5CC2688E
P 3450 2900
F 0 "J2" H 3500 3217 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 3500 3126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 3450 2900 50  0001 C CNN
F 3 "~" H 3450 2900 50  0001 C CNN
	1    3450 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 3600 5100 3600
Wire Wire Line
	4600 3700 5100 3700
Wire Wire Line
	4600 3800 5100 3800
Wire Wire Line
	4600 3900 5100 3900
Text Label 4000 2800 0    50   ~ 0
H_TX
Text Label 4000 2900 0    50   ~ 0
H_RX
Text Label 4000 3000 0    50   ~ 0
S_RX
Text Label 4000 3100 0    50   ~ 0
S_TX
Wire Wire Line
	2700 2900 2850 2900
Wire Wire Line
	2700 2800 2900 2800
Wire Wire Line
	2900 3100 2900 2800
Connection ~ 2900 2800
Wire Wire Line
	2900 2800 3150 2800
Wire Wire Line
	2850 3000 2850 2900
Connection ~ 2850 2900
Wire Wire Line
	2850 2900 3150 2900
Wire Wire Line
	6900 5550 6900 5750
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5CBB033A
P 8750 6100
F 0 "J3" H 8856 6378 50  0000 C CNN
F 1 "FLASH_WIFI" H 8856 6287 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8750 6100 50  0001 C CNN
F 3 "~" H 8750 6100 50  0001 C CNN
	1    8750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6200 8950 6300
Wire Wire Line
	8950 6300 7450 6300
Wire Wire Line
	7450 5650 7450 6300
Text Label 7550 6300 0    50   ~ 0
RST_WIFI
Text Label 8750 5650 0    50   ~ 0
GPIO0_WIFI
$EndSCHEMATC