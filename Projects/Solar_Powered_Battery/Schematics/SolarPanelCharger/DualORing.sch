EESchema Schematic File Version 4
LIBS:SolarPanelCharger-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4800 2050 2    50   ~ 0
Rds_on=0.06 Ohm 
Wire Wire Line
	4300 2750 4300 2900
Wire Wire Line
	4300 2900 4600 2900
Wire Wire Line
	5200 2900 5200 2750
$Comp
L Device:R R32
U 1 1 5CB60CB8
P 4600 2650
F 0 "R32" H 4670 2696 50  0000 L CNN
F 1 "10k" H 4670 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 2650 50  0001 C CNN
F 3 "~" H 4600 2650 50  0001 C CNN
	1    4600 2650
	1    0    0    -1  
$EndComp
Connection ~ 4850 2900
Wire Wire Line
	4850 2900 4950 2900
Wire Wire Line
	4850 2900 4850 3150
$Comp
L Device:Q_PMOS_GSD Q4
U 1 1 5CB62679
P 4300 2550
F 0 "Q4" V 4643 2550 50  0000 C CNN
F 1 "AO3401A" V 4552 2550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 2650 50  0001 C CNN
F 3 "~" H 4300 2550 50  0001 C CNN
	1    4300 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q8
U 1 1 5CB63B3F
P 5200 2550
F 0 "Q8" V 5543 2550 50  0000 C CNN
F 1 "AO3401A" V 5452 2550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5400 2650 50  0001 C CNN
F 3 "~" H 5200 2550 50  0001 C CNN
	1    5200 2550
	0    1    -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q6
U 1 1 5CB65069
P 4750 3400
F 0 "Q6" H 4956 3446 50  0000 L CNN
F 1 "AO3400" H 4956 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 3500 50  0001 C CNN
F 3 "~" H 4750 3400 50  0001 C CNN
	1    4750 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5CB66525
P 4850 3900
F 0 "#PWR031" H 4850 3650 50  0001 C CNN
F 1 "GND" H 4855 3727 50  0000 C CNN
F 2 "" H 4850 3900 50  0001 C CNN
F 3 "" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3600 4850 3850
$Comp
L Device:R R30
U 1 1 5CB66818
P 3950 3700
F 0 "R30" H 4020 3746 50  0000 L CNN
F 1 "100k" H 4020 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3880 3700 50  0001 C CNN
F 3 "~" H 3950 3700 50  0001 C CNN
	1    3950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5CB676BB
P 3950 3900
F 0 "#PWR029" H 3950 3650 50  0001 C CNN
F 1 "GND" H 3955 3727 50  0000 C CNN
F 2 "" H 3950 3900 50  0001 C CNN
F 3 "" H 3950 3900 50  0001 C CNN
	1    3950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3900 3950 3850
Wire Wire Line
	3950 3550 3950 3400
Wire Wire Line
	3950 3400 4400 3400
Connection ~ 3950 3400
Text HLabel 3700 3400 0    50   Input ~ 0
IN1_EN
Wire Wire Line
	4100 2450 4000 2450
Text HLabel 4000 2450 0    50   Input ~ 0
IN1
$Comp
L power:GND #PWR034
U 1 1 5CB6B939
P 7700 5350
F 0 "#PWR034" H 7700 5100 50  0001 C CNN
F 1 "GND" H 7705 5177 50  0000 C CNN
F 2 "" H 7700 5350 50  0001 C CNN
F 3 "" H 7700 5350 50  0001 C CNN
	1    7700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4400 5900 3150
Wire Wire Line
	5900 2450 5400 2450
$Comp
L Device:C C12
U 1 1 5CB744C3
P 5900 4750
F 0 "C12" H 6015 4796 50  0000 L CNN
F 1 "10u" H 6015 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5938 4600 50  0001 C CNN
F 3 "~" H 5900 4750 50  0001 C CNN
	1    5900 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5CB76EC8
P 6250 4750
F 0 "C13" H 6365 4796 50  0000 L CNN
F 1 "10u" H 6365 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6288 4600 50  0001 C CNN
F 3 "~" H 6250 4750 50  0001 C CNN
	1    6250 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5CB77363
P 6600 4750
F 0 "C14" H 6715 4796 50  0000 L CNN
F 1 "10u" H 6715 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6638 4600 50  0001 C CNN
F 3 "~" H 6600 4750 50  0001 C CNN
	1    6600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4400 5900 4600
Connection ~ 5900 4400
Wire Wire Line
	6250 4400 6250 4600
Connection ~ 6250 4400
Wire Wire Line
	6250 4400 5900 4400
Wire Wire Line
	6600 4600 6600 4400
Connection ~ 6600 4400
Wire Wire Line
	6600 4400 6250 4400
$Comp
L Device:C C15
U 1 1 5CB7944A
P 6950 4750
F 0 "C15" H 7065 4796 50  0000 L CNN
F 1 "10u" H 7065 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6988 4600 50  0001 C CNN
F 3 "~" H 6950 4750 50  0001 C CNN
	1    6950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4400 6950 4600
Connection ~ 6950 4400
Wire Wire Line
	6950 4400 6600 4400
$Comp
L power:GND #PWR033
U 1 1 5CB79C51
P 6950 5150
F 0 "#PWR033" H 6950 4900 50  0001 C CNN
F 1 "GND" H 6955 4977 50  0000 C CNN
F 2 "" H 6950 5150 50  0001 C CNN
F 3 "" H 6950 5150 50  0001 C CNN
	1    6950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4900 5900 5050
Wire Wire Line
	5900 5050 6250 5050
Wire Wire Line
	6950 5050 6950 5150
Wire Wire Line
	6950 4900 6950 5050
Connection ~ 6950 5050
Wire Wire Line
	6600 4900 6600 5050
Connection ~ 6600 5050
Wire Wire Line
	6600 5050 6950 5050
Wire Wire Line
	6250 4900 6250 5050
Connection ~ 6250 5050
Wire Wire Line
	6250 5050 6600 5050
Wire Wire Line
	4300 4700 4300 4850
Wire Wire Line
	4300 4850 4650 4850
Wire Wire Line
	5400 4850 5400 4700
Connection ~ 4850 4850
Wire Wire Line
	4850 4850 5050 4850
Wire Wire Line
	4850 4850 4850 5050
$Comp
L Device:Q_PMOS_GSD Q5
U 1 1 5CB82615
P 4300 4500
F 0 "Q5" V 4643 4500 50  0000 C CNN
F 1 "AO3401A" V 4552 4500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 4600 50  0001 C CNN
F 3 "~" H 4300 4500 50  0001 C CNN
	1    4300 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q9
U 1 1 5CB8261B
P 5400 4500
F 0 "Q9" V 5743 4500 50  0000 C CNN
F 1 "AO3401A" V 5652 4500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5600 4600 50  0001 C CNN
F 3 "~" H 5400 4500 50  0001 C CNN
	1    5400 4500
	0    1    -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q7
U 1 1 5CB82621
P 4750 5350
F 0 "Q7" H 4956 5396 50  0000 L CNN
F 1 "AO3400" H 4956 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4950 5450 50  0001 C CNN
F 3 "~" H 4750 5350 50  0001 C CNN
	1    4750 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5CB82627
P 4850 5850
F 0 "#PWR032" H 4850 5600 50  0001 C CNN
F 1 "GND" H 4855 5677 50  0000 C CNN
F 2 "" H 4850 5850 50  0001 C CNN
F 3 "" H 4850 5850 50  0001 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5550 4850 5800
$Comp
L Device:R R31
U 1 1 5CB8262E
P 3950 5650
F 0 "R31" H 4020 5696 50  0000 L CNN
F 1 "100k" H 4020 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3880 5650 50  0001 C CNN
F 3 "~" H 3950 5650 50  0001 C CNN
	1    3950 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CB82634
P 3950 5850
F 0 "#PWR030" H 3950 5600 50  0001 C CNN
F 1 "GND" H 3955 5677 50  0000 C CNN
F 2 "" H 3950 5850 50  0001 C CNN
F 3 "" H 3950 5850 50  0001 C CNN
	1    3950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5850 3950 5800
Wire Wire Line
	3950 5500 3950 5350
Wire Wire Line
	3950 5350 4400 5350
Wire Wire Line
	3950 5350 3700 5350
Connection ~ 3950 5350
Text HLabel 3700 5350 0    50   Input ~ 0
IN2_EN
Wire Wire Line
	4100 4400 4000 4400
Text HLabel 4000 4400 0    50   Input ~ 0
IN2
Wire Wire Line
	5600 4400 5700 4400
Wire Wire Line
	4500 4400 4650 4400
$Comp
L Device:R R33
U 1 1 5CB82608
P 4650 4600
F 0 "R33" H 4720 4646 50  0000 L CNN
F 1 "10k" H 4720 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4580 4600 50  0001 C CNN
F 3 "~" H 4650 4600 50  0001 C CNN
	1    4650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4400 4650 4450
Connection ~ 4650 4400
Wire Wire Line
	4650 4400 5050 4400
Wire Wire Line
	4650 4750 4650 4850
Connection ~ 4650 4850
Wire Wire Line
	4650 4850 4850 4850
$Comp
L Device:C C11
U 1 1 5CB8C9E2
P 5050 4600
F 0 "C11" H 5165 4646 50  0000 L CNN
F 1 "1n" H 5165 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5088 4450 50  0001 C CNN
F 3 "~" H 5050 4600 50  0001 C CNN
	1    5050 4600
	1    0    0    -1  
$EndComp
Text Notes 5300 4750 2    50   ~ 0
N.A.
Wire Wire Line
	5050 4400 5050 4450
Connection ~ 5050 4400
Wire Wire Line
	5050 4400 5200 4400
Wire Wire Line
	5050 4750 5050 4850
Connection ~ 5050 4850
Wire Wire Line
	5050 4850 5400 4850
Wire Wire Line
	4500 2450 4600 2450
Wire Wire Line
	4600 2450 4600 2500
Connection ~ 4600 2450
Wire Wire Line
	4600 2450 4950 2450
Wire Wire Line
	4600 2800 4600 2900
Connection ~ 4600 2900
Wire Wire Line
	4600 2900 4850 2900
$Comp
L Device:C C10
U 1 1 5CB92CAB
P 4950 2650
F 0 "C10" H 5065 2696 50  0000 L CNN
F 1 "1n" H 5065 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4988 2500 50  0001 C CNN
F 3 "~" H 4950 2650 50  0001 C CNN
	1    4950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2450 4950 2500
Connection ~ 4950 2450
Wire Wire Line
	4950 2450 5000 2450
Wire Wire Line
	4950 2800 4950 2900
Connection ~ 4950 2900
Wire Wire Line
	4950 2900 5200 2900
Text Notes 5150 2850 2    50   ~ 0
N.A.
$Comp
L Device:D_Zener D9
U 1 1 5CBEE290
P 4400 3600
F 0 "D9" V 4354 3679 50  0000 L CNN
F 1 "7V5" V 4445 3679 50  0000 L CNN
F 2 "custom-footprints:LL34" H 4400 3600 50  0001 C CNN
F 3 "~" H 4400 3600 50  0001 C CNN
	1    4400 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3400 3950 3400
Wire Wire Line
	4400 3400 4400 3450
Connection ~ 4400 3400
Wire Wire Line
	4400 3400 4550 3400
Wire Wire Line
	4400 3750 4400 3850
Wire Wire Line
	4400 3850 4850 3850
Connection ~ 4850 3850
Wire Wire Line
	4850 3850 4850 3900
$Comp
L Device:D_Zener D10
U 1 1 5CBF903A
P 4400 5550
F 0 "D10" V 4354 5629 50  0000 L CNN
F 1 "7V5" V 4445 5629 50  0000 L CNN
F 2 "custom-footprints:LL34" H 4400 5550 50  0001 C CNN
F 3 "~" H 4400 5550 50  0001 C CNN
	1    4400 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5350 4400 5400
Connection ~ 4400 5350
Wire Wire Line
	4400 5350 4550 5350
Wire Wire Line
	4400 5700 4400 5800
Wire Wire Line
	4400 5800 4850 5800
Connection ~ 4850 5800
Wire Wire Line
	4850 5800 4850 5850
Wire Wire Line
	6950 4400 7700 4400
Wire Wire Line
	7700 4700 7700 5350
$Comp
L power:GND #PWR0101
U 1 1 5CC30BAD
P 7600 4200
F 0 "#PWR0101" H 7600 3950 50  0001 C CNN
F 1 "GND" H 7605 4027 50  0000 C CNN
F 2 "" H 7600 4200 50  0001 C CNN
F 3 "" H 7600 4200 50  0001 C CNN
	1    7600 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4200 7800 4200
NoConn ~ 7700 4500
NoConn ~ 7700 4600
$Comp
L cl-integrated_circuits:USB_B_Female J3
U 1 1 5CC3838C
P 8000 4500
F 0 "J3" H 7982 4010 50  0000 C CNN
F 1 "USB_B_Female" H 7982 4101 50  0000 C CNN
F 2 "custom-footprints:USB_B_Female_right_angle" H 8000 4500 50  0001 L BNN
F 3 "" H 8000 4500 50  0001 L BNN
F 4 "61400416021" H 8000 4500 50  0001 L BNN "Field4"
F 5 "None" H 8000 4500 50  0001 L BNN "Field5"
F 6 "Unavailable" H 8000 4500 50  0001 L BNN "Field6"
F 7 "Wurth Electronics" H 8000 4500 50  0001 L BNN "Field7"
F 8 "WR-COM Series, Right Angle Type A USB Connector Socket, 30 V ac, 1.5A" H 8000 4500 50  0001 L BNN "Field8"
	1    8000 4500
	1    0    0    1   
$EndComp
$Comp
L Device:R R34
U 1 1 5CB458A9
P 5600 3150
F 0 "R34" H 5670 3196 50  0000 L CNN
F 1 "1k" H 5670 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5530 3150 50  0001 C CNN
F 3 "~" H 5600 3150 50  0001 C CNN
	1    5600 3150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5CB45951
P 5200 3150
F 0 "D12" H 5191 3366 50  0000 C CNN
F 1 "WHITE" H 5191 3275 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5200 3150 50  0001 C CNN
F 3 "~" H 5200 3150 50  0001 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3150 5050 3150
Connection ~ 4850 3150
Wire Wire Line
	4850 3150 4850 3200
Wire Wire Line
	5350 3150 5450 3150
Wire Wire Line
	5750 3150 5900 3150
Connection ~ 5900 3150
Wire Wire Line
	5900 3150 5900 2450
$Comp
L Device:LED D11
U 1 1 5CB4BA75
P 5150 5050
F 0 "D11" H 5141 5266 50  0000 C CNN
F 1 "BLUE" H 5141 5175 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5150 5050 50  0001 C CNN
F 3 "~" H 5150 5050 50  0001 C CNN
	1    5150 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5CB4BAD7
P 5700 4750
F 0 "R35" H 5770 4796 50  0000 L CNN
F 1 "1k" H 5770 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 4750 50  0001 C CNN
F 3 "~" H 5700 4750 50  0001 C CNN
	1    5700 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4400 5700 4600
Connection ~ 5700 4400
Wire Wire Line
	5700 4400 5900 4400
Wire Wire Line
	5700 4900 5700 5050
Wire Wire Line
	5700 5050 5300 5050
Wire Wire Line
	5000 5050 4850 5050
Connection ~ 4850 5050
Wire Wire Line
	4850 5050 4850 5150
$EndSCHEMATC
