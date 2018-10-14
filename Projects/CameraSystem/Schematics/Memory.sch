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
Wire Wire Line
	2700 1450 2650 1450
Wire Wire Line
	2650 1450 2650 1500
Wire Wire Line
	2650 1550 2700 1550
Wire Wire Line
	3250 1550 3200 1550
Wire Wire Line
	3250 1450 3250 1500
Wire Wire Line
	3250 1450 3200 1450
Wire Wire Line
	2650 1500 2400 1500
Connection ~ 2650 1500
Wire Wire Line
	3250 1500 3450 1500
Connection ~ 3250 1500
Text HLabel 2400 1500 0    60   Input ~ 0
VDD_3V3
$Comp
L cl-integrated_circuits:MC74HC125ADTR2G U5
U 1 1 5BBAA814
P 5750 2800
F 0 "U5" H 5750 2300 60  0000 C CNN
F 1 "MC74HC125ADTR2G" H 5750 3300 60  0000 C CNN
F 2 "custom-footprints:MC74HC125A_TSSOP−14" H 5750 2800 60  0001 C CNN
F 3 "" H 5750 2800 60  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5BBAAC4D
P 7600 5650
F 0 "#PWR0122" H 7600 5400 50  0001 C CNN
F 1 "GND" H 7600 5500 50  0000 C CNN
F 2 "" H 7600 5650 50  0001 C CNN
F 3 "" H 7600 5650 50  0001 C CNN
	1    7600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5300 7600 5650
$Comp
L power:GND #PWR0123
U 1 1 5BBAAE22
P 4250 2550
F 0 "#PWR0123" H 4250 2300 50  0001 C CNN
F 1 "GND" H 4250 2400 50  0000 C CNN
F 2 "" H 4250 2550 50  0001 C CNN
F 3 "" H 4250 2550 50  0001 C CNN
	1    4250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5BBAAE4E
P 4250 2850
F 0 "#PWR0124" H 4250 2600 50  0001 C CNN
F 1 "GND" H 4250 2700 50  0000 C CNN
F 2 "" H 4250 2850 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5BBAAE80
P 4250 3150
F 0 "#PWR0125" H 4250 2900 50  0001 C CNN
F 1 "GND" H 4250 3000 50  0000 C CNN
F 2 "" H 4250 3150 50  0001 C CNN
F 3 "" H 4250 3150 50  0001 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5BBAAE94
P 7000 2600
F 0 "#PWR0126" H 7000 2350 50  0001 C CNN
F 1 "GND" H 7000 2450 50  0000 C CNN
F 2 "" H 7000 2600 50  0001 C CNN
F 3 "" H 7000 2600 50  0001 C CNN
	1    7000 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5BBAAEA8
P 7050 2900
F 0 "#PWR0127" H 7050 2650 50  0001 C CNN
F 1 "GND" H 7050 2750 50  0000 C CNN
F 2 "" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2550 4250 2500
Wire Wire Line
	4250 2500 5250 2500
Wire Wire Line
	4250 2850 4250 2800
Wire Wire Line
	4250 2800 5250 2800
Wire Wire Line
	4250 3150 4250 3100
Wire Wire Line
	4250 3100 5250 3100
Wire Wire Line
	7050 2900 6300 2900
Wire Wire Line
	7000 2600 6300 2600
Wire Wire Line
	5250 2700 4700 2700
Wire Wire Line
	5250 2600 4700 2600
Wire Wire Line
	5250 2900 4700 2900
Text Label 4700 2700 0    60   ~ 0
SD_DATA_IN
Text HLabel 4700 2600 0    60   Input ~ 0
SD_MISO
Text HLabel 4700 2900 0    60   Input ~ 0
SD_SCK
Text Label 4700 3000 0    60   ~ 0
SD_SCK_IN
Wire Wire Line
	6300 2500 6400 2500
$Comp
L Device:R R25
U 1 1 5BBAB32F
P 7300 2550
F 0 "R25" V 7380 2550 50  0000 C CNN
F 1 "10k" V 7300 2550 50  0000 C CNN
F 2 "digikey-footprints:0603" V 7230 2550 50  0001 C CNN
F 3 "" H 7300 2550 50  0001 C CNN
	1    7300 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 2500 6400 2300
Connection ~ 6400 2500
$Comp
L Device:C C20
U 1 1 5BBAB4F4
P 6400 2150
F 0 "C20" H 6425 2250 50  0000 L CNN
F 1 "100n" H 6425 2050 50  0000 L CNN
F 2 "digikey-footprints:0603" H 6438 2000 50  0001 C CNN
F 3 "" H 6400 2150 50  0001 C CNN
	1    6400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2000 6400 1900
Wire Wire Line
	6400 1900 6700 1900
Wire Wire Line
	6700 1900 6700 2000
$Comp
L power:GND #PWR0128
U 1 1 5BBAB570
P 6700 2000
F 0 "#PWR0128" H 6700 1750 50  0001 C CNN
F 1 "GND" H 6700 1850 50  0000 C CNN
F 2 "" H 6700 2000 50  0001 C CNN
F 3 "" H 6700 2000 50  0001 C CNN
	1    6700 2000
	1    0    0    -1  
$EndComp
Text HLabel 7500 2700 2    60   Input ~ 0
SD_CS
Wire Wire Line
	6300 2800 7050 2800
Text Label 7050 2800 2    60   ~ 0
SD_CS_IN
Wire Wire Line
	6300 3000 7050 3000
Wire Wire Line
	6300 3100 7050 3100
Text HLabel 7050 3100 2    60   Output ~ 0
SD_MOSI
Text Label 7050 3000 2    60   ~ 0
SD_DATA_OUT
$Comp
L Device:C C19
U 1 1 5BBABB37
P 3800 5050
F 0 "C19" H 3825 5150 50  0000 L CNN
F 1 "100n" H 3825 4950 50  0000 L CNN
F 2 "digikey-footprints:0603" H 3838 4900 50  0001 C CNN
F 3 "" H 3800 5050 50  0001 C CNN
	1    3800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4700 3800 4700
Wire Wire Line
	3800 4700 3800 4900
$Comp
L power:GND #PWR0129
U 1 1 5BBABC51
P 3800 5350
F 0 "#PWR0129" H 3800 5100 50  0001 C CNN
F 1 "GND" H 3800 5200 50  0000 C CNN
F 2 "" H 3800 5350 50  0001 C CNN
F 3 "" H 3800 5350 50  0001 C CNN
	1    3800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5200 3800 5350
Connection ~ 3800 4700
Wire Wire Line
	5550 4800 4750 4800
Text Label 4750 4800 0    60   ~ 0
SD_CLK_IN
Wire Wire Line
	5550 4900 4050 4900
Wire Wire Line
	4050 4900 4050 5350
$Comp
L power:GND #PWR0130
U 1 1 5BBABFC7
P 4050 5350
F 0 "#PWR0130" H 4050 5100 50  0001 C CNN
F 1 "GND" H 4050 5200 50  0000 C CNN
F 2 "" H 4050 5350 50  0001 C CNN
F 3 "" H 4050 5350 50  0001 C CNN
	1    4050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5000 4750 5000
Wire Wire Line
	5550 4600 4750 4600
Text Label 4750 5000 0    60   ~ 0
SD_DATA_OUT
Text Label 4750 4600 0    60   ~ 0
SD_DATA_IN
Wire Wire Line
	5550 4500 4750 4500
Text Label 4750 4500 0    60   ~ 0
SD_CS_IN
Wire Wire Line
	2650 1500 2650 1550
Wire Wire Line
	3250 1500 3250 1550
Wire Wire Line
	3800 4700 5550 4700
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J7
U 1 1 5BC2A0E4
P 2900 1450
F 0 "J7" H 2950 1667 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 2950 1576 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm_SMD" H 2900 1450 50  0001 C CNN
F 3 "~" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
NoConn ~ 5550 5100
NoConn ~ 5550 4400
Wire Wire Line
	5250 3000 4700 3000
$Comp
L Connector:Micro_SD_Card_Det J8
U 1 1 5BC308F6
P 6450 4800
F 0 "J8" H 6400 5617 50  0000 C CNN
F 1 "DM3D-SF" H 6400 5526 50  0000 C CNN
F 2 "custom-footprints:DM3D-SF" H 8500 5500 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 6450 4900 50  0001 C CNN
	1    6450 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5300 7600 5300
$Comp
L Device:R R12
U 1 1 5BC30B28
P 5150 5200
F 0 "R12" V 5230 5200 50  0000 C CNN
F 1 "10k" V 5150 5200 50  0000 C CNN
F 2 "digikey-footprints:0603" V 5080 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C C27
U 1 1 5BC32E9B
P 5400 5750
F 0 "C27" H 5425 5850 50  0000 L CNN
F 1 "100n" H 5425 5650 50  0000 L CNN
F 2 "digikey-footprints:0603" H 5438 5600 50  0001 C CNN
F 3 "" H 5400 5750 50  0001 C CNN
	1    5400 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5BC32EF7
P 5400 6050
F 0 "#PWR05" H 5400 5800 50  0001 C CNN
F 1 "GND" H 5400 5900 50  0000 C CNN
F 2 "" H 5400 6050 50  0001 C CNN
F 3 "" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6050 5400 5900
Wire Wire Line
	5400 5600 5400 5500
Wire Wire Line
	4350 5200 5000 5200
Text Label 4350 5200 0    60   ~ 0
VDD_3V3_IN
Text HLabel 5050 5500 0    60   Output ~ 0
_SD_DET
Wire Wire Line
	5050 5500 5400 5500
Connection ~ 5400 5500
Wire Wire Line
	5300 5200 5400 5200
Connection ~ 5400 5200
Wire Wire Line
	5400 5200 5550 5200
Wire Wire Line
	5400 5200 5400 5500
Wire Wire Line
	5550 5300 5550 5500
$Comp
L power:GND #PWR07
U 1 1 5BC7AC6D
P 5550 5500
F 0 "#PWR07" H 5550 5250 50  0001 C CNN
F 1 "GND" H 5550 5350 50  0000 C CNN
F 2 "" H 5550 5500 50  0001 C CNN
F 3 "" H 5550 5500 50  0001 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
Text Label 3450 1500 0    50   ~ 0
VDD_3V3_IN
Text Label 7000 2500 2    50   ~ 0
VDD_3V3_IN
Text Label 3550 4700 0    50   ~ 0
VDD_3V3_IN
Wire Wire Line
	6400 2500 6800 2500
Wire Wire Line
	6300 2700 7300 2700
Connection ~ 7300 2700
Wire Wire Line
	7300 2700 7500 2700
Wire Wire Line
	7300 2400 7300 2300
Wire Wire Line
	7300 2300 6800 2300
Wire Wire Line
	6800 2300 6800 2500
Connection ~ 6800 2500
Wire Wire Line
	6800 2500 7000 2500
$EndSCHEMATC
