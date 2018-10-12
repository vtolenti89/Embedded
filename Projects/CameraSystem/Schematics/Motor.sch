EESchema Schematic File Version 4
LIBS:CameraSystem-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1400 1250 0    50   Input ~ 0
VDD_3V3_CON
Wire Wire Line
	1400 1250 1550 1250
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J13
U 1 1 5BC62F82
P 1800 1200
F 0 "J13" H 1850 1417 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 1850 1326 50  0000 C CNN
F 2 "" H 1800 1200 50  0001 C CNN
F 3 "~" H 1800 1200 50  0001 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1200 1550 1200
Wire Wire Line
	1550 1200 1550 1250
Wire Wire Line
	1550 1300 1600 1300
Connection ~ 1550 1250
Wire Wire Line
	1550 1250 1550 1300
Wire Wire Line
	2100 1300 2150 1300
Wire Wire Line
	2150 1300 2150 1250
Wire Wire Line
	2150 1200 2100 1200
Connection ~ 2150 1250
Wire Wire Line
	2150 1250 2150 1200
Text Label 2300 1250 0    50   ~ 0
VDD_3V3_CON_IN
Wire Wire Line
	2150 1250 2900 1250
Wire Wire Line
	3150 1350 2900 1350
Wire Wire Line
	3150 1450 2900 1450
Wire Wire Line
	3150 1550 2900 1550
Wire Wire Line
	3650 1250 3850 1250
Wire Wire Line
	3650 1350 3850 1350
Wire Wire Line
	3650 1450 3850 1450
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J15
U 1 1 5BC641C3
P 3350 1450
F 0 "J15" H 3400 1867 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 3400 1776 50  0000 C CNN
F 2 "" H 3350 1450 50  0001 C CNN
F 3 "~" H 3350 1450 50  0001 C CNN
	1    3350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1250 2900 1350
Connection ~ 2900 1250
Wire Wire Line
	2900 1250 3150 1250
Wire Wire Line
	3850 1350 3850 1250
$Comp
L power:GND #PWR0142
U 1 1 5BC64498
P 4600 1350
F 0 "#PWR0142" H 4600 1100 50  0001 C CNN
F 1 "GND" H 4605 1177 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1250 4600 1250
Wire Wire Line
	4600 1250 4600 1350
Connection ~ 3850 1250
Wire Wire Line
	3150 1650 2900 1650
Wire Wire Line
	3650 1550 3850 1550
Text HLabel 2900 1450 0    50   Input ~ 0
M_PWM_CON
Text HLabel 2900 1550 0    50   Input ~ 0
M_DIR_CON
Text HLabel 2900 1650 0    50   Input ~ 0
M_EN_CON
Text HLabel 3850 1450 2    50   Output ~ 0
SENSOR1_CON
Text HLabel 3850 1550 2    50   Output ~ 0
SENSOR2_CON
NoConn ~ 3650 1650
$EndSCHEMATC
