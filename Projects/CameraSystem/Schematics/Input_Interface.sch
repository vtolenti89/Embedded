EESchema Schematic File Version 4
LIBS:CameraSystem-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L CameraSystem-rescue:10118192-0001LF J1
U 1 1 5BB4C296
P 1250 2150
AR Path="/5BB4C296" Ref="J1"  Part="1" 
AR Path="/5BB4C1AE/5BB4C296" Ref="J1"  Part="1" 
F 0 "J1" H 1102 2748 60  0000 C CNN
F 1 "10118192-0001LF" V 1002 1898 60  0000 C CNN
F 2 "digikey-footprints:USB_Micro_B_Female_10118192" H 1450 2350 60  0001 L CNN
F 3 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10118192.pdf" H 1450 2450 60  0001 L CNN
F 4 "609-4613-1-ND" H 1450 2550 60  0001 L CNN "Digi-Key_PN"
F 5 "10118192-0001LF" H 1450 2650 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1450 2750 60  0001 L CNN "Category"
F 7 "USB, DVI, HDMI Connectors" H 1450 2850 60  0001 L CNN "Family"
F 8 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10118192.pdf" H 1450 2950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/amphenol-fci/10118192-0001LF/609-4613-1-ND/2785378" H 1450 3050 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN USB MICRO B RECPT SMT R/A" H 1450 3150 60  0001 L CNN "Description"
F 11 "Amphenol FCI" H 1450 3250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1450 3350 60  0001 L CNN "Status"
	1    1250 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BB4C3EB
P 2050 2900
F 0 "#PWR01" H 2050 2650 50  0001 C CNN
F 1 "GND" H 2050 2750 50  0000 C CNN
F 2 "" H 2050 2900 50  0001 C CNN
F 3 "" H 2050 2900 50  0001 C CNN
	1    2050 2900
	1    0    0    -1  
$EndComp
NoConn ~ 2050 2250
$Comp
L power:GND #PWR02
U 1 1 5BB4C4E7
P 1150 2900
F 0 "#PWR02" H 1150 2650 50  0001 C CNN
F 1 "GND" H 1150 2750 50  0000 C CNN
F 2 "" H 1150 2900 50  0001 C CNN
F 3 "" H 1150 2900 50  0001 C CNN
	1    1150 2900
	1    0    0    -1  
$EndComp
Text HLabel 4750 1600 2    60   Output ~ 0
VDD_5V0
$Comp
L cl-integrated_circuits:CH340 U1
U 1 1 5BB4DB29
P 3600 5650
F 0 "U1" H 3600 6150 50  0000 L BNN
F 1 "CH340" H 3500 5050 50  0000 L BNN
F 2 "custom-footprints:SO16" H 3500 5300 50  0001 L BNN
F 3 "Fram" H 3550 5550 50  0001 L BNN
	1    3600 5650
	1    0    0    -1  
$EndComp
Text Label 6400 1900 2    60   ~ 0
VDD_5V0
$Comp
L power:GND #PWR03
U 1 1 5BB4DDE6
P 7800 2650
F 0 "#PWR03" H 7800 2400 50  0001 C CNN
F 1 "GND" H 7800 2500 50  0000 C CNN
F 2 "" H 7800 2650 50  0001 C CNN
F 3 "" H 7800 2650 50  0001 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
Text HLabel 10300 1900 2    60   Output ~ 0
VDD_3V3
$Comp
L Device:C C1
U 1 1 5BB4E02C
P 7050 2200
F 0 "C1" H 7075 2300 50  0000 L CNN
F 1 "1u" H 7075 2100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7088 2050 50  0001 C CNN
F 3 "" H 7050 2200 50  0001 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BB4E099
P 8650 2200
F 0 "C2" H 8675 2300 50  0000 L CNN
F 1 "1u" H 8675 2100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8688 2050 50  0001 C CNN
F 3 "" H 8650 2200 50  0001 C CNN
	1    8650 2200
	1    0    0    -1  
$EndComp
Text Notes 9050 1800 2    60   ~ 0
ESR < 20Ohm
$Comp
L power:GND #PWR0101
U 1 1 5BB50299
P 2750 5200
F 0 "#PWR0101" H 2750 4950 50  0001 C CNN
F 1 "GND" H 2750 5050 50  0000 C CNN
F 2 "" H 2750 5200 50  0001 C CNN
F 3 "" H 2750 5200 50  0001 C CNN
	1    2750 5200
	1    0    0    -1  
$EndComp
Text Label 2100 5650 0    60   ~ 0
VDD_3V3
Text Label 1750 2150 0    60   ~ 0
USB_DP
Text Label 1750 2050 0    60   ~ 0
USB_DN
Text Label 2100 5750 0    60   ~ 0
USB_DP
Text Label 2100 5850 0    60   ~ 0
USB_DN
Text Label 5600 5350 0    60   ~ 0
VDD_3V3
$Comp
L Device:Crystal Y1
U 1 1 5BB50C6F
P 2550 6350
F 0 "Y1" H 2550 6500 50  0000 C CNN
F 1 "12MHz" H 2550 6200 50  0000 C CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "" H 2550 6350 50  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BB50E1C
P 2150 6700
F 0 "C3" H 2175 6800 50  0000 L CNN
F 1 "22p" H 2175 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2188 6550 50  0001 C CNN
F 3 "" H 2150 6700 50  0001 C CNN
	1    2150 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5BB51053
P 2900 6700
F 0 "C4" H 2925 6800 50  0000 L CNN
F 1 "22p" H 2925 6600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2938 6550 50  0001 C CNN
F 3 "" H 2900 6700 50  0001 C CNN
	1    2900 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BB510C9
P 2150 6950
F 0 "#PWR0102" H 2150 6700 50  0001 C CNN
F 1 "GND" H 2150 6800 50  0000 C CNN
F 2 "" H 2150 6950 50  0001 C CNN
F 3 "" H 2150 6950 50  0001 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BB510EC
P 2900 6950
F 0 "#PWR0103" H 2900 6700 50  0001 C CNN
F 1 "GND" H 2900 6800 50  0000 C CNN
F 2 "" H 2900 6950 50  0001 C CNN
F 3 "" H 2900 6950 50  0001 C CNN
	1    2900 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BB51E96
P 4550 5650
F 0 "C6" H 4575 5750 50  0000 L CNN
F 1 "100n" H 4575 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4588 5500 50  0001 C CNN
F 3 "" H 4550 5650 50  0001 C CNN
	1    4550 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 5BB520D4
P 5450 5600
F 0 "C7" H 5475 5700 50  0000 L CNN
F 1 "100n" H 5475 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5488 5450 50  0001 C CNN
F 3 "" H 5450 5600 50  0001 C CNN
	1    5450 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BB52260
P 5450 5850
F 0 "#PWR0104" H 5450 5600 50  0001 C CNN
F 1 "GND" H 5450 5700 50  0000 C CNN
F 2 "" H 5450 5850 50  0001 C CNN
F 3 "" H 5450 5850 50  0001 C CNN
	1    5450 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5BB52A9F
P 3800 1600
F 0 "F1" V 3880 1600 50  0000 C CNN
F 1 "MF-MSMF075/24" V 3725 1600 50  0000 C CNN
F 2 "" V 3730 1600 50  0001 C CNN
F 3 "" H 3800 1600 50  0001 C CNN
	1    3800 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5BB531A1
P 3100 2900
F 0 "#PWR0105" H 3100 2650 50  0001 C CNN
F 1 "GND" H 3100 2750 50  0000 C CNN
F 2 "" H 3100 2900 50  0001 C CNN
F 3 "" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L CameraSystem-rescue:TPD2E001DRLR D?
U 1 1 5BB52C47
P 2900 2150
AR Path="/5BB52C47" Ref="D?"  Part="1" 
AR Path="/5BB4C1AE/5BB52C47" Ref="D1"  Part="1" 
F 0 "D1" H 2590 2465 60  0000 L CNN
F 1 "TPD2E001DRLR" H 3030 1700 60  0000 R CNN
F 2 "digikey-footprints:SOT-553" H 3100 2350 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2e001.pdf" H 3100 2450 60  0001 L CNN
F 4 "296-21883-1-ND" H 3100 2550 60  0001 L CNN "Digi-Key_PN"
F 5 "TPD2E001DRLR" H 3100 2650 60  0001 L CNN "MPN"
F 6 "Circuit Protection" H 3100 2750 60  0001 L CNN "Category"
F 7 "TVS - Diodes" H 3100 2850 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/tpd2e001.pdf" H 3100 2950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/TPD2E001DRLR/296-21883-1-ND/1629242" H 3100 3050 60  0001 L CNN "DK_Detail_Page"
F 10 "TVS DIODE 5.5V SOT5" H 3100 3150 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3100 3250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3100 3350 60  0001 L CNN "Status"
	1    2900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5BB53BD8
P 3450 2000
F 0 "C5" H 3475 2100 50  0000 L CNN
F 1 "100n" H 3475 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 1850 50  0001 C CNN
F 3 "" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BB53EF2
P 3450 2900
F 0 "#PWR0106" H 3450 2650 50  0001 C CNN
F 1 "GND" H 3450 2750 50  0000 C CNN
F 2 "" H 3450 2900 50  0001 C CNN
F 3 "" H 3450 2900 50  0001 C CNN
	1    3450 2900
	1    0    0    -1  
$EndComp
Text Notes 1200 1350 0    197  ~ 39
MAIN CONNECTOR
Text Notes 7650 1350 0    197  ~ 39
PMIC
Text Notes 1550 4250 0    197  ~ 39
USB TO UART
Text HLabel 4850 5650 2    60   Output ~ 0
SPI_RST
Text HLabel 1350 5450 0    60   Output ~ 0
SPI_TX
Text HLabel 1350 5550 0    60   Input ~ 0
SPI_RX
Wire Wire Line
	1550 2350 2050 2350
Wire Wire Line
	2050 2350 2050 2900
Wire Wire Line
	1550 2050 2500 2050
Wire Wire Line
	1550 2150 2400 2150
Wire Wire Line
	1550 2250 2050 2250
Wire Wire Line
	1150 2750 1150 2900
Wire Wire Line
	6400 1900 6700 1900
Wire Wire Line
	7800 2300 7800 2500
Wire Wire Line
	7050 2050 7050 1900
Connection ~ 7050 1900
Wire Wire Line
	7050 2350 7050 2500
Wire Wire Line
	6700 2500 7050 2500
Connection ~ 7800 2500
Wire Wire Line
	8650 2500 8650 2350
Wire Wire Line
	8650 2050 8650 1900
Connection ~ 8650 1900
Wire Wire Line
	2100 5650 3000 5650
Wire Wire Line
	3000 5750 2100 5750
Wire Wire Line
	3000 5850 2100 5850
Wire Wire Line
	4200 5350 5450 5350
Wire Wire Line
	2150 6950 2150 6850
Wire Wire Line
	2900 6950 2900 6850
Wire Wire Line
	2150 5950 2150 6350
Wire Wire Line
	2150 5950 3000 5950
Wire Wire Line
	2900 6050 2900 6350
Wire Wire Line
	2900 6050 3000 6050
Wire Wire Line
	2700 6350 2900 6350
Connection ~ 2900 6350
Wire Wire Line
	2400 6350 2150 6350
Connection ~ 2150 6350
Wire Wire Line
	5450 5350 5450 5450
Wire Wire Line
	5450 5750 5450 5850
Wire Wire Line
	4400 5650 4200 5650
Wire Wire Line
	3950 1600 4250 1600
Wire Wire Line
	2400 2150 2400 2350
Wire Wire Line
	2400 2350 2500 2350
Wire Wire Line
	3100 2650 3100 2900
Wire Wire Line
	1550 1950 2400 1950
Wire Wire Line
	2400 1950 2400 1600
Wire Wire Line
	2400 1600 3100 1600
Wire Wire Line
	3100 1750 3100 1600
Connection ~ 3100 1600
Wire Wire Line
	3450 1850 3450 1600
Connection ~ 3450 1600
Wire Wire Line
	3450 2150 3450 2900
Wire Wire Line
	4700 5650 4850 5650
$Comp
L Device:R R5
U 1 1 5BB7F411
P 9700 2150
F 0 "R5" V 9780 2150 50  0000 C CNN
F 1 "560" V 9700 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9630 2150 50  0001 C CNN
F 3 "" H 9700 2150 50  0001 C CNN
	1    9700 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5BB7F63E
P 9700 2600
F 0 "D4" H 9700 2700 50  0000 C CNN
F 1 "APG1608SURKC/T" H 9700 2450 50  0000 C CNN
F 2 "" H 9700 2600 50  0001 C CNN
F 3 "" H 9700 2600 50  0001 C CNN
	1    9700 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5BB7F6C9
P 9700 2850
F 0 "#PWR0107" H 9700 2600 50  0001 C CNN
F 1 "GND" H 9700 2700 50  0000 C CNN
F 2 "" H 9700 2850 50  0001 C CNN
F 3 "" H 9700 2850 50  0001 C CNN
	1    9700 2850
	1    0    0    -1  
$EndComp
Connection ~ 9700 1900
Wire Wire Line
	9700 2450 9700 2300
Wire Wire Line
	9700 2000 9700 1900
Wire Wire Line
	9700 2750 9700 2850
Wire Wire Line
	2750 5200 2750 5150
Wire Wire Line
	2750 5150 3000 5150
Wire Wire Line
	3000 5150 3000 5350
$Comp
L Device:R R1
U 1 1 5BB818F5
P 1650 5550
F 0 "R1" V 1730 5550 50  0000 C CNN
F 1 "1k" V 1650 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1580 5550 50  0001 C CNN
F 3 "" H 1650 5550 50  0001 C CNN
	1    1650 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BB81F71
P 1950 5450
F 0 "R2" V 2030 5450 50  0000 C CNN
F 1 "1k" V 1950 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 5450 50  0001 C CNN
F 3 "" H 1950 5450 50  0001 C CNN
	1    1950 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 5450 3000 5450
Wire Wire Line
	3000 5550 1800 5550
Wire Wire Line
	1800 5450 1350 5450
Wire Wire Line
	1350 5550 1500 5550
$Comp
L Device:R R3
U 1 1 5BB82C09
P 8250 4600
F 0 "R3" V 8330 4600 50  0000 C CNN
F 1 "560" V 8250 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 4600 50  0001 C CNN
F 3 "" H 8250 4600 50  0001 C CNN
	1    8250 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5BB82C0F
P 8250 5050
F 0 "D2" H 8250 5150 50  0000 C CNN
F 1 "APG1608CGKC/T" H 8250 4900 50  0000 C CNN
F 2 "" H 8250 5050 50  0001 C CNN
F 3 "" H 8250 5050 50  0001 C CNN
	1    8250 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 4900 8250 4750
Wire Wire Line
	8250 4450 8250 4350
Wire Wire Line
	8250 5200 8250 5600
$Comp
L Device:R R4
U 1 1 5BB82CC2
P 8900 4600
F 0 "R4" V 8980 4600 50  0000 C CNN
F 1 "560" V 8900 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8830 4600 50  0001 C CNN
F 3 "" H 8900 4600 50  0001 C CNN
	1    8900 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5BB82CC8
P 8900 5050
F 0 "D3" H 8900 5150 50  0000 C CNN
F 1 "APG1608SYKC/T" H 8900 4900 50  0000 C CNN
F 2 "" H 8900 5050 50  0001 C CNN
F 3 "" H 8900 5050 50  0001 C CNN
	1    8900 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 4900 8900 4750
Wire Wire Line
	8900 4350 8900 4450
Wire Wire Line
	8900 5200 8900 5600
Wire Wire Line
	8250 4350 8550 4350
Wire Wire Line
	8550 4350 8550 4200
Connection ~ 8550 4350
Text Label 8650 4200 0    60   ~ 0
VDD_3V3
Wire Wire Line
	8250 5600 8350 5600
Text Label 8350 5600 0    60   ~ 0
SPI_TX
Wire Wire Line
	8900 5600 9000 5600
Text Label 9000 5600 0    60   ~ 0
SPI_RX
Wire Wire Line
	8550 4200 8650 4200
Connection ~ 5450 5350
$Comp
L Device:CP C9
U 1 1 5BB91E38
P 9000 2200
F 0 "C9" H 9025 2300 50  0000 L CNN
F 1 "47u" H 9025 2100 50  0000 L CNN
F 2 "" H 9038 2050 50  0001 C CNN
F 3 "" H 9000 2200 50  0001 C CNN
	1    9000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1900 9000 2050
Connection ~ 9000 1900
Wire Wire Line
	9000 2500 9000 2350
Connection ~ 8650 2500
$Comp
L Device:CP C8
U 1 1 5BB9202A
P 6700 2200
F 0 "C8" H 6725 2300 50  0000 L CNN
F 1 "47u" H 6725 2100 50  0000 L CNN
F 2 "" H 6738 2050 50  0001 C CNN
F 3 "" H 6700 2200 50  0001 C CNN
	1    6700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1900 6700 2050
Connection ~ 6700 1900
Wire Wire Line
	6700 2350 6700 2500
Connection ~ 7050 2500
Wire Wire Line
	7800 2500 7800 2650
Wire Wire Line
	7800 2500 8650 2500
Wire Wire Line
	8650 1900 9000 1900
Wire Wire Line
	2900 6350 2900 6550
Wire Wire Line
	2150 6350 2150 6550
Wire Wire Line
	3100 1600 3450 1600
Wire Wire Line
	3450 1600 3650 1600
Wire Wire Line
	9700 1900 10150 1900
Wire Wire Line
	8550 4350 8900 4350
Wire Wire Line
	5450 5350 5600 5350
Wire Wire Line
	9000 1900 9700 1900
Wire Wire Line
	8650 2500 9000 2500
Wire Wire Line
	6700 1900 7050 1900
Wire Wire Line
	7050 2500 7800 2500
Text Notes 9250 1700 0    50   ~ 0
Iout 450mA / 1A\nPout 1.483W / 3.3W
Text Notes 4100 1100 0    50   ~ 0
-PLC designed to support 450mA + 2mA (LCD) + 4x2.5mA (LEDs) = 462mA (max)
Text Notes 3550 1800 0    50   ~ 0
Imax=750mA
$Comp
L cl-integrated_circuits:AZ1117CD-3.3TRG1DICT-ND U2
U 1 1 5BBEC1C5
P 7800 1900
F 0 "U2" H 7825 2215 50  0000 C CNN
F 1 "AZ1117CD-3.3TRG1DICT-ND" H 7825 2124 50  0000 C CNN
F 2 "" H 7800 1900 50  0001 C CNN
F 3 "" H 7800 1900 50  0001 C CNN
	1    7800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1900 7350 1900
Text Notes 7400 3250 0    50   ~ 0
Max Dis. Power = (150 - 23)°C / 70°C/W = 1.81W (worst case)\nMax Dis. Power = (125 - 23)°C / 70°C/W = 1.45W (recommended)\n
Wire Wire Line
	8300 1900 8650 1900
$Comp
L Connector:TestPoint TP1
U 1 1 5BC699B6
P 4250 1600
F 0 "TP1" H 4308 1720 50  0000 L CNN
F 1 "TestPoint" H 4308 1629 50  0000 L CNN
F 2 "" H 4450 1600 50  0001 C CNN
F 3 "~" H 4450 1600 50  0001 C CNN
	1    4250 1600
	1    0    0    -1  
$EndComp
Connection ~ 4250 1600
Wire Wire Line
	4250 1600 4750 1600
$Comp
L Connector:TestPoint TP2
U 1 1 5BC6E770
P 10150 1750
F 0 "TP2" H 10208 1870 50  0000 L CNN
F 1 "TestPoint" H 10208 1779 50  0000 L CNN
F 2 "" H 10350 1750 50  0001 C CNN
F 3 "~" H 10350 1750 50  0001 C CNN
	1    10150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1750 10150 1900
Connection ~ 10150 1900
Wire Wire Line
	10150 1900 10300 1900
NoConn ~ 4200 5450
NoConn ~ 4200 5550
NoConn ~ 4200 5750
NoConn ~ 4200 5850
NoConn ~ 4200 5950
NoConn ~ 4200 6050
NoConn ~ 2800 2550
$EndSCHEMATC
