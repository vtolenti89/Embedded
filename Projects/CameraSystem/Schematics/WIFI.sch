EESchema Schematic File Version 4
LIBS:CameraSystem-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5700 3200 0    60   Output ~ 0
WIFI_TX
Text HLabel 7200 3500 2    60   Input ~ 0
WIFI_RX
Text HLabel 4050 3700 0    60   Input ~ 0
WIFI_RST
Text HLabel 5700 3300 0    60   Input ~ 0
WIFI_EN
$Comp
L cl-integrated_circuits:ESP8266 U4
U 1 1 5BB97A97
P 6500 3350
F 0 "U4" H 6500 3050 60  0000 C CNN
F 1 "ESP8266" H 6500 3650 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 6500 3350 60  0001 C CNN
F 3 "" H 6500 3350 60  0001 C CNN
	1    6500 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5BB97B07
P 5850 3800
F 0 "C18" H 5875 3900 50  0000 L CNN
F 1 "100n" H 5875 3700 50  0000 L CNN
F 2 "digikey-footprints:0603" H 5888 3650 50  0001 C CNN
F 3 "" H 5850 3800 50  0001 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5BB97B4E
P 5850 4350
F 0 "#PWR0119" H 5850 4100 50  0001 C CNN
F 1 "GND" H 5850 4200 50  0000 C CNN
F 2 "" H 5850 4350 50  0001 C CNN
F 3 "" H 5850 4350 50  0001 C CNN
	1    5850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3500 5850 3500
Wire Wire Line
	5850 3650 5850 3500
Connection ~ 5850 3500
Wire Wire Line
	5850 4350 5850 3950
$Comp
L power:GND #PWR0120
U 1 1 5BB97B87
P 7750 3300
F 0 "#PWR0120" H 7750 3050 50  0001 C CNN
F 1 "GND" H 7750 3150 50  0000 C CNN
F 2 "" H 7750 3300 50  0001 C CNN
F 3 "" H 7750 3300 50  0001 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3200 7750 3200
Wire Wire Line
	7750 3200 7750 3300
Wire Wire Line
	7000 3500 7200 3500
Wire Wire Line
	6000 3200 5700 3200
Wire Wire Line
	6000 3300 5700 3300
$Comp
L Device:R R22
U 1 1 5BB97CCF
P 4300 3700
F 0 "R22" V 4380 3700 50  0000 C CNN
F 1 "4K7" V 4300 3700 50  0000 C CNN
F 2 "digikey-footprints:0603" V 4230 3700 50  0001 C CNN
F 3 "" H 4300 3700 50  0001 C CNN
	1    4300 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3700 4150 3700
$Comp
L Device:R R23
U 1 1 5BB97D2C
P 4600 4000
F 0 "R23" V 4680 4000 50  0000 C CNN
F 1 "10k" V 4600 4000 50  0000 C CNN
F 2 "digikey-footprints:0603" V 4530 4000 50  0001 C CNN
F 3 "" H 4600 4000 50  0001 C CNN
	1    4600 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 3400 5000 3400
Wire Wire Line
	5000 3250 5000 3400
$Comp
L Device:R R24
U 1 1 5BB97D8F
P 5000 3100
F 0 "R24" V 5080 3100 50  0000 C CNN
F 1 "10k" V 5000 3100 50  0000 C CNN
F 2 "digikey-footprints:0603" V 4930 3100 50  0001 C CNN
F 3 "" H 5000 3100 50  0001 C CNN
	1    5000 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 2950 5000 2750
Wire Wire Line
	5000 2750 5100 2750
Text Label 5100 2750 0    60   ~ 0
VDD_3V3_IN
Connection ~ 5000 3400
Wire Wire Line
	4450 3700 4600 3700
Wire Wire Line
	4600 3700 4600 3850
Wire Wire Line
	4600 4150 4600 4250
Wire Wire Line
	4600 4250 5000 4250
Wire Wire Line
	5000 3900 5000 4250
$Comp
L power:GND #PWR0121
U 1 1 5BB97FB0
P 5000 4350
F 0 "#PWR0121" H 5000 4100 50  0001 C CNN
F 1 "GND" H 5000 4200 50  0000 C CNN
F 2 "" H 5000 4350 50  0001 C CNN
F 3 "" H 5000 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
Connection ~ 5000 4250
Connection ~ 4600 3700
$Comp
L CameraSystem-rescue:BC846B_215 Q?
U 1 1 5BB98225
P 4900 3700
AR Path="/5BB98225" Ref="Q?"  Part="1" 
AR Path="/5BB4D9C1/5BB98225" Ref="Q1"  Part="1" 
F 0 "Q1" H 4774 3866 60  0000 L CNN
F 1 "BC846B_215" V 5106 3700 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 5100 3900 60  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 5100 4000 60  0001 L CNN
F 4 "1727-2920-1-ND" H 5100 4100 60  0001 L CNN "Digi-Key_PN"
F 5 "BC846B,215" H 5100 4200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5100 4300 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5100 4400 60  0001 L CNN "Family"
F 8 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 5100 4500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nexperia-usa-inc/BC846B,215/1727-2920-1-ND/763459" H 5100 4600 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 65V 0.1A SOT23" H 5100 4700 60  0001 L CNN "Description"
F 11 "Nexperia USA Inc." H 5100 4800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 4900 60  0001 L CNN "Status"
	1    4900 3700
	1    0    0    -1  
$EndComp
Text HLabel 3400 2150 0    60   Input ~ 0
VDD_3V3
Wire Wire Line
	3400 2150 3650 2150
Wire Wire Line
	4250 2150 4600 2150
Text Label 4600 2150 0    60   ~ 0
VDD_3V3_IN
Text Label 5350 3500 0    60   ~ 0
VDD_3V3_IN
Wire Wire Line
	3700 2100 3650 2100
Wire Wire Line
	3650 2100 3650 2150
Wire Wire Line
	3650 2200 3700 2200
Connection ~ 3650 2150
Wire Wire Line
	4250 2200 4200 2200
Wire Wire Line
	4250 2100 4250 2150
Wire Wire Line
	4200 2100 4250 2100
Connection ~ 4250 2150
Wire Wire Line
	5850 3500 6000 3500
Wire Wire Line
	5000 3400 5000 3500
Wire Wire Line
	5000 4250 5000 4350
Wire Wire Line
	4600 3700 4700 3700
Wire Wire Line
	3650 2150 3650 2200
Wire Wire Line
	4250 2150 4250 2200
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J6
U 1 1 5BC6841F
P 3900 2100
F 0 "J6" H 3950 2317 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 3950 2226 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x02_Pitch2.54mm_SMD" H 3900 2100 50  0001 C CNN
F 3 "~" H 3900 2100 50  0001 C CNN
	1    3900 2100
	1    0    0    -1  
$EndComp
NoConn ~ 7000 3400
NoConn ~ 7000 3300
$EndSCHEMATC
