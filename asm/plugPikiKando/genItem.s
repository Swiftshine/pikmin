.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
lbl_8012CF54:
/* 8012CF54 00129EB4  3C 60 80 2B */	lis r3, __vt__9Condition@ha
/* 8012CF58 00129EB8  38 03 F0 98 */	addi r0, r3, __vt__9Condition@l
/* 8012CF5C 00129EBC  3C 60 80 2C */	lis r3, __vt__13TekiCondition@ha
/* 8012CF60 00129EC0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8012CF64 00129EC4  38 03 69 64 */	addi r0, r3, __vt__13TekiCondition@l
/* 8012CF68 00129EC8  3C 60 80 2D */	lis r3, __vt__26TekiVisibleHeightCondition@ha
/* 8012CF6C 00129ECC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8012CF70 00129ED0  38 03 D4 D4 */	addi r0, r3, __vt__26TekiVisibleHeightCondition@l
/* 8012CF74 00129ED4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8012CF78 00129ED8  38 61 00 30 */	addi r3, r1, 0x30
/* 8012CF7C 00129EDC  93 C1 00 34 */	stw r30, 0x34(r1)
/* 8012CF80 00129EE0  81 81 00 30 */	lwz r12, 0x30(r1)
/* 8012CF84 00129EE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8012CF88 00129EE8  7D 88 03 A6 */	mtlr r12
/* 8012CF8C 00129EEC  4E 80 00 21 */	blrl 
/* 8012CF90 00129EF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012CF94 00129EF4  40 82 00 54 */	bne lbl_8012CFE8
/* 8012CF98 00129EF8  80 7E 04 24 */	lwz r3, 0x424(r30)
/* 8012CF9C 00129EFC  28 03 00 00 */	cmplwi r3, 0
/* 8012CFA0 00129F00  41 82 00 14 */	beq lbl_8012CFB4
/* 8012CFA4 00129F04  41 82 00 10 */	beq lbl_8012CFB4
/* 8012CFA8 00129F08  4B FB 73 C5 */	bl subCnt__12RefCountableFv
/* 8012CFAC 00129F0C  38 00 00 00 */	li r0, 0
/* 8012CFB0 00129F10  90 1E 04 24 */	stw r0, 0x424(r30)
lbl_8012CFB4:
/* 8012CFB4 00129F14  93 FE 04 24 */	stw r31, 0x424(r30)
/* 8012CFB8 00129F18  80 7E 04 24 */	lwz r3, 0x424(r30)
/* 8012CFBC 00129F1C  28 03 00 00 */	cmplwi r3, 0
/* 8012CFC0 00129F20  41 82 00 08 */	beq lbl_8012CFC8
/* 8012CFC4 00129F24  4B FB 73 99 */	bl addCnt__12RefCountableFv
lbl_8012CFC8:
/* 8012CFC8 00129F28  80 7E 04 18 */	lwz r3, 0x418(r30)
/* 8012CFCC 00129F2C  28 03 00 00 */	cmplwi r3, 0
/* 8012CFD0 00129F30  41 82 00 10 */	beq lbl_8012CFE0
/* 8012CFD4 00129F34  4B FB 73 99 */	bl subCnt__12RefCountableFv
/* 8012CFD8 00129F38  38 00 00 00 */	li r0, 0
/* 8012CFDC 00129F3C  90 1E 04 18 */	stw r0, 0x418(r30)
lbl_8012CFE0:
/* 8012CFE0 00129F40  38 60 00 01 */	li r3, 1
/* 8012CFE4 00129F44  48 00 00 08 */	b lbl_8012CFEC
lbl_8012CFE8:
/* 8012CFE8 00129F48  38 60 00 00 */	li r3, 0
lbl_8012CFEC:
/* 8012CFEC 00129F4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012CFF0 00129F50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8012CFF4 00129F54  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8012CFF8 00129F58  38 21 00 40 */	addi r1, r1, 0x40
/* 8012CFFC 00129F5C  7C 08 03 A6 */	mtlr r0
/* 8012D000 00129F60  4E 80 00 20 */	blr 

.global act__43TaiCollecVisibleHeightPelletLostTimerActionFR4Teki
act__43TaiCollecVisibleHeightPelletLostTimerActionFR4Teki:
/* 8012D004 00129F64  7C 08 02 A6 */	mflr r0
/* 8012D008 00129F68  90 01 00 04 */	stw r0, 4(r1)
/* 8012D00C 00129F6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012D010 00129F70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012D014 00129F74  7C 9F 23 78 */	mr r31, r4
/* 8012D018 00129F78  80 03 00 08 */	lwz r0, 8(r3)
/* 8012D01C 00129F7C  C0 02 A2 A0 */	lfs f0, lbl_803EA4A0@sda21(r2)
/* 8012D020 00129F80  54 00 10 3A */	slwi r0, r0, 2
/* 8012D024 00129F84  7C 7F 02 14 */	add r3, r31, r0
/* 8012D028 00129F88  C0 23 03 C4 */	lfs f1, 0x3c4(r3)
/* 8012D02C 00129F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012D030 00129F90  4C 40 13 82 */	cror 2, 0, 2
/* 8012D034 00129F94  40 82 00 1C */	bne lbl_8012D050
/* 8012D038 00129F98  80 7F 04 24 */	lwz r3, 0x424(r31)
/* 8012D03C 00129F9C  28 03 00 00 */	cmplwi r3, 0
/* 8012D040 00129FA0  41 82 00 10 */	beq lbl_8012D050
/* 8012D044 00129FA4  4B FB 73 29 */	bl subCnt__12RefCountableFv
/* 8012D048 00129FA8  38 00 00 00 */	li r0, 0
/* 8012D04C 00129FAC  90 1F 04 24 */	stw r0, 0x424(r31)
lbl_8012D050:
/* 8012D050 00129FB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012D054 00129FB4  38 60 00 00 */	li r3, 0
/* 8012D058 00129FB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012D05C 00129FBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8012D060 00129FC0  7C 08 03 A6 */	mtlr r0
/* 8012D064 00129FC4  4E 80 00 20 */	blr 

.global act__25TaiCollecPelletLostActionFR4Teki
act__25TaiCollecPelletLostActionFR4Teki:
/* 8012D068 00129FC8  7C 08 02 A6 */	mflr r0
/* 8012D06C 00129FCC  90 01 00 04 */	stw r0, 4(r1)
/* 8012D070 00129FD0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8012D074 00129FD4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8012D078 00129FD8  7C 9F 23 78 */	mr r31, r4
/* 8012D07C 00129FDC  80 04 04 18 */	lwz r0, 0x418(r4)
/* 8012D080 00129FE0  28 00 00 00 */	cmplwi r0, 0
/* 8012D084 00129FE4  7C 04 03 78 */	mr r4, r0
/* 8012D088 00129FE8  40 82 00 0C */	bne lbl_8012D094
/* 8012D08C 00129FEC  38 60 00 01 */	li r3, 1
/* 8012D090 00129FF0  48 00 00 C0 */	b lbl_8012D150
lbl_8012D094:
/* 8012D094 00129FF4  80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 8012D098 00129FF8  3C E0 80 2D */	lis r7, __vt__20TekiVisibleCondition@ha
/* 8012D09C 00129FFC  3D 20 80 2B */	lis r9, __vt__9Condition@ha
/* 8012D0A0 0012A000  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012D0A4 0012A004  3D 00 80 2C */	lis r8, __vt__13TekiCondition@ha
/* 8012D0A8 0012A008  3C C0 80 2C */	lis r6, __vt__31TekiCollecTargetPelletCondition@ha
/* 8012D0AC 0012A00C  81 43 00 00 */	lwz r10, 0(r3)
/* 8012D0B0 0012A010  3C A0 80 2C */	lis r5, __vt__16TekiAndCondition@ha
/* 8012D0B4 0012A014  38 E7 D5 0C */	addi r7, r7, __vt__20TekiVisibleCondition@l
/* 8012D0B8 0012A018  81 6A 00 00 */	lwz r11, 0(r10)
/* 8012D0BC 0012A01C  39 49 F0 98 */	addi r10, r9, __vt__9Condition@l
/* 8012D0C0 0012A020  39 28 69 64 */	addi r9, r8, __vt__13TekiCondition@l
/* 8012D0C4 0012A024  81 6B 00 50 */	lwz r11, 0x50(r11)
/* 8012D0C8 0012A028  39 06 7B 34 */	addi r8, r6, __vt__31TekiCollecTargetPelletCondition@l
/* 8012D0CC 0012A02C  38 C5 68 5C */	addi r6, r5, __vt__16TekiAndCondition@l
/* 8012D0D0 0012A030  91 41 00 84 */	stw r10, 0x84(r1)
/* 8012D0D4 0012A034  38 A1 00 90 */	addi r5, r1, 0x90
/* 8012D0D8 0012A038  38 01 00 84 */	addi r0, r1, 0x84
/* 8012D0DC 0012A03C  91 41 00 98 */	stw r10, 0x98(r1)
/* 8012D0E0 0012A040  38 61 00 98 */	addi r3, r1, 0x98
/* 8012D0E4 0012A044  91 21 00 84 */	stw r9, 0x84(r1)
/* 8012D0E8 0012A048  91 41 00 90 */	stw r10, 0x90(r1)
/* 8012D0EC 0012A04C  91 21 00 98 */	stw r9, 0x98(r1)
/* 8012D0F0 0012A050  91 01 00 84 */	stw r8, 0x84(r1)
/* 8012D0F4 0012A054  91 21 00 90 */	stw r9, 0x90(r1)
/* 8012D0F8 0012A058  90 C1 00 98 */	stw r6, 0x98(r1)
/* 8012D0FC 0012A05C  93 E1 00 88 */	stw r31, 0x88(r1)
/* 8012D100 0012A060  90 E1 00 90 */	stw r7, 0x90(r1)
/* 8012D104 0012A064  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 8012D108 0012A068  91 61 00 8C */	stw r11, 0x8c(r1)
/* 8012D10C 0012A06C  93 E1 00 94 */	stw r31, 0x94(r1)
/* 8012D110 0012A070  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8012D114 0012A074  81 81 00 98 */	lwz r12, 0x98(r1)
/* 8012D118 0012A078  81 8C 00 08 */	lwz r12, 8(r12)
/* 8012D11C 0012A07C  7D 88 03 A6 */	mtlr r12
/* 8012D120 0012A080  4E 80 00 21 */	blrl 
/* 8012D124 0012A084  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D128 0012A088  40 82 00 24 */	bne lbl_8012D14C
/* 8012D12C 0012A08C  80 7F 04 18 */	lwz r3, 0x418(r31)
/* 8012D130 0012A090  28 03 00 00 */	cmplwi r3, 0
/* 8012D134 0012A094  41 82 00 10 */	beq lbl_8012D144
/* 8012D138 0012A098  4B FB 72 35 */	bl subCnt__12RefCountableFv
/* 8012D13C 0012A09C  38 00 00 00 */	li r0, 0
/* 8012D140 0012A0A0  90 1F 04 18 */	stw r0, 0x418(r31)
lbl_8012D144:
/* 8012D144 0012A0A4  38 60 00 01 */	li r3, 1
/* 8012D148 0012A0A8  48 00 00 08 */	b lbl_8012D150
lbl_8012D14C:
/* 8012D14C 0012A0AC  38 60 00 00 */	li r3, 0
lbl_8012D150:
/* 8012D150 0012A0B0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8012D154 0012A0B4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8012D158 0012A0B8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8012D15C 0012A0BC  7C 08 03 A6 */	mtlr r0
/* 8012D160 0012A0C0  4E 80 00 20 */	blr 

.global act__32TaiCollecPelletDisappearedActionFR4Teki
act__32TaiCollecPelletDisappearedActionFR4Teki:
/* 8012D164 0012A0C4  7C 08 02 A6 */	mflr r0
/* 8012D168 0012A0C8  90 01 00 04 */	stw r0, 4(r1)
/* 8012D16C 0012A0CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8012D170 0012A0D0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8012D174 0012A0D4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8012D178 0012A0D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8012D17C 0012A0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D180 0012A0E0  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 8012D184 0012A0E4  3B DF 04 20 */	addi r30, r31, 0x420
/* 8012D188 0012A0E8  28 00 00 00 */	cmplwi r0, 0
/* 8012D18C 0012A0EC  7C 04 03 78 */	mr r4, r0
/* 8012D190 0012A0F0  40 82 00 0C */	bne lbl_8012D19C
/* 8012D194 0012A0F4  38 60 00 01 */	li r3, 1
/* 8012D198 0012A0F8  48 00 00 70 */	b lbl_8012D208
lbl_8012D19C:
/* 8012D19C 0012A0FC  3C 60 80 2B */	lis r3, __vt__9Condition@ha
/* 8012D1A0 0012A100  38 03 F0 98 */	addi r0, r3, __vt__9Condition@l
/* 8012D1A4 0012A104  3C 60 80 2C */	lis r3, __vt__13TekiCondition@ha
/* 8012D1A8 0012A108  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8012D1AC 0012A10C  38 03 69 64 */	addi r0, r3, __vt__13TekiCondition@l
/* 8012D1B0 0012A110  3C 60 80 2D */	lis r3, __vt__20TekiVisibleCondition@ha
/* 8012D1B4 0012A114  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8012D1B8 0012A118  38 03 D5 0C */	addi r0, r3, __vt__20TekiVisibleCondition@l
/* 8012D1BC 0012A11C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8012D1C0 0012A120  38 61 00 3C */	addi r3, r1, 0x3c
/* 8012D1C4 0012A124  93 E1 00 40 */	stw r31, 0x40(r1)
/* 8012D1C8 0012A128  81 81 00 3C */	lwz r12, 0x3c(r1)
/* 8012D1CC 0012A12C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8012D1D0 0012A130  7D 88 03 A6 */	mtlr r12
/* 8012D1D4 0012A134  4E 80 00 21 */	blrl 
/* 8012D1D8 0012A138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D1DC 0012A13C  40 82 00 28 */	bne lbl_8012D204
/* 8012D1E0 0012A140  80 1E 00 00 */	lwz r0, 0(r30)
/* 8012D1E4 0012A144  28 00 00 00 */	cmplwi r0, 0
/* 8012D1E8 0012A148  41 82 00 14 */	beq lbl_8012D1FC
/* 8012D1EC 0012A14C  80 7F 04 20 */	lwz r3, 0x420(r31)
/* 8012D1F0 0012A150  4B FB 71 7D */	bl subCnt__12RefCountableFv
/* 8012D1F4 0012A154  38 00 00 00 */	li r0, 0
/* 8012D1F8 0012A158  90 1F 04 20 */	stw r0, 0x420(r31)
lbl_8012D1FC:
/* 8012D1FC 0012A15C  38 60 00 01 */	li r3, 1
/* 8012D200 0012A160  48 00 00 08 */	b lbl_8012D208
lbl_8012D204:
/* 8012D204 0012A164  38 60 00 00 */	li r3, 0
lbl_8012D208:
/* 8012D208 0012A168  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012D20C 0012A16C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8012D210 0012A170  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8012D214 0012A174  38 21 00 50 */	addi r1, r1, 0x50
/* 8012D218 0012A178  7C 08 03 A6 */	mtlr r0
/* 8012D21C 0012A17C  4E 80 00 20 */	blr 

.global act__25TaiCollecHoldPelletActionFR4Teki
act__25TaiCollecHoldPelletActionFR4Teki:
/* 8012D220 0012A180  7C 08 02 A6 */	mflr r0
/* 8012D224 0012A184  90 01 00 04 */	stw r0, 4(r1)
/* 8012D228 0012A188  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012D22C 0012A18C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8012D230 0012A190  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8012D234 0012A194  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8012D238 0012A198  7C 9E 23 78 */	mr r30, r4
/* 8012D23C 0012A19C  83 E4 04 18 */	lwz r31, 0x418(r4)
/* 8012D240 0012A1A0  28 1F 00 00 */	cmplwi r31, 0
/* 8012D244 0012A1A4  38 9F 00 00 */	addi r4, r31, 0
/* 8012D248 0012A1A8  40 82 00 0C */	bne lbl_8012D254
/* 8012D24C 0012A1AC  38 60 00 00 */	li r3, 0
/* 8012D250 0012A1B0  48 00 00 C4 */	b lbl_8012D314
lbl_8012D254:
/* 8012D254 0012A1B4  7F C3 F3 78 */	mr r3, r30
/* 8012D258 0012A1B8  48 01 C8 49 */	bl calcCollisionDistance__5BTekiFR8Creature
/* 8012D25C 0012A1BC  C3 E2 A2 B0 */	lfs f31, lbl_803EA4B0@sda21(r2)
/* 8012D260 0012A1C0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012D264 0012A1C4  40 81 00 0C */	ble lbl_8012D270
/* 8012D268 0012A1C8  38 60 00 00 */	li r3, 0
/* 8012D26C 0012A1CC  48 00 00 A8 */	b lbl_8012D314
lbl_8012D270:
/* 8012D270 0012A1D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8012D274 0012A1D4  7F C3 F3 78 */	mr r3, r30
/* 8012D278 0012A1D8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8012D27C 0012A1DC  7D 88 03 A6 */	mtlr r12
/* 8012D280 0012A1E0  4E 80 00 21 */	blrl 
/* 8012D284 0012A1E4  EC 3F 08 2A */	fadds f1, f31, f1
/* 8012D288 0012A1E8  38 7F 00 00 */	addi r3, r31, 0
/* 8012D28C 0012A1EC  38 9E 00 00 */	addi r4, r30, 0
/* 8012D290 0012A1F0  4B F6 8D 21 */	bl startStickTeki__6PelletFP8Creaturef
/* 8012D294 0012A1F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D298 0012A1F8  40 82 00 24 */	bne lbl_8012D2BC
/* 8012D29C 0012A1FC  80 7E 04 18 */	lwz r3, 0x418(r30)
/* 8012D2A0 0012A200  28 03 00 00 */	cmplwi r3, 0
/* 8012D2A4 0012A204  41 82 00 10 */	beq lbl_8012D2B4
/* 8012D2A8 0012A208  4B FB 70 C5 */	bl subCnt__12RefCountableFv
/* 8012D2AC 0012A20C  38 00 00 00 */	li r0, 0
/* 8012D2B0 0012A210  90 1E 04 18 */	stw r0, 0x418(r30)
lbl_8012D2B4:
/* 8012D2B4 0012A214  38 60 00 00 */	li r3, 0
/* 8012D2B8 0012A218  48 00 00 5C */	b lbl_8012D314
lbl_8012D2BC:
/* 8012D2BC 0012A21C  80 7E 04 18 */	lwz r3, 0x418(r30)
/* 8012D2C0 0012A220  28 03 00 00 */	cmplwi r3, 0
/* 8012D2C4 0012A224  41 82 00 10 */	beq lbl_8012D2D4
/* 8012D2C8 0012A228  4B FB 70 A5 */	bl subCnt__12RefCountableFv
/* 8012D2CC 0012A22C  38 00 00 00 */	li r0, 0
/* 8012D2D0 0012A230  90 1E 04 18 */	stw r0, 0x418(r30)
lbl_8012D2D4:
/* 8012D2D4 0012A234  80 7E 04 20 */	lwz r3, 0x420(r30)
/* 8012D2D8 0012A238  28 03 00 00 */	cmplwi r3, 0
/* 8012D2DC 0012A23C  41 82 00 14 */	beq lbl_8012D2F0
/* 8012D2E0 0012A240  41 82 00 10 */	beq lbl_8012D2F0
/* 8012D2E4 0012A244  4B FB 70 89 */	bl subCnt__12RefCountableFv
/* 8012D2E8 0012A248  38 00 00 00 */	li r0, 0
/* 8012D2EC 0012A24C  90 1E 04 20 */	stw r0, 0x420(r30)
lbl_8012D2F0:
/* 8012D2F0 0012A250  93 FE 04 20 */	stw r31, 0x420(r30)
/* 8012D2F4 0012A254  80 7E 04 20 */	lwz r3, 0x420(r30)
/* 8012D2F8 0012A258  28 03 00 00 */	cmplwi r3, 0
/* 8012D2FC 0012A25C  41 82 00 08 */	beq lbl_8012D304
/* 8012D300 0012A260  4B FB 70 5D */	bl addCnt__12RefCountableFv
lbl_8012D304:
/* 8012D304 0012A264  38 7E 00 00 */	addi r3, r30, 0
/* 8012D308 0012A268  38 80 00 02 */	li r4, 2
/* 8012D30C 0012A26C  48 01 C6 ED */	bl startParticleGenerator__5BTekiFi
/* 8012D310 0012A270  38 60 00 01 */	li r3, 1
lbl_8012D314:
/* 8012D314 0012A274  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012D318 0012A278  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8012D31C 0012A27C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8012D320 0012A280  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8012D324 0012A284  38 21 00 30 */	addi r1, r1, 0x30
/* 8012D328 0012A288  7C 08 03 A6 */	mtlr r0
/* 8012D32C 0012A28C  4E 80 00 20 */	blr 

.global start__23TaiCollecCatchingActionFR4Teki
start__23TaiCollecCatchingActionFR4Teki:
/* 8012D330 0012A290  7C 08 02 A6 */	mflr r0
/* 8012D334 0012A294  90 01 00 04 */	stw r0, 4(r1)
/* 8012D338 0012A298  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012D33C 0012A29C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012D340 0012A2A0  7C 9F 23 78 */	mr r31, r4
/* 8012D344 0012A2A4  7F E3 FB 78 */	mr r3, r31
/* 8012D348 0012A2A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012D34C 0012A2AC  80 8D F6 44 */	lwz r4, TEKI_OPTION_MANUAL_ANIMATION__5BTeki@sda21(r13)
/* 8012D350 0012A2B0  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 8012D354 0012A2B4  7D 88 03 A6 */	mtlr r12
/* 8012D358 0012A2B8  4E 80 00 21 */	blrl 
/* 8012D35C 0012A2BC  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 8012D360 0012A2C0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8012D364 0012A2C4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8012D368 0012A2C8  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 8012D36C 0012A2CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012D370 0012A2D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012D374 0012A2D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8012D378 0012A2D8  7C 08 03 A6 */	mtlr r0
/* 8012D37C 0012A2DC  4E 80 00 20 */	blr 

.global finish__23TaiCollecCatchingActionFR4Teki
finish__23TaiCollecCatchingActionFR4Teki:
/* 8012D380 0012A2E0  7C 08 02 A6 */	mflr r0
/* 8012D384 0012A2E4  7C 83 23 78 */	mr r3, r4
/* 8012D388 0012A2E8  90 01 00 04 */	stw r0, 4(r1)
/* 8012D38C 0012A2EC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8012D390 0012A2F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8012D394 0012A2F4  80 8D F6 44 */	lwz r4, TEKI_OPTION_MANUAL_ANIMATION__5BTeki@sda21(r13)
/* 8012D398 0012A2F8  81 8C 01 D0 */	lwz r12, 0x1d0(r12)
/* 8012D39C 0012A2FC  7D 88 03 A6 */	mtlr r12
/* 8012D3A0 0012A300  4E 80 00 21 */	blrl 
/* 8012D3A4 0012A304  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8012D3A8 0012A308  38 21 00 08 */	addi r1, r1, 8
/* 8012D3AC 0012A30C  7C 08 03 A6 */	mtlr r0
/* 8012D3B0 0012A310  4E 80 00 20 */	blr 

.global start__23TaiCollecCarryingActionFR4Teki
start__23TaiCollecCarryingActionFR4Teki:
/* 8012D3B4 0012A314  7C 08 02 A6 */	mflr r0
/* 8012D3B8 0012A318  7C 83 23 78 */	mr r3, r4
/* 8012D3BC 0012A31C  90 01 00 04 */	stw r0, 4(r1)
/* 8012D3C0 0012A320  94 21 FF F8 */	stwu r1, -8(r1)
/* 8012D3C4 0012A324  81 83 00 00 */	lwz r12, 0(r3)
/* 8012D3C8 0012A328  80 8D F6 44 */	lwz r4, TEKI_OPTION_MANUAL_ANIMATION__5BTeki@sda21(r13)
/* 8012D3CC 0012A32C  81 8C 01 CC */	lwz r12, 0x1cc(r12)
/* 8012D3D0 0012A330  7D 88 03 A6 */	mtlr r12
/* 8012D3D4 0012A334  4E 80 00 21 */	blrl 
/* 8012D3D8 0012A338  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8012D3DC 0012A33C  38 21 00 08 */	addi r1, r1, 8
/* 8012D3E0 0012A340  7C 08 03 A6 */	mtlr r0
/* 8012D3E4 0012A344  4E 80 00 20 */	blr 

.global finish__23TaiCollecCarryingActionFR4Teki
finish__23TaiCollecCarryingActionFR4Teki:
/* 8012D3E8 0012A348  7C 08 02 A6 */	mflr r0
/* 8012D3EC 0012A34C  7C 83 23 78 */	mr r3, r4
/* 8012D3F0 0012A350  90 01 00 04 */	stw r0, 4(r1)
/* 8012D3F4 0012A354  94 21 FF F8 */	stwu r1, -8(r1)
/* 8012D3F8 0012A358  81 83 00 00 */	lwz r12, 0(r3)
/* 8012D3FC 0012A35C  80 8D F6 44 */	lwz r4, TEKI_OPTION_MANUAL_ANIMATION__5BTeki@sda21(r13)
/* 8012D400 0012A360  81 8C 01 D0 */	lwz r12, 0x1d0(r12)
/* 8012D404 0012A364  7D 88 03 A6 */	mtlr r12
/* 8012D408 0012A368  4E 80 00 21 */	blrl 
/* 8012D40C 0012A36C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8012D410 0012A370  38 21 00 08 */	addi r1, r1, 8
/* 8012D414 0012A374  7C 08 03 A6 */	mtlr r0
/* 8012D418 0012A378  4E 80 00 20 */	blr 

.global act__23TaiCollecCarryingActionFR4Teki
act__23TaiCollecCarryingActionFR4Teki:
/* 8012D41C 0012A37C  7C 08 02 A6 */	mflr r0
/* 8012D420 0012A380  90 01 00 04 */	stw r0, 4(r1)
/* 8012D424 0012A384  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8012D428 0012A388  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8012D42C 0012A38C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8012D430 0012A390  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8012D434 0012A394  7C 9D 23 78 */	mr r29, r4
/* 8012D438 0012A398  80 04 04 20 */	lwz r0, 0x420(r4)
/* 8012D43C 0012A39C  28 00 00 00 */	cmplwi r0, 0
/* 8012D440 0012A3A0  40 82 00 0C */	bne lbl_8012D44C
/* 8012D444 0012A3A4  38 60 00 00 */	li r3, 0
/* 8012D448 0012A3A8  48 00 00 70 */	b lbl_8012D4B8
lbl_8012D44C:
/* 8012D44C 0012A3AC  80 7D 02 C4 */	lwz r3, 0x2c4(r29)
/* 8012D450 0012A3B0  38 9D 00 A4 */	addi r4, r29, 0xa4
/* 8012D454 0012A3B4  7C 1F 03 78 */	mr r31, r0
/* 8012D458 0012A3B8  80 A3 00 84 */	lwz r5, 0x84(r3)
/* 8012D45C 0012A3BC  38 61 00 50 */	addi r3, r1, 0x50
/* 8012D460 0012A3C0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8012D464 0012A3C4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8012D468 0012A3C8  83 C5 00 50 */	lwz r30, 0x50(r5)
/* 8012D46C 0012A3CC  4B FE FA 15 */	bl __ct__9NVector3fFR8Vector3f
/* 8012D470 0012A3D0  38 7F 00 00 */	addi r3, r31, 0
/* 8012D474 0012A3D4  38 9D 00 00 */	addi r4, r29, 0
/* 8012D478 0012A3D8  38 A1 00 50 */	addi r5, r1, 0x50
/* 8012D47C 0012A3DC  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 8012D480 0012A3E0  4B F6 87 BD */	bl doCarry__6PelletFP8CreatureR8Vector3fUs
/* 8012D484 0012A3E4  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 8012D488 0012A3E8  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 8012D48C 0012A3EC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8012D490 0012A3F0  C0 5D 00 AC */	lfs f2, 0xac(r29)
/* 8012D494 0012A3F4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8012D498 0012A3F8  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8012D49C 0012A3FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8012D4A0 0012A400  EC 22 00 2A */	fadds f1, f2, f0
/* 8012D4A4 0012A404  4B EE 07 9D */	bl sqrtf__3stdFf
/* 8012D4A8 0012A408  7F A3 EB 78 */	mr r3, r29
/* 8012D4AC 0012A40C  48 01 7C 91 */	bl getVelocityAnimationSpeed__5BTekiFf
/* 8012D4B0 0012A410  D0 3D 03 B4 */	stfs f1, 0x3b4(r29)
/* 8012D4B4 0012A414  38 60 00 00 */	li r3, 0
lbl_8012D4B8:
/* 8012D4B8 0012A418  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8012D4BC 0012A41C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8012D4C0 0012A420  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8012D4C4 0012A424  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8012D4C8 0012A428  38 21 00 70 */	addi r1, r1, 0x70
/* 8012D4CC 0012A42C  7C 08 03 A6 */	mtlr r0
/* 8012D4D0 0012A430  4E 80 00 20 */	blr 

.global start__27TaiCollecBeingDraggedActionFR4Teki
start__27TaiCollecBeingDraggedActionFR4Teki:
/* 8012D4D4 0012A434  7C 08 02 A6 */	mflr r0
/* 8012D4D8 0012A438  38 64 00 00 */	addi r3, r4, 0
/* 8012D4DC 0012A43C  90 01 00 04 */	stw r0, 4(r1)
/* 8012D4E0 0012A440  38 80 00 03 */	li r4, 3
/* 8012D4E4 0012A444  94 21 FF F8 */	stwu r1, -8(r1)
/* 8012D4E8 0012A448  48 01 C5 11 */	bl startParticleGenerator__5BTekiFi
/* 8012D4EC 0012A44C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8012D4F0 0012A450  38 21 00 08 */	addi r1, r1, 8
/* 8012D4F4 0012A454  7C 08 03 A6 */	mtlr r0
/* 8012D4F8 0012A458  4E 80 00 20 */	blr 

.global finish__27TaiCollecBeingDraggedActionFR4Teki
finish__27TaiCollecBeingDraggedActionFR4Teki:
/* 8012D4FC 0012A45C  7C 08 02 A6 */	mflr r0
/* 8012D500 0012A460  38 64 00 00 */	addi r3, r4, 0
/* 8012D504 0012A464  90 01 00 04 */	stw r0, 4(r1)
/* 8012D508 0012A468  38 80 00 03 */	li r4, 3
/* 8012D50C 0012A46C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8012D510 0012A470  48 01 C5 0D */	bl stopParticleGenerator__5BTekiFi
/* 8012D514 0012A474  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8012D518 0012A478  38 21 00 08 */	addi r1, r1, 8
/* 8012D51C 0012A47C  7C 08 03 A6 */	mtlr r0
/* 8012D520 0012A480  4E 80 00 20 */	blr 

.global act__26TaiCollecWinCarryingActionFR4Teki
act__26TaiCollecWinCarryingActionFR4Teki:
/* 8012D524 0012A484  7C 08 02 A6 */	mflr r0
/* 8012D528 0012A488  90 01 00 04 */	stw r0, 4(r1)
/* 8012D52C 0012A48C  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 8012D530 0012A490  80 04 04 20 */	lwz r0, 0x420(r4)
/* 8012D534 0012A494  28 00 00 00 */	cmplwi r0, 0
/* 8012D538 0012A498  7C 09 03 78 */	mr r9, r0
/* 8012D53C 0012A49C  40 82 00 0C */	bne lbl_8012D548
/* 8012D540 0012A4A0  38 60 00 00 */	li r3, 0
/* 8012D544 0012A4A4  48 00 00 70 */	b lbl_8012D5B4
lbl_8012D548:
/* 8012D548 0012A4A8  80 64 02 C4 */	lwz r3, 0x2c4(r4)
/* 8012D54C 0012A4AC  3C A0 80 2C */	lis r5, __vt__31TekiCollecTargetPelletCondition@ha
/* 8012D550 0012A4B0  3C E0 80 2B */	lis r7, __vt__9Condition@ha
/* 8012D554 0012A4B4  81 03 00 84 */	lwz r8, 0x84(r3)
/* 8012D558 0012A4B8  3C C0 80 2C */	lis r6, __vt__13TekiCondition@ha
/* 8012D55C 0012A4BC  38 05 7B 34 */	addi r0, r5, __vt__31TekiCollecTargetPelletCondition@l
/* 8012D560 0012A4C0  81 08 00 00 */	lwz r8, 0(r8)
/* 8012D564 0012A4C4  38 E7 F0 98 */	addi r7, r7, __vt__9Condition@l
/* 8012D568 0012A4C8  38 C6 69 64 */	addi r6, r6, __vt__13TekiCondition@l
/* 8012D56C 0012A4CC  81 08 00 00 */	lwz r8, 0(r8)
/* 8012D570 0012A4D0  38 61 00 58 */	addi r3, r1, 0x58
/* 8012D574 0012A4D4  80 A8 00 50 */	lwz r5, 0x50(r8)
/* 8012D578 0012A4D8  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8012D57C 0012A4DC  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8012D580 0012A4E0  90 01 00 58 */	stw r0, 0x58(r1)
/* 8012D584 0012A4E4  90 81 00 5C */	stw r4, 0x5c(r1)
/* 8012D588 0012A4E8  7D 24 4B 78 */	mr r4, r9
/* 8012D58C 0012A4EC  90 A1 00 60 */	stw r5, 0x60(r1)
/* 8012D590 0012A4F0  81 81 00 58 */	lwz r12, 0x58(r1)
/* 8012D594 0012A4F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8012D598 0012A4F8  7D 88 03 A6 */	mtlr r12
/* 8012D59C 0012A4FC  4E 80 00 21 */	blrl 
/* 8012D5A0 0012A500  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D5A4 0012A504  40 82 00 0C */	bne lbl_8012D5B0
/* 8012D5A8 0012A508  38 60 00 00 */	li r3, 0
/* 8012D5AC 0012A50C  48 00 00 08 */	b lbl_8012D5B4
lbl_8012D5B0:
/* 8012D5B0 0012A510  38 60 00 01 */	li r3, 1
lbl_8012D5B4:
/* 8012D5B4 0012A514  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8012D5B8 0012A518  38 21 00 68 */	addi r1, r1, 0x68
/* 8012D5BC 0012A51C  7C 08 03 A6 */	mtlr r0
/* 8012D5C0 0012A520  4E 80 00 20 */	blr 

.global act__29TaiCollecDefeatCarryingActionFR4Teki
act__29TaiCollecDefeatCarryingActionFR4Teki:
/* 8012D5C4 0012A524  7C 08 02 A6 */	mflr r0
/* 8012D5C8 0012A528  90 01 00 04 */	stw r0, 4(r1)
/* 8012D5CC 0012A52C  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 8012D5D0 0012A530  80 04 04 20 */	lwz r0, 0x420(r4)
/* 8012D5D4 0012A534  28 00 00 00 */	cmplwi r0, 0
/* 8012D5D8 0012A538  7C 09 03 78 */	mr r9, r0
/* 8012D5DC 0012A53C  40 82 00 0C */	bne lbl_8012D5E8
/* 8012D5E0 0012A540  38 60 00 00 */	li r3, 0
/* 8012D5E4 0012A544  48 00 00 70 */	b lbl_8012D654
lbl_8012D5E8:
/* 8012D5E8 0012A548  80 64 02 C4 */	lwz r3, 0x2c4(r4)
/* 8012D5EC 0012A54C  3C A0 80 2C */	lis r5, __vt__31TekiCollecTargetPelletCondition@ha
/* 8012D5F0 0012A550  3C E0 80 2B */	lis r7, __vt__9Condition@ha
/* 8012D5F4 0012A554  81 03 00 84 */	lwz r8, 0x84(r3)
/* 8012D5F8 0012A558  3C C0 80 2C */	lis r6, __vt__13TekiCondition@ha
/* 8012D5FC 0012A55C  38 05 7B 34 */	addi r0, r5, __vt__31TekiCollecTargetPelletCondition@l
/* 8012D600 0012A560  81 08 00 00 */	lwz r8, 0(r8)
/* 8012D604 0012A564  38 E7 F0 98 */	addi r7, r7, __vt__9Condition@l
/* 8012D608 0012A568  38 C6 69 64 */	addi r6, r6, __vt__13TekiCondition@l
/* 8012D60C 0012A56C  81 08 00 00 */	lwz r8, 0(r8)
/* 8012D610 0012A570  38 61 00 58 */	addi r3, r1, 0x58
/* 8012D614 0012A574  80 A8 00 50 */	lwz r5, 0x50(r8)
/* 8012D618 0012A578  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8012D61C 0012A57C  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8012D620 0012A580  90 01 00 58 */	stw r0, 0x58(r1)
/* 8012D624 0012A584  90 81 00 5C */	stw r4, 0x5c(r1)
/* 8012D628 0012A588  7D 24 4B 78 */	mr r4, r9
/* 8012D62C 0012A58C  90 A1 00 60 */	stw r5, 0x60(r1)
/* 8012D630 0012A590  81 81 00 58 */	lwz r12, 0x58(r1)
/* 8012D634 0012A594  81 8C 00 08 */	lwz r12, 8(r12)
/* 8012D638 0012A598  7D 88 03 A6 */	mtlr r12
/* 8012D63C 0012A59C  4E 80 00 21 */	blrl 
/* 8012D640 0012A5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D644 0012A5A4  41 82 00 0C */	beq lbl_8012D650
/* 8012D648 0012A5A8  38 60 00 00 */	li r3, 0
/* 8012D64C 0012A5AC  48 00 00 08 */	b lbl_8012D654
lbl_8012D650:
/* 8012D650 0012A5B0  38 60 00 01 */	li r3, 1
lbl_8012D654:
/* 8012D654 0012A5B4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8012D658 0012A5B8  38 21 00 68 */	addi r1, r1, 0x68
/* 8012D65C 0012A5BC  7C 08 03 A6 */	mtlr r0
/* 8012D660 0012A5C0  4E 80 00 20 */	blr 

.global act__18TaiCollecPutActionFR4Teki
act__18TaiCollecPutActionFR4Teki:
/* 8012D664 0012A5C4  7C 08 02 A6 */	mflr r0
/* 8012D668 0012A5C8  90 01 00 04 */	stw r0, 4(r1)
/* 8012D66C 0012A5CC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8012D670 0012A5D0  DB E1 00 B8 */	stfd f31, 0xb8(r1)
/* 8012D674 0012A5D4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8012D678 0012A5D8  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8012D67C 0012A5DC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8012D680 0012A5E0  7C 9E 23 78 */	mr r30, r4
/* 8012D684 0012A5E4  80 04 04 20 */	lwz r0, 0x420(r4)
/* 8012D688 0012A5E8  28 00 00 00 */	cmplwi r0, 0
/* 8012D68C 0012A5EC  40 82 00 0C */	bne lbl_8012D698
/* 8012D690 0012A5F0  38 60 00 00 */	li r3, 0
/* 8012D694 0012A5F4  48 00 01 0C */	b lbl_8012D7A0
lbl_8012D698:
/* 8012D698 0012A5F8  38 61 00 98 */	addi r3, r1, 0x98
/* 8012D69C 0012A5FC  4B FE F7 B9 */	bl __ct__9NVector3fFv
/* 8012D6A0 0012A600  7F C3 F3 78 */	mr r3, r30
/* 8012D6A4 0012A604  48 01 B2 91 */	bl getStrategy__5BTekiFv
/* 8012D6A8 0012A608  80 7E 02 C4 */	lwz r3, 0x2c4(r30)
/* 8012D6AC 0012A60C  38 80 00 34 */	li r4, 0x34
/* 8012D6B0 0012A610  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012D6B4 0012A614  80 63 00 04 */	lwz r3, 4(r3)
/* 8012D6B8 0012A618  4B FF 4E 1D */	bl "get__17ParaParameters<f>Fi"
/* 8012D6BC 0012A61C  C3 DE 00 A0 */	lfs f30, 0xa0(r30)
/* 8012D6C0 0012A620  FF E0 08 90 */	fmr f31, f1
/* 8012D6C4 0012A624  FC 20 F0 90 */	fmr f1, f30
/* 8012D6C8 0012A628  48 0E E4 8D */	bl cosf
/* 8012D6CC 0012A62C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8012D6D0 0012A630  FC 20 F0 90 */	fmr f1, f30
/* 8012D6D4 0012A634  3B E1 00 68 */	addi r31, r1, 0x68
/* 8012D6D8 0012A638  48 0E E6 11 */	bl sinf
/* 8012D6DC 0012A63C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8012D6E0 0012A640  38 81 00 64 */	addi r4, r1, 0x64
/* 8012D6E4 0012A644  38 DF 00 00 */	addi r6, r31, 0
/* 8012D6E8 0012A648  38 61 00 98 */	addi r3, r1, 0x98
/* 8012D6EC 0012A64C  38 AD E8 B0 */	addi r5, r13, lbl_803E35D0@sda21
/* 8012D6F0 0012A650  4B F2 FF 9D */	bl set__8Vector3fFRCfRCfRCf
/* 8012D6F4 0012A654  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8012D6F8 0012A658  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8012D6FC 0012A65C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8012D700 0012A660  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8012D704 0012A664  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8012D708 0012A668  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8012D70C 0012A66C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8012D710 0012A670  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8012D714 0012A674  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8012D718 0012A678  80 7E 02 C8 */	lwz r3, 0x2c8(r30)
/* 8012D71C 0012A67C  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 8012D720 0012A680  C4 03 00 10 */	lfsu f0, 0x10(r3)
/* 8012D724 0012A684  EC 01 00 2A */	fadds f0, f1, f0
/* 8012D728 0012A688  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8012D72C 0012A68C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 8012D730 0012A690  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012D734 0012A694  EC 01 00 2A */	fadds f0, f1, f0
/* 8012D738 0012A698  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8012D73C 0012A69C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 8012D740 0012A6A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012D744 0012A6A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8012D748 0012A6A8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8012D74C 0012A6AC  C0 61 00 A0 */	lfs f3, 0xa0(r1)
/* 8012D750 0012A6B0  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8012D754 0012A6B4  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 8012D758 0012A6B8  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8012D75C 0012A6BC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8012D760 0012A6C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8012D764 0012A6C4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8012D768 0012A6C8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8012D76C 0012A6CC  EC 21 00 2A */	fadds f1, f1, f0
/* 8012D770 0012A6D0  4B EE 04 D1 */	bl sqrtf__3stdFf
/* 8012D774 0012A6D4  80 7E 02 C4 */	lwz r3, 0x2c4(r30)
/* 8012D778 0012A6D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012D77C 0012A6DC  80 63 00 04 */	lwz r3, 4(r3)
/* 8012D780 0012A6E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8012D784 0012A6E4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8012D788 0012A6E8  48 01 6D E9 */	bl arrivedAt__5BTekiFff
/* 8012D78C 0012A6EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012D790 0012A6F0  40 82 00 0C */	bne lbl_8012D79C
/* 8012D794 0012A6F4  38 60 00 00 */	li r3, 0
/* 8012D798 0012A6F8  48 00 00 08 */	b lbl_8012D7A0
lbl_8012D79C:
/* 8012D79C 0012A6FC  38 60 00 01 */	li r3, 1
lbl_8012D7A0:
/* 8012D7A0 0012A700  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8012D7A4 0012A704  CB E1 00 B8 */	lfd f31, 0xb8(r1)
/* 8012D7A8 0012A708  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8012D7AC 0012A70C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8012D7B0 0012A710  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8012D7B4 0012A714  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8012D7B8 0012A718  7C 08 03 A6 */	mtlr r0
/* 8012D7BC 0012A71C  4E 80 00 20 */	blr 

.global start__28TaiCollecPuttingPelletActionFR4Teki
start__28TaiCollecPuttingPelletActionFR4Teki:
/* 8012D7C0 0012A720  7C 08 02 A6 */	mflr r0
/* 8012D7C4 0012A724  90 01 00 04 */	stw r0, 4(r1)
/* 8012D7C8 0012A728  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8012D7CC 0012A72C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8012D7D0 0012A730  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8012D7D4 0012A734  3B C4 00 00 */	addi r30, r4, 0
/* 8012D7D8 0012A738  3B FE 00 94 */	addi r31, r30, 0x94
/* 8012D7DC 0012A73C  38 7E 00 00 */	addi r3, r30, 0
/* 8012D7E0 0012A740  38 BF 00 00 */	addi r5, r31, 0
/* 8012D7E4 0012A744  38 80 00 00 */	li r4, 0
/* 8012D7E8 0012A748  48 01 C2 59 */	bl setParticleGeneratorPosition__5BTekiFiR8Vector3f
/* 8012D7EC 0012A74C  38 7E 00 00 */	addi r3, r30, 0
/* 8012D7F0 0012A750  38 80 00 00 */	li r4, 0
/* 8012D7F4 0012A754  48 01 C2 05 */	bl startParticleGenerator__5BTekiFi
/* 8012D7F8 0012A758  38 7E 00 00 */	addi r3, r30, 0
/* 8012D7FC 0012A75C  38 BF 00 00 */	addi r5, r31, 0
/* 8012D800 0012A760  38 80 00 01 */	li r4, 1
/* 8012D804 0012A764  48 01 C2 3D */	bl setParticleGeneratorPosition__5BTekiFiR8Vector3f
/* 8012D808 0012A768  38 7E 00 00 */	addi r3, r30, 0
/* 8012D80C 0012A76C  38 80 00 01 */	li r4, 1
/* 8012D810 0012A770  48 01 C1 E9 */	bl startParticleGenerator__5BTekiFi
/* 8012D814 0012A774  80 1E 04 20 */	lwz r0, 0x420(r30)
/* 8012D818 0012A778  28 00 00 00 */	cmplwi r0, 0
/* 8012D81C 0012A77C  41 82 00 6C */	beq lbl_8012D888
/* 8012D820 0012A780  7C 1F 03 78 */	mr r31, r0
/* 8012D824 0012A784  38 7F 00 00 */	addi r3, r31, 0
/* 8012D828 0012A788  38 9E 00 00 */	addi r4, r30, 0
/* 8012D82C 0012A78C  4B F6 88 69 */	bl endStickTeki__6PelletFP8Creature
/* 8012D830 0012A790  3C 80 73 6C */	lis r4, 0x736C6F74@ha
/* 8012D834 0012A794  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 8012D838 0012A798  38 84 6F 74 */	addi r4, r4, 0x736C6F74@l
/* 8012D83C 0012A79C  4B F5 BE D5 */	bl getSphere__8CollInfoFUl
/* 8012D840 0012A7A0  38 80 00 00 */	li r4, 0
/* 8012D844 0012A7A4  4B F5 A5 A9 */	bl getChildAt__8CollPartFi
/* 8012D848 0012A7A8  3C 80 80 2B */	lis r4, __vt__11Interaction@ha
/* 8012D84C 0012A7AC  38 04 CF 9C */	addi r0, r4, __vt__11Interaction@l
/* 8012D850 0012A7B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012D854 0012A7B4  3C A0 80 2B */	lis r5, __vt__15InteractSwallow@ha
/* 8012D858 0012A7B8  38 A5 CD BC */	addi r5, r5, __vt__15InteractSwallow@l
/* 8012D85C 0012A7BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8012D860 0012A7C0  38 00 00 00 */	li r0, 0
/* 8012D864 0012A7C4  38 81 00 34 */	addi r4, r1, 0x34
/* 8012D868 0012A7C8  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8012D86C 0012A7CC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8012D870 0012A7D0  90 61 00 40 */	stw r3, 0x40(r1)
/* 8012D874 0012A7D4  7F E3 FB 78 */	mr r3, r31
/* 8012D878 0012A7D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8012D87C 0012A7DC  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8012D880 0012A7E0  7D 88 03 A6 */	mtlr r12
/* 8012D884 0012A7E4  4E 80 00 21 */	blrl 
lbl_8012D888:
/* 8012D888 0012A7E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012D88C 0012A7EC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8012D890 0012A7F0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8012D894 0012A7F4  38 21 00 50 */	addi r1, r1, 0x50
/* 8012D898 0012A7F8  7C 08 03 A6 */	mtlr r0
/* 8012D89C 0012A7FC  4E 80 00 20 */	blr 

.global finish__28TaiCollecPuttingPelletActionFR4Teki
finish__28TaiCollecPuttingPelletActionFR4Teki:
/* 8012D8A0 0012A800  7C 08 02 A6 */	mflr r0
/* 8012D8A4 0012A804  90 01 00 04 */	stw r0, 4(r1)
/* 8012D8A8 0012A808  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8012D8AC 0012A80C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8012D8B0 0012A810  3B E4 00 00 */	addi r31, r4, 0
/* 8012D8B4 0012A814  38 7F 00 00 */	addi r3, r31, 0
/* 8012D8B8 0012A818  38 80 00 00 */	li r4, 0
/* 8012D8BC 0012A81C  48 01 C1 61 */	bl stopParticleGenerator__5BTekiFi
/* 8012D8C0 0012A820  38 7F 00 00 */	addi r3, r31, 0
/* 8012D8C4 0012A824  38 80 00 01 */	li r4, 1
/* 8012D8C8 0012A828  48 01 C1 55 */	bl stopParticleGenerator__5BTekiFi
/* 8012D8CC 0012A82C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8012D8D0 0012A830  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8012D8D4 0012A834  38 21 00 18 */	addi r1, r1, 0x18
/* 8012D8D8 0012A838  7C 08 03 A6 */	mtlr r0
/* 8012D8DC 0012A83C  4E 80 00 20 */	blr 

.global act__28TaiCollecPuttingPelletActionFR4Teki
act__28TaiCollecPuttingPelletActionFR4Teki:
/* 8012D8E0 0012A840  7C 08 02 A6 */	mflr r0
/* 8012D8E4 0012A844  90 01 00 04 */	stw r0, 4(r1)
/* 8012D8E8 0012A848  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8012D8EC 0012A84C  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8012D8F0 0012A850  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8012D8F4 0012A854  7C 9E 23 78 */	mr r30, r4
/* 8012D8F8 0012A858  83 E4 04 20 */	lwz r31, 0x420(r4)
/* 8012D8FC 0012A85C  28 1F 00 00 */	cmplwi r31, 0
/* 8012D900 0012A860  40 82 00 0C */	bne lbl_8012D90C
/* 8012D904 0012A864  38 60 00 00 */	li r3, 0
/* 8012D908 0012A868  48 00 00 7C */	b lbl_8012D984
lbl_8012D90C:
/* 8012D90C 0012A86C  80 7E 02 CC */	lwz r3, 0x2cc(r30)
/* 8012D910 0012A870  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8012D914 0012A874  2C 00 00 00 */	cmpwi r0, 0
/* 8012D918 0012A878  40 80 00 68 */	bge lbl_8012D980

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
	.4byte 0x67656e49
	.4byte 0x74656d2e
	.4byte 0x63707000
.global lbl_802BD7A4
lbl_802BD7A4:
	.4byte 0x6F626A65
	.4byte 0x63742074
	.4byte 0x79706500
.global lbl_802BD7B0
lbl_802BD7B0:
	.4byte 0x83418343
	.4byte 0x83658380
	.4byte 0x82F090B6
	.4byte 0x82DE0000
.global lbl_802BD7C0
lbl_802BD7C0:
	.4byte 0x83418343
	.4byte 0x83658380
	.4byte 0x82F094AD
	.4byte 0x90B60000
.global lbl_802BD7D0
lbl_802BD7D0:
	.4byte 0x800EE9AC
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EE984
	.4byte 0x800EEA84
	.4byte 0x800EE998
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EE9C0
	.4byte 0x800EE9C0
	.4byte 0x800EE9C0
	.4byte 0x800EE9C0
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EEA84
	.4byte 0x800EEA7C
	.4byte 0x800EEA84
	.4byte 0x800EE9CC
	.4byte 0x800EEA24
	.4byte 0x47656E4F
	.4byte 0x626A6563
	.4byte 0x74497465
	.4byte 0x6D000000
	.4byte 0x50617261
	.4byte 0x6D657465
	.4byte 0x72730000
	.4byte 0x803E1A6C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x47656E4F
	.4byte 0x626A6563
	.4byte 0x74000000
	.4byte 0x803E1A6C
	.4byte 0x00000000
	.4byte 0x803E1A7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x803E1A6C
	.4byte 0x00000000
	.4byte 0x803E1A7C
	.4byte 0x00000000
	.4byte 0x803E1A84
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__13GenObjectItem
__vt__13GenObjectItem:
	.4byte __RTTI__13GenObjectItem
	.4byte 0
	.4byte doWrite__13GenObjectItemFR18RandomAccessStream
	.4byte ramSaveParameters__13GenObjectItemFR18RandomAccessStream
	.4byte ramLoadParameters__13GenObjectItemFR18RandomAccessStream
	.4byte doRead__13GenObjectItemFR18RandomAccessStream
	.4byte update__7GenBaseFv
	.4byte render__7GenBaseFR8Graphics
	.4byte getLatestVersion__9GenObjectFv
	.4byte updateUseList__13GenObjectItemFP9Generatori
	.4byte init__9GenObjectFP9Generator
	.4byte update__9GenObjectFP9Generator
	.4byte render__9GenObjectFR8GraphicsP9Generator
	.4byte birth__13GenObjectItemFR9BirthInfo
	.4byte 0x5061726d
	.4byte 0x3c696e74
	.4byte 0x3e000000
	.4byte 0x42617365
	.4byte 0x5061726d
	.4byte 0
	.4byte 0x803e1a94
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.global __RTTI__8RopeItem
__RTTI__8RopeItem:
	.4byte 0x802bd454
	.4byte 0x802bd4c8
.global lbl_803E1A30
lbl_803E1A30:
	.4byte 0x00000000
.global lbl_803E1A34
lbl_803E1A34:
	.4byte 0x00000000
	.4byte 0x802BD628
	.4byte 0x00000000
	.4byte 0x802BD634
	.4byte 0x00000000
	.4byte 0x802BD644
	.4byte 0x802BD650
.global __RTTI__8SeedItem
__RTTI__8SeedItem:
	.4byte 0x802bd61c
	.4byte 0x802bd664
.global lbl_803E1A58
lbl_803E1A58:
	.4byte 0x70303000
.global lbl_803E1A5C
lbl_803E1A5C:
	.4byte 0x70303100
.global lbl_803E1A60
lbl_803E1A60:
	.4byte 0x70303200
.global lbl_803E1A64
lbl_803E1A64:
	.4byte 0x70303300
.global lbl_803E1A68
lbl_803E1A68:
	.4byte 0x20000000
	.4byte 0x802BD83C
