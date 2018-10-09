EESchema Schematic File Version 4
LIBS:CameraSystem-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
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
Text Label 3450 1500 0    60   ~ 0
VDD_3V3_IN
$Comp
L cl-integrated_circuits:MC74HC125ADTR2G U?
U 1 1 5BBAA814
P 5750 2800
F 0 "U?" H 5750 2300 60  0000 C CNN
F 1 "MC74HC125ADTR2G" H 5750 3300 60  0000 C CNN
F 2 "" H 5750 2800 60  0001 C CNN
F 3 "" H 5750 2800 60  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
$Comp
L CameraSystem-rescue:Micro_SD_Card J?
U 1 1 5BBAA877
P 6450 4700
AR Path="/5BBAA877" Ref="J?"  Part="1" 
AR Path="/5BB4DA56/5BBAA877" Ref="J?"  Part="1" 
F 0 "J?" H 5800 5300 50  0000 C CNN
F 1 "1040310811" H 7100 5300 50  0000 R CNN
F 2 "" H 7600 5000 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
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
	7250 5300 7600 5300
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
P 7500 2650
F 0 "#PWR0126" H 7500 2400 50  0001 C CNN
F 1 "GND" H 7500 2500 50  0000 C CNN
F 2 "" H 7500 2650 50  0001 C CNN
F 3 "" H 7500 2650 50  0001 C CNN
	1    7500 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5BBAAEA8
P 7500 2950
F 0 "#PWR0127" H 7500 2700 50  0001 C CNN
F 1 "GND" H 7500 2800 50  0000 C CNN
F 2 "" H 7500 2950 50  0001 C CNN
F 3 "" H 7500 2950 50  0001 C CNN
	1    7500 2950
	1    0    0    -1  
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
	7500 2950 7500 2900
Wire Wire Line
	7500 2900 6300 2900
Wire Wire Line
	7500 2650 7500 2600
Wire Wire Line
	7500 2600 6300 2600
Wire Wire Line
	5250 2700 4700 2700
Wire Wire Line
	5250 2600 4700 2600
Wire Wire Line
	5250 3000 4700 3000
Wire Wire Line
	5250 2900 4700 2900
Text Label 4700 2700 0    60   ~ 0
SD_DATA_IN
Text HLabel 4700 2600 0    60   Input ~ 0
MISO
Text HLabel 4700 2900 0    60   Input ~ 0
SCK
Text Label 4700 3000 0    60   ~ 0
SD_SCK_IN
Wire Wire Line
	6300 2500 6400 2500
Text Label 7400 2500 0    60   ~ 0
VDD_3V3_IN
$Comp
L Device:R R?
U 1 1 5BBAB32F
P 6500 2700
F 0 "R?" V 6580 2700 50  0000 C CNN
F 1 "10k" V 6500 2700 50  0000 C CNN
F 2 "" V 6430 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2700 6350 2700
Wire Wire Line
	6650 2700 6850 2700
Wire Wire Line
	6850 2700 6850 2500
Connection ~ 6850 2500
Wire Wire Line
	6400 2500 6400 2300
Connection ~ 6400 2500
$Comp
L Device:C C?
U 1 1 5BBAB4F4
P 6400 2150
F 0 "C?" H 6425 2250 50  0000 L CNN
F 1 "100n" H 6425 2050 50  0000 L CNN
F 2 "" H 6438 2000 50  0001 C CNN
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
Connection ~ 6850 2700
Text HLabel 7050 2700 2    60   Input ~ 0
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
MOSI
Text Label 7050 3000 2    60   ~ 0
SD_DATA_OUT
$Comp
L Device:C C?
U 1 1 5BBABB37
P 4350 5050
F 0 "C?" H 4375 5150 50  0000 L CNN
F 1 "100n" H 4375 4950 50  0000 L CNN
F 2 "" H 4388 4900 50  0001 C CNN
F 3 "" H 4350 5050 50  0001 C CNN
	1    4350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4700 4350 4700
Wire Wire Line
	4350 4700 4350 4900
$Comp
L power:GND #PWR0129
U 1 1 5BBABC51
P 4350 5350
F 0 "#PWR0129" H 4350 5100 50  0001 C CNN
F 1 "GND" H 4350 5200 50  0000 C CNN
F 2 "" H 4350 5350 50  0001 C CNN
F 3 "" H 4350 5350 50  0001 C CNN
	1    4350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5200 4350 5350
Connection ~ 4350 4700
Text Label 4100 4700 2    60   ~ 0
VDD_3V3_IN
Wire Wire Line
	5550 4800 4750 4800
Text Label 4750 4800 0    60   ~ 0
SD_CLK_IN
Wire Wire Line
	5550 4900 4600 4900
Wire Wire Line
	4600 4900 4600 5350
$Comp
L power:GND #PWR0130
U 1 1 5BBABFC7
P 4600 5350
F 0 "#PWR0130" H 4600 5100 50  0001 C CNN
F 1 "GND" H 4600 5200 50  0000 C CNN
F 2 "" H 4600 5350 50  0001 C CNN
F 3 "" H 4600 5350 50  0001 C CNN
	1    4600 5350
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
	6850 2500 7400 2500
Wire Wire Line
	6400 2500 6850 2500
Wire Wire Line
	6850 2700 7050 2700
Wire Wire Line
	4350 4700 5550 4700
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J?
U 1 1 5BC2A0E4
P 2900 1450
F 0 "J?" H 2950 1667 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 2950 1576 50  0000 C CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "~" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
