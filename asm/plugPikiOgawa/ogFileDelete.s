.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global setOperateMode_Delete__Q23zen18ogScrFileSelectMgrFv
setOperateMode_Delete__Q23zen18ogScrFileSelectMgrFv:
/* 80197AD8 00194A38  7C 08 02 A6 */	mflr r0
/* 80197ADC 00194A3C  38 80 00 02 */	li r4, 2
/* 80197AE0 00194A40  90 01 00 04 */	stw r0, 4(r1)
/* 80197AE4 00194A44  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80197AE8 00194A48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80197AEC 00194A4C  3B E3 00 00 */	addi r31, r3, 0
/* 80197AF0 00194A50  4B FF 15 C5 */	bl SetTitleMsg__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr16titleMessageFlag
/* 80197AF4 00194A54  7F E3 FB 78 */	mr r3, r31
/* 80197AF8 00194A58  4B FF 00 CD */	bl OpenYesNoWindow__Q23zen18ogScrFileSelectMgrFv
/* 80197AFC 00194A5C  38 7F 00 00 */	addi r3, r31, 0
/* 80197B00 00194A60  38 80 00 00 */	li r4, 0
/* 80197B04 00194A64  4B FE FF C1 */	bl paneOnOffXY__Q23zen18ogScrFileSelectMgrFb
/* 80197B08 00194A68  C0 22 B2 A8 */	lfs f1, lbl_803EB4A8@sda21(r2)
/* 80197B0C 00194A6C  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 80197B10 00194A70  C0 42 B2 AC */	lfs f2, lbl_803EB4AC@sda21(r2)
/* 80197B14 00194A74  48 04 31 05 */	bl scale__Q23zen17SpectrumCursorMgrFff
/* 80197B18 00194A78  C0 22 B2 A8 */	lfs f1, lbl_803EB4A8@sda21(r2)
/* 80197B1C 00194A7C  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80197B20 00194A80  C0 42 B2 AC */	lfs f2, lbl_803EB4AC@sda21(r2)
/* 80197B24 00194A84  48 04 30 F5 */	bl scale__Q23zen17SpectrumCursorMgrFff
/* 80197B28 00194A88  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80197B2C 00194A8C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80197B30 00194A90  38 21 00 18 */	addi r1, r1, 0x18
/* 80197B34 00194A94  7C 08 03 A6 */	mtlr r0
/* 80197B38 00194A98  4E 80 00 20 */	blr 

.global OperateDelete__Q23zen18ogScrFileSelectMgrFP10Controller
OperateDelete__Q23zen18ogScrFileSelectMgrFP10Controller:
/* 80197B3C 00194A9C  7C 08 02 A6 */	mflr r0
/* 80197B40 00194AA0  90 01 00 04 */	stw r0, 4(r1)
/* 80197B44 00194AA4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80197B48 00194AA8  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80197B4C 00194AAC  7C 7F 1B 78 */	mr r31, r3
/* 80197B50 00194AB0  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80197B54 00194AB4  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80197B58 00194AB8  88 03 11 96 */	lbz r0, 0x1196(r3)
/* 80197B5C 00194ABC  28 00 00 00 */	cmplwi r0, 0
/* 80197B60 00194AC0  41 82 00 40 */	beq .L_80197BA0
/* 80197B64 00194AC4  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 80197B68 00194AC8  C0 3F 11 88 */	lfs f1, 0x1188(r31)
/* 80197B6C 00194ACC  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 80197B70 00194AD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80197B74 00194AD4  D0 1F 11 88 */	stfs f0, 0x1188(r31)
/* 80197B78 00194AD8  C0 3F 11 88 */	lfs f1, 0x1188(r31)
/* 80197B7C 00194ADC  C0 02 B2 A8 */	lfs f0, lbl_803EB4A8@sda21(r2)
/* 80197B80 00194AE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80197B84 00194AE4  40 80 03 88 */	bge .L_80197F0C
/* 80197B88 00194AE8  38 00 00 00 */	li r0, 0
/* 80197B8C 00194AEC  98 1F 11 96 */	stb r0, 0x1196(r31)
/* 80197B90 00194AF0  38 7F 00 00 */	addi r3, r31, 0
/* 80197B94 00194AF4  38 80 00 00 */	li r4, 0
/* 80197B98 00194AF8  4B FF 00 F5 */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
/* 80197B9C 00194AFC  48 00 03 70 */	b .L_80197F0C
.L_80197BA0:
/* 80197BA0 00194B00  88 1F 11 95 */	lbz r0, 0x1195(r31)
/* 80197BA4 00194B04  28 00 00 00 */	cmplwi r0, 0
/* 80197BA8 00194B08  41 82 01 74 */	beq .L_80197D1C
/* 80197BAC 00194B0C  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197BB0 00194B10  38 80 00 01 */	li r4, 1
/* 80197BB4 00194B14  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80197BB8 00194B18  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197BBC 00194B1C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80197BC0 00194B20  C0 3F 11 88 */	lfs f1, 0x1188(r31)
/* 80197BC4 00194B24  C0 02 B2 C8 */	lfs f0, lbl_803EB4C8@sda21(r2)
/* 80197BC8 00194B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80197BCC 00194B2C  40 81 00 30 */	ble .L_80197BFC
/* 80197BD0 00194B30  EC 21 00 28 */	fsubs f1, f1, f0
/* 80197BD4 00194B34  C0 02 B2 D0 */	lfs f0, lbl_803EB4D0@sda21(r2)
/* 80197BD8 00194B38  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197BDC 00194B3C  C0 42 B2 CC */	lfs f2, lbl_803EB4CC@sda21(r2)
/* 80197BE0 00194B40  EC 01 00 24 */	fdivs f0, f1, f0
/* 80197BE4 00194B44  AB A3 00 1A */	lha r29, 0x1a(r3)
/* 80197BE8 00194B48  EC 02 00 32 */	fmuls f0, f2, f0
/* 80197BEC 00194B4C  FC 00 00 1E */	fctiwz f0, f0
/* 80197BF0 00194B50  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80197BF4 00194B54  83 C1 00 CC */	lwz r30, 0xcc(r1)
/* 80197BF8 00194B58  48 00 00 5C */	b .L_80197C54
.L_80197BFC:
/* 80197BFC 00194B5C  C0 42 B2 D0 */	lfs f2, lbl_803EB4D0@sda21(r2)
/* 80197C00 00194B60  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80197C04 00194B64  40 80 00 44 */	bge .L_80197C48
/* 80197C08 00194B68  EC 01 10 28 */	fsubs f0, f1, f2
/* 80197C0C 00194B6C  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197C10 00194B70  C0 22 B2 CC */	lfs f1, lbl_803EB4CC@sda21(r2)
/* 80197C14 00194B74  81 83 00 00 */	lwz r12, 0(r3)
/* 80197C18 00194B78  EC 00 10 24 */	fdivs f0, f0, f2
/* 80197C1C 00194B7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80197C20 00194B80  AB A3 00 1A */	lha r29, 0x1a(r3)
/* 80197C24 00194B84  7D 88 03 A6 */	mtlr r12
/* 80197C28 00194B88  7F A5 EB 78 */	mr r5, r29
/* 80197C2C 00194B8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80197C30 00194B90  FC 00 00 1E */	fctiwz f0, f0
/* 80197C34 00194B94  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80197C38 00194B98  83 C1 00 CC */	lwz r30, 0xcc(r1)
/* 80197C3C 00194B9C  7F C4 F3 78 */	mr r4, r30
/* 80197C40 00194BA0  4E 80 00 21 */	blrl 
/* 80197C44 00194BA4  48 00 00 10 */	b .L_80197C54
.L_80197C48:
/* 80197C48 00194BA8  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197C4C 00194BAC  AB C3 00 18 */	lha r30, 0x18(r3)
/* 80197C50 00194BB0  AB A3 00 1A */	lha r29, 0x1a(r3)
.L_80197C54:
/* 80197C54 00194BB4  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197C58 00194BB8  38 9E 00 00 */	addi r4, r30, 0
/* 80197C5C 00194BBC  38 BD 00 00 */	addi r5, r29, 0
/* 80197C60 00194BC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80197C64 00194BC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80197C68 00194BC8  7D 88 03 A6 */	mtlr r12
/* 80197C6C 00194BCC  4E 80 00 21 */	blrl 
/* 80197C70 00194BD0  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 80197C74 00194BD4  C0 3F 11 88 */	lfs f1, 0x1188(r31)
/* 80197C78 00194BD8  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 80197C7C 00194BDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80197C80 00194BE0  D0 1F 11 88 */	stfs f0, 0x1188(r31)
/* 80197C84 00194BE4  88 1F 11 99 */	lbz r0, 0x1199(r31)
/* 80197C88 00194BE8  28 00 00 00 */	cmplwi r0, 0
/* 80197C8C 00194BEC  40 82 00 3C */	bne .L_80197CC8
/* 80197C90 00194BF0  3C 60 80 3A */	lis r3, gameflow@ha
/* 80197C94 00194BF4  38 63 D7 B8 */	addi r3, r3, gameflow@l
/* 80197C98 00194BF8  38 63 00 24 */	addi r3, r3, 0x24
/* 80197C9C 00194BFC  4B ED BD C1 */	bl hasCardFinished__10MemoryCardFv
/* 80197CA0 00194C00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197CA4 00194C04  41 82 00 24 */	beq .L_80197CC8
/* 80197CA8 00194C08  38 00 00 01 */	li r0, 1
/* 80197CAC 00194C0C  98 1F 11 99 */	stb r0, 0x1199(r31)
/* 80197CB0 00194C10  7F E3 FB 78 */	mr r3, r31
/* 80197CB4 00194C14  4B FE FA DD */	bl copyCardInfosSub__Q23zen18ogScrFileSelectMgrFv
/* 80197CB8 00194C18  7F E3 FB 78 */	mr r3, r31
/* 80197CBC 00194C1C  4B FF 27 2D */	bl ChkNewData__Q23zen18ogScrFileSelectMgrFv
/* 80197CC0 00194C20  38 60 01 29 */	li r3, 0x129
/* 80197CC4 00194C24  4B F0 D6 B1 */	bl playSysSe__8SeSystemFi
.L_80197CC8:
/* 80197CC8 00194C28  88 1F 11 99 */	lbz r0, 0x1199(r31)
/* 80197CCC 00194C2C  28 00 00 00 */	cmplwi r0, 0
/* 80197CD0 00194C30  41 82 02 3C */	beq .L_80197F0C
/* 80197CD4 00194C34  C0 3F 11 88 */	lfs f1, 0x1188(r31)
/* 80197CD8 00194C38  C0 02 B2 A8 */	lfs f0, lbl_803EB4A8@sda21(r2)
/* 80197CDC 00194C3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80197CE0 00194C40  40 80 02 2C */	bge .L_80197F0C
/* 80197CE4 00194C44  38 C0 00 00 */	li r6, 0
/* 80197CE8 00194C48  98 DF 11 95 */	stb r6, 0x1195(r31)
/* 80197CEC 00194C4C  38 00 00 01 */	li r0, 1
/* 80197CF0 00194C50  38 7F 00 00 */	addi r3, r31, 0
/* 80197CF4 00194C54  98 1F 11 96 */	stb r0, 0x1196(r31)
/* 80197CF8 00194C58  38 80 00 04 */	li r4, 4
/* 80197CFC 00194C5C  C0 02 B2 D4 */	lfs f0, lbl_803EB4D4@sda21(r2)
/* 80197D00 00194C60  D0 1F 11 88 */	stfs f0, 0x1188(r31)
/* 80197D04 00194C64  80 BF 02 CC */	lwz r5, 0x2cc(r31)
/* 80197D08 00194C68  88 05 00 0C */	lbz r0, 0xc(r5)
/* 80197D0C 00194C6C  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 80197D10 00194C70  98 05 00 0C */	stb r0, 0xc(r5)
/* 80197D14 00194C74  4B FF 13 A1 */	bl SetTitleMsg__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr16titleMessageFlag
/* 80197D18 00194C78  48 00 01 F4 */	b .L_80197F0C
.L_80197D1C:
/* 80197D1C 00194C7C  80 7F 02 6C */	lwz r3, 0x26c(r31)
/* 80197D20 00194C80  4B FF F1 39 */	bl update__Q23zen11ogNitakuMgrFP10Controller
/* 80197D24 00194C84  3B C3 00 00 */	addi r30, r3, 0
/* 80197D28 00194C88  2C 1E 00 04 */	cmpwi r30, 4
/* 80197D2C 00194C8C  41 80 00 0C */	blt .L_80197D38
/* 80197D30 00194C90  7F E3 FB 78 */	mr r3, r31
/* 80197D34 00194C94  4B FE FF 45 */	bl CloseYesNoWindow__Q23zen18ogScrFileSelectMgrFv
.L_80197D38:
/* 80197D38 00194C98  2C 1E 00 04 */	cmpwi r30, 4
/* 80197D3C 00194C9C  40 82 00 1C */	bne .L_80197D58
/* 80197D40 00194CA0  38 60 01 1D */	li r3, 0x11d
/* 80197D44 00194CA4  4B F0 D6 31 */	bl playSysSe__8SeSystemFi
/* 80197D48 00194CA8  38 7F 00 00 */	addi r3, r31, 0
/* 80197D4C 00194CAC  38 80 00 00 */	li r4, 0
/* 80197D50 00194CB0  4B FE FF 3D */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
/* 80197D54 00194CB4  48 00 01 B8 */	b .L_80197F0C
.L_80197D58:
/* 80197D58 00194CB8  2C 1E 00 05 */	cmpwi r30, 5
/* 80197D5C 00194CBC  40 82 01 9C */	bne .L_80197EF8
/* 80197D60 00194CC0  38 60 01 28 */	li r3, 0x128
/* 80197D64 00194CC4  4B F0 D6 11 */	bl playSysSe__8SeSystemFi
/* 80197D68 00194CC8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80197D6C 00194CCC  3C 60 80 3A */	lis r3, gameflow@ha
/* 80197D70 00194CD0  38 A3 D7 B8 */	addi r5, r3, gameflow@l
/* 80197D74 00194CD4  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80197D78 00194CD8  38 83 00 2C */	addi r4, r3, 0x2c
/* 80197D7C 00194CDC  38 65 00 24 */	addi r3, r5, 0x24
/* 80197D80 00194CE0  7C 9F 22 14 */	add r4, r31, r4
/* 80197D84 00194CE4  4B ED DA 45 */	bl delFile__10MemoryCardFR13CardQuickInfo
/* 80197D88 00194CE8  38 7F 00 00 */	addi r3, r31, 0
/* 80197D8C 00194CEC  38 80 00 03 */	li r4, 3
/* 80197D90 00194CF0  4B FF 13 25 */	bl SetTitleMsg__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr16titleMessageFlag
/* 80197D94 00194CF4  C0 02 B2 A8 */	lfs f0, lbl_803EB4A8@sda21(r2)
/* 80197D98 00194CF8  3D 20 43 30 */	lis r9, 0x4330
/* 80197D9C 00194CFC  38 A1 00 68 */	addi r5, r1, 0x68
/* 80197DA0 00194D00  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80197DA4 00194D04  38 80 00 2C */	li r4, 0x2c
/* 80197DA8 00194D08  38 C0 00 00 */	li r6, 0
/* 80197DAC 00194D0C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80197DB0 00194D10  38 E0 00 00 */	li r7, 0
/* 80197DB4 00194D14  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80197DB8 00194D18  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80197DBC 00194D1C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80197DC0 00194D20  C0 2D 0E 30 */	lfs f1, lbl_803E5B50@sda21(r13)
/* 80197DC4 00194D24  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80197DC8 00194D28  C0 0D 0E 34 */	lfs f0, lbl_803E5B54@sda21(r13)
/* 80197DCC 00194D2C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80197DD0 00194D30  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80197DD4 00194D34  C0 0D 0E 38 */	lfs f0, lbl_803E5B58@sda21(r13)
/* 80197DD8 00194D38  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80197DDC 00194D3C  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80197DE0 00194D40  C8 82 B2 C0 */	lfd f4, lbl_803EB4C0@sda21(r2)
/* 80197DE4 00194D44  54 00 10 3A */	slwi r0, r0, 2
/* 80197DE8 00194D48  C0 62 B2 B0 */	lfs f3, lbl_803EB4B0@sda21(r2)
/* 80197DEC 00194D4C  7C 7F 02 14 */	add r3, r31, r0
/* 80197DF0 00194D50  C0 42 B2 B4 */	lfs f2, lbl_803EB4B4@sda21(r2)
/* 80197DF4 00194D54  81 03 03 B0 */	lwz r8, 0x3b0(r3)
/* 80197DF8 00194D58  A8 68 00 18 */	lha r3, 0x18(r8)
/* 80197DFC 00194D5C  A8 08 00 1C */	lha r0, 0x1c(r8)
/* 80197E00 00194D60  A9 08 00 18 */	lha r8, 0x18(r8)
/* 80197E04 00194D64  7C 03 00 50 */	subf r0, r3, r0
/* 80197E08 00194D68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80197E0C 00194D6C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80197E10 00194D70  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 80197E14 00194D74  91 21 00 C0 */	stw r9, 0xc0(r1)
/* 80197E18 00194D78  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80197E1C 00194D7C  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80197E20 00194D80  91 21 00 C8 */	stw r9, 0xc8(r1)
/* 80197E24 00194D84  EC 00 20 28 */	fsubs f0, f0, f4
/* 80197E28 00194D88  C8 21 00 C8 */	lfd f1, 0xc8(r1)
/* 80197E2C 00194D8C  EC 21 20 28 */	fsubs f1, f1, f4
/* 80197E30 00194D90  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80197E34 00194D94  EC 01 00 2A */	fadds f0, f1, f0
/* 80197E38 00194D98  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80197E3C 00194D9C  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80197E40 00194DA0  54 00 10 3A */	slwi r0, r0, 2
/* 80197E44 00194DA4  7C 7F 02 14 */	add r3, r31, r0
/* 80197E48 00194DA8  81 43 03 B0 */	lwz r10, 0x3b0(r3)
/* 80197E4C 00194DAC  A9 0A 00 1A */	lha r8, 0x1a(r10)
/* 80197E50 00194DB0  A8 6A 00 1A */	lha r3, 0x1a(r10)
/* 80197E54 00194DB4  A8 0A 00 1E */	lha r0, 0x1e(r10)
/* 80197E58 00194DB8  6D 08 80 00 */	xoris r8, r8, 0x8000
/* 80197E5C 00194DBC  91 01 00 BC */	stw r8, 0xbc(r1)
/* 80197E60 00194DC0  7C 03 00 50 */	subf r0, r3, r0
/* 80197E64 00194DC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80197E68 00194DC8  91 21 00 B8 */	stw r9, 0xb8(r1)
/* 80197E6C 00194DCC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80197E70 00194DD0  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80197E74 00194DD4  91 21 00 B0 */	stw r9, 0xb0(r1)
/* 80197E78 00194DD8  EC 20 20 28 */	fsubs f1, f0, f4
/* 80197E7C 00194DDC  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80197E80 00194DE0  EC 00 20 28 */	fsubs f0, f0, f4
/* 80197E84 00194DE4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80197E88 00194DE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80197E8C 00194DEC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80197E90 00194DF0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80197E94 00194DF4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80197E98 00194DF8  48 05 1C A5 */	bl "create__Q23zen11EffectMgr2DFUlR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 80197E9C 00194DFC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80197EA0 00194E00  38 A1 00 74 */	addi r5, r1, 0x74
/* 80197EA4 00194E04  C0 42 B2 B4 */	lfs f2, lbl_803EB4B4@sda21(r2)
/* 80197EA8 00194E08  38 80 00 2B */	li r4, 0x2b
/* 80197EAC 00194E0C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80197EB0 00194E10  C0 02 B2 B8 */	lfs f0, lbl_803EB4B8@sda21(r2)
/* 80197EB4 00194E14  38 C0 00 00 */	li r6, 0
/* 80197EB8 00194E18  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80197EBC 00194E1C  38 E0 00 00 */	li r7, 0
/* 80197EC0 00194E20  EC 22 08 28 */	fsubs f1, f2, f1
/* 80197EC4 00194E24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80197EC8 00194E28  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80197ECC 00194E2C  C0 0D 0E 3C */	lfs f0, lbl_803E5B5C@sda21(r13)
/* 80197ED0 00194E30  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80197ED4 00194E34  80 7F 00 00 */	lwz r3, 0(r31)
/* 80197ED8 00194E38  48 05 1C 65 */	bl "create__Q23zen11EffectMgr2DFUlR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 80197EDC 00194E3C  C0 02 B2 D8 */	lfs f0, lbl_803EB4D8@sda21(r2)
/* 80197EE0 00194E40  38 60 00 01 */	li r3, 1
/* 80197EE4 00194E44  38 00 00 00 */	li r0, 0
/* 80197EE8 00194E48  D0 1F 11 88 */	stfs f0, 0x1188(r31)
/* 80197EEC 00194E4C  98 7F 11 95 */	stb r3, 0x1195(r31)
/* 80197EF0 00194E50  98 1F 11 99 */	stb r0, 0x1199(r31)
/* 80197EF4 00194E54  48 00 00 18 */	b .L_80197F0C
.L_80197EF8:
/* 80197EF8 00194E58  2C 1E 00 06 */	cmpwi r30, 6
/* 80197EFC 00194E5C  40 82 00 10 */	bne .L_80197F0C
/* 80197F00 00194E60  38 7F 00 00 */	addi r3, r31, 0
/* 80197F04 00194E64  38 80 00 00 */	li r4, 0
/* 80197F08 00194E68  4B FE FD 85 */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
.L_80197F0C:
/* 80197F0C 00194E6C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80197F10 00194E70  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80197F14 00194E74  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80197F18 00194E78  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80197F1C 00194E7C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80197F20 00194E80  7C 08 03 A6 */	mtlr r0
/* 80197F24 00194E84  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
lbl_803E5B50:
	.4byte 0x00000000
lbl_803E5B54:
	.4byte 0x00000000
lbl_803E5B58:
	.4byte 0x00000000
lbl_803E5B5C:
	.4byte 0x00000000

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB4A8:
	.4byte 0x00000000
lbl_803EB4AC:
	.4byte 0x3A83126F
lbl_803EB4B0:
	.4byte 0x3F000000
lbl_803EB4B4:
	.4byte 0x43F00000
lbl_803EB4B8:
	.4byte 0x42A00000
.balign 8
lbl_803EB4C0:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB4C8:
	.4byte 0x3FD9999A
lbl_803EB4CC:
	.4byte 0x44200000
lbl_803EB4D0:
	.4byte 0x3E99999A
lbl_803EB4D4:
	.4byte 0x3F800000
lbl_803EB4D8:
	.4byte 0x40000000
