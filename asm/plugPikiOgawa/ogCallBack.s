.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__Q23zen17TextColorCallBackFP7P2DPane
__ct__Q23zen17TextColorCallBackFP7P2DPane:
/* 80198D2C 00195C8C  7C 08 02 A6 */	mflr r0
/* 80198D30 00195C90  3C A0 80 2D */	lis r5, "__vt__Q23zen20CallBack1<P7P2DPane>"@ha
/* 80198D34 00195C94  90 01 00 04 */	stw r0, 4(r1)
/* 80198D38 00195C98  38 05 30 04 */	addi r0, r5, "__vt__Q23zen20CallBack1<P7P2DPane>"@l
/* 80198D3C 00195C9C  38 A0 00 13 */	li r5, 0x13
/* 80198D40 00195CA0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80198D44 00195CA4  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80198D48 00195CA8  3B E3 00 00 */	addi r31, r3, 0
/* 80198D4C 00195CAC  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80198D50 00195CB0  3B C4 00 00 */	addi r30, r4, 0
/* 80198D54 00195CB4  90 03 00 00 */	stw r0, 0(r3)
/* 80198D58 00195CB8  38 7F 00 04 */	addi r3, r31, 4
/* 80198D5C 00195CBC  48 01 79 A5 */	bl __ct__19P2DPaneCallBackBaseFP7P2DPane11P2DPaneType
/* 80198D60 00195CC0  3C 60 80 2D */	lis r3, __vt__15P2DPaneCallBack@ha
/* 80198D64 00195CC4  38 03 2F F4 */	addi r0, r3, __vt__15P2DPaneCallBack@l
/* 80198D68 00195CC8  3C 60 80 2D */	lis r3, __vt__Q23zen17TextColorCallBack@ha
/* 80198D6C 00195CCC  90 1F 00 00 */	stw r0, 0(r31)
/* 80198D70 00195CD0  38 03 62 F4 */	addi r0, r3, __vt__Q23zen17TextColorCallBack@l
/* 80198D74 00195CD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80198D78 00195CD8  38 00 00 00 */	li r0, 0
/* 80198D7C 00195CDC  38 7F 00 00 */	addi r3, r31, 0
/* 80198D80 00195CE0  93 DF 00 04 */	stw r30, 4(r31)
/* 80198D84 00195CE4  98 1F 00 08 */	stb r0, 8(r31)
/* 80198D88 00195CE8  C0 02 B3 10 */	lfs f0, lbl_803EB510@sda21(r2)
/* 80198D8C 00195CEC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80198D90 00195CF0  C0 02 B3 14 */	lfs f0, lbl_803EB514@sda21(r2)
/* 80198D94 00195CF4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80198D98 00195CF8  80 9F 00 04 */	lwz r4, 4(r31)
/* 80198D9C 00195CFC  88 04 00 F4 */	lbz r0, 0xf4(r4)
/* 80198DA0 00195D00  98 01 00 2C */	stb r0, 0x2c(r1)
/* 80198DA4 00195D04  88 04 00 F5 */	lbz r0, 0xf5(r4)
/* 80198DA8 00195D08  98 01 00 2D */	stb r0, 0x2d(r1)
/* 80198DAC 00195D0C  88 04 00 F6 */	lbz r0, 0xf6(r4)
/* 80198DB0 00195D10  98 01 00 2E */	stb r0, 0x2e(r1)
/* 80198DB4 00195D14  88 04 00 F7 */	lbz r0, 0xf7(r4)
/* 80198DB8 00195D18  98 01 00 2F */	stb r0, 0x2f(r1)
/* 80198DBC 00195D1C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80198DC0 00195D20  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80198DC4 00195D24  80 9F 00 04 */	lwz r4, 4(r31)
/* 80198DC8 00195D28  88 04 00 F8 */	lbz r0, 0xf8(r4)
/* 80198DCC 00195D2C  98 01 00 28 */	stb r0, 0x28(r1)
/* 80198DD0 00195D30  88 04 00 F9 */	lbz r0, 0xf9(r4)
/* 80198DD4 00195D34  98 01 00 29 */	stb r0, 0x29(r1)
/* 80198DD8 00195D38  88 04 00 FA */	lbz r0, 0xfa(r4)
/* 80198DDC 00195D3C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 80198DE0 00195D40  88 04 00 FB */	lbz r0, 0xfb(r4)
/* 80198DE4 00195D44  98 01 00 2B */	stb r0, 0x2b(r1)
/* 80198DE8 00195D48  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80198DEC 00195D4C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80198DF0 00195D50  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80198DF4 00195D54  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80198DF8 00195D58  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80198DFC 00195D5C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80198E00 00195D60  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80198E04 00195D64  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80198E08 00195D68  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80198E0C 00195D6C  38 21 00 38 */	addi r1, r1, 0x38
/* 80198E10 00195D70  7C 08 03 A6 */	mtlr r0
/* 80198E14 00195D74  4E 80 00 20 */	blr 

.global setTargetColor__Q23zen17TextColorCallBackFR6ColourR6Colourf
setTargetColor__Q23zen17TextColorCallBackFR6ColourR6Colourf:
/* 80198E18 00195D78  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80198E1C 00195D7C  80 04 00 00 */	lwz r0, 0(r4)
/* 80198E20 00195D80  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80198E24 00195D84  80 05 00 00 */	lwz r0, 0(r5)
/* 80198E28 00195D88  90 03 00 20 */	stw r0, 0x20(r3)
/* 80198E2C 00195D8C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80198E30 00195D90  C0 02 B3 14 */	lfs f0, lbl_803EB514@sda21(r2)
/* 80198E34 00195D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80198E38 00195D98  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80198E3C 00195D9C  40 81 00 68 */	ble .L_80198EA4
/* 80198E40 00195DA0  38 00 00 01 */	li r0, 1
/* 80198E44 00195DA4  98 03 00 08 */	stb r0, 8(r3)
/* 80198E48 00195DA8  80 83 00 04 */	lwz r4, 4(r3)
/* 80198E4C 00195DAC  88 04 00 F4 */	lbz r0, 0xf4(r4)
/* 80198E50 00195DB0  98 01 00 44 */	stb r0, 0x44(r1)
/* 80198E54 00195DB4  88 04 00 F5 */	lbz r0, 0xf5(r4)
/* 80198E58 00195DB8  98 01 00 45 */	stb r0, 0x45(r1)
/* 80198E5C 00195DBC  88 04 00 F6 */	lbz r0, 0xf6(r4)
/* 80198E60 00195DC0  98 01 00 46 */	stb r0, 0x46(r1)
/* 80198E64 00195DC4  88 04 00 F7 */	lbz r0, 0xf7(r4)
/* 80198E68 00195DC8  98 01 00 47 */	stb r0, 0x47(r1)
/* 80198E6C 00195DCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80198E70 00195DD0  90 03 00 14 */	stw r0, 0x14(r3)
/* 80198E74 00195DD4  80 83 00 04 */	lwz r4, 4(r3)
/* 80198E78 00195DD8  88 04 00 F8 */	lbz r0, 0xf8(r4)
/* 80198E7C 00195DDC  98 01 00 40 */	stb r0, 0x40(r1)
/* 80198E80 00195DE0  88 04 00 F9 */	lbz r0, 0xf9(r4)
/* 80198E84 00195DE4  98 01 00 41 */	stb r0, 0x41(r1)
/* 80198E88 00195DE8  88 04 00 FA */	lbz r0, 0xfa(r4)
/* 80198E8C 00195DEC  98 01 00 42 */	stb r0, 0x42(r1)
/* 80198E90 00195DF0  88 04 00 FB */	lbz r0, 0xfb(r4)
/* 80198E94 00195DF4  98 01 00 43 */	stb r0, 0x43(r1)
/* 80198E98 00195DF8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80198E9C 00195DFC  90 03 00 18 */	stw r0, 0x18(r3)
/* 80198EA0 00195E00  48 00 00 34 */	b .L_80198ED4
.L_80198EA4:
/* 80198EA4 00195E04  38 00 00 00 */	li r0, 0
/* 80198EA8 00195E08  98 03 00 08 */	stb r0, 8(r3)
/* 80198EAC 00195E0C  80 04 00 00 */	lwz r0, 0(r4)
/* 80198EB0 00195E10  90 03 00 14 */	stw r0, 0x14(r3)
/* 80198EB4 00195E14  80 05 00 00 */	lwz r0, 0(r5)
/* 80198EB8 00195E18  90 03 00 18 */	stw r0, 0x18(r3)
/* 80198EBC 00195E1C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80198EC0 00195E20  80 04 00 00 */	lwz r0, 0(r4)
/* 80198EC4 00195E24  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80198EC8 00195E28  80 63 00 04 */	lwz r3, 4(r3)
/* 80198ECC 00195E2C  80 05 00 00 */	lwz r0, 0(r5)
/* 80198ED0 00195E30  90 03 00 F8 */	stw r0, 0xf8(r3)
.L_80198ED4:
/* 80198ED4 00195E34  38 21 00 48 */	addi r1, r1, 0x48
/* 80198ED8 00195E38  4E 80 00 20 */	blr 

.global invoke__Q23zen17TextColorCallBackFP7P2DPane
invoke__Q23zen17TextColorCallBackFP7P2DPane:
/* 80198EDC 00195E3C  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 80198EE0 00195E40  88 03 00 08 */	lbz r0, 8(r3)
/* 80198EE4 00195E44  28 00 00 00 */	cmplwi r0, 0
/* 80198EE8 00195E48  41 82 05 20 */	beq .L_80199408
/* 80198EEC 00195E4C  80 8D 2D EC */	lwz r4, gsys@sda21(r13)
/* 80198EF0 00195E50  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80198EF4 00195E54  C0 04 02 8C */	lfs f0, 0x28c(r4)
/* 80198EF8 00195E58  EC 01 00 2A */	fadds f0, f1, f0
/* 80198EFC 00195E5C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80198F00 00195E60  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80198F04 00195E64  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80198F08 00195E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80198F0C 00195E6C  40 81 00 14 */	ble .L_80198F20
/* 80198F10 00195E70  38 00 00 00 */	li r0, 0
/* 80198F14 00195E74  98 03 00 08 */	stb r0, 8(r3)
/* 80198F18 00195E78  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80198F1C 00195E7C  D0 03 00 10 */	stfs f0, 0x10(r3)
.L_80198F20:
/* 80198F20 00195E80  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80198F24 00195E84  3C 00 43 30 */	lis r0, 0x4330
/* 80198F28 00195E88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80198F2C 00195E8C  88 83 00 14 */	lbz r4, 0x14(r3)
/* 80198F30 00195E90  EC 21 00 24 */	fdivs f1, f1, f0
/* 80198F34 00195E94  88 A3 00 1C */	lbz r5, 0x1c(r3)
/* 80198F38 00195E98  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80198F3C 00195E9C  C0 02 B3 10 */	lfs f0, lbl_803EB510@sda21(r2)
/* 80198F40 00195EA0  90 A1 00 84 */	stw r5, 0x84(r1)
/* 80198F44 00195EA4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80198F48 00195EA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80198F4C 00195EAC  C8 A2 B3 20 */	lfd f5, lbl_803EB520@sda21(r2)
/* 80198F50 00195EB0  90 01 00 78 */	stw r0, 0x78(r1)
/* 80198F54 00195EB4  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 80198F58 00195EB8  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80198F5C 00195EBC  EC 82 28 28 */	fsubs f4, f2, f5
/* 80198F60 00195EC0  C0 42 B3 14 */	lfs f2, lbl_803EB514@sda21(r2)
/* 80198F64 00195EC4  EC 63 28 28 */	fsubs f3, f3, f5
/* 80198F68 00195EC8  EC 84 00 72 */	fmuls f4, f4, f1
/* 80198F6C 00195ECC  EC 63 00 32 */	fmuls f3, f3, f0
/* 80198F70 00195ED0  EC 64 18 2A */	fadds f3, f4, f3
/* 80198F74 00195ED4  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80198F78 00195ED8  4C 41 13 82 */	cror 2, 1, 2
/* 80198F7C 00195EDC  40 82 00 3C */	bne .L_80198FB8
/* 80198F80 00195EE0  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80198F84 00195EE4  C0 82 B3 18 */	lfs f4, lbl_803EB518@sda21(r2)
/* 80198F88 00195EE8  90 81 00 84 */	stw r4, 0x84(r1)
/* 80198F8C 00195EEC  90 01 00 78 */	stw r0, 0x78(r1)
/* 80198F90 00195EF0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80198F94 00195EF4  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80198F98 00195EF8  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 80198F9C 00195EFC  EC 63 28 28 */	fsubs f3, f3, f5
/* 80198FA0 00195F00  EC 42 28 28 */	fsubs f2, f2, f5
/* 80198FA4 00195F04  EC 63 00 72 */	fmuls f3, f3, f1
/* 80198FA8 00195F08  EC 42 00 32 */	fmuls f2, f2, f0
/* 80198FAC 00195F0C  EC 43 10 2A */	fadds f2, f3, f2
/* 80198FB0 00195F10  EC 44 10 2A */	fadds f2, f4, f2
/* 80198FB4 00195F14  48 00 00 38 */	b .L_80198FEC
.L_80198FB8:
/* 80198FB8 00195F18  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80198FBC 00195F1C  C0 42 B3 18 */	lfs f2, lbl_803EB518@sda21(r2)
/* 80198FC0 00195F20  90 81 00 84 */	stw r4, 0x84(r1)
/* 80198FC4 00195F24  90 01 00 78 */	stw r0, 0x78(r1)
/* 80198FC8 00195F28  90 01 00 80 */	stw r0, 0x80(r1)
/* 80198FCC 00195F2C  C8 81 00 78 */	lfd f4, 0x78(r1)
/* 80198FD0 00195F30  C8 61 00 80 */	lfd f3, 0x80(r1)
/* 80198FD4 00195F34  EC 84 28 28 */	fsubs f4, f4, f5
/* 80198FD8 00195F38  EC 63 28 28 */	fsubs f3, f3, f5
/* 80198FDC 00195F3C  EC 84 00 72 */	fmuls f4, f4, f1
/* 80198FE0 00195F40  EC 63 00 32 */	fmuls f3, f3, f0
/* 80198FE4 00195F44  EC 64 18 2A */	fadds f3, f4, f3
/* 80198FE8 00195F48  EC 43 10 28 */	fsubs f2, f3, f2
.L_80198FEC:
/* 80198FEC 00195F4C  FC 60 10 1E */	fctiwz f3, f2
/* 80198FF0 00195F50  3C 00 43 30 */	lis r0, 0x4330
/* 80198FF4 00195F54  C8 A2 B3 20 */	lfd f5, lbl_803EB520@sda21(r2)
/* 80198FF8 00195F58  C0 42 B3 14 */	lfs f2, lbl_803EB514@sda21(r2)
/* 80198FFC 00195F5C  D8 61 00 78 */	stfd f3, 0x78(r1)
/* 80199000 00195F60  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 80199004 00195F64  98 81 00 68 */	stb r4, 0x68(r1)
/* 80199008 00195F68  88 83 00 15 */	lbz r4, 0x15(r3)
/* 8019900C 00195F6C  88 A3 00 1D */	lbz r5, 0x1d(r3)
/* 80199010 00195F70  90 81 00 74 */	stw r4, 0x74(r1)
/* 80199014 00195F74  90 A1 00 84 */	stw r5, 0x84(r1)
/* 80199018 00195F78  90 01 00 80 */	stw r0, 0x80(r1)
/* 8019901C 00195F7C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80199020 00195F80  C8 81 00 80 */	lfd f4, 0x80(r1)
/* 80199024 00195F84  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 80199028 00195F88  EC 84 28 28 */	fsubs f4, f4, f5
/* 8019902C 00195F8C  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199030 00195F90  EC 84 00 72 */	fmuls f4, f4, f1
/* 80199034 00195F94  EC 63 00 32 */	fmuls f3, f3, f0
/* 80199038 00195F98  EC 64 18 2A */	fadds f3, f4, f3
/* 8019903C 00195F9C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80199040 00195FA0  4C 41 13 82 */	cror 2, 1, 2
/* 80199044 00195FA4  40 82 00 3C */	bne .L_80199080
/* 80199048 00195FA8  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8019904C 00195FAC  C0 82 B3 18 */	lfs f4, lbl_803EB518@sda21(r2)
/* 80199050 00195FB0  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80199054 00195FB4  90 01 00 70 */	stw r0, 0x70(r1)
/* 80199058 00195FB8  90 01 00 78 */	stw r0, 0x78(r1)
/* 8019905C 00195FBC  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 80199060 00195FC0  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 80199064 00195FC4  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199068 00195FC8  EC 42 28 28 */	fsubs f2, f2, f5
/* 8019906C 00195FCC  EC 63 00 72 */	fmuls f3, f3, f1
/* 80199070 00195FD0  EC 42 00 32 */	fmuls f2, f2, f0
/* 80199074 00195FD4  EC 43 10 2A */	fadds f2, f3, f2
/* 80199078 00195FD8  EC 44 10 2A */	fadds f2, f4, f2
/* 8019907C 00195FDC  48 00 00 38 */	b .L_801990B4
.L_80199080:
/* 80199080 00195FE0  90 A1 00 74 */	stw r5, 0x74(r1)
/* 80199084 00195FE4  C0 42 B3 18 */	lfs f2, lbl_803EB518@sda21(r2)
/* 80199088 00195FE8  90 81 00 7C */	stw r4, 0x7c(r1)
/* 8019908C 00195FEC  90 01 00 70 */	stw r0, 0x70(r1)
/* 80199090 00195FF0  90 01 00 78 */	stw r0, 0x78(r1)
/* 80199094 00195FF4  C8 81 00 70 */	lfd f4, 0x70(r1)
/* 80199098 00195FF8  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 8019909C 00195FFC  EC 84 28 28 */	fsubs f4, f4, f5
/* 801990A0 00196000  EC 63 28 28 */	fsubs f3, f3, f5
/* 801990A4 00196004  EC 84 00 72 */	fmuls f4, f4, f1
/* 801990A8 00196008  EC 63 00 32 */	fmuls f3, f3, f0
/* 801990AC 0019600C  EC 64 18 2A */	fadds f3, f4, f3
/* 801990B0 00196010  EC 43 10 28 */	fsubs f2, f3, f2
.L_801990B4:
/* 801990B4 00196014  FC 60 10 1E */	fctiwz f3, f2
/* 801990B8 00196018  3C 00 43 30 */	lis r0, 0x4330
/* 801990BC 0019601C  C8 A2 B3 20 */	lfd f5, lbl_803EB520@sda21(r2)
/* 801990C0 00196020  C0 42 B3 14 */	lfs f2, lbl_803EB514@sda21(r2)
/* 801990C4 00196024  D8 61 00 70 */	stfd f3, 0x70(r1)
/* 801990C8 00196028  80 81 00 74 */	lwz r4, 0x74(r1)
/* 801990CC 0019602C  98 81 00 69 */	stb r4, 0x69(r1)
/* 801990D0 00196030  88 83 00 16 */	lbz r4, 0x16(r3)
/* 801990D4 00196034  88 A3 00 1E */	lbz r5, 0x1e(r3)
/* 801990D8 00196038  90 81 00 84 */	stw r4, 0x84(r1)
/* 801990DC 0019603C  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 801990E0 00196040  90 01 00 78 */	stw r0, 0x78(r1)
/* 801990E4 00196044  90 01 00 80 */	stw r0, 0x80(r1)
/* 801990E8 00196048  C8 81 00 78 */	lfd f4, 0x78(r1)
/* 801990EC 0019604C  C8 61 00 80 */	lfd f3, 0x80(r1)
/* 801990F0 00196050  EC 84 28 28 */	fsubs f4, f4, f5
/* 801990F4 00196054  EC 63 28 28 */	fsubs f3, f3, f5
/* 801990F8 00196058  EC 84 00 72 */	fmuls f4, f4, f1
/* 801990FC 0019605C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80199100 00196060  EC 64 18 2A */	fadds f3, f4, f3
/* 80199104 00196064  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80199108 00196068  4C 41 13 82 */	cror 2, 1, 2
/* 8019910C 0019606C  40 82 00 3C */	bne .L_80199148
/* 80199110 00196070  90 A1 00 74 */	stw r5, 0x74(r1)
/* 80199114 00196074  C0 82 B3 18 */	lfs f4, lbl_803EB518@sda21(r2)
/* 80199118 00196078  90 81 00 7C */	stw r4, 0x7c(r1)
/* 8019911C 0019607C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80199120 00196080  90 01 00 78 */	stw r0, 0x78(r1)
/* 80199124 00196084  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 80199128 00196088  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 8019912C 0019608C  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199130 00196090  EC 42 28 28 */	fsubs f2, f2, f5
/* 80199134 00196094  EC 63 00 72 */	fmuls f3, f3, f1
/* 80199138 00196098  EC 42 00 32 */	fmuls f2, f2, f0
/* 8019913C 0019609C  EC 43 10 2A */	fadds f2, f3, f2
/* 80199140 001960A0  EC 44 10 2A */	fadds f2, f4, f2
/* 80199144 001960A4  48 00 00 38 */	b .L_8019917C
.L_80199148:
/* 80199148 001960A8  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8019914C 001960AC  C0 42 B3 18 */	lfs f2, lbl_803EB518@sda21(r2)
/* 80199150 001960B0  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80199154 001960B4  90 01 00 70 */	stw r0, 0x70(r1)
/* 80199158 001960B8  90 01 00 78 */	stw r0, 0x78(r1)
/* 8019915C 001960BC  C8 81 00 70 */	lfd f4, 0x70(r1)
/* 80199160 001960C0  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80199164 001960C4  EC 84 28 28 */	fsubs f4, f4, f5
/* 80199168 001960C8  EC 63 28 28 */	fsubs f3, f3, f5
/* 8019916C 001960CC  EC 84 00 72 */	fmuls f4, f4, f1
/* 80199170 001960D0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80199174 001960D4  EC 64 18 2A */	fadds f3, f4, f3
/* 80199178 001960D8  EC 43 10 28 */	fsubs f2, f3, f2
.L_8019917C:
/* 8019917C 001960DC  FC 60 10 1E */	fctiwz f3, f2
/* 80199180 001960E0  3C 00 43 30 */	lis r0, 0x4330
/* 80199184 001960E4  C8 A2 B3 20 */	lfd f5, lbl_803EB520@sda21(r2)
/* 80199188 001960E8  C0 42 B3 14 */	lfs f2, lbl_803EB514@sda21(r2)
/* 8019918C 001960EC  D8 61 00 70 */	stfd f3, 0x70(r1)
/* 80199190 001960F0  80 81 00 74 */	lwz r4, 0x74(r1)
/* 80199194 001960F4  98 81 00 6A */	stb r4, 0x6a(r1)
/* 80199198 001960F8  80 E3 00 04 */	lwz r7, 4(r3)
/* 8019919C 001960FC  88 C7 00 F7 */	lbz r6, 0xf7(r7)
/* 801991A0 00196100  98 C1 00 6B */	stb r6, 0x6b(r1)
/* 801991A4 00196104  88 83 00 18 */	lbz r4, 0x18(r3)
/* 801991A8 00196108  88 A3 00 20 */	lbz r5, 0x20(r3)
/* 801991AC 0019610C  90 81 00 84 */	stw r4, 0x84(r1)
/* 801991B0 00196110  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 801991B4 00196114  90 01 00 78 */	stw r0, 0x78(r1)
/* 801991B8 00196118  90 01 00 80 */	stw r0, 0x80(r1)
/* 801991BC 0019611C  C8 81 00 78 */	lfd f4, 0x78(r1)
/* 801991C0 00196120  C8 61 00 80 */	lfd f3, 0x80(r1)
/* 801991C4 00196124  EC 84 28 28 */	fsubs f4, f4, f5
/* 801991C8 00196128  EC 63 28 28 */	fsubs f3, f3, f5
/* 801991CC 0019612C  EC 84 00 72 */	fmuls f4, f4, f1
/* 801991D0 00196130  EC 63 00 32 */	fmuls f3, f3, f0
/* 801991D4 00196134  EC 64 18 2A */	fadds f3, f4, f3
/* 801991D8 00196138  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 801991DC 0019613C  4C 41 13 82 */	cror 2, 1, 2
/* 801991E0 00196140  40 82 00 3C */	bne .L_8019921C
/* 801991E4 00196144  90 A1 00 74 */	stw r5, 0x74(r1)
/* 801991E8 00196148  C0 82 B3 18 */	lfs f4, lbl_803EB518@sda21(r2)
/* 801991EC 0019614C  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801991F0 00196150  90 01 00 70 */	stw r0, 0x70(r1)
/* 801991F4 00196154  90 01 00 78 */	stw r0, 0x78(r1)
/* 801991F8 00196158  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 801991FC 0019615C  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 80199200 00196160  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199204 00196164  EC 42 28 28 */	fsubs f2, f2, f5
/* 80199208 00196168  EC 63 00 72 */	fmuls f3, f3, f1
/* 8019920C 0019616C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80199210 00196170  EC 43 10 2A */	fadds f2, f3, f2
/* 80199214 00196174  EC 44 10 2A */	fadds f2, f4, f2
/* 80199218 00196178  48 00 00 38 */	b .L_80199250
.L_8019921C:
/* 8019921C 0019617C  90 A1 00 74 */	stw r5, 0x74(r1)
/* 80199220 00196180  C0 42 B3 18 */	lfs f2, lbl_803EB518@sda21(r2)
/* 80199224 00196184  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80199228 00196188  90 01 00 70 */	stw r0, 0x70(r1)
/* 8019922C 0019618C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80199230 00196190  C8 81 00 70 */	lfd f4, 0x70(r1)
/* 80199234 00196194  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80199238 00196198  EC 84 28 28 */	fsubs f4, f4, f5
/* 8019923C 0019619C  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199240 001961A0  EC 84 00 72 */	fmuls f4, f4, f1
/* 80199244 001961A4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80199248 001961A8  EC 64 18 2A */	fadds f3, f4, f3
/* 8019924C 001961AC  EC 43 10 28 */	fsubs f2, f3, f2
.L_80199250:
/* 80199250 001961B0  FC 60 10 1E */	fctiwz f3, f2
/* 80199254 001961B4  3C 00 43 30 */	lis r0, 0x4330
/* 80199258 001961B8  C8 A2 B3 20 */	lfd f5, lbl_803EB520@sda21(r2)
/* 8019925C 001961BC  C0 42 B3 14 */	lfs f2, lbl_803EB514@sda21(r2)
/* 80199260 001961C0  D8 61 00 70 */	stfd f3, 0x70(r1)
/* 80199264 001961C4  80 81 00 74 */	lwz r4, 0x74(r1)
/* 80199268 001961C8  98 81 00 64 */	stb r4, 0x64(r1)
/* 8019926C 001961CC  88 83 00 19 */	lbz r4, 0x19(r3)
/* 80199270 001961D0  88 A3 00 21 */	lbz r5, 0x21(r3)
/* 80199274 001961D4  90 81 00 84 */	stw r4, 0x84(r1)
/* 80199278 001961D8  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 8019927C 001961DC  90 01 00 78 */	stw r0, 0x78(r1)
/* 80199280 001961E0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80199284 001961E4  C8 81 00 78 */	lfd f4, 0x78(r1)
/* 80199288 001961E8  C8 61 00 80 */	lfd f3, 0x80(r1)
/* 8019928C 001961EC  EC 84 28 28 */	fsubs f4, f4, f5
/* 80199290 001961F0  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199294 001961F4  EC 84 00 72 */	fmuls f4, f4, f1
/* 80199298 001961F8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8019929C 001961FC  EC 64 18 2A */	fadds f3, f4, f3
/* 801992A0 00196200  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 801992A4 00196204  4C 41 13 82 */	cror 2, 1, 2
/* 801992A8 00196208  40 82 00 3C */	bne .L_801992E4
/* 801992AC 0019620C  90 A1 00 74 */	stw r5, 0x74(r1)
/* 801992B0 00196210  C0 82 B3 18 */	lfs f4, lbl_803EB518@sda21(r2)
/* 801992B4 00196214  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801992B8 00196218  90 01 00 70 */	stw r0, 0x70(r1)
/* 801992BC 0019621C  90 01 00 78 */	stw r0, 0x78(r1)
/* 801992C0 00196220  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 801992C4 00196224  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 801992C8 00196228  EC 63 28 28 */	fsubs f3, f3, f5
/* 801992CC 0019622C  EC 42 28 28 */	fsubs f2, f2, f5
/* 801992D0 00196230  EC 63 00 72 */	fmuls f3, f3, f1
/* 801992D4 00196234  EC 42 00 32 */	fmuls f2, f2, f0
/* 801992D8 00196238  EC 43 10 2A */	fadds f2, f3, f2
/* 801992DC 0019623C  EC 44 10 2A */	fadds f2, f4, f2
/* 801992E0 00196240  48 00 00 38 */	b .L_80199318
.L_801992E4:
/* 801992E4 00196244  90 A1 00 74 */	stw r5, 0x74(r1)
/* 801992E8 00196248  C0 42 B3 18 */	lfs f2, lbl_803EB518@sda21(r2)
/* 801992EC 0019624C  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801992F0 00196250  90 01 00 70 */	stw r0, 0x70(r1)
/* 801992F4 00196254  90 01 00 78 */	stw r0, 0x78(r1)
/* 801992F8 00196258  C8 81 00 70 */	lfd f4, 0x70(r1)
/* 801992FC 0019625C  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 80199300 00196260  EC 84 28 28 */	fsubs f4, f4, f5
/* 80199304 00196264  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199308 00196268  EC 84 00 72 */	fmuls f4, f4, f1
/* 8019930C 0019626C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80199310 00196270  EC 64 18 2A */	fadds f3, f4, f3
/* 80199314 00196274  EC 43 10 28 */	fsubs f2, f3, f2
.L_80199318:
/* 80199318 00196278  FC 60 10 1E */	fctiwz f3, f2
/* 8019931C 0019627C  3C 00 43 30 */	lis r0, 0x4330
/* 80199320 00196280  C8 A2 B3 20 */	lfd f5, lbl_803EB520@sda21(r2)
/* 80199324 00196284  C0 42 B3 14 */	lfs f2, lbl_803EB514@sda21(r2)
/* 80199328 00196288  D8 61 00 70 */	stfd f3, 0x70(r1)
/* 8019932C 0019628C  80 81 00 74 */	lwz r4, 0x74(r1)
/* 80199330 00196290  98 81 00 65 */	stb r4, 0x65(r1)
/* 80199334 00196294  88 83 00 1A */	lbz r4, 0x1a(r3)
/* 80199338 00196298  88 A3 00 22 */	lbz r5, 0x22(r3)
/* 8019933C 0019629C  90 81 00 84 */	stw r4, 0x84(r1)
/* 80199340 001962A0  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80199344 001962A4  90 01 00 78 */	stw r0, 0x78(r1)
/* 80199348 001962A8  90 01 00 80 */	stw r0, 0x80(r1)
/* 8019934C 001962AC  C8 81 00 78 */	lfd f4, 0x78(r1)
/* 80199350 001962B0  C8 61 00 80 */	lfd f3, 0x80(r1)
/* 80199354 001962B4  EC 84 28 28 */	fsubs f4, f4, f5
/* 80199358 001962B8  EC 63 28 28 */	fsubs f3, f3, f5
/* 8019935C 001962BC  EC 84 00 72 */	fmuls f4, f4, f1
/* 80199360 001962C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80199364 001962C4  EC 64 18 2A */	fadds f3, f4, f3
/* 80199368 001962C8  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8019936C 001962CC  4C 41 13 82 */	cror 2, 1, 2
/* 80199370 001962D0  40 82 00 3C */	bne .L_801993AC
/* 80199374 001962D4  90 A1 00 74 */	stw r5, 0x74(r1)
/* 80199378 001962D8  C0 82 B3 18 */	lfs f4, lbl_803EB518@sda21(r2)
/* 8019937C 001962DC  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80199380 001962E0  90 01 00 70 */	stw r0, 0x70(r1)
/* 80199384 001962E4  90 01 00 78 */	stw r0, 0x78(r1)
/* 80199388 001962E8  C8 61 00 70 */	lfd f3, 0x70(r1)
/* 8019938C 001962EC  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 80199390 001962F0  EC 63 28 28 */	fsubs f3, f3, f5
/* 80199394 001962F4  EC 42 28 28 */	fsubs f2, f2, f5
/* 80199398 001962F8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8019939C 001962FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801993A0 00196300  EC 01 00 2A */	fadds f0, f1, f0
/* 801993A4 00196304  EC 04 00 2A */	fadds f0, f4, f0
/* 801993A8 00196308  48 00 00 38 */	b .L_801993E0
.L_801993AC:
/* 801993AC 0019630C  90 A1 00 74 */	stw r5, 0x74(r1)
/* 801993B0 00196310  C0 42 B3 18 */	lfs f2, lbl_803EB518@sda21(r2)
/* 801993B4 00196314  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801993B8 00196318  90 01 00 70 */	stw r0, 0x70(r1)
/* 801993BC 0019631C  90 01 00 78 */	stw r0, 0x78(r1)
/* 801993C0 00196320  C8 81 00 70 */	lfd f4, 0x70(r1)
/* 801993C4 00196324  C8 61 00 78 */	lfd f3, 0x78(r1)
/* 801993C8 00196328  EC 84 28 28 */	fsubs f4, f4, f5
/* 801993CC 0019632C  EC 63 28 28 */	fsubs f3, f3, f5
/* 801993D0 00196330  EC 24 00 72 */	fmuls f1, f4, f1
/* 801993D4 00196334  EC 03 00 32 */	fmuls f0, f3, f0
/* 801993D8 00196338  EC 01 00 2A */	fadds f0, f1, f0
/* 801993DC 0019633C  EC 00 10 28 */	fsubs f0, f0, f2
.L_801993E0:
/* 801993E0 00196340  FC 00 00 1E */	fctiwz f0, f0
/* 801993E4 00196344  80 01 00 68 */	lwz r0, 0x68(r1)
/* 801993E8 00196348  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 801993EC 0019634C  80 81 00 74 */	lwz r4, 0x74(r1)
/* 801993F0 00196350  98 81 00 66 */	stb r4, 0x66(r1)
/* 801993F4 00196354  98 C1 00 67 */	stb r6, 0x67(r1)
/* 801993F8 00196358  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 801993FC 0019635C  80 63 00 04 */	lwz r3, 4(r3)
/* 80199400 00196360  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80199404 00196364  90 03 00 F8 */	stw r0, 0xf8(r3)
.L_80199408:
/* 80199408 00196368  38 60 00 01 */	li r3, 1
/* 8019940C 0019636C  38 21 00 88 */	addi r1, r1, 0x88
/* 80199410 00196370  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802D6248:
	.asciz "ogCallBack.cpp"
.balign 4
lbl_802D6258:
	.asciz "OgCallBackSection"
.balign 4
lbl_802D626C:
	.asciz "zen::TextColorCallBack"
.balign 4
lbl_802D6284:
	.asciz "P2DPaneCallBackBase"
.balign 4
lbl_802D6298:
	.asciz "zen::CallBack1<P2DPane *>"
.balign 4
lbl_802D62B4:
	.asciz "P2DPaneCallBack"
.balign 4
lbl_802D62C4:
	.4byte __RTTI__19P2DPaneCallBackBase
	.4byte 0x00000004
	.4byte "__RTTI__Q23zen20CallBack1<P7P2DPane>"
	.4byte 0x00000000
	.4byte 0x00000000
lbl_802D62D8:
	.4byte __RTTI__19P2DPaneCallBackBase
	.4byte 0x00000004
	.4byte "__RTTI__Q23zen20CallBack1<P7P2DPane>"
	.4byte 0x00000000
	.4byte __RTTI__15P2DPaneCallBack
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q23zen17TextColorCallBack
__vt__Q23zen17TextColorCallBack:
	.4byte __RTTI__Q23zen17TextColorCallBack
	.4byte 0
	.4byte invoke__Q23zen17TextColorCallBackFP7P2DPane
	.4byte draw__15P2DPaneCallBackFP7P2DPane
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
__RTTI__19P2DPaneCallBackBase:
	.4byte lbl_802D6284
	.4byte 0x00000000
"__RTTI__Q23zen20CallBack1<P7P2DPane>":
	.4byte lbl_802D6298
	.4byte 0x00000000
__RTTI__15P2DPaneCallBack:
	.4byte lbl_802D62B4
	.4byte lbl_802D62C4
__RTTI__Q23zen17TextColorCallBack:
	.4byte lbl_802D626C
	.4byte lbl_802D62D8

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB510:
	.float 1.0
lbl_803EB514:
	.float 0.0
lbl_803EB518:
	.float 0.5
.balign 8
lbl_803EB520:
	.4byte 0x43300000
	.4byte 0x00000000
