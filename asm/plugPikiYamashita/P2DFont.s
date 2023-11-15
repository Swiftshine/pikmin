.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global loadFont__7P2DFontFPcRiRi
loadFont__7P2DFontFPcRiRi:
/* 801B5C64 001B2BC4  7C 08 02 A6 */	mflr r0
/* 801B5C68 001B2BC8  3C E0 66 6F */	lis r7, 0x666F6E74@ha
/* 801B5C6C 001B2BCC  90 01 00 04 */	stw r0, 4(r1)
/* 801B5C70 001B2BD0  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 801B5C74 001B2BD4  BF 41 01 18 */	stmw r26, 0x118(r1)
/* 801B5C78 001B2BD8  3B A5 00 00 */	addi r29, r5, 0
/* 801B5C7C 001B2BDC  7C 9C 23 78 */	mr r28, r4
/* 801B5C80 001B2BE0  3B C6 00 00 */	addi r30, r6, 0
/* 801B5C84 001B2BE4  38 A7 6E 74 */	addi r5, r7, 0x666F6E74@l
/* 801B5C88 001B2BE8  3B E0 00 00 */	li r31, 0
/* 801B5C8C 001B2BEC  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801B5C90 001B2BF0  4B E8 93 E9 */	bl findGfxObject__9StdSystemFPcUl
/* 801B5C94 001B2BF4  28 03 00 00 */	cmplwi r3, 0
/* 801B5C98 001B2BF8  41 82 00 08 */	beq .L_801B5CA0
/* 801B5C9C 001B2BFC  83 E3 00 20 */	lwz r31, 0x20(r3)
.L_801B5CA0:
/* 801B5CA0 001B2C00  28 1F 00 00 */	cmplwi r31, 0
/* 801B5CA4 001B2C04  40 82 00 E8 */	bne .L_801B5D8C
/* 801B5CA8 001B2C08  38 60 00 10 */	li r3, 0x10
/* 801B5CAC 001B2C0C  4B E9 13 59 */	bl alloc__6SystemFUl
/* 801B5CB0 001B2C10  3B E3 00 00 */	addi r31, r3, 0
/* 801B5CB4 001B2C14  38 60 00 24 */	li r3, 0x24
/* 801B5CB8 001B2C18  4B E9 13 4D */	bl alloc__6SystemFUl
/* 801B5CBC 001B2C1C  7C 7A 1B 79 */	or. r26, r3, r3
/* 801B5CC0 001B2C20  41 82 00 50 */	beq .L_801B5D10
/* 801B5CC4 001B2C24  3C 60 80 23 */	lis r3, __vt__10GfxobjInfo@ha
/* 801B5CC8 001B2C28  38 03 86 A4 */	addi r0, r3, __vt__10GfxobjInfo@l
/* 801B5CCC 001B2C2C  90 1A 00 1C */	stw r0, 0x1c(r26)
/* 801B5CD0 001B2C30  38 7A 00 0C */	addi r3, r26, 0xc
/* 801B5CD4 001B2C34  4B E8 E1 89 */	bl __ct__4ID32Fv
/* 801B5CD8 001B2C38  3B 60 00 00 */	li r27, 0
/* 801B5CDC 001B2C3C  93 7A 00 04 */	stw r27, 4(r26)
/* 801B5CE0 001B2C40  3C 80 6E 6F */	lis r4, 0x6E6F6E65@ha
/* 801B5CE4 001B2C44  38 0D 19 68 */	addi r0, r13, lbl_803E6688@sda21
/* 801B5CE8 001B2C48  93 7A 00 00 */	stw r27, 0(r26)
/* 801B5CEC 001B2C4C  38 7A 00 0C */	addi r3, r26, 0xc
/* 801B5CF0 001B2C50  38 84 6E 65 */	addi r4, r4, 0x6E6F6E65@l
/* 801B5CF4 001B2C54  90 1A 00 08 */	stw r0, 8(r26)
/* 801B5CF8 001B2C58  4B E8 E1 CD */	bl setID__4ID32FUl
/* 801B5CFC 001B2C5C  3C 60 80 2E */	lis r3, __vt__10FntobjInfo@ha
/* 801B5D00 001B2C60  93 7A 00 18 */	stw r27, 0x18(r26)
/* 801B5D04 001B2C64  38 03 09 8C */	addi r0, r3, __vt__10FntobjInfo@l
/* 801B5D08 001B2C68  90 1A 00 1C */	stw r0, 0x1c(r26)
/* 801B5D0C 001B2C6C  93 7A 00 20 */	stw r27, 0x20(r26)
.L_801B5D10:
/* 801B5D10 001B2C70  7F 83 E3 78 */	mr r3, r28
/* 801B5D14 001B2C74  4B E8 A6 2D */	bl stringDup__9StdSystemFPc
/* 801B5D18 001B2C78  90 7A 00 08 */	stw r3, 8(r26)
/* 801B5D1C 001B2C7C  3C 80 66 6F */	lis r4, 0x666F6E74@ha
/* 801B5D20 001B2C80  38 7A 00 0C */	addi r3, r26, 0xc
/* 801B5D24 001B2C84  38 84 6E 74 */	addi r4, r4, 0x666F6E74@l
/* 801B5D28 001B2C88  4B E8 E1 9D */	bl setID__4ID32FUl
/* 801B5D2C 001B2C8C  93 FA 00 20 */	stw r31, 0x20(r26)
/* 801B5D30 001B2C90  7F 44 D3 78 */	mr r4, r26
/* 801B5D34 001B2C94  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801B5D38 001B2C98  4B E8 99 2D */	bl addGfxObject__9StdSystemFP10GfxobjInfo
/* 801B5D3C 001B2C9C  38 BC 00 00 */	addi r5, r28, 0
/* 801B5D40 001B2CA0  4C C6 31 82 */	crclr 6
/* 801B5D44 001B2CA4  38 61 00 18 */	addi r3, r1, 0x18
/* 801B5D48 001B2CA8  38 8D 19 6C */	addi r4, r13, lbl_803E668C@sda21
/* 801B5D4C 001B2CAC  48 06 08 4D */	bl sprintf
/* 801B5D50 001B2CB0  3C 80 80 2E */	lis r4, lbl_802E095C@ha
/* 801B5D54 001B2CB4  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801B5D58 001B2CB8  38 84 09 5C */	addi r4, r4, lbl_802E095C@l
/* 801B5D5C 001B2CBC  38 A0 00 01 */	li r5, 1
/* 801B5D60 001B2CC0  4B E8 93 A9 */	bl loadTexture__9StdSystemFPcb
/* 801B5D64 001B2CC4  38 00 00 15 */	li r0, 0x15
/* 801B5D68 001B2CC8  90 1D 00 00 */	stw r0, 0(r29)
/* 801B5D6C 001B2CCC  38 00 00 2A */	li r0, 0x2a
/* 801B5D70 001B2CD0  38 83 00 00 */	addi r4, r3, 0
/* 801B5D74 001B2CD4  90 1E 00 00 */	stw r0, 0(r30)
/* 801B5D78 001B2CD8  38 7F 00 00 */	addi r3, r31, 0
/* 801B5D7C 001B2CDC  80 BD 00 00 */	lwz r5, 0(r29)
/* 801B5D80 001B2CE0  80 DE 00 00 */	lwz r6, 0(r30)
/* 801B5D84 001B2CE4  4B E7 1F 35 */	bl setTexture__4FontFP7Textureii
/* 801B5D88 001B2CE8  48 00 00 14 */	b .L_801B5D9C
.L_801B5D8C:
/* 801B5D8C 001B2CEC  38 00 00 15 */	li r0, 0x15
/* 801B5D90 001B2CF0  90 1D 00 00 */	stw r0, 0(r29)
/* 801B5D94 001B2CF4  38 00 00 2A */	li r0, 0x2a
/* 801B5D98 001B2CF8  90 1E 00 00 */	stw r0, 0(r30)
.L_801B5D9C:
/* 801B5D9C 001B2CFC  7F E3 FB 78 */	mr r3, r31
/* 801B5DA0 001B2D00  BB 41 01 18 */	lmw r26, 0x118(r1)
/* 801B5DA4 001B2D04  80 01 01 34 */	lwz r0, 0x134(r1)
/* 801B5DA8 001B2D08  38 21 01 30 */	addi r1, r1, 0x130
/* 801B5DAC 001B2D0C  7C 08 03 A6 */	mtlr r0
/* 801B5DB0 001B2D10  4E 80 00 20 */	blr 

.global __ct__7P2DFontFPc
__ct__7P2DFontFPc:
/* 801B5DB4 001B2D14  7C 08 02 A6 */	mflr r0
/* 801B5DB8 001B2D18  90 01 00 04 */	stw r0, 4(r1)
/* 801B5DBC 001B2D1C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801B5DC0 001B2D20  93 E1 00 34 */	stw r31, 0x34(r1)
/* 801B5DC4 001B2D24  3B E3 00 00 */	addi r31, r3, 0
/* 801B5DC8 001B2D28  38 A1 00 18 */	addi r5, r1, 0x18
/* 801B5DCC 001B2D2C  38 C1 00 14 */	addi r6, r1, 0x14
/* 801B5DD0 001B2D30  4B FF FE 95 */	bl loadFont__7P2DFontFPcRiRi
/* 801B5DD4 001B2D34  90 7F 00 00 */	stw r3, 0(r31)
/* 801B5DD8 001B2D38  38 60 00 02 */	li r3, 2
/* 801B5DDC 001B2D3C  38 00 00 05 */	li r0, 5
/* 801B5DE0 001B2D40  B0 7F 00 04 */	sth r3, 4(r31)
/* 801B5DE4 001B2D44  3C A0 43 30 */	lis r5, 0x4330
/* 801B5DE8 001B2D48  38 7F 00 00 */	addi r3, r31, 0
/* 801B5DEC 001B2D4C  80 DF 00 00 */	lwz r6, 0(r31)
/* 801B5DF0 001B2D50  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801B5DF4 001B2D54  80 C6 00 00 */	lwz r6, 0(r6)
/* 801B5DF8 001B2D58  A0 C6 00 08 */	lhz r6, 8(r6)
/* 801B5DFC 001B2D5C  7C 86 23 D6 */	divw r4, r6, r4
/* 801B5E00 001B2D60  B0 9F 00 06 */	sth r4, 6(r31)
/* 801B5E04 001B2D64  B0 1F 00 08 */	sth r0, 8(r31)
/* 801B5E08 001B2D68  80 DF 00 00 */	lwz r6, 0(r31)
/* 801B5E0C 001B2D6C  C0 02 B7 10 */	lfs f0, lbl_803EB910@sda21(r2)
/* 801B5E10 001B2D70  80 C6 00 00 */	lwz r6, 0(r6)
/* 801B5E14 001B2D74  FC 00 00 1E */	fctiwz f0, f0
/* 801B5E18 001B2D78  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801B5E1C 001B2D7C  A0 C6 00 0A */	lhz r6, 0xa(r6)
/* 801B5E20 001B2D80  7C 86 23 D6 */	divw r4, r6, r4
/* 801B5E24 001B2D84  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801B5E28 001B2D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B5E2C 001B2D8C  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 801B5E30 001B2D90  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801B5E34 001B2D94  80 9F 00 00 */	lwz r4, 0(r31)
/* 801B5E38 001B2D98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801B5E3C 001B2D9C  80 84 00 00 */	lwz r4, 0(r4)
/* 801B5E40 001B2DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5E44 001B2DA4  A0 84 00 0A */	lhz r4, 0xa(r4)
/* 801B5E48 001B2DA8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 801B5E4C 001B2DAC  7C 04 03 D6 */	divw r0, r4, r0
/* 801B5E50 001B2DB0  A0 9F 00 0C */	lhz r4, 0xc(r31)
/* 801B5E54 001B2DB4  7C 04 00 50 */	subf r0, r4, r0
/* 801B5E58 001B2DB8  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 801B5E5C 001B2DBC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801B5E60 001B2DC0  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 801B5E64 001B2DC4  38 21 00 38 */	addi r1, r1, 0x38
/* 801B5E68 001B2DC8  7C 08 03 A6 */	mtlr r0
/* 801B5E6C 001B2DCC  4E 80 00 20 */	blr 

.global setGX__7P2DFontFv
setGX__7P2DFontFv:
/* 801B5E70 001B2DD0  7C 08 02 A6 */	mflr r0
/* 801B5E74 001B2DD4  38 60 00 01 */	li r3, 1
/* 801B5E78 001B2DD8  90 01 00 04 */	stw r0, 4(r1)
/* 801B5E7C 001B2DDC  94 21 FF F8 */	stwu r1, -8(r1)
/* 801B5E80 001B2DE0  48 05 C0 55 */	bl GXSetNumChans
/* 801B5E84 001B2DE4  38 60 00 01 */	li r3, 1
/* 801B5E88 001B2DE8  48 05 DA DD */	bl GXSetNumTevStages
/* 801B5E8C 001B2DEC  38 60 00 01 */	li r3, 1
/* 801B5E90 001B2DF0  48 05 A8 99 */	bl GXSetNumTexGens
/* 801B5E94 001B2DF4  38 60 00 00 */	li r3, 0
/* 801B5E98 001B2DF8  38 80 00 00 */	li r4, 0
/* 801B5E9C 001B2DFC  38 A0 00 00 */	li r5, 0
/* 801B5EA0 001B2E00  38 C0 00 04 */	li r6, 4
/* 801B5EA4 001B2E04  48 05 D9 21 */	bl GXSetTevOrder
/* 801B5EA8 001B2E08  38 60 00 00 */	li r3, 0
/* 801B5EAC 001B2E0C  38 80 00 00 */	li r4, 0
/* 801B5EB0 001B2E10  48 05 D0 ED */	bl GXSetTevOp
/* 801B5EB4 001B2E14  38 60 00 01 */	li r3, 1
/* 801B5EB8 001B2E18  38 80 00 04 */	li r4, 4
/* 801B5EBC 001B2E1C  38 A0 00 05 */	li r5, 5
/* 801B5EC0 001B2E20  38 C0 00 0F */	li r6, 0xf
/* 801B5EC4 001B2E24  48 05 DD 89 */	bl GXSetBlendMode
/* 801B5EC8 001B2E28  38 60 00 00 */	li r3, 0
/* 801B5ECC 001B2E2C  38 80 00 09 */	li r4, 9
/* 801B5ED0 001B2E30  38 A0 00 01 */	li r5, 1
/* 801B5ED4 001B2E34  38 C0 00 03 */	li r6, 3
/* 801B5ED8 001B2E38  38 E0 00 00 */	li r7, 0
/* 801B5EDC 001B2E3C  48 05 9D 6D */	bl GXSetVtxAttrFmt
/* 801B5EE0 001B2E40  38 60 00 00 */	li r3, 0
/* 801B5EE4 001B2E44  38 80 00 0B */	li r4, 0xb
/* 801B5EE8 001B2E48  38 A0 00 01 */	li r5, 1
/* 801B5EEC 001B2E4C  38 C0 00 05 */	li r6, 5
/* 801B5EF0 001B2E50  38 E0 00 00 */	li r7, 0
/* 801B5EF4 001B2E54  48 05 9D 55 */	bl GXSetVtxAttrFmt
/* 801B5EF8 001B2E58  38 60 00 00 */	li r3, 0
/* 801B5EFC 001B2E5C  38 80 00 0D */	li r4, 0xd
/* 801B5F00 001B2E60  38 A0 00 01 */	li r5, 1
/* 801B5F04 001B2E64  38 C0 00 02 */	li r6, 2
/* 801B5F08 001B2E68  38 E0 00 0F */	li r7, 0xf
/* 801B5F0C 001B2E6C  48 05 9D 3D */	bl GXSetVtxAttrFmt
/* 801B5F10 001B2E70  48 05 9C ED */	bl GXClearVtxDesc
/* 801B5F14 001B2E74  38 60 00 09 */	li r3, 9
/* 801B5F18 001B2E78  38 80 00 01 */	li r4, 1
/* 801B5F1C 001B2E7C  48 05 94 E5 */	bl GXSetVtxDesc
/* 801B5F20 001B2E80  38 60 00 0B */	li r3, 0xb
/* 801B5F24 001B2E84  38 80 00 01 */	li r4, 1
/* 801B5F28 001B2E88  48 05 94 D9 */	bl GXSetVtxDesc
/* 801B5F2C 001B2E8C  38 60 00 0D */	li r3, 0xd
/* 801B5F30 001B2E90  38 80 00 01 */	li r4, 1
/* 801B5F34 001B2E94  48 05 94 CD */	bl GXSetVtxDesc
/* 801B5F38 001B2E98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B5F3C 001B2E9C  38 21 00 08 */	addi r1, r1, 8
/* 801B5F40 001B2EA0  7C 08 03 A6 */	mtlr r0
/* 801B5F44 001B2EA4  4E 80 00 20 */	blr 

.global setGradColor__7P2DFontFRC6ColourRC6Colour
setGradColor__7P2DFontFRC6ColourRC6Colour:
/* 801B5F48 001B2EA8  80 04 00 00 */	lwz r0, 0(r4)
/* 801B5F4C 001B2EAC  90 03 00 0E */	stw r0, 0xe(r3)
/* 801B5F50 001B2EB0  80 04 00 00 */	lwz r0, 0(r4)
/* 801B5F54 001B2EB4  90 03 00 12 */	stw r0, 0x12(r3)
/* 801B5F58 001B2EB8  80 05 00 00 */	lwz r0, 0(r5)
/* 801B5F5C 001B2EBC  90 03 00 16 */	stw r0, 0x16(r3)
/* 801B5F60 001B2EC0  80 05 00 00 */	lwz r0, 0(r5)
/* 801B5F64 001B2EC4  90 03 00 1A */	stw r0, 0x1a(r3)
/* 801B5F68 001B2EC8  4E 80 00 20 */	blr 

.global getWidth__7P2DFontFii
getWidth__7P2DFontFii:
/* 801B5F6C 001B2ECC  7C 08 02 A6 */	mflr r0
/* 801B5F70 001B2ED0  90 01 00 04 */	stw r0, 4(r1)
/* 801B5F74 001B2ED4  54 80 00 2F */	rlwinm. r0, r4, 0, 0, 0x17
/* 801B5F78 001B2ED8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801B5F7C 001B2EDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801B5F80 001B2EE0  3B E5 00 00 */	addi r31, r5, 0
/* 801B5F84 001B2EE4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801B5F88 001B2EE8  3B C3 00 00 */	addi r30, r3, 0
/* 801B5F8C 001B2EEC  41 82 00 14 */	beq .L_801B5FA0
/* 801B5F90 001B2EF0  80 7E 00 00 */	lwz r3, 0(r30)
/* 801B5F94 001B2EF4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 801B5F98 001B2EF8  4B E7 20 C1 */	bl charToIndex__4FontFUs
/* 801B5F9C 001B2EFC  48 00 00 10 */	b .L_801B5FAC
.L_801B5FA0:
/* 801B5FA0 001B2F00  80 7E 00 00 */	lwz r3, 0(r30)
/* 801B5FA4 001B2F04  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 801B5FA8 001B2F08  4B E7 20 0D */	bl charToIndex__4FontFc
.L_801B5FAC:
/* 801B5FAC 001B2F0C  A0 1E 00 06 */	lhz r0, 6(r30)
/* 801B5FB0 001B2F10  6F E4 80 00 */	xoris r4, r31, 0x8000
/* 801B5FB4 001B2F14  80 DE 00 00 */	lwz r6, 0(r30)
/* 801B5FB8 001B2F18  3C A0 43 30 */	lis r5, 0x43300000@ha
/* 801B5FBC 001B2F1C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 801B5FC0 001B2F20  C8 62 B7 18 */	lfd f3, lbl_803EB918@sda21(r2)
/* 801B5FC4 001B2F24  1C 63 00 1C */	mulli r3, r3, 0x1c
/* 801B5FC8 001B2F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B5FCC 001B2F2C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 801B5FD0 001B2F30  90 A1 00 28 */	stw r5, 0x28(r1)
/* 801B5FD4 001B2F34  C8 22 B7 28 */	lfd f1, lbl_803EB928@sda21(r2)
/* 801B5FD8 001B2F38  7C 60 1A 14 */	add r3, r0, r3
/* 801B5FDC 001B2F3C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801B5FE0 001B2F40  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 801B5FE4 001B2F44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801B5FE8 001B2F48  EC 42 18 28 */	fsubs f2, f2, f3
/* 801B5FEC 001B2F4C  A8 03 00 08 */	lha r0, 8(r3)
/* 801B5FF0 001B2F50  EC 20 08 28 */	fsubs f1, f0, f1
/* 801B5FF4 001B2F54  C0 02 B7 20 */	lfs f0, lbl_803EB920@sda21(r2)
/* 801B5FF8 001B2F58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B5FFC 001B2F5C  EC 22 08 24 */	fdivs f1, f2, f1
/* 801B6000 001B2F60  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B6004 001B2F64  90 A1 00 30 */	stw r5, 0x30(r1)
/* 801B6008 001B2F68  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 801B600C 001B2F6C  EC 42 18 28 */	fsubs f2, f2, f3
/* 801B6010 001B2F70  EC 42 00 72 */	fmuls f2, f2, f1
/* 801B6014 001B2F74  EC 20 10 2A */	fadds f1, f0, f2
/* 801B6018 001B2F78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801B601C 001B2F7C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801B6020 001B2F80  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801B6024 001B2F84  38 21 00 40 */	addi r1, r1, 0x40
/* 801B6028 001B2F88  7C 08 03 A6 */	mtlr r0
/* 801B602C 001B2F8C  4E 80 00 20 */	blr 

.global drawChar__7P2DFontFffiii
drawChar__7P2DFontFffiii:
/* 801B6030 001B2F90  7C 08 02 A6 */	mflr r0
/* 801B6034 001B2F94  90 01 00 04 */	stw r0, 4(r1)
/* 801B6038 001B2F98  54 80 00 2F */	rlwinm. r0, r4, 0, 0, 0x17
/* 801B603C 001B2F9C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801B6040 001B2FA0  DB E1 00 F8 */	stfd f31, 0xf8(r1)
/* 801B6044 001B2FA4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 801B6048 001B2FA8  DB A1 00 E8 */	stfd f29, 0xe8(r1)
/* 801B604C 001B2FAC  FF A0 08 90 */	fmr f29, f1
/* 801B6050 001B2FB0  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 801B6054 001B2FB4  FF 80 10 90 */	fmr f28, f2
/* 801B6058 001B2FB8  BF 61 00 CC */	stmw r27, 0xcc(r1)
/* 801B605C 001B2FBC  3B E3 00 00 */	addi r31, r3, 0
/* 801B6060 001B2FC0  3B 85 00 00 */	addi r28, r5, 0x43300000@l
/* 801B6064 001B2FC4  3B 66 00 00 */	addi r27, r6, 0
/* 801B6068 001B2FC8  41 82 00 14 */	beq .L_801B607C
/* 801B606C 001B2FCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 801B6070 001B2FD0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 801B6074 001B2FD4  4B E7 1F E5 */	bl charToIndex__4FontFUs
/* 801B6078 001B2FD8  48 00 00 10 */	b .L_801B6088
.L_801B607C:
/* 801B607C 001B2FDC  80 7F 00 00 */	lwz r3, 0(r31)
/* 801B6080 001B2FE0  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 801B6084 001B2FE4  4B E7 1F 31 */	bl charToIndex__4FontFc
.L_801B6088:
/* 801B6088 001B2FE8  81 1F 00 00 */	lwz r8, 0(r31)
/* 801B608C 001B2FEC  6F 86 80 00 */	xoris r6, r28, 0x8000
/* 801B6090 001B2FF0  A0 BF 00 06 */	lhz r5, 6(r31)
/* 801B6094 001B2FF4  6F 64 80 00 */	xoris r4, r27, 0x8000
/* 801B6098 001B2FF8  80 08 00 08 */	lwz r0, 8(r8)
/* 801B609C 001B2FFC  81 48 00 00 */	lwz r10, 0(r8)
/* 801B60A0 001B3000  1C E3 00 1C */	mulli r7, r3, 0x1c
/* 801B60A4 001B3004  81 28 00 0C */	lwz r9, 0xc(r8)
/* 801B60A8 001B3008  90 C1 00 C4 */	stw r6, 0xc4(r1)
/* 801B60AC 001B300C  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 801B60B0 001B3010  A0 7F 00 0A */	lhz r3, 0xa(r31)
/* 801B60B4 001B3014  3D 00 43 30 */	lis r8, 0x4330
/* 801B60B8 001B3018  90 A1 00 BC */	stw r5, 0xbc(r1)
/* 801B60BC 001B301C  7C E9 3A 14 */	add r7, r9, r7
/* 801B60C0 001B3020  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 801B60C4 001B3024  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 801B60C8 001B3028  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 801B60CC 001B302C  80 67 00 0C */	lwz r3, 0xc(r7)
/* 801B60D0 001B3030  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801B60D4 001B3034  90 C1 00 AC */	stw r6, 0xac(r1)
/* 801B60D8 001B3038  80 07 00 10 */	lwz r0, 0x10(r7)
/* 801B60DC 001B303C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801B60E0 001B3040  91 01 00 C0 */	stw r8, 0xc0(r1)
/* 801B60E4 001B3044  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B60E8 001B3048  C8 02 B7 18 */	lfd f0, lbl_803EB918@sda21(r2)
/* 801B60EC 001B304C  91 01 00 B8 */	stw r8, 0xb8(r1)
/* 801B60F0 001B3050  C8 21 00 C0 */	lfd f1, 0xc0(r1)
/* 801B60F4 001B3054  91 01 00 B0 */	stw r8, 0xb0(r1)
/* 801B60F8 001B3058  C8 82 B7 28 */	lfd f4, lbl_803EB928@sda21(r2)
/* 801B60FC 001B305C  EC C1 00 28 */	fsubs f6, f1, f0
/* 801B6100 001B3060  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 801B6104 001B3064  C8 61 00 B8 */	lfd f3, 0xb8(r1)
/* 801B6108 001B3068  C8 41 00 B0 */	lfd f2, 0xb0(r1)
/* 801B610C 001B306C  C8 21 00 A8 */	lfd f1, 0xa8(r1)
/* 801B6110 001B3070  EC A3 20 28 */	fsubs f5, f3, f4
/* 801B6114 001B3074  90 61 00 84 */	stw r3, 0x84(r1)
/* 801B6118 001B3078  EC 82 00 28 */	fsubs f4, f2, f0
/* 801B611C 001B307C  EC 61 00 28 */	fsubs f3, f1, f0
/* 801B6120 001B3080  90 01 00 74 */	stw r0, 0x74(r1)
/* 801B6124 001B3084  A8 C7 00 0A */	lha r6, 0xa(r7)
/* 801B6128 001B3088  ED 66 28 24 */	fdivs f11, f6, f5
/* 801B612C 001B308C  91 01 00 80 */	stw r8, 0x80(r1)
/* 801B6130 001B3090  A8 07 00 04 */	lha r0, 4(r7)
/* 801B6134 001B3094  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 801B6138 001B3098  91 01 00 70 */	stw r8, 0x70(r1)
/* 801B613C 001B309C  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 801B6140 001B30A0  7C 06 00 50 */	subf r0, r6, r0
/* 801B6144 001B30A4  C8 21 00 70 */	lfd f1, 0x70(r1)
/* 801B6148 001B30A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B614C 001B30AC  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 801B6150 001B30B0  ED 84 18 24 */	fdivs f12, f4, f3
/* 801B6154 001B30B4  C0 A2 B7 34 */	lfs f5, lbl_803EB934@sda21(r2)
/* 801B6158 001B30B8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801B615C 001B30BC  C0 C2 B7 30 */	lfs f6, lbl_803EB930@sda21(r2)
/* 801B6160 001B30C0  90 A1 00 94 */	stw r5, 0x94(r1)
/* 801B6164 001B30C4  EC 62 00 28 */	fsubs f3, f2, f0
/* 801B6168 001B30C8  90 81 00 8C */	stw r4, 0x8c(r1)
/* 801B616C 001B30CC  EC 41 00 28 */	fsubs f2, f1, f0
/* 801B6170 001B30D0  C0 2A 00 28 */	lfs f1, 0x28(r10)
/* 801B6174 001B30D4  91 01 00 A0 */	stw r8, 0xa0(r1)
/* 801B6178 001B30D8  EC 85 18 2A */	fadds f4, f5, f3
/* 801B617C 001B30DC  91 01 00 98 */	stw r8, 0x98(r1)
/* 801B6180 001B30E0  EC 65 10 2A */	fadds f3, f5, f2
/* 801B6184 001B30E4  C8 E1 00 A0 */	lfd f7, 0xa0(r1)
/* 801B6188 001B30E8  91 01 00 90 */	stw r8, 0x90(r1)
/* 801B618C 001B30EC  91 01 00 88 */	stw r8, 0x88(r1)
/* 801B6190 001B30F0  EC 46 01 32 */	fmuls f2, f6, f4
/* 801B6194 001B30F4  C9 21 00 98 */	lfd f9, 0x98(r1)
/* 801B6198 001B30F8  ED 47 00 28 */	fsubs f10, f7, f0
/* 801B619C 001B30FC  C9 01 00 90 */	lfd f8, 0x90(r1)
/* 801B61A0 001B3100  C8 E1 00 88 */	lfd f7, 0x88(r1)
/* 801B61A4 001B3104  EC 82 00 72 */	fmuls f4, f2, f1
/* 801B61A8 001B3108  C0 4A 00 2C */	lfs f2, 0x2c(r10)
/* 801B61AC 001B310C  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801B61B0 001B3110  ED 29 00 28 */	fsubs f9, f9, f0
/* 801B61B4 001B3114  ED 08 00 28 */	fsubs f8, f8, f0
/* 801B61B8 001B3118  EC 63 00 B2 */	fmuls f3, f3, f2
/* 801B61BC 001B311C  EC E7 00 28 */	fsubs f7, f7, f0
/* 801B61C0 001B3120  FC 80 20 1E */	fctiwz f4, f4
/* 801B61C4 001B3124  FC 60 18 1E */	fctiwz f3, f3
/* 801B61C8 001B3128  ED 4A 02 F2 */	fmuls f10, f10, f11
/* 801B61CC 001B312C  ED 2B 02 72 */	fmuls f9, f11, f9
/* 801B61D0 001B3130  D8 81 00 78 */	stfd f4, 0x78(r1)
/* 801B61D4 001B3134  ED 0C 02 32 */	fmuls f8, f12, f8
/* 801B61D8 001B3138  EC 8C 01 F2 */	fmuls f4, f12, f7
/* 801B61DC 001B313C  D8 61 00 68 */	stfd f3, 0x68(r1)
/* 801B61E0 001B3140  EF FD 50 28 */	fsubs f31, f29, f10
/* 801B61E4 001B3144  83 C1 00 7C */	lwz r30, 0x7c(r1)
/* 801B61E8 001B3148  EF DD 48 2A */	fadds f30, f29, f9
/* 801B61EC 001B314C  EF BC 40 28 */	fsubs f29, f28, f8
/* 801B61F0 001B3150  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 801B61F4 001B3154  EF 9C 20 2A */	fadds f28, f28, f4
/* 801B61F8 001B3158  80 A7 00 14 */	lwz r5, 0x14(r7)
/* 801B61FC 001B315C  38 60 00 00 */	li r3, 0
/* 801B6200 001B3160  80 07 00 18 */	lwz r0, 0x18(r7)
/* 801B6204 001B3164  38 80 00 09 */	li r4, 9
/* 801B6208 001B3168  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801B620C 001B316C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B6210 001B3170  90 A1 00 64 */	stw r5, 0x64(r1)
/* 801B6214 001B3174  38 A0 00 01 */	li r5, 1
/* 801B6218 001B3178  90 01 00 54 */	stw r0, 0x54(r1)
/* 801B621C 001B317C  38 C0 00 04 */	li r6, 4
/* 801B6220 001B3180  38 E0 00 00 */	li r7, 0
/* 801B6224 001B3184  91 01 00 60 */	stw r8, 0x60(r1)
/* 801B6228 001B3188  91 01 00 50 */	stw r8, 0x50(r1)
/* 801B622C 001B318C  C8 81 00 60 */	lfd f4, 0x60(r1)
/* 801B6230 001B3190  C8 61 00 50 */	lfd f3, 0x50(r1)
/* 801B6234 001B3194  EC 84 00 28 */	fsubs f4, f4, f0
/* 801B6238 001B3198  EC 03 00 28 */	fsubs f0, f3, f0
/* 801B623C 001B319C  EC 65 20 2A */	fadds f3, f5, f4
/* 801B6240 001B31A0  EC 05 00 2A */	fadds f0, f5, f0
/* 801B6244 001B31A4  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801B6248 001B31A8  EC 06 00 32 */	fmuls f0, f6, f0
/* 801B624C 001B31AC  EC 23 00 72 */	fmuls f1, f3, f1
/* 801B6250 001B31B0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801B6254 001B31B4  FC 20 08 1E */	fctiwz f1, f1
/* 801B6258 001B31B8  FC 00 00 1E */	fctiwz f0, f0
/* 801B625C 001B31BC  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 801B6260 001B31C0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801B6264 001B31C4  83 81 00 5C */	lwz r28, 0x5c(r1)
/* 801B6268 001B31C8  83 61 00 4C */	lwz r27, 0x4c(r1)
/* 801B626C 001B31CC  48 05 99 DD */	bl GXSetVtxAttrFmt
/* 801B6270 001B31D0  38 60 00 80 */	li r3, 0x80
/* 801B6274 001B31D4  38 80 00 00 */	li r4, 0
/* 801B6278 001B31D8  38 A0 00 04 */	li r5, 4
/* 801B627C 001B31DC  48 05 A9 59 */	bl GXBegin
/* 801B6280 001B31E0  3D 00 CC 01 */	lis r8, 0xCC008000@ha
/* 801B6284 001B31E4  C0 02 B7 10 */	lfs f0, lbl_803EB910@sda21(r2)
/* 801B6288 001B31E8  D3 E8 80 00 */	stfs f31, 0xCC008000@l(r8)
/* 801B628C 001B31EC  38 60 00 00 */	li r3, 0
/* 801B6290 001B31F0  38 80 00 09 */	li r4, 9
/* 801B6294 001B31F4  D3 A8 80 00 */	stfs f29, 0xCC008000@l(r8)
/* 801B6298 001B31F8  38 A0 00 01 */	li r5, 1
/* 801B629C 001B31FC  38 C0 00 03 */	li r6, 3
/* 801B62A0 001B3200  D0 08 80 00 */	stfs f0, 0xCC008000@l(r8)
/* 801B62A4 001B3204  38 E0 00 00 */	li r7, 0
/* 801B62A8 001B3208  80 1F 00 0E */	lwz r0, 0xe(r31)
/* 801B62AC 001B320C  90 08 80 00 */	stw r0, 0xCC008000@l(r8)
/* 801B62B0 001B3210  B3 C8 80 00 */	sth r30, 0xCC008000@l(r8)
/* 801B62B4 001B3214  B3 A8 80 00 */	sth r29, 0xCC008000@l(r8)
/* 801B62B8 001B3218  D3 C8 80 00 */	stfs f30, 0xCC008000@l(r8)
/* 801B62BC 001B321C  D3 A8 80 00 */	stfs f29, 0xCC008000@l(r8)
/* 801B62C0 001B3220  D0 08 80 00 */	stfs f0, 0xCC008000@l(r8)
/* 801B62C4 001B3224  80 1F 00 12 */	lwz r0, 0x12(r31)
/* 801B62C8 001B3228  90 08 80 00 */	stw r0, 0xCC008000@l(r8)
/* 801B62CC 001B322C  B3 88 80 00 */	sth r28, 0xCC008000@l(r8)
/* 801B62D0 001B3230  B3 A8 80 00 */	sth r29, 0xCC008000@l(r8)
/* 801B62D4 001B3234  D3 C8 80 00 */	stfs f30, 0xCC008000@l(r8)
/* 801B62D8 001B3238  D3 88 80 00 */	stfs f28, 0xCC008000@l(r8)
/* 801B62DC 001B323C  D0 08 80 00 */	stfs f0, 0xCC008000@l(r8)
/* 801B62E0 001B3240  80 1F 00 1A */	lwz r0, 0x1a(r31)
/* 801B62E4 001B3244  90 08 80 00 */	stw r0, 0xCC008000@l(r8)
/* 801B62E8 001B3248  B3 88 80 00 */	sth r28, 0xCC008000@l(r8)
/* 801B62EC 001B324C  B3 68 80 00 */	sth r27, 0xCC008000@l(r8)
/* 801B62F0 001B3250  D3 E8 80 00 */	stfs f31, 0xCC008000@l(r8)
/* 801B62F4 001B3254  D3 88 80 00 */	stfs f28, 0xCC008000@l(r8)
/* 801B62F8 001B3258  D0 08 80 00 */	stfs f0, 0xCC008000@l(r8)
/* 801B62FC 001B325C  80 1F 00 16 */	lwz r0, 0x16(r31)
/* 801B6300 001B3260  90 08 80 00 */	stw r0, 0xCC008000@l(r8)
/* 801B6304 001B3264  B3 C8 80 00 */	sth r30, 0xCC008000@l(r8)
/* 801B6308 001B3268  B3 68 80 00 */	sth r27, 0xCC008000@l(r8)
/* 801B630C 001B326C  48 05 99 3D */	bl GXSetVtxAttrFmt
/* 801B6310 001B3270  BB 61 00 CC */	lmw r27, 0xcc(r1)
/* 801B6314 001B3274  EC 3E F8 28 */	fsubs f1, f30, f31
/* 801B6318 001B3278  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801B631C 001B327C  CB E1 00 F8 */	lfd f31, 0xf8(r1)
/* 801B6320 001B3280  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 801B6324 001B3284  CB A1 00 E8 */	lfd f29, 0xe8(r1)
/* 801B6328 001B3288  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 801B632C 001B328C  38 21 01 00 */	addi r1, r1, 0x100
/* 801B6330 001B3290  7C 08 03 A6 */	mtlr r0
/* 801B6334 001B3294  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
.obj lbl_802E0950, local
	.asciz "P2DFont.cpp"
.endobj lbl_802E0950
.balign 4
.obj lbl_802E095C, local
	.asciz "bigFont.bti"
.endobj lbl_802E095C
.balign 4
.obj lbl_802E0968, local
	.asciz "FntobjInfo"
.endobj lbl_802E0968
.balign 4
.obj lbl_802E0974, local
	.asciz "GfxobjInfo"
.endobj lbl_802E0974
.balign 4
.obj lbl_802E0980, local
	.4byte __RTTI__10GfxobjInfo
	.4byte 0
	.4byte 0
.endobj lbl_802E0980
.balign 4
.obj __vt__10FntobjInfo, weak
	.4byte __RTTI__10FntobjInfo
	.4byte 0
	.4byte attach__10GfxobjInfoFv
	.4byte detach__10GfxobjInfoFv
.endobj __vt__10FntobjInfo
.skip 8
.balign 0x10

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
.obj lbl_803E6688, local
	.asciz ""
.endobj lbl_803E6688
.balign 4
.obj lbl_803E668C, local
	.asciz "%s"
.endobj lbl_803E668C
.balign 4
.obj __RTTI__10GfxobjInfo, local
	.4byte lbl_802E0974
	.4byte 0
.endobj __RTTI__10GfxobjInfo
.balign 4
.obj __RTTI__10FntobjInfo, local
	.4byte lbl_802E0968
	.4byte lbl_802E0980
.endobj __RTTI__10FntobjInfo

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB910:
	.4byte 0x00000000
.balign 8
lbl_803EB918:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB920:
	.4byte 0x3F800000
.balign 8
lbl_803EB928:
	.4byte 0x43300000
	.4byte 0x00000000
lbl_803EB930:
	.4byte 0x47000000
lbl_803EB934:
	.4byte 0x3F000000
