.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global reset__8AyuStackFi
reset__8AyuStackFi:
/* 800246E4 00021644  7C 08 02 A6 */	mflr r0
/* 800246E8 00021648  90 01 00 04 */	stw r0, 4(r1)
/* 800246EC 0002164C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 800246F0 00021650  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800246F4 00021654  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800246F8 00021658  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800246FC 0002165C  3B C4 00 00 */	addi r30, r4, 0
/* 80024700 00021660  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80024704 00021664  3B A3 00 00 */	addi r29, r3, 0
/* 80024708 00021668  41 82 00 3C */	beq .L_80024744
/* 8002470C 0002166C  83 FD 00 00 */	lwz r31, 0(r29)
/* 80024710 00021670  93 DD 00 00 */	stw r30, 0(r29)
/* 80024714 00021674  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 80024718 00021678  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8002471C 0002167C  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 80024720 00021680  48 01 B0 91 */	bl invalidateObjs__9StdSystemFUlUl
/* 80024724 00021684  48 00 00 0C */	b .L_80024730
.L_80024728:
/* 80024728 00021688  7F A3 EB 78 */	mr r3, r29
/* 8002472C 0002168C  48 00 01 89 */	bl pop__8AyuStackFv
.L_80024730:
/* 80024730 00021690  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80024734 00021694  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80024738 00021698  7C 03 00 40 */	cmplw r3, r0
/* 8002473C 0002169C  40 82 FF EC */	bne .L_80024728
/* 80024740 000216A0  93 FD 00 00 */	stw r31, 0(r29)
.L_80024744:
/* 80024744 000216A4  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 80024748 000216A8  41 82 00 3C */	beq .L_80024784
/* 8002474C 000216AC  83 FD 00 00 */	lwz r31, 0(r29)
/* 80024750 000216B0  93 DD 00 00 */	stw r30, 0(r29)
/* 80024754 000216B4  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 80024758 000216B8  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 8002475C 000216BC  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 80024760 000216C0  48 01 B0 51 */	bl invalidateObjs__9StdSystemFUlUl
/* 80024764 000216C4  48 00 00 0C */	b .L_80024770
.L_80024768:
/* 80024768 000216C8  7F A3 EB 78 */	mr r3, r29
/* 8002476C 000216CC  48 00 01 49 */	bl pop__8AyuStackFv
.L_80024770:
/* 80024770 000216D0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80024774 000216D4  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80024778 000216D8  7C 03 00 40 */	cmplw r3, r0
/* 8002477C 000216DC  40 82 FF EC */	bne .L_80024768
/* 80024780 000216E0  93 FD 00 00 */	stw r31, 0(r29)
.L_80024784:
/* 80024784 000216E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80024788 000216E8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8002478C 000216EC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80024790 000216F0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80024794 000216F4  38 21 00 40 */	addi r1, r1, 0x40
/* 80024798 000216F8  7C 08 03 A6 */	mtlr r0
/* 8002479C 000216FC  4E 80 00 20 */	blr 

.global push__8AyuStackFi
push__8AyuStackFi:
/* 800247A0 00021700  2C 04 00 00 */	cmpwi r4, 0
/* 800247A4 00021704  40 82 00 08 */	bne .L_800247AC
/* 800247A8 00021708  38 80 00 01 */	li r4, 1
.L_800247AC:
/* 800247AC 0002170C  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 800247B0 00021710  41 82 00 0C */	beq .L_800247BC
/* 800247B4 00021714  38 04 00 07 */	addi r0, r4, 7
/* 800247B8 00021718  54 04 00 38 */	rlwinm r4, r0, 0, 0, 0x1c
.L_800247BC:
/* 800247BC 0002171C  80 03 00 00 */	lwz r0, 0(r3)
/* 800247C0 00021720  2C 00 00 02 */	cmpwi r0, 2
/* 800247C4 00021724  40 82 00 A0 */	bne .L_80024864
/* 800247C8 00021728  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 800247CC 0002172C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800247D0 00021730  7C A4 32 14 */	add r5, r4, r6
/* 800247D4 00021734  38 A5 00 08 */	addi r5, r5, 8
/* 800247D8 00021738  7C 05 00 40 */	cmplw r5, r0
/* 800247DC 0002173C  40 81 00 0C */	ble .L_800247E8
/* 800247E0 00021740  38 60 00 00 */	li r3, 0
/* 800247E4 00021744  4E 80 00 20 */	blr 
.L_800247E8:
/* 800247E8 00021748  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800247EC 0002174C  7C 06 00 40 */	cmplw r6, r0
/* 800247F0 00021750  41 82 00 14 */	beq .L_80024804
/* 800247F4 00021754  38 A6 FF F8 */	addi r5, r6, -8
/* 800247F8 00021758  80 06 FF F8 */	lwz r0, -8(r6)
/* 800247FC 0002175C  7C A7 2B 78 */	mr r7, r5
/* 80024800 00021760  48 00 00 0C */	b .L_8002480C
.L_80024804:
/* 80024804 00021764  38 00 00 00 */	li r0, 0
/* 80024808 00021768  38 E6 00 00 */	addi r7, r6, 0
.L_8002480C:
/* 8002480C 0002176C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80024810 00021770  7C A4 02 14 */	add r5, r4, r0
/* 80024814 00021774  38 05 00 08 */	addi r0, r5, 8
/* 80024818 00021778  7C A4 32 14 */	add r5, r4, r6
/* 8002481C 0002177C  38 A5 00 08 */	addi r5, r5, 8
/* 80024820 00021780  90 A3 00 08 */	stw r5, 8(r3)
/* 80024824 00021784  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 80024828 00021788  7C 84 2A 14 */	add r4, r4, r5
/* 8002482C 0002178C  38 84 00 08 */	addi r4, r4, 8
/* 80024830 00021790  90 83 00 14 */	stw r4, 0x14(r3)
/* 80024834 00021794  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80024838 00021798  90 04 FF F8 */	stw r0, -8(r4)
/* 8002483C 0002179C  80 03 00 00 */	lwz r0, 0(r3)
/* 80024840 000217A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80024844 000217A4  41 82 00 18 */	beq .L_8002485C
/* 80024848 000217A8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8002484C 000217AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80024850 000217B0  80 64 FF F8 */	lwz r3, -8(r4)
/* 80024854 000217B4  7C 63 20 50 */	subf r3, r3, r4
/* 80024858 000217B8  7C 03 00 40 */	cmplw r3, r0
.L_8002485C:
/* 8002485C 000217BC  7C E3 3B 78 */	mr r3, r7
/* 80024860 000217C0  4E 80 00 20 */	blr 
.L_80024864:
/* 80024864 000217C4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 80024868 000217C8  38 C4 00 08 */	addi r6, r4, 8
/* 8002486C 000217CC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80024870 000217D0  7C A6 28 50 */	subf r5, r6, r5
/* 80024874 000217D4  7C 05 00 40 */	cmplw r5, r0
/* 80024878 000217D8  40 80 00 0C */	bge .L_80024884
/* 8002487C 000217DC  38 60 00 00 */	li r3, 0
/* 80024880 000217E0  4E 80 00 20 */	blr 
.L_80024884:
/* 80024884 000217E4  80 03 00 08 */	lwz r0, 8(r3)
/* 80024888 000217E8  7C 84 02 14 */	add r4, r4, r0
/* 8002488C 000217EC  38 04 00 08 */	addi r0, r4, 8
/* 80024890 000217F0  90 03 00 08 */	stw r0, 8(r3)
/* 80024894 000217F4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80024898 000217F8  7C 06 00 50 */	subf r0, r6, r0
/* 8002489C 000217FC  90 03 00 18 */	stw r0, 0x18(r3)
/* 800248A0 00021800  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800248A4 00021804  90 C4 00 00 */	stw r6, 0(r4)
/* 800248A8 00021808  80 63 00 18 */	lwz r3, 0x18(r3)
/* 800248AC 0002180C  38 63 00 08 */	addi r3, r3, 8
/* 800248B0 00021810  4E 80 00 20 */	blr 

.global pop__8AyuStackFv
pop__8AyuStackFv:
/* 800248B4 00021814  80 03 00 00 */	lwz r0, 0(r3)
/* 800248B8 00021818  2C 00 00 02 */	cmpwi r0, 2
/* 800248BC 0002181C  40 82 00 28 */	bne .L_800248E4
/* 800248C0 00021820  80 83 00 14 */	lwz r4, 0x14(r3)
/* 800248C4 00021824  80 03 00 08 */	lwz r0, 8(r3)
/* 800248C8 00021828  80 84 FF F8 */	lwz r4, -8(r4)
/* 800248CC 0002182C  7C 04 00 50 */	subf r0, r4, r0
/* 800248D0 00021830  90 03 00 08 */	stw r0, 8(r3)
/* 800248D4 00021834  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800248D8 00021838  7C 04 00 50 */	subf r0, r4, r0
/* 800248DC 0002183C  90 03 00 14 */	stw r0, 0x14(r3)
/* 800248E0 00021840  4E 80 00 20 */	blr 
.L_800248E4:
/* 800248E4 00021844  80 83 00 18 */	lwz r4, 0x18(r3)
/* 800248E8 00021848  80 03 00 08 */	lwz r0, 8(r3)
/* 800248EC 0002184C  80 84 00 00 */	lwz r4, 0(r4)
/* 800248F0 00021850  7C 04 00 50 */	subf r0, r4, r0
/* 800248F4 00021854  90 03 00 08 */	stw r0, 8(r3)
/* 800248F8 00021858  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800248FC 0002185C  7C 00 22 14 */	add r0, r0, r4
/* 80024900 00021860  90 03 00 18 */	stw r0, 0x18(r3)
/* 80024904 00021864  4E 80 00 20 */	blr 

.global init__7AyuHeapFPciPvi
init__7AyuHeapFPciPvi:
/* 80024908 00021868  90 A3 00 00 */	stw r5, 0(r3)
/* 8002490C 0002186C  38 A0 00 01 */	li r5, 1
/* 80024910 00021870  38 00 00 00 */	li r0, 0
/* 80024914 00021874  98 A3 00 1D */	stb r5, 0x1d(r3)
/* 80024918 00021878  90 83 00 20 */	stw r4, 0x20(r3)
/* 8002491C 0002187C  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80024920 00021880  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80024924 00021884  7C 84 3A 14 */	add r4, r4, r7
/* 80024928 00021888  90 83 00 10 */	stw r4, 0x10(r3)
/* 8002492C 0002188C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80024930 00021890  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80024934 00021894  7C 85 20 50 */	subf r4, r5, r4
/* 80024938 00021898  90 83 00 04 */	stw r4, 4(r3)
/* 8002493C 0002189C  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80024940 000218A0  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80024944 000218A4  28 00 00 00 */	cmplwi r0, 0
/* 80024948 000218A8  41 82 00 14 */	beq .L_8002495C
/* 8002494C 000218AC  3C A0 12 34 */	lis r5, 0x12345678@ha
/* 80024950 000218B0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80024954 000218B4  38 05 56 78 */	addi r0, r5, 0x12345678@l
/* 80024958 000218B8  90 04 00 00 */	stw r0, 0(r4)
.L_8002495C:
/* 8002495C 000218BC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80024960 000218C0  38 00 00 00 */	li r0, 0
/* 80024964 000218C4  90 83 00 14 */	stw r4, 0x14(r3)
/* 80024968 000218C8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8002496C 000218CC  90 83 00 18 */	stw r4, 0x18(r3)
/* 80024970 000218D0  90 03 00 08 */	stw r0, 8(r3)
/* 80024974 000218D4  98 03 00 24 */	stb r0, 0x24(r3)
/* 80024978 000218D8  4E 80 00 20 */	blr 

.global __ct__8AyuCacheFUl
__ct__8AyuCacheFUl:
/* 8002497C 000218DC  7C 08 02 A6 */	mflr r0
/* 80024980 000218E0  3C A0 43 30 */	lis r5, 0x4330
/* 80024984 000218E4  90 01 00 04 */	stw r0, 4(r1)
/* 80024988 000218E8  38 04 00 1F */	addi r0, r4, 0x1f
/* 8002498C 000218EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024990 000218F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024994 000218F4  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 80024998 000218F8  7F E0 16 70 */	srawi r0, r31, 2
/* 8002499C 000218FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 800249A0 00021900  7C 00 01 94 */	addze r0, r0
/* 800249A4 00021904  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800249A8 00021908  3B C3 00 00 */	addi r30, r3, 0
/* 800249AC 0002190C  54 03 10 3A */	slwi r3, r0, 2
/* 800249B0 00021910  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800249B4 00021914  48 02 26 51 */	bl alloc__6SystemFUl
/* 800249B8 00021918  38 83 00 00 */	addi r4, r3, 0
/* 800249BC 0002191C  38 7E 00 00 */	addi r3, r30, 0
/* 800249C0 00021920  7C A4 FA 14 */	add r5, r4, r31
/* 800249C4 00021924  48 00 00 21 */	bl init__8AyuCacheFUlUl
/* 800249C8 00021928  7F C3 F3 78 */	mr r3, r30
/* 800249CC 0002192C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800249D0 00021930  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800249D4 00021934  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800249D8 00021938  38 21 00 20 */	addi r1, r1, 0x20
/* 800249DC 0002193C  7C 08 03 A6 */	mtlr r0
/* 800249E0 00021940  4E 80 00 20 */	blr 

.global init__8AyuCacheFUlUl
init__8AyuCacheFUlUl:
/* 800249E4 00021944  39 00 00 00 */	li r8, 0
/* 800249E8 00021948  91 03 00 24 */	stw r8, 0x24(r3)
/* 800249EC 0002194C  7C 04 28 50 */	subf r0, r4, r5
/* 800249F0 00021950  3C C0 87 65 */	lis r6, 0x87654321@ha
/* 800249F4 00021954  90 03 00 28 */	stw r0, 0x28(r3)
/* 800249F8 00021958  54 05 E1 3E */	srwi r5, r0, 4
/* 800249FC 0002195C  3C A5 FF 00 */	addis r5, r5, 0xff00
/* 80024A00 00021960  91 03 00 20 */	stw r8, 0x20(r3)
/* 80024A04 00021964  38 E3 00 10 */	addi r7, r3, 0x10
/* 80024A08 00021968  38 00 00 08 */	li r0, 8
/* 80024A0C 0002196C  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80024A10 00021970  38 C6 43 21 */	addi r6, r6, 0x87654321@l
/* 80024A14 00021974  38 A5 FF FF */	addi r5, r5, -1
/* 80024A18 00021978  7C 09 03 A6 */	mtctr r0
/* 80024A1C 0002197C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 80024A20 00021980  3C 00 FF 00 */	lis r0, 0xff00
/* 80024A24 00021984  91 03 00 10 */	stw r8, 0x10(r3)
/* 80024A28 00021988  39 60 00 00 */	li r11, 0
/* 80024A2C 0002198C  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 80024A30 00021990  90 64 00 04 */	stw r3, 4(r4)
/* 80024A34 00021994  90 64 00 08 */	stw r3, 8(r4)
/* 80024A38 00021998  90 A4 00 00 */	stw r5, 0(r4)
/* 80024A3C 0002199C  90 C4 00 0C */	stw r6, 0xc(r4)
/* 80024A40 000219A0  90 83 00 04 */	stw r4, 4(r3)
/* 80024A44 000219A4  90 83 00 08 */	stw r4, 8(r3)
/* 80024A48 000219A8  90 03 00 00 */	stw r0, 0(r3)
.L_80024A4C:
/* 80024A4C 000219AC  39 4B 00 2C */	addi r10, r11, 0x2c
/* 80024A50 000219B0  7D 43 52 14 */	add r10, r3, r10
/* 80024A54 000219B4  99 6A 00 00 */	stb r11, 0(r10)
/* 80024A58 000219B8  39 2B 00 01 */	addi r9, r11, 1
/* 80024A5C 000219BC  39 0B 00 02 */	addi r8, r11, 2
/* 80024A60 000219C0  99 2A 00 01 */	stb r9, 1(r10)
/* 80024A64 000219C4  38 EB 00 03 */	addi r7, r11, 3
/* 80024A68 000219C8  38 CB 00 04 */	addi r6, r11, 4
/* 80024A6C 000219CC  99 0A 00 02 */	stb r8, 2(r10)
/* 80024A70 000219D0  38 AB 00 05 */	addi r5, r11, 5
/* 80024A74 000219D4  38 8B 00 06 */	addi r4, r11, 6
/* 80024A78 000219D8  98 EA 00 03 */	stb r7, 3(r10)
/* 80024A7C 000219DC  38 0B 00 07 */	addi r0, r11, 7
/* 80024A80 000219E0  39 6B 00 08 */	addi r11, r11, 8
/* 80024A84 000219E4  98 CA 00 04 */	stb r6, 4(r10)
/* 80024A88 000219E8  39 2B 00 01 */	addi r9, r11, 1
/* 80024A8C 000219EC  39 0B 00 02 */	addi r8, r11, 2
/* 80024A90 000219F0  98 AA 00 05 */	stb r5, 5(r10)
/* 80024A94 000219F4  38 EB 00 03 */	addi r7, r11, 3
/* 80024A98 000219F8  38 CB 00 04 */	addi r6, r11, 4
/* 80024A9C 000219FC  98 8A 00 06 */	stb r4, 6(r10)
/* 80024AA0 00021A00  38 AB 00 05 */	addi r5, r11, 5
/* 80024AA4 00021A04  38 8B 00 06 */	addi r4, r11, 6
/* 80024AA8 00021A08  98 0A 00 07 */	stb r0, 7(r10)
/* 80024AAC 00021A0C  39 4B 00 2C */	addi r10, r11, 0x2c
/* 80024AB0 00021A10  7D 43 52 14 */	add r10, r3, r10
/* 80024AB4 00021A14  99 6A 00 00 */	stb r11, 0(r10)
/* 80024AB8 00021A18  38 0B 00 07 */	addi r0, r11, 7
/* 80024ABC 00021A1C  39 6B 00 08 */	addi r11, r11, 8
/* 80024AC0 00021A20  99 2A 00 01 */	stb r9, 1(r10)
/* 80024AC4 00021A24  39 2B 00 01 */	addi r9, r11, 1
/* 80024AC8 00021A28  99 0A 00 02 */	stb r8, 2(r10)
/* 80024ACC 00021A2C  39 0B 00 02 */	addi r8, r11, 2
/* 80024AD0 00021A30  98 EA 00 03 */	stb r7, 3(r10)
/* 80024AD4 00021A34  38 EB 00 03 */	addi r7, r11, 3
/* 80024AD8 00021A38  98 CA 00 04 */	stb r6, 4(r10)
/* 80024ADC 00021A3C  38 CB 00 04 */	addi r6, r11, 4
/* 80024AE0 00021A40  98 AA 00 05 */	stb r5, 5(r10)
/* 80024AE4 00021A44  38 AB 00 05 */	addi r5, r11, 5
/* 80024AE8 00021A48  98 8A 00 06 */	stb r4, 6(r10)
/* 80024AEC 00021A4C  38 8B 00 06 */	addi r4, r11, 6
/* 80024AF0 00021A50  98 0A 00 07 */	stb r0, 7(r10)
/* 80024AF4 00021A54  39 4B 00 2C */	addi r10, r11, 0x2c
/* 80024AF8 00021A58  7D 43 52 14 */	add r10, r3, r10
/* 80024AFC 00021A5C  99 6A 00 00 */	stb r11, 0(r10)
/* 80024B00 00021A60  38 0B 00 07 */	addi r0, r11, 7
/* 80024B04 00021A64  39 6B 00 08 */	addi r11, r11, 8
/* 80024B08 00021A68  99 2A 00 01 */	stb r9, 1(r10)
/* 80024B0C 00021A6C  39 2B 00 01 */	addi r9, r11, 1
/* 80024B10 00021A70  99 0A 00 02 */	stb r8, 2(r10)
/* 80024B14 00021A74  39 0B 00 02 */	addi r8, r11, 2
/* 80024B18 00021A78  98 EA 00 03 */	stb r7, 3(r10)
/* 80024B1C 00021A7C  38 EB 00 03 */	addi r7, r11, 3
/* 80024B20 00021A80  98 CA 00 04 */	stb r6, 4(r10)
/* 80024B24 00021A84  38 CB 00 04 */	addi r6, r11, 4
/* 80024B28 00021A88  98 AA 00 05 */	stb r5, 5(r10)
/* 80024B2C 00021A8C  38 AB 00 05 */	addi r5, r11, 5
/* 80024B30 00021A90  98 8A 00 06 */	stb r4, 6(r10)
/* 80024B34 00021A94  38 8B 00 06 */	addi r4, r11, 6
/* 80024B38 00021A98  98 0A 00 07 */	stb r0, 7(r10)
/* 80024B3C 00021A9C  39 4B 00 2C */	addi r10, r11, 0x2c
/* 80024B40 00021AA0  7D 43 52 14 */	add r10, r3, r10
/* 80024B44 00021AA4  99 6A 00 00 */	stb r11, 0(r10)
/* 80024B48 00021AA8  38 0B 00 07 */	addi r0, r11, 7
/* 80024B4C 00021AAC  39 6B 00 08 */	addi r11, r11, 8
/* 80024B50 00021AB0  99 2A 00 01 */	stb r9, 1(r10)
/* 80024B54 00021AB4  99 0A 00 02 */	stb r8, 2(r10)
/* 80024B58 00021AB8  98 EA 00 03 */	stb r7, 3(r10)
/* 80024B5C 00021ABC  98 CA 00 04 */	stb r6, 4(r10)
/* 80024B60 00021AC0  98 AA 00 05 */	stb r5, 5(r10)
/* 80024B64 00021AC4  98 8A 00 06 */	stb r4, 6(r10)
/* 80024B68 00021AC8  98 0A 00 07 */	stb r0, 7(r10)
/* 80024B6C 00021ACC  42 00 FE E0 */	bdnz .L_80024A4C
/* 80024B70 00021AD0  38 00 00 00 */	li r0, 0
/* 80024B74 00021AD4  90 03 01 2C */	stw r0, 0x12c(r3)
/* 80024B78 00021AD8  4E 80 00 20 */	blr 

.global mallocL__8AyuCacheFUl
mallocL__8AyuCacheFUl:
/* 80024B7C 00021ADC  38 04 00 0F */	addi r0, r4, 0xf
/* 80024B80 00021AE0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80024B84 00021AE4  3C 80 80 00 */	lis r4, 0x7FFFFFFF@ha
/* 80024B88 00021AE8  54 07 E1 3E */	srwi r7, r0, 4
/* 80024B8C 00021AEC  38 04 FF FF */	addi r0, r4, 0x7FFFFFFF@l
/* 80024B90 00021AF0  38 80 00 00 */	li r4, 0
/* 80024B94 00021AF4  48 00 00 28 */	b .L_80024BBC
.L_80024B98:
/* 80024B98 00021AF8  80 A6 00 00 */	lwz r5, 0(r6)
/* 80024B9C 00021AFC  54 A5 02 3E */	clrlwi r5, r5, 8
/* 80024BA0 00021B00  7C A7 28 51 */	subf. r5, r7, r5
/* 80024BA4 00021B04  41 80 00 14 */	blt .L_80024BB8
/* 80024BA8 00021B08  7C 05 00 00 */	cmpw r5, r0
/* 80024BAC 00021B0C  40 80 00 0C */	bge .L_80024BB8
/* 80024BB0 00021B10  7C C4 33 78 */	mr r4, r6
/* 80024BB4 00021B14  48 00 00 10 */	b .L_80024BC4
.L_80024BB8:
/* 80024BB8 00021B18  80 C6 00 04 */	lwz r6, 4(r6)
.L_80024BBC:
/* 80024BBC 00021B1C  7C 06 18 40 */	cmplw r6, r3
/* 80024BC0 00021B20  40 82 FF D8 */	bne .L_80024B98
.L_80024BC4:
/* 80024BC4 00021B24  28 04 00 00 */	cmplwi r4, 0
/* 80024BC8 00021B28  40 82 00 0C */	bne .L_80024BD4
/* 80024BCC 00021B2C  38 60 00 00 */	li r3, 0
/* 80024BD0 00021B30  4E 80 00 20 */	blr 
.L_80024BD4:
/* 80024BD4 00021B34  80 04 00 00 */	lwz r0, 0(r4)
/* 80024BD8 00021B38  54 00 02 3E */	clrlwi r0, r0, 8
/* 80024BDC 00021B3C  7C 00 38 40 */	cmplw r0, r7
/* 80024BE0 00021B40  40 82 00 20 */	bne .L_80024C00
/* 80024BE4 00021B44  80 04 00 08 */	lwz r0, 8(r4)
/* 80024BE8 00021B48  80 A4 00 04 */	lwz r5, 4(r4)
/* 80024BEC 00021B4C  90 05 00 08 */	stw r0, 8(r5)
/* 80024BF0 00021B50  80 04 00 04 */	lwz r0, 4(r4)
/* 80024BF4 00021B54  80 A4 00 08 */	lwz r5, 8(r4)
/* 80024BF8 00021B58  90 05 00 04 */	stw r0, 4(r5)
/* 80024BFC 00021B5C  48 00 00 4C */	b .L_80024C48
.L_80024C00:
/* 80024C00 00021B60  54 E5 20 36 */	slwi r5, r7, 4
/* 80024C04 00021B64  80 04 00 04 */	lwz r0, 4(r4)
/* 80024C08 00021B68  38 C5 00 10 */	addi r6, r5, 0x10
/* 80024C0C 00021B6C  7C C4 32 14 */	add r6, r4, r6
/* 80024C10 00021B70  90 06 00 04 */	stw r0, 4(r6)
/* 80024C14 00021B74  3C A0 87 65 */	lis r5, 0x87654321@ha
/* 80024C18 00021B78  38 05 43 21 */	addi r0, r5, 0x87654321@l
/* 80024C1C 00021B7C  80 A4 00 08 */	lwz r5, 8(r4)
/* 80024C20 00021B80  90 A6 00 08 */	stw r5, 8(r6)
/* 80024C24 00021B84  80 A6 00 04 */	lwz r5, 4(r6)
/* 80024C28 00021B88  90 C5 00 08 */	stw r6, 8(r5)
/* 80024C2C 00021B8C  80 A6 00 08 */	lwz r5, 8(r6)
/* 80024C30 00021B90  90 C5 00 04 */	stw r6, 4(r5)
/* 80024C34 00021B94  80 A4 00 00 */	lwz r5, 0(r4)
/* 80024C38 00021B98  7C A7 28 50 */	subf r5, r7, r5
/* 80024C3C 00021B9C  38 A5 FF FF */	addi r5, r5, -1
/* 80024C40 00021BA0  90 A6 00 00 */	stw r5, 0(r6)
/* 80024C44 00021BA4  90 06 00 0C */	stw r0, 0xc(r6)
.L_80024C48:
/* 80024C48 00021BA8  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 80024C4C 00021BAC  38 03 00 10 */	addi r0, r3, 0x10
/* 80024C50 00021BB0  3C A0 12 34 */	lis r5, 0x12345678@ha
/* 80024C54 00021BB4  90 04 00 04 */	stw r0, 4(r4)
/* 80024C58 00021BB8  54 C0 C0 0E */	slwi r0, r6, 0x18
/* 80024C5C 00021BBC  7C E0 3A 14 */	add r7, r0, r7
/* 80024C60 00021BC0  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 80024C64 00021BC4  38 05 56 78 */	addi r0, r5, 0x12345678@l
/* 80024C68 00021BC8  90 C4 00 08 */	stw r6, 8(r4)
/* 80024C6C 00021BCC  90 83 00 18 */	stw r4, 0x18(r3)
/* 80024C70 00021BD0  80 A4 00 08 */	lwz r5, 8(r4)
/* 80024C74 00021BD4  90 85 00 04 */	stw r4, 4(r5)
/* 80024C78 00021BD8  90 E4 00 00 */	stw r7, 0(r4)
/* 80024C7C 00021BDC  80 A4 00 00 */	lwz r5, 0(r4)
/* 80024C80 00021BE0  80 C3 00 24 */	lwz r6, 0x24(r3)
/* 80024C84 00021BE4  54 A5 02 3E */	clrlwi r5, r5, 8
/* 80024C88 00021BE8  7C A6 2A 14 */	add r5, r6, r5
/* 80024C8C 00021BEC  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80024C90 00021BF0  38 64 00 10 */	addi r3, r4, 0x10
/* 80024C94 00021BF4  90 04 00 0C */	stw r0, 0xc(r4)
/* 80024C98 00021BF8  4E 80 00 20 */	blr 

.global cacheFree__8AyuCacheFPv
cacheFree__8AyuCacheFPv:
/* 80024C9C 00021BFC  84 A4 FF F0 */	lwzu r5, -0x10(r4)
/* 80024CA0 00021C00  38 C3 00 00 */	addi r6, r3, 0
/* 80024CA4 00021C04  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80024CA8 00021C08  54 A5 02 3E */	clrlwi r5, r5, 8
/* 80024CAC 00021C0C  7C 05 00 50 */	subf r0, r5, r0
/* 80024CB0 00021C10  90 03 00 24 */	stw r0, 0x24(r3)
/* 80024CB4 00021C14  80 A3 00 04 */	lwz r5, 4(r3)
/* 80024CB8 00021C18  48 00 00 14 */	b .L_80024CCC
.L_80024CBC:
/* 80024CBC 00021C1C  7C 04 28 40 */	cmplw r4, r5
/* 80024CC0 00021C20  40 80 00 08 */	bge .L_80024CC8
/* 80024CC4 00021C24  7C A6 2B 78 */	mr r6, r5
.L_80024CC8:
/* 80024CC8 00021C28  80 A5 00 04 */	lwz r5, 4(r5)
.L_80024CCC:
/* 80024CCC 00021C2C  7C 05 18 40 */	cmplw r5, r3
/* 80024CD0 00021C30  41 82 00 0C */	beq .L_80024CDC
/* 80024CD4 00021C34  7C 06 18 40 */	cmplw r6, r3
/* 80024CD8 00021C38  41 82 FF E4 */	beq .L_80024CBC
.L_80024CDC:
/* 80024CDC 00021C3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80024CE0 00021C40  80 64 00 04 */	lwz r3, 4(r4)
/* 80024CE4 00021C44  90 03 00 08 */	stw r0, 8(r3)
/* 80024CE8 00021C48  80 04 00 04 */	lwz r0, 4(r4)
/* 80024CEC 00021C4C  80 64 00 08 */	lwz r3, 8(r4)
/* 80024CF0 00021C50  90 03 00 04 */	stw r0, 4(r3)
/* 80024CF4 00021C54  80 04 00 00 */	lwz r0, 0(r4)
/* 80024CF8 00021C58  54 03 02 3E */	clrlwi r3, r0, 8
/* 80024CFC 00021C5C  90 C4 00 04 */	stw r6, 4(r4)
/* 80024D00 00021C60  3C A3 FF 00 */	addis r5, r3, 0xff00
/* 80024D04 00021C64  80 06 00 08 */	lwz r0, 8(r6)
/* 80024D08 00021C68  90 04 00 08 */	stw r0, 8(r4)
/* 80024D0C 00021C6C  90 86 00 08 */	stw r4, 8(r6)
/* 80024D10 00021C70  80 64 00 08 */	lwz r3, 8(r4)
/* 80024D14 00021C74  90 83 00 04 */	stw r4, 4(r3)
/* 80024D18 00021C78  90 A4 00 00 */	stw r5, 0(r4)
/* 80024D1C 00021C7C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80024D20 00021C80  80 C4 00 04 */	lwz r6, 4(r4)
/* 80024D24 00021C84  54 A3 21 36 */	rlwinm r3, r5, 4, 4, 0x1b
/* 80024D28 00021C88  38 03 00 10 */	addi r0, r3, 0x10
/* 80024D2C 00021C8C  7C 04 02 14 */	add r0, r4, r0
/* 80024D30 00021C90  7C 00 30 40 */	cmplw r0, r6
/* 80024D34 00021C94  40 82 00 30 */	bne .L_80024D64
/* 80024D38 00021C98  80 06 00 00 */	lwz r0, 0(r6)
/* 80024D3C 00021C9C  54 00 02 3E */	clrlwi r0, r0, 8
/* 80024D40 00021CA0  7C 60 2A 14 */	add r3, r0, r5
/* 80024D44 00021CA4  38 03 00 01 */	addi r0, r3, 1
/* 80024D48 00021CA8  90 04 00 00 */	stw r0, 0(r4)
/* 80024D4C 00021CAC  80 64 00 04 */	lwz r3, 4(r4)
/* 80024D50 00021CB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80024D54 00021CB4  90 83 00 08 */	stw r4, 8(r3)
/* 80024D58 00021CB8  80 64 00 04 */	lwz r3, 4(r4)
/* 80024D5C 00021CBC  80 03 00 04 */	lwz r0, 4(r3)
/* 80024D60 00021CC0  90 04 00 04 */	stw r0, 4(r4)
.L_80024D64:
/* 80024D64 00021CC4  80 C4 00 08 */	lwz r6, 8(r4)
/* 80024D68 00021CC8  80 A6 00 00 */	lwz r5, 0(r6)
/* 80024D6C 00021CCC  54 A3 21 36 */	rlwinm r3, r5, 4, 4, 0x1b
/* 80024D70 00021CD0  38 03 00 10 */	addi r0, r3, 0x10
/* 80024D74 00021CD4  7C 06 02 14 */	add r0, r6, r0
/* 80024D78 00021CD8  7C 00 20 40 */	cmplw r0, r4
/* 80024D7C 00021CDC  4C 82 00 20 */	bnelr 
/* 80024D80 00021CE0  80 04 00 00 */	lwz r0, 0(r4)
/* 80024D84 00021CE4  54 00 02 3E */	clrlwi r0, r0, 8
/* 80024D88 00021CE8  7C 60 2A 14 */	add r3, r0, r5
/* 80024D8C 00021CEC  38 03 00 01 */	addi r0, r3, 1
/* 80024D90 00021CF0  90 06 00 00 */	stw r0, 0(r6)
/* 80024D94 00021CF4  80 04 00 08 */	lwz r0, 8(r4)
/* 80024D98 00021CF8  80 64 00 04 */	lwz r3, 4(r4)
/* 80024D9C 00021CFC  90 03 00 08 */	stw r0, 8(r3)
/* 80024DA0 00021D00  80 04 00 04 */	lwz r0, 4(r4)
/* 80024DA4 00021D04  80 64 00 08 */	lwz r3, 8(r4)
/* 80024DA8 00021D08  90 03 00 04 */	stw r0, 4(r3)
/* 80024DAC 00021D0C  4E 80 00 20 */	blr 

.global isEmpty__8AyuCacheFv
isEmpty__8AyuCacheFv:
/* 80024DB0 00021D10  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80024DB4 00021D14  38 03 00 10 */	addi r0, r3, 0x10
/* 80024DB8 00021D18  7C 04 00 50 */	subf r0, r4, r0
/* 80024DBC 00021D1C  7C 00 00 34 */	cntlzw r0, r0
/* 80024DC0 00021D20  54 03 D9 7E */	srwi r3, r0, 5
/* 80024DC4 00021D24  4E 80 00 20 */	blr 

.global largestBlockFree__8AyuCacheFv
largestBlockFree__8AyuCacheFv:
/* 80024DC8 00021D28  80 A3 00 04 */	lwz r5, 4(r3)
/* 80024DCC 00021D2C  38 80 00 00 */	li r4, 0
/* 80024DD0 00021D30  48 00 00 1C */	b .L_80024DEC
.L_80024DD4:
/* 80024DD4 00021D34  80 05 00 00 */	lwz r0, 0(r5)
/* 80024DD8 00021D38  54 00 21 36 */	rlwinm r0, r0, 4, 4, 0x1b
/* 80024DDC 00021D3C  7C 00 20 40 */	cmplw r0, r4
/* 80024DE0 00021D40  40 81 00 08 */	ble .L_80024DE8
/* 80024DE4 00021D44  7C 04 03 78 */	mr r4, r0
.L_80024DE8:
/* 80024DE8 00021D48  80 A5 00 04 */	lwz r5, 4(r5)
.L_80024DEC:
/* 80024DEC 00021D4C  7C 05 18 40 */	cmplw r5, r3
/* 80024DF0 00021D50  40 82 FF E4 */	bne .L_80024DD4
/* 80024DF4 00021D54  7C 83 23 78 */	mr r3, r4
/* 80024DF8 00021D58  4E 80 00 20 */	blr 
