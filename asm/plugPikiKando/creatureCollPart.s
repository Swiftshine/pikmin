.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 800CCCF0 000C9C50  41 82 FF 50 */	beq lbl_800CCC40
lbl_800CCCF4:
/* 800CCCF4 000C9C54  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)
/* 800CCCF8 000C9C58  38 00 FF FF */	li r0, -1
/* 800CCCFC 000C9C5C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 800CCD00 000C9C60  C0 03 02 78 */	lfs f0, 0x278(r3)
/* 800CCD04 000C9C64  D0 1E 02 70 */	stfs f0, 0x270(r30)
/* 800CCD08 000C9C68  80 7E 02 8C */	lwz r3, 0x28c(r30)
/* 800CCD0C 000C9C6C  80 9E 05 2C */	lwz r4, 0x52c(r30)
/* 800CCD10 000C9C70  28 03 00 00 */	cmplwi r3, 0
/* 800CCD14 000C9C74  83 E4 00 04 */	lwz r31, 4(r4)
/* 800CCD18 000C9C78  41 82 00 0C */	beq lbl_800CCD24
/* 800CCD1C 000C9C7C  48 04 93 65 */	bl getAttribute__7MapCodeFP11CollTriInfo
/* 800CCD20 000C9C80  7C 60 1B 78 */	mr r0, r3
lbl_800CCD24:
/* 800CCD24 000C9C84  2C 00 00 05 */	cmpwi r0, 5
/* 800CCD28 000C9C88  3B 80 00 00 */	li r28, 0
/* 800CCD2C 000C9C8C  40 82 00 0C */	bne lbl_800CCD38
/* 800CCD30 000C9C90  3B 80 00 01 */	li r28, 1
/* 800CCD34 000C9C94  48 00 00 4C */	b lbl_800CCD80
lbl_800CCD38:
/* 800CCD38 000C9C98  83 BE 01 84 */	lwz r29, 0x184(r30)
/* 800CCD3C 000C9C9C  28 1D 00 00 */	cmplwi r29, 0
/* 800CCD40 000C9CA0  41 82 00 40 */	beq lbl_800CCD80
/* 800CCD44 000C9CA4  41 82 00 3C */	beq lbl_800CCD80
/* 800CCD48 000C9CA8  80 7D 02 8C */	lwz r3, 0x28c(r29)
/* 800CCD4C 000C9CAC  28 03 00 00 */	cmplwi r3, 0
/* 800CCD50 000C9CB0  41 82 00 30 */	beq lbl_800CCD80
/* 800CCD54 000C9CB4  48 04 93 2D */	bl getAttribute__7MapCodeFP11CollTriInfo
/* 800CCD58 000C9CB8  2C 03 00 05 */	cmpwi r3, 5
/* 800CCD5C 000C9CBC  40 82 00 24 */	bne lbl_800CCD80
/* 800CCD60 000C9CC0  C0 5D 00 98 */	lfs f2, 0x98(r29)
/* 800CCD64 000C9CC4  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 800CCD68 000C9CC8  C0 02 96 0C */	lfs f0, lbl_803E980C@sda21(r2)
/* 800CCD6C 000C9CCC  EC 22 08 28 */	fsubs f1, f2, f1
/* 800CCD70 000C9CD0  FC 20 0A 10 */	fabs f1, f1
/* 800CCD74 000C9CD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CCD78 000C9CD8  40 80 00 08 */	bge lbl_800CCD80
/* 800CCD7C 000C9CDC  3B 80 00 01 */	li r28, 1
lbl_800CCD80:
/* 800CCD80 000C9CE0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800CCD84 000C9CE4  41 82 02 34 */	beq lbl_800CCFB8
/* 800CCD88 000C9CE8  80 7E 05 2C */	lwz r3, 0x52c(r30)
/* 800CCD8C 000C9CEC  80 03 00 04 */	lwz r0, 4(r3)
/* 800CCD90 000C9CF0  2C 00 00 0D */	cmpwi r0, 0xd
/* 800CCD94 000C9CF4  41 82 02 24 */	beq lbl_800CCFB8
/* 800CCD98 000C9CF8  A0 1E 04 26 */	lhz r0, 0x426(r30)
/* 800CCD9C 000C9CFC  28 00 00 00 */	cmplwi r0, 0
/* 800CCDA0 000C9D00  40 82 00 9C */	bne lbl_800CCE3C
/* 800CCDA4 000C9D04  C0 22 95 B8 */	lfs f1, lbl_803E97B8@sda21(r2)
/* 800CCDA8 000C9D08  38 1E 04 4C */	addi r0, r30, 0x44c
/* 800CCDAC 000C9D0C  C0 02 95 E0 */	lfs f0, lbl_803E97E0@sda21(r2)
/* 800CCDB0 000C9D10  38 81 00 F8 */	addi r4, r1, 0xf8
/* 800CCDB4 000C9D14  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 800CCDB8 000C9D18  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 800CCDBC 000C9D1C  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 800CCDC0 000C9D20  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 800CCDC4 000C9D24  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 800CCDC8 000C9D28  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 800CCDCC 000C9D2C  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 800CCDD0 000C9D30  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 800CCDD4 000C9D34  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 800CCDD8 000C9D38  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 800CCDDC 000C9D3C  90 01 01 18 */	stw r0, 0x118(r1)
/* 800CCDE0 000C9D40  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 800CCDE4 000C9D44  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 800CCDE8 000C9D48  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 800CCDEC 000C9D4C  80 7E 04 4C */	lwz r3, 0x44c(r30)
/* 800CCDF0 000C9D50  80 1E 04 50 */	lwz r0, 0x450(r30)
/* 800CCDF4 000C9D54  90 61 00 CC */	stw r3, 0xcc(r1)
/* 800CCDF8 000C9D58  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 800CCDFC 000C9D5C  80 1E 04 54 */	lwz r0, 0x454(r30)
/* 800CCE00 000C9D60  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 800CCE04 000C9D64  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 800CCE08 000C9D68  80 7E 04 30 */	lwz r3, 0x430(r30)
/* 800CCE0C 000C9D6C  81 83 00 00 */	lwz r12, 0(r3)
/* 800CCE10 000C9D70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800CCE14 000C9D74  7D 88 03 A6 */	mtlr r12
/* 800CCE18 000C9D78  4E 80 00 21 */	blrl 
/* 800CCE1C 000C9D7C  38 60 00 11 */	li r3, 0x11
/* 800CCE20 000C9D80  38 81 00 CC */	addi r4, r1, 0xcc
/* 800CCE24 000C9D84  48 04 74 BD */	bl cast__11UtEffectMgrFiR10EffectParm
/* 800CCE28 000C9D88  80 6D 30 38 */	lwz r3, seSystem@sda21(r13)
/* 800CCE2C 000C9D8C  38 DE 00 94 */	addi r6, r30, 0x94
/* 800CCE30 000C9D90  38 80 00 05 */	li r4, 5
/* 800CCE34 000C9D94  38 A0 00 B4 */	li r5, 0xb4
/* 800CCE38 000C9D98  4B FD 75 FD */	bl playSoundDirect__8SeSystemFiiR8Vector3f
lbl_800CCE3C:
/* 800CCE3C 000C9D9C  38 00 00 01 */	li r0, 1
/* 800CCE40 000C9DA0  98 1E 04 24 */	stb r0, 0x424(r30)
/* 800CCE44 000C9DA4  A0 7E 04 26 */	lhz r3, 0x426(r30)
/* 800CCE48 000C9DA8  38 03 00 01 */	addi r0, r3, 1
/* 800CCE4C 000C9DAC  B0 1E 04 26 */	sth r0, 0x426(r30)
/* 800CCE50 000C9DB0  A0 1E 04 26 */	lhz r0, 0x426(r30)
/* 800CCE54 000C9DB4  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 800CCE58 000C9DB8  40 81 00 0C */	ble lbl_800CCE64
/* 800CCE5C 000C9DBC  38 00 03 E8 */	li r0, 0x3e8
/* 800CCE60 000C9DC0  B0 1E 04 26 */	sth r0, 0x426(r30)
lbl_800CCE64:
/* 800CCE64 000C9DC4  A0 1E 05 10 */	lhz r0, 0x510(r30)
/* 800CCE68 000C9DC8  28 00 00 00 */	cmplwi r0, 0
/* 800CCE6C 000C9DCC  40 82 00 14 */	bne lbl_800CCE80
/* 800CCE70 000C9DD0  80 6D 2F 6C */	lwz r3, playerState@sda21(r13)
/* 800CCE74 000C9DD4  38 80 00 26 */	li r4, 0x26
/* 800CCE78 000C9DD8  38 63 00 70 */	addi r3, r3, 0x70
/* 800CCE7C 000C9DDC  4B FB 6B 85 */	bl setOn__11ResultFlagsFi
lbl_800CCE80:
/* 800CCE80 000C9DE0  2C 1F 00 08 */	cmpwi r31, 8
/* 800CCE84 000C9DE4  41 82 01 68 */	beq lbl_800CCFEC
/* 800CCE88 000C9DE8  2C 1F 00 07 */	cmpwi r31, 7
/* 800CCE8C 000C9DEC  41 82 01 60 */	beq lbl_800CCFEC
/* 800CCE90 000C9DF0  2C 1F 00 06 */	cmpwi r31, 6
/* 800CCE94 000C9DF4  41 82 01 58 */	beq lbl_800CCFEC
/* 800CCE98 000C9DF8  2C 1F 00 21 */	cmpwi r31, 0x21
/* 800CCE9C 000C9DFC  41 82 01 50 */	beq lbl_800CCFEC
/* 800CCEA0 000C9E00  2C 1F 00 18 */	cmpwi r31, 0x18
/* 800CCEA4 000C9E04  41 82 01 48 */	beq lbl_800CCFEC
/* 800CCEA8 000C9E08  2C 1F 00 0E */	cmpwi r31, 0xe
/* 800CCEAC 000C9E0C  41 82 01 40 */	beq lbl_800CCFEC
/* 800CCEB0 000C9E10  A0 1E 05 10 */	lhz r0, 0x510(r30)
/* 800CCEB4 000C9E14  28 00 00 00 */	cmplwi r0, 0
/* 800CCEB8 000C9E18  41 82 01 34 */	beq lbl_800CCFEC
/* 800CCEBC 000C9E1C  7F C3 F3 78 */	mr r3, r30
/* 800CCEC0 000C9E20  81 9E 00 00 */	lwz r12, 0(r30)
/* 800CCEC4 000C9E24  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 800CCEC8 000C9E28  7D 88 03 A6 */	mtlr r12
/* 800CCECC 000C9E2C  4E 80 00 21 */	blrl 
/* 800CCED0 000C9E30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CCED4 000C9E34  41 82 01 18 */	beq lbl_800CCFEC
/* 800CCED8 000C9E38  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)
/* 800CCEDC 000C9E3C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 800CCEE0 000C9E40  3B E3 04 98 */	addi r31, r3, 0x498
/* 800CCEE4 000C9E44  48 14 B1 8D */	bl rand
/* 800CCEE8 000C9E48  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 800CCEEC 000C9E4C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800CCEF0 000C9E50  90 61 01 5C */	stw r3, 0x15c(r1)
/* 800CCEF4 000C9E54  3C 80 43 30 */	lis r4, 0x4330
/* 800CCEF8 000C9E58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800CCEFC 000C9E5C  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 801E2E20 001DFD80  93 E1 00 D4 */	stw r31, 0xd4(r1)
/* 801E2E24 001DFD84  3B E0 00 00 */	li r31, 0
/* 801E2E28 001DFD88  93 C1 00 D0 */	stw r30, 0xd0(r1)
/* 801E2E2C 001DFD8C  7C 7E 1B 78 */	mr r30, r3
/* 801E2E30 001DFD90  93 A1 00 CC */	stw r29, 0xcc(r1)
/* 801E2E34 001DFD94  93 81 00 C8 */	stw r28, 0xc8(r1)
/* 801E2E38 001DFD98  80 8D 2D EC */	lwz r4, gsys@sda21(r13)
/* 801E2E3C 001DFD9C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801E2E40 001DFDA0  C0 04 02 8C */	lfs f0, 0x28c(r4)
/* 801E2E44 001DFDA4  EC 21 00 2A */	fadds f1, f1, f0
/* 801E2E48 001DFDA8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 801E2E4C 001DFDAC  C0 02 BE 7C */	lfs f0, lbl_803EC07C@sda21(r2)
/* 801E2E50 001DFDB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E2E54 001DFDB4  40 81 00 08 */	ble lbl_801E2E5C
/* 801E2E58 001DFDB8  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_801E2E5C:
/* 801E2E5C 001DFDBC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 801E2E60 001DFDC0  C0 02 BE 7C */	lfs f0, lbl_803EC07C@sda21(r2)
/* 801E2E64 001DFDC4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801E2E68 001DFDC8  EF C1 00 24 */	fdivs f30, f1, f0
/* 801E2E6C 001DFDCC  C0 02 BE B8 */	lfs f0, lbl_803EC0B8@sda21(r2)
/* 801E2E70 001DFDD0  AB 83 00 1E */	lha r28, 0x1e(r3)
/* 801E2E74 001DFDD4  3B A3 00 04 */	addi r29, r3, 4
/* 801E2E78 001DFDD8  EF E0 07 B2 */	fmuls f31, f0, f30
/* 801E2E7C 001DFDDC  FC 20 F8 90 */	fmr f1, f31
/* 801E2E80 001DFDE0  48 03 8E 69 */	bl sinf
/* 801E2E84 001DFDE4  A8 9D 00 18 */	lha r4, 0x18(r29)
/* 801E2E88 001DFDE8  3C 00 43 30 */	lis r0, 0x4330
/* 801E2E8C 001DFDEC  A8 7D 00 1C */	lha r3, 0x1c(r29)
/* 801E2E90 001DFDF0  C0 02 BE 7C */	lfs f0, lbl_803EC07C@sda21(r2)
/* 801E2E94 001DFDF4  7C 64 18 50 */	subf r3, r4, r3
/* 801E2E98 001DFDF8  C8 62 BE 98 */	lfd f3, "@2872"@sda21(r2)
/* 801E2E9C 001DFDFC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801E2EA0 001DFE00  C0 82 BF 44 */	lfs f4, lbl_803EC144@sda21(r2)
/* 801E2EA4 001DFE04  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 801E2EA8 001DFE08  EC 20 08 28 */	fsubs f1, f0, f1
/* 801E2EAC 001DFE0C  C0 02 BE 78 */	lfs f0, lbl_803EC078@sda21(r2)
/* 801E2EB0 001DFE10  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801E2EB4 001DFE14  C8 41 00 C0 */	lfd f2, 0xc0(r1)
/* 801E2EB8 001DFE18  EC 42 18 28 */	fsubs f2, f2, f3
/* 801E2EBC 001DFE1C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801E2EC0 001DFE20  EC 22 00 72 */	fmuls f1, f2, f1
/* 801E2EC4 001DFE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E2EC8 001DFE28  4C 41 13 82 */	cror 2, 1, 2
/* 801E2ECC 001DFE2C  40 82 00 10 */	bne lbl_801E2EDC
/* 801E2ED0 001DFE30  C0 02 BE AC */	lfs f0, lbl_803EC0AC@sda21(r2)
/* 801E2ED4 001DFE34  EC 00 08 2A */	fadds f0, f0, f1
/* 801E2ED8 001DFE38  48 00 00 0C */	b lbl_801E2EE4
lbl_801E2EDC:
/* 801E2EDC 001DFE3C  C0 02 BE AC */	lfs f0, lbl_803EC0AC@sda21(r2)
/* 801E2EE0 001DFE40  EC 01 00 28 */	fsubs f0, f1, f0
lbl_801E2EE4:
/* 801E2EE4 001DFE44  FC 00 00 1E */	fctiwz f0, f0
/* 801E2EE8 001DFE48  81 9D 00 00 */	lwz r12, 0(r29)
/* 801E2EEC 001DFE4C  7F A3 EB 78 */	mr r3, r29
/* 801E2EF0 001DFE50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801E2EF4 001DFE54  7F 85 E3 78 */	mr r5, r28
/* 801E2EF8 001DFE58  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 801E2EFC 001DFE5C  7D 88 03 A6 */	mtlr r12
/* 801E2F00 001DFE60  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 801E2F04 001DFE64  4E 80 00 21 */	blrl 
/* 801E2F08 001DFE68  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801E2F0C 001DFE6C  FC 20 F8 90 */	fmr f1, f31
/* 801E2F10 001DFE70  AB 83 00 1E */	lha r28, 0x1e(r3)
/* 801E2F14 001DFE74  3B A3 00 04 */	addi r29, r3, 4
/* 801E2F18 001DFE78  48 03 8D D1 */	bl sinf
/* 801E2F1C 001DFE7C  A8 9D 00 18 */	lha r4, 0x18(r29)
/* 801E2F20 001DFE80  3C 00 43 30 */	lis r0, 0x4330
/* 801E2F24 001DFE84  A8 7D 00 1C */	lha r3, 0x1c(r29)
/* 801E2F28 001DFE88  C0 02 BE 7C */	lfs f0, lbl_803EC07C@sda21(r2)
/* 801E2F2C 001DFE8C  7C 64 18 50 */	subf r3, r4, r3
/* 801E2F30 001DFE90  C8 62 BE 98 */	lfd f3, "@2872"@sda21(r2)
/* 801E2F34 001DFE94  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801E2F38 001DFE98  C0 82 BF 44 */	lfs f4, lbl_803EC144@sda21(r2)
/* 801E2F3C 001DFE9C  90 61 00 BC */	stw r3, 0xbc(r1)
/* 801E2F40 001DFEA0  EC 20 08 28 */	fsubs f1, f0, f1
/* 801E2F44 001DFEA4  C0 02 BE 78 */	lfs f0, lbl_803EC078@sda21(r2)
/* 801E2F48 001DFEA8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 801E2F4C 001DFEAC  C8 41 00 B8 */	lfd f2, 0xb8(r1)
/* 801E2F50 001DFEB0  EC 42 18 28 */	fsubs f2, f2, f3
/* 801E2F54 001DFEB4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801E2F58 001DFEB8  EC 22 00 72 */	fmuls f1, f2, f1
/* 801E2F5C 001DFEBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E2F60 001DFEC0  4C 41 13 82 */	cror 2, 1, 2
/* 801E2F64 001DFEC4  40 82 00 10 */	bne lbl_801E2F74
/* 801E2F68 001DFEC8  C0 02 BE AC */	lfs f0, lbl_803EC0AC@sda21(r2)
/* 801E2F6C 001DFECC  EC 00 08 2A */	fadds f0, f0, f1
/* 801E2F70 001DFED0  48 00 00 0C */	b lbl_801E2F7C
lbl_801E2F74:
/* 801E2F74 001DFED4  C0 02 BE AC */	lfs f0, lbl_803EC0AC@sda21(r2)
/* 801E2F78 001DFED8  EC 01 00 28 */	fsubs f0, f1, f0
lbl_801E2F7C:
/* 801E2F7C 001DFEDC  FC 00 00 1E */	fctiwz f0, f0
/* 801E2F80 001DFEE0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801E2F84 001DFEE4  7F A3 EB 78 */	mr r3, r29
/* 801E2F88 001DFEE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801E2F8C 001DFEEC  7F 85 E3 78 */	mr r5, r28
/* 801E2F90 001DFEF0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 801E2F94 001DFEF4  7D 88 03 A6 */	mtlr r12
/* 801E2F98 001DFEF8  80 81 00 BC */	lwz r4, 0xbc(r1)
/* 801E2F9C 001DFEFC  4E 80 00 21 */	blrl 
/* 801E2FA0 001DFF00  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801E2FA4 001DFF04  FC 20 F8 90 */	fmr f1, f31
/* 801E2FA8 001DFF08  3B A3 00 04 */	addi r29, r3, 4
/* 801E2FAC 001DFF0C  48 03 8D 3D */	bl sinf
/* 801E2FB0 001DFF10  A8 9D 00 1A */	lha r4, 0x1a(r29)
/* 801E2FB4 001DFF14  3C 00 43 30 */	lis r0, 0x4330
/* 801E2FB8 001DFF18  A8 7D 00 1E */	lha r3, 0x1e(r29)
/* 801E2FBC 001DFF1C  C0 02 BE 7C */	lfs f0, lbl_803EC07C@sda21(r2)
/* 801E2FC0 001DFF20  7C 64 18 50 */	subf r3, r4, r3
/* 801E2FC4 001DFF24  C8 62 BE 98 */	lfd f3, "@2872"@sda21(r2)
/* 801E2FC8 001DFF28  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801E2FCC 001DFF2C  C0 82 BF 44 */	lfs f4, lbl_803EC144@sda21(r2)
/* 801E2FD0 001DFF30  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 801E2FD4 001DFF34  EC 20 08 28 */	fsubs f1, f0, f1
/* 801E2FD8 001DFF38  C0 02 BE 78 */	lfs f0, lbl_803EC078@sda21(r2)
/* 801E2FDC 001DFF3C  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801E2FE0 001DFF40  C8 41 00 C0 */	lfd f2, 0xc0(r1)
/* 801E2FE4 001DFF44  EC 42 18 28 */	fsubs f2, f2, f3
/* 801E2FE8 001DFF48  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801E2FEC 001DFF4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 801E2FF0 001DFF50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E2FF4 001DFF54  4C 41 13 82 */	cror 2, 1, 2
/* 801E2FF8 001DFF58  40 82 00 10 */	bne lbl_801E3008
/* 801E2FFC 001DFF5C  C0 02 BE AC */	lfs f0, lbl_803EC0AC@sda21(r2)
/* 801E3000 001DFF60  EC 00 08 2A */	fadds f0, f0, f1
/* 801E3004 001DFF64  48 00 00 0C */	b lbl_801E3010
lbl_801E3008:
/* 801E3008 001DFF68  C0 02 BE AC */	lfs f0, lbl_803EC0AC@sda21(r2)
/* 801E300C 001DFF6C  EC 01 00 28 */	fsubs f0, f1, f0
lbl_801E3010:
/* 801E3010 001DFF70  FC 00 00 1E */	fctiwz f0, f0
/* 801E3014 001DFF74  FC 20 F8 90 */	fmr f1, f31
/* 801E3018 001DFF78  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 801E301C 001DFF7C  83 81 00 BC */	lwz r28, 0xbc(r1)
/* 801E3020 001DFF80  48 03 8C C9 */	bl sinf
/* 801E3024 001DFF84  A8 9D 00 18 */	lha r4, 0x18(r29)
/* 801E3028 001DFF88  3C 00 43 30 */	lis r0, 0x4330
/* 801E302C 001DFF8C  A8 7D 00 1C */	lha r3, 0x1c(r29)

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
	.4byte 0x63726561
	.4byte 0x74757265
	.4byte 0x436f6c6c
	.4byte 0x50617274
	.4byte 0x2e637070
	.4byte 0
	.4byte 0x63726561
	.4byte 0x74757265
	.4byte 0x436f6c6c
	.4byte 0x50617274
	.4byte 0
	.4byte 0x43726561
	.4byte 0x74757265
	.4byte 0x436f6c6c
	.4byte 0x50617274
	.4byte 0
	.4byte 0x436f7265
	.4byte 0x4e6f6465
	.4byte 0
	.4byte 0x803df060
	.4byte 0
	.4byte 0
	.4byte 0x803df060
	.4byte 0
	.4byte 0x803df068
	.4byte 0
	.4byte 0
	.4byte 0x44796e43
	.4byte 0x6f6c6c4f
	.4byte 0x626a6563
	.4byte 0x74000000
	.4byte 0x803df060
	.4byte 0
	.4byte 0x803df068
	.4byte 0
	.4byte 0x803df078
	.4byte 0
	.4byte 0
	.4byte 0x44796e43
	.4byte 0x6f6c6c53
	.4byte 0x68617065
	.4byte 0
	.4byte 0x803df060
	.4byte 0
	.4byte 0x803df068
	.4byte 0
	.4byte 0x803df078
	.4byte 0
	.4byte 0x803df080
	.4byte 0
	.4byte 0
	.4byte 0x803df060
	.4byte 0
	.4byte 0x803df068
	.4byte 0
	.4byte 0x803df078
	.4byte 0
	.4byte 0x803df080
	.4byte 0
	.4byte __RTTI__12DynCollShape_1
	.4byte 0
	.4byte 0
.global __vt__16CreatureCollPart
__vt__16CreatureCollPart:
	.4byte __RTTI__16CreatureCollPart
	.4byte 0
	.4byte getAgeNodeType__5ANodeFv
	.4byte read__8CoreNodeFR18RandomAccessStream
	.4byte update__16CreatureCollPartFv
	.4byte draw__4NodeFR8Graphics
	.4byte render__4NodeFR8Graphics
	.4byte concat__4NodeFv
	.4byte concat__4NodeFR3VQS
	.4byte concat__4NodeFR3SRT
	.4byte concat__4NodeFR8Matrix4f
	.4byte getModelMatrix__4NodeFv
	.4byte adjust__12DynCollShapeFP8Creature
	.4byte applyVelocity__13DynCollObjectFR5PlaneR8Vector3fR8Vector3f
	.4byte touchCallback__16CreatureCollPartFR5PlaneR8Vector3fR8Vector3f
	.4byte getShape__12DynCollShapeFv
	.4byte jointVisible__12DynCollShapeFii
	.4byte refresh__16CreatureCollPartFR8Graphics

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.global lbl_803DF028
lbl_803DF028:
	.4byte 0x00000000
.global lbl_803DF02C
lbl_803DF02C:
	.4byte 0x00000000
	.4byte 0x802AF08C
	.4byte 0x00000000
	.4byte 0x802AF0A4
	.4byte 0x00000000
	.4byte 0x802AF0B0
	.4byte 0x00000000
	.4byte 0x802AF080
	.4byte 0x802AF0C0
.global lbl_803DF050
lbl_803DF050:
	.4byte 0x00000000
.global lbl_803DF054
lbl_803DF054:
	.4byte 0xBF800000
	.4byte 0x414E6F64
	.4byte 0x65000000
	.4byte 0x803DF058
	.4byte 0x00000000
