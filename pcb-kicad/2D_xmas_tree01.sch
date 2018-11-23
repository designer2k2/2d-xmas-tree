EESchema Schematic File Version 4
LIBS:2D_xmas_tree01-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "20 LED charlieplexing with ATtiny25"
Date "2018-10-13"
Rev ""
Comp "http://www.designer2k2.at"
Comment1 "Stephan Martin"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L atmel:ATTINY25-20SU U1
U 1 1 5BC0B603
P 4400 2300
F 0 "U1" H 3250 2700 50  0000 C CNN
F 1 "ATTINY25-20SU" H 5400 1900 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:SOIC-8_Inside" H 5350 2300 50  0001 C CIN
F 3 "" H 4400 2300 50  0001 C CNN
	1    4400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5BC23588
P 7300 2250
F 0 "BT1" H 7400 2350 50  0000 L CNN
F 1 "Battery_Cell" H 7400 2250 50  0000 L CNN
F 2 "Castellation_Stuff_designer2k2:Keystone_1058_1x2032-CoinCell_Inside" V 7300 2310 50  0001 C CNN
F 3 "" V 7300 2310 50  0001 C CNN
	1    7300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BC23856
P 3800 4100
F 0 "D1" H 3800 4200 50  0000 C CNN
F 1 "LED" H 3800 4000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 3800 4100 50  0001 C CNN
F 3 "" H 3800 4100 50  0001 C CNN
	1    3800 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5BC2396E
P 4250 4100
F 0 "D2" H 4250 4200 50  0000 C CNN
F 1 "LED" H 4250 4000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 4250 4100 50  0001 C CNN
F 3 "" H 4250 4100 50  0001 C CNN
	1    4250 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BC239A1
P 3150 3850
F 0 "R1" V 3230 3850 50  0000 C CNN
F 1 "75" V 3150 3850 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" V 3080 3850 50  0001 C CNN
F 3 "" H 3150 3850 50  0001 C CNN
	1    3150 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BC23A2A
P 3150 4350
F 0 "R2" V 3230 4350 50  0000 C CNN
F 1 "75" V 3150 4350 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" V 3080 4350 50  0001 C CNN
F 3 "" H 3150 4350 50  0001 C CNN
	1    3150 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4350 3800 4250
Wire Wire Line
	4250 4350 4250 4250
Connection ~ 3800 4350
Wire Wire Line
	3300 3850 3800 3850
Wire Wire Line
	3800 3850 3800 3950
Wire Wire Line
	4250 3850 4250 3950
Connection ~ 3800 3850
$Comp
L Device:LED D3
U 1 1 5BC23AD1
P 4650 4600
F 0 "D3" H 4650 4700 50  0000 C CNN
F 1 "LED" H 4650 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 4650 4600 50  0001 C CNN
F 3 "" H 4650 4600 50  0001 C CNN
	1    4650 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5BC23B1C
P 5150 4600
F 0 "D4" H 5150 4700 50  0000 C CNN
F 1 "LED" H 5150 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 5150 4600 50  0001 C CNN
F 3 "" H 5150 4600 50  0001 C CNN
	1    5150 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 4350 4650 4450
Connection ~ 4250 4350
Wire Wire Line
	5150 4350 5150 4450
Connection ~ 4650 4350
$Comp
L Device:R R3
U 1 1 5BC23B90
P 3150 4850
F 0 "R3" V 3230 4850 50  0000 C CNN
F 1 "75" V 3150 4850 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" V 3080 4850 50  0001 C CNN
F 3 "" H 3150 4850 50  0001 C CNN
	1    3150 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 4850 4650 4850
Wire Wire Line
	4650 4850 4650 4750
Wire Wire Line
	5150 4850 5150 4750
Connection ~ 4650 4850
$Comp
L Device:LED D5
U 1 1 5BC23C52
P 5450 5100
F 0 "D5" H 5450 5200 50  0000 C CNN
F 1 "LED" H 5450 5000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 5450 5100 50  0001 C CNN
F 3 "" H 5450 5100 50  0001 C CNN
	1    5450 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5BC23C97
P 5850 5100
F 0 "D6" H 5850 5200 50  0000 C CNN
F 1 "LED" H 5850 5000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 5850 5100 50  0001 C CNN
F 3 "" H 5850 5100 50  0001 C CNN
	1    5850 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 4850 5450 4950
Connection ~ 5150 4850
Wire Wire Line
	5850 4850 5850 4950
Connection ~ 5450 4850
$Comp
L Device:R R4
U 1 1 5BC23D38
P 3150 5350
F 0 "R4" V 3230 5350 50  0000 C CNN
F 1 "75" V 3150 5350 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" V 3080 5350 50  0001 C CNN
F 3 "" H 3150 5350 50  0001 C CNN
	1    3150 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 5350 5450 5350
Wire Wire Line
	5450 5350 5450 5250
Wire Wire Line
	5850 5350 5850 5250
Connection ~ 5450 5350
$Comp
L Device:LED D7
U 1 1 5BC23DC4
P 6100 5600
F 0 "D7" H 6100 5700 50  0000 C CNN
F 1 "LED" H 6100 5500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 6100 5600 50  0001 C CNN
F 3 "" H 6100 5600 50  0001 C CNN
	1    6100 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5BC23E0D
P 6500 5600
F 0 "D8" H 6500 5700 50  0000 C CNN
F 1 "LED" H 6500 5500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 6500 5600 50  0001 C CNN
F 3 "" H 6500 5600 50  0001 C CNN
	1    6500 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 5350 6100 5450
Connection ~ 5850 5350
Wire Wire Line
	6500 5350 6500 5450
Connection ~ 6100 5350
$Comp
L Device:R R5
U 1 1 5BC23EA3
P 3150 5850
F 0 "R5" V 3230 5850 50  0000 C CNN
F 1 "75" V 3150 5850 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" V 3080 5850 50  0001 C CNN
F 3 "" H 3150 5850 50  0001 C CNN
	1    3150 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 5850 6100 5850
Wire Wire Line
	6100 5850 6100 5750
Wire Wire Line
	6500 5850 6500 5750
Connection ~ 6100 5850
Connection ~ 4250 3850
Connection ~ 5150 4350
Connection ~ 5850 4850
$Comp
L Device:LED D9
U 1 1 5BC24274
P 6800 4100
F 0 "D9" H 6800 4200 50  0000 C CNN
F 1 "LED" H 6800 4000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 6800 4100 50  0001 C CNN
F 3 "" H 6800 4100 50  0001 C CNN
	1    6800 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 5BC242D9
P 7150 4100
F 0 "D10" H 7150 4200 50  0000 C CNN
F 1 "LED" H 7150 4000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 7150 4100 50  0001 C CNN
F 3 "" H 7150 4100 50  0001 C CNN
	1    7150 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3950 6800 3850
Connection ~ 6800 3850
Wire Wire Line
	7150 3950 7150 3850
Connection ~ 7150 3850
Wire Wire Line
	6800 4250 6800 4850
Connection ~ 6800 4850
Wire Wire Line
	7150 4250 7150 4850
Connection ~ 7150 4850
Connection ~ 6500 5350
Connection ~ 6500 5850
$Comp
L Device:LED D11
U 1 1 5BC2463C
P 7450 4600
F 0 "D11" H 7450 4700 50  0000 C CNN
F 1 "LED" H 7450 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 7450 4600 50  0001 C CNN
F 3 "" H 7450 4600 50  0001 C CNN
	1    7450 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5BC24689
P 7800 4600
F 0 "D12" H 7800 4700 50  0000 C CNN
F 1 "LED" H 7800 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 7800 4600 50  0001 C CNN
F 3 "" H 7800 4600 50  0001 C CNN
	1    7800 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 4350 7450 4450
Connection ~ 7450 4350
Wire Wire Line
	7800 4350 7800 4450
Connection ~ 7800 4350
Wire Wire Line
	7450 4750 7450 5350
Connection ~ 7450 5350
Wire Wire Line
	7800 4750 7800 5350
Connection ~ 7800 5350
$Comp
L Device:LED D13
U 1 1 5BC247EE
P 8050 5100
F 0 "D13" H 8050 5200 50  0000 C CNN
F 1 "LED" H 8050 5000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 8050 5100 50  0001 C CNN
F 3 "" H 8050 5100 50  0001 C CNN
	1    8050 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5BC24837
P 8400 5100
F 0 "D14" H 8400 5200 50  0000 C CNN
F 1 "LED" H 8400 5000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 8400 5100 50  0001 C CNN
F 3 "" H 8400 5100 50  0001 C CNN
	1    8400 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 4950 8050 4850
Connection ~ 8050 4850
Wire Wire Line
	8050 5250 8050 5850
Connection ~ 8050 5850
Wire Wire Line
	8400 4850 8400 4950
Wire Wire Line
	8400 5250 8400 5850
Connection ~ 8400 5850
$Comp
L Device:LED D15
U 1 1 5BC25667
P 8750 4600
F 0 "D15" H 8750 4700 50  0000 C CNN
F 1 "LED" H 8750 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 8750 4600 50  0001 C CNN
F 3 "" H 8750 4600 50  0001 C CNN
	1    8750 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D16
U 1 1 5BC256C2
P 9100 4600
F 0 "D16" H 9100 4700 50  0000 C CNN
F 1 "LED" H 9100 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 9100 4600 50  0001 C CNN
F 3 "" H 9100 4600 50  0001 C CNN
	1    9100 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 4450 8750 3850
Connection ~ 8750 3850
Wire Wire Line
	9100 4450 9100 3850
Connection ~ 9100 3850
Wire Wire Line
	8750 4750 8750 5350
Connection ~ 8750 5350
Wire Wire Line
	9100 5350 9100 4750
$Comp
L Device:LED D17
U 1 1 5BC2587F
P 9450 5100
F 0 "D17" H 9450 5200 50  0000 C CNN
F 1 "LED" H 9450 5000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 9450 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0001 C CNN
	1    9450 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D18
U 1 1 5BC258D8
P 9800 5100
F 0 "D18" H 9800 5200 50  0000 C CNN
F 1 "LED" H 9800 5000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 9800 5100 50  0001 C CNN
F 3 "" H 9800 5100 50  0001 C CNN
	1    9800 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 4350 9450 4950
Connection ~ 9450 4350
Wire Wire Line
	9800 4350 9800 4950
Wire Wire Line
	9450 5250 9450 5850
Connection ~ 9450 5850
Wire Wire Line
	9800 5250 9800 5850
Connection ~ 9800 5850
$Comp
L Device:LED D19
U 1 1 5BC25EDD
P 10050 4600
F 0 "D19" H 10050 4700 50  0000 C CNN
F 1 "LED" H 10050 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 10050 4600 50  0001 C CNN
F 3 "" H 10050 4600 50  0001 C CNN
	1    10050 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D20
U 1 1 5BC25F32
P 10350 4600
F 0 "D20" H 10350 4700 50  0000 C CNN
F 1 "LED" H 10350 4500 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 10350 4600 50  0001 C CNN
F 3 "" H 10350 4600 50  0001 C CNN
	1    10350 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 4450 10050 3850
Connection ~ 10050 3850
Wire Wire Line
	10350 3850 10350 4450
Wire Wire Line
	3300 4350 3800 4350
Wire Wire Line
	10050 4750 10050 5850
Connection ~ 10050 5850
Wire Wire Line
	10350 5850 10350 4750
Wire Wire Line
	3050 2050 2800 2050
Wire Wire Line
	2800 2050 2800 3850
Wire Wire Line
	2800 3850 3000 3850
Wire Wire Line
	3050 2150 2650 2150
Wire Wire Line
	2650 2150 2650 4350
Wire Wire Line
	2650 4350 3000 4350
Wire Wire Line
	3050 2250 2500 2250
Wire Wire Line
	2500 2250 2500 4850
Wire Wire Line
	2500 4850 3000 4850
Wire Wire Line
	3050 2350 2350 2350
Wire Wire Line
	2350 2350 2350 5350
Wire Wire Line
	2350 5350 3000 5350
Wire Wire Line
	3050 2450 2200 2450
Wire Wire Line
	2200 2450 2200 5850
Wire Wire Line
	2200 5850 3000 5850
$Comp
L switches:SW_SPDT SW1
U 1 1 5BC2A728
P 6500 2050
F 0 "SW1" H 6500 2220 50  0000 C CNN
F 1 "SW_SPDT" H 6500 1850 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:PCM12SMTR_inside" H 6500 2050 50  0001 C CNN
F 3 "" H 6500 2050 50  0001 C CNN
	1    6500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2050 6100 2050
Wire Wire Line
	5750 2550 6100 2550
Wire Wire Line
	7300 2550 7300 2350
Wire Wire Line
	6700 1950 7300 1950
Wire Wire Line
	7300 1950 7300 2050
$Comp
L Device:Battery_Cell BT2
U 1 1 5BC2B4EC
P 8000 2250
F 0 "BT2" H 8100 2350 50  0000 L CNN
F 1 "Battery_Cell" H 8100 2250 50  0000 L CNN
F 2 "Castellation_Stuff_designer2k2:Keystone_1058_1x2032-CoinCell_Inside" V 8000 2310 50  0001 C CNN
F 3 "" V 8000 2310 50  0001 C CNN
	1    8000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2550 8000 2350
Connection ~ 7300 2550
Wire Wire Line
	8000 1950 8000 2050
Connection ~ 7300 1950
Wire Wire Line
	3800 4350 4250 4350
Wire Wire Line
	3800 3850 4250 3850
Wire Wire Line
	4250 4350 4650 4350
Wire Wire Line
	4650 4350 5150 4350
Wire Wire Line
	4650 4850 5150 4850
Wire Wire Line
	5150 4850 5450 4850
Wire Wire Line
	5450 4850 5850 4850
Wire Wire Line
	5450 5350 5850 5350
Wire Wire Line
	5850 5350 6100 5350
Wire Wire Line
	6100 5350 6500 5350
Wire Wire Line
	6100 5850 6500 5850
Wire Wire Line
	4250 3850 6800 3850
Wire Wire Line
	5150 4350 7450 4350
Wire Wire Line
	5850 4850 6800 4850
Wire Wire Line
	6800 3850 7150 3850
Wire Wire Line
	7150 3850 8750 3850
Wire Wire Line
	6800 4850 7150 4850
Wire Wire Line
	7150 4850 8050 4850
Wire Wire Line
	6500 5350 7450 5350
Wire Wire Line
	6500 5850 8050 5850
Wire Wire Line
	7450 4350 7800 4350
Wire Wire Line
	7800 4350 9450 4350
Wire Wire Line
	7450 5350 7800 5350
Wire Wire Line
	7800 5350 8750 5350
Wire Wire Line
	8050 4850 8400 4850
Wire Wire Line
	8050 5850 8400 5850
Wire Wire Line
	8400 5850 9450 5850
Wire Wire Line
	8750 3850 9100 3850
Wire Wire Line
	9100 3850 10050 3850
Wire Wire Line
	8750 5350 9100 5350
Wire Wire Line
	9450 4350 9800 4350
Wire Wire Line
	9450 5850 9800 5850
Wire Wire Line
	9800 5850 10050 5850
Wire Wire Line
	10050 3850 10350 3850
Wire Wire Line
	10050 5850 10350 5850
Wire Wire Line
	7300 2550 8000 2550
Wire Wire Line
	7300 1950 8000 1950
Text Notes 2300 6100 0    50   ~ 0
R =  Led R / 2   (current flows always through 2)
Text Notes 6050 3500 0    50   ~ 0
20 LED Charlieplexing
$Comp
L conn:Conn_02x03_Odd_Even J1
U 1 1 5BD4562B
P 2350 1600
F 0 "J1" H 2400 1917 50  0000 C CNN
F 1 "ISP" H 2400 1826 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x03_Pitch2.54mm" H 2350 1600 50  0001 C CNN
F 3 "~" H 2350 1600 50  0001 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BD47163
P 4200 3000
F 0 "R6" V 4280 3000 50  0000 C CNN
F 1 "10k" V 4200 3000 50  0000 C CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" V 4130 3000 50  0001 C CNN
F 3 "" H 4200 3000 50  0001 C CNN
	1    4200 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2550 2950 2550
Wire Wire Line
	2950 2550 2950 3000
Wire Wire Line
	2950 3000 4050 3000
Wire Wire Line
	4350 3000 6000 3000
Wire Wire Line
	6000 3000 6000 2050
Connection ~ 6000 2050
Wire Wire Line
	6000 2050 5750 2050
Text Label 3300 3000 0    50   ~ 0
RESET
Text Label 5800 2050 0    50   ~ 0
VCC
Text Label 5800 2550 0    50   ~ 0
GND
Text Label 2850 2050 0    50   ~ 0
MOSI
Text Label 2850 2150 0    50   ~ 0
MISO
Text Label 2850 2250 0    50   ~ 0
SCK
Wire Wire Line
	2650 1500 2950 1500
Wire Wire Line
	2650 1600 2950 1600
Wire Wire Line
	2650 1700 2950 1700
Text Label 2800 1500 0    50   ~ 0
VCC
Text Label 2800 1600 0    50   ~ 0
MOSI
Text Label 2800 1700 0    50   ~ 0
GND
Wire Wire Line
	1850 1500 2150 1500
Wire Wire Line
	2150 1600 1850 1600
Wire Wire Line
	2150 1700 1850 1700
Text Label 1900 1500 0    50   ~ 0
MISO
Text Label 1900 1600 0    50   ~ 0
SCK
Text Label 1900 1700 0    50   ~ 0
RESET
$Comp
L power:GND #PWR0101
U 1 1 5BD61055
P 6650 2850
F 0 "#PWR0101" H 6650 2600 50  0001 C CNN
F 1 "GND" H 6655 2677 50  0000 C CNN
F 2 "" H 6650 2850 50  0001 C CNN
F 3 "" H 6650 2850 50  0001 C CNN
	1    6650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2850 6650 2550
Connection ~ 6650 2550
Wire Wire Line
	6650 2550 7300 2550
$Comp
L Device:C C1
U 1 1 5BD5295D
P 6100 2300
F 0 "C1" H 6215 2346 50  0000 L CNN
F 1 "C" H 6215 2255 50  0000 L CNN
F 2 "Castellation_Stuff_designer2k2:0805_Internal_Castellation" H 6138 2150 50  0001 C CNN
F 3 "~" H 6100 2300 50  0001 C CNN
	1    6100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2150 6100 2050
Connection ~ 6100 2050
Wire Wire Line
	6100 2050 6000 2050
Wire Wire Line
	6100 2450 6100 2550
Connection ~ 6100 2550
Wire Wire Line
	6100 2550 6650 2550
$EndSCHEMATC
