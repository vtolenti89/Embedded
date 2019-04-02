EESchema Schematic File Version 4
LIBS:CameraSystem-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4100 2150 0    60   Input ~ 0
VDD_5V0
Text HLabel 6700 3350 2    60   Input ~ 0
VDD_3V3
Text HLabel 4300 4850 0    60   BiDi ~ 0
SDA_3V3
Text HLabel 4300 4650 0    60   Input ~ 0
SCL_3V3
$Comp
L CameraSystem-rescue:LCD_2x16_w_i2c-cl-integrated_circuits U9
U 1 1 5BB9D5E3
P 6350 2300
AR Path="/5BB9D5E3" Ref="U9"  Part="1" 
AR Path="/5BB9CC6E/5BB9D5E3" Ref="U9"  Part="1" 
F 0 "U9" H 6350 1950 60  0000 C CNN
F 1 "LCD_2x16_w_i2c" H 6350 2650 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 6350 2300 60  0001 C CNN
F 3 "" H 6350 2300 60  0001 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5BB9D659
P 4600 2300
F 0 "#PWR0136" H 4600 2050 50  0001 C CNN
F 1 "GND" H 4600 2150 50  0000 C CNN
F 2 "" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0001 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5BB9D673
P 4300 2400
F 0 "C23" H 4325 2500 50  0000 L CNN
F 1 "100n" H 4325 2300 50  0000 L CNN
F 2 "digikey-footprints:0603" H 4338 2250 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2150 4300 2150
Wire Wire Line
	5950 2250 4600 2250
Wire Wire Line
	4600 2250 4600 2300
Wire Wire Line
	4300 2250 4300 2150
Connection ~ 4300 2150
$Comp
L power:GND #PWR0137
U 1 1 5BB9D6EF
P 4300 2650
F 0 "#PWR0137" H 4300 2400 50  0001 C CNN
F 1 "GND" H 4300 2500 50  0000 C CNN
F 2 "" H 4300 2650 50  0001 C CNN
F 3 "" H 4300 2650 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2550 4300 2650
Wire Wire Line
	5950 2350 4750 2350
Wire Wire Line
	5950 2450 4750 2450
Text Label 4750 2350 0    60   ~ 0
SDA_5V0
Text Label 4750 2450 0    60   ~ 0
SCL_5V0
$Comp
L CameraSystem-rescue:PCA9306D_118 U?
U 1 1 5BB9DA52
P 6100 4850
AR Path="/5BB9DA52" Ref="U?"  Part="1" 
AR Path="/5BB9CC6E/5BB9DA52" Ref="U8"  Part="1" 
F 0 "U8" H 5900 5300 60  0000 C CNN
F 1 "PCA9306D_118" H 6350 5400 60  0000 R CNN
F 2 "digikey-footprints:SOIC-8_W3.9mm" H 6300 5050 60  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9306.pdf" H 6300 5150 60  0001 L CNN
F 4 "568-4215-1-ND" H 6300 5250 60  0001 L CNN "Digi-Key_PN"
F 5 "PCA9306D,118" H 6300 5350 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 6300 5450 60  0001 L CNN "Category"
F 7 "Logic - Translators, Level Shifters" H 6300 5550 60  0001 L CNN "Family"
F 8 "http://www.nxp.com/documents/data_sheet/PCA9306.pdf" H 6300 5650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nxp-usa-inc/PCA9306D,118/568-4215-1-ND/1638362" H 6300 5750 60  0001 L CNN "DK_Detail_Page"
F 10 "IC TRNSLTR BIDIRECTIONAL 8SO" H 6300 5850 60  0001 L CNN "Description"
F 11 "NXP USA Inc." H 6300 5950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6300 6050 60  0001 L CNN "Status"
	1    6100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4150 6200 4350
Wire Wire Line
	5700 4550 5600 4550
Wire Wire Line
	5600 4550 5600 4150
Connection ~ 6200 4150
$Comp
L Device:C C25
U 1 1 5BB9DC5C
P 6500 4500
F 0 "C25" H 6525 4600 50  0000 L CNN
F 1 "100n" H 6525 4400 50  0000 L CNN
F 2 "digikey-footprints:0603" H 6538 4350 50  0001 C CNN
F 3 "" H 6500 4500 50  0001 C CNN
	1    6500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4150 6500 4350
Connection ~ 6500 4150
Wire Wire Line
	6500 4650 6500 4700
$Comp
L power:GND #PWR0138
U 1 1 5BB9DD24
P 6500 4700
F 0 "#PWR0138" H 6500 4450 50  0001 C CNN
F 1 "GND" H 6500 4550 50  0000 C CNN
F 2 "" H 6500 4700 50  0001 C CNN
F 3 "" H 6500 4700 50  0001 C CNN
	1    6500 4700
	1    0    0    -1  
$EndComp
Text Label 7300 4150 0    60   ~ 0
VDD_5V0
Wire Wire Line
	6100 3350 6100 4350
$Comp
L Device:C C24
U 1 1 5BB9DEB0
P 6500 3550
F 0 "C24" H 6525 3650 50  0000 L CNN
F 1 "100n" H 6525 3450 50  0000 L CNN
F 2 "digikey-footprints:0603" H 6538 3400 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3350 6500 3400
Connection ~ 6500 3350
$Comp
L power:GND #PWR0139
U 1 1 5BB9DF83
P 6500 3800
F 0 "#PWR0139" H 6500 3550 50  0001 C CNN
F 1 "GND" H 6500 3650 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3700 6500 3800
$Comp
L power:GND #PWR0140
U 1 1 5BB9DFE6
P 6100 5300
F 0 "#PWR0140" H 6100 5050 50  0001 C CNN
F 1 "GND" H 6100 5150 50  0000 C CNN
F 2 "" H 6100 5300 50  0001 C CNN
F 3 "" H 6100 5300 50  0001 C CNN
	1    6100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5150 6100 5300
$Comp
L Device:R R29
U 1 1 5BB9E244
P 5200 4350
F 0 "R29" V 5280 4350 50  0000 C CNN
F 1 "1K74" V 5200 4350 50  0000 C CNN
F 2 "digikey-footprints:0603" V 5130 4350 50  0001 C CNN
F 3 "" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4150 5200 4200
Connection ~ 5600 4150
Wire Wire Line
	4300 4750 5400 4750
Wire Wire Line
	4300 4950 5200 4950
Text Label 4300 4950 0    60   ~ 0
SDA_5V0
Text Label 4300 4750 0    60   ~ 0
SCL_5V0
$Comp
L Device:R R30
U 1 1 5BB9E8B2
P 5400 4350
F 0 "R30" V 5480 4350 50  0000 C CNN
F 1 "1K74" V 5400 4350 50  0000 C CNN
F 2 "digikey-footprints:0603" V 5330 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4200 5400 4150
Wire Wire Line
	5200 4150 5400 4150
Connection ~ 5400 4150
Wire Wire Line
	5400 4500 5400 4750
Connection ~ 5400 4750
Wire Wire Line
	5200 4500 5200 4950
Connection ~ 5200 4950
Wire Wire Line
	4300 2150 5950 2150
Wire Wire Line
	6200 4150 6500 4150
Wire Wire Line
	6500 4150 6700 4150
Wire Wire Line
	6500 3350 6700 3350
Wire Wire Line
	5600 4150 6200 4150
Wire Wire Line
	6100 3350 6500 3350
Wire Wire Line
	5400 4150 5600 4150
Wire Wire Line
	5400 4750 5700 4750
Wire Wire Line
	5200 4950 5700 4950
Wire Wire Line
	4300 4650 5700 4650
Wire Wire Line
	4300 4850 5700 4850
$Comp
L Device:R R?
U 1 1 5CA52D89
P 6850 4150
F 0 "R?" V 6930 4150 50  0000 C CNN
F 1 "200k" V 6850 4150 50  0000 C CNN
F 2 "digikey-footprints:0603" V 6780 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 4150 7300 4150
$EndSCHEMATC
