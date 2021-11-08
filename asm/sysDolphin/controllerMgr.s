.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80085DE8 00082D48  4E 80 00 21 */	blrl 
/* 80085DEC 00082D4C  7C 7D 1B 78 */	mr r29, r3
/* 80085DF0 00082D50  48 00 00 A4 */	b lbl_80085E94
lbl_80085DF4:
/* 80085DF4 00082D54  2C 1D FF FF */	cmpwi r29, -1
/* 80085DF8 00082D58  40 82 00 24 */	bne lbl_80085E1C
/* 80085DFC 00082D5C  7F C3 F3 78 */	mr r3, r30
/* 80085E00 00082D60  81 9E 00 00 */	lwz r12, 0(r30)
/* 80085E04 00082D64  38 80 00 00 */	li r4, 0
/* 80085E08 00082D68  81 8C 00 08 */	lwz r12, 8(r12)
/* 80085E0C 00082D6C  7D 88 03 A6 */	mtlr r12
/* 80085E10 00082D70  4E 80 00 21 */	blrl 
/* 80085E14 00082D74  7C 7F 1B 78 */	mr r31, r3
/* 80085E18 00082D78  48 00 00 20 */	b lbl_80085E38
lbl_80085E1C:
/* 80085E1C 00082D7C  7F C3 F3 78 */	mr r3, r30
/* 80085E20 00082D80  81 9E 00 00 */	lwz r12, 0(r30)
/* 80085E24 00082D84  7F A4 EB 78 */	mr r4, r29
/* 80085E28 00082D88  81 8C 00 08 */	lwz r12, 8(r12)
/* 80085E2C 00082D8C  7D 88 03 A6 */	mtlr r12
/* 80085E30 00082D90  4E 80 00 21 */	blrl 
/* 80085E34 00082D94  7C 7F 1B 78 */	mr r31, r3
lbl_80085E38:
/* 80085E38 00082D98  81 9F 00 00 */	lwz r12, 0(r31)
/* 80085E3C 00082D9C  7F E3 FB 78 */	mr r3, r31
/* 80085E40 00082DA0  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80085E44 00082DA4  7D 88 03 A6 */	mtlr r12
/* 80085E48 00082DA8  4E 80 00 21 */	blrl 
/* 80085E4C 00082DAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085E50 00082DB0  41 82 00 28 */	beq lbl_80085E78
/* 80085E54 00082DB4  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80085E58 00082DB8  28 00 00 00 */	cmplwi r0, 0
/* 80085E5C 00082DBC  40 82 00 1C */	bne lbl_80085E78
/* 80085E60 00082DC0  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80085E64 00082DC4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80085E68 00082DC8  90 7F 00 94 */	stw r3, 0x94(r31)
/* 80085E6C 00082DCC  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80085E70 00082DD0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80085E74 00082DD4  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_80085E78:
/* 80085E78 00082DD8  7F C3 F3 78 */	mr r3, r30
/* 80085E7C 00082DDC  81 9E 00 00 */	lwz r12, 0(r30)
/* 80085E80 00082DE0  7F A4 EB 78 */	mr r4, r29
/* 80085E84 00082DE4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80085E88 00082DE8  7D 88 03 A6 */	mtlr r12
/* 80085E8C 00082DEC  4E 80 00 21 */	blrl 
/* 80085E90 00082DF0  7C 7D 1B 78 */	mr r29, r3
lbl_80085E94:
/* 80085E94 00082DF4  7F C3 F3 78 */	mr r3, r30
/* 80085E98 00082DF8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80085E9C 00082DFC  7F A4 EB 78 */	mr r4, r29
/* 80085EA0 00082E00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80085EA4 00082E04  7D 88 03 A6 */	mtlr r12
/* 80085EA8 00082E08  4E 80 00 21 */	blrl 
/* 80085EAC 00082E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085EB0 00082E10  41 82 00 0C */	beq lbl_80085EBC
/* 80085EB4 00082E14  38 00 00 01 */	li r0, 1
/* 80085EB8 00082E18  48 00 00 30 */	b lbl_80085EE8
lbl_80085EBC:
/* 80085EBC 00082E1C  7F C3 F3 78 */	mr r3, r30
/* 80085EC0 00082E20  81 9E 00 00 */	lwz r12, 0(r30)
/* 80085EC4 00082E24  7F A4 EB 78 */	mr r4, r29
/* 80085EC8 00082E28  81 8C 00 08 */	lwz r12, 8(r12)
/* 80085ECC 00082E2C  7D 88 03 A6 */	mtlr r12
/* 80085ED0 00082E30  4E 80 00 21 */	blrl 
/* 80085ED4 00082E34  28 03 00 00 */	cmplwi r3, 0
/* 80085ED8 00082E38  40 82 00 0C */	bne lbl_80085EE4
/* 80085EDC 00082E3C  38 00 00 01 */	li r0, 1
/* 80085EE0 00082E40  48 00 00 08 */	b lbl_80085EE8
lbl_80085EE4:
/* 80085EE4 00082E44  38 00 00 00 */	li r0, 0
lbl_80085EE8:
/* 80085EE8 00082E48  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80085EEC 00082E4C  41 82 FF 08 */	beq lbl_80085DF4
/* 80085EF0 00082E50  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80085EF4 00082E54  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80085EF8 00082E58  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 80085EFC 00082E5C  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 80085F00 00082E60  38 21 00 48 */	addi r1, r1, 0x48
/* 80085F04 00082E64  7C 08 03 A6 */	mtlr r0
/* 80085F08 00082E68  4E 80 00 20 */	blr 

.global fullfillPiki__6AIPerfFR4Menu
fullfillPiki__6AIPerfFR4Menu:
/* 80085F0C 00082E6C  7C 08 02 A6 */	mflr r0
/* 80085F10 00082E70  3C 80 80 3D */	lis r4, pikiInfMgr@ha
/* 80085F14 00082E74  90 01 00 04 */	stw r0, 4(r1)
/* 80085F18 00082E78  3C 60 80 3D */	lis r3, containerPikis__8GameStat@ha
/* 80085F1C 00082E7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80085F20 00082E80  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80085F24 00082E84  3B C4 1D F0 */	addi r30, r4, pikiInfMgr@l
/* 80085F28 00082E88  3B E3 1E A0 */	addi r31, r3, containerPikis__8GameStat@l
/* 80085F2C 00082E8C  3B 80 00 00 */	li r28, 0
lbl_80085F30:
/* 80085F30 00082E90  80 6D 2F 6C */	lwz r3, playerState@sda21(r13)
/* 80085F34 00082E94  38 00 00 01 */	li r0, 1
/* 80085F38 00082E98  7C 00 E0 30 */	slw r0, r0, r28
/* 80085F3C 00082E9C  88 63 01 84 */	lbz r3, 0x184(r3)
/* 80085F40 00082EA0  7C 60 00 39 */	and. r0, r3, r0
/* 80085F44 00082EA4  41 82 00 60 */	beq lbl_80085FA4
/* 80085F48 00082EA8  80 6D 30 AC */	lwz r3, itemMgr@sda21(r13)
/* 80085F4C 00082EAC  7F 84 E3 78 */	mr r4, r28
/* 80085F50 00082EB0  48 06 CA 69 */	bl getContainer__7ItemMgrFi
/* 80085F54 00082EB4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80085F58 00082EB8  41 82 00 4C */	beq lbl_80085FA4
/* 80085F5C 00082EBC  3B 60 00 00 */	li r27, 0
lbl_80085F60:
/* 80085F60 00082EC0  A0 9D 04 28 */	lhz r4, 0x428(r29)
/* 80085F64 00082EC4  38 7E 00 00 */	addi r3, r30, 0
/* 80085F68 00082EC8  38 A0 00 00 */	li r5, 0
/* 80085F6C 00082ECC  48 03 F8 AD */	bl incPiki__10PikiInfMgrFii
/* 80085F70 00082ED0  80 7D 04 2C */	lwz r3, 0x42c(r29)
/* 80085F74 00082ED4  38 03 00 01 */	addi r0, r3, 1
/* 80085F78 00082ED8  90 1D 04 2C */	stw r0, 0x42c(r29)
/* 80085F7C 00082EDC  A0 1D 04 28 */	lhz r0, 0x428(r29)
/* 80085F80 00082EE0  54 00 10 3A */	slwi r0, r0, 2
/* 80085F84 00082EE4  7C 9F 02 14 */	add r4, r31, r0
/* 80085F88 00082EE8  80 64 00 00 */	lwz r3, 0(r4)
/* 80085F8C 00082EEC  38 03 00 01 */	addi r0, r3, 1
/* 80085F90 00082EF0  90 04 00 00 */	stw r0, 0(r4)
/* 80085F94 00082EF4  48 08 C5 CD */	bl update__8GameStatFv
/* 80085F98 00082EF8  3B 7B 00 01 */	addi r27, r27, 1
/* 80085F9C 00082EFC  2C 1B 00 64 */	cmpwi r27, 0x64
/* 80085FA0 00082F00  41 80 FF C0 */	blt lbl_80085F60
lbl_80085FA4:
/* 80085FA4 00082F04  3B 9C 00 01 */	addi r28, r28, 1
/* 80085FA8 00082F08  2C 1C 00 03 */	cmpwi r28, 3
/* 80085FAC 00082F0C  41 80 FF 84 */	blt lbl_80085F30
/* 80085FB0 00082F10  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80085FB4 00082F14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80085FB8 00082F18  38 21 00 30 */	addi r1, r1, 0x30
/* 80085FBC 00082F1C  7C 08 03 A6 */	mtlr r0
/* 80085FC0 00082F20  4E 80 00 20 */	blr 

.global flowerPiki__6AIPerfFR4Menu
flowerPiki__6AIPerfFR4Menu:
/* 80085FC4 00082F24  7C 08 02 A6 */	mflr r0
/* 80085FC8 00082F28  90 01 00 04 */	stw r0, 4(r1)
/* 80085FCC 00082F2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80085FD0 00082F30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80085FD4 00082F34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80085FD8 00082F38  83 ED 30 68 */	lwz r31, pikiMgr@sda21(r13)
/* 80085FDC 00082F3C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80085FE0 00082F40  7F E3 FB 78 */	mr r3, r31
/* 80085FE4 00082F44  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80085FE8 00082F48  7D 88 03 A6 */	mtlr r12
/* 80085FEC 00082F4C  4E 80 00 21 */	blrl 
/* 80085FF0 00082F50  7C 7E 1B 78 */	mr r30, r3
/* 80085FF4 00082F54  48 00 00 70 */	b lbl_80086064
lbl_80085FF8:
/* 80085FF8 00082F58  2C 1E FF FF */	cmpwi r30, -1
/* 80085FFC 00082F5C  40 82 00 20 */	bne lbl_8008601C
/* 80086000 00082F60  7F E3 FB 78 */	mr r3, r31
/* 80086004 00082F64  81 9F 00 00 */	lwz r12, 0(r31)
/* 80086008 00082F68  38 80 00 00 */	li r4, 0
/* 8008600C 00082F6C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80086010 00082F70  7D 88 03 A6 */	mtlr r12
/* 80086014 00082F74  4E 80 00 21 */	blrl 
/* 80086018 00082F78  48 00 00 1C */	b lbl_80086034
lbl_8008601C:
/* 8008601C 00082F7C  7F E3 FB 78 */	mr r3, r31
/* 80086020 00082F80  81 9F 00 00 */	lwz r12, 0(r31)
/* 80086024 00082F84  7F C4 F3 78 */	mr r4, r30
/* 80086028 00082F88  81 8C 00 08 */	lwz r12, 8(r12)
/* 8008602C 00082F8C  7D 88 03 A6 */	mtlr r12
/* 80086030 00082F90  4E 80 00 21 */	blrl 
lbl_80086034:
/* 80086034 00082F94  81 83 00 00 */	lwz r12, 0(r3)
/* 80086038 00082F98  38 80 00 02 */	li r4, 2
/* 8008603C 00082F9C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80086040 00082FA0  7D 88 03 A6 */	mtlr r12
/* 80086044 00082FA4  4E 80 00 21 */	blrl 
/* 80086048 00082FA8  7F E3 FB 78 */	mr r3, r31
/* 8008604C 00082FAC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80086050 00082FB0  7F C4 F3 78 */	mr r4, r30
/* 80086054 00082FB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80086058 00082FB8  7D 88 03 A6 */	mtlr r12
/* 8008605C 00082FBC  4E 80 00 21 */	blrl 
/* 80086060 00082FC0  7C 7E 1B 78 */	mr r30, r3
lbl_80086064:
/* 80086064 00082FC4  7F E3 FB 78 */	mr r3, r31
/* 80086068 00082FC8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8008606C 00082FCC  7F C4 F3 78 */	mr r4, r30
/* 80086070 00082FD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80086074 00082FD4  7D 88 03 A6 */	mtlr r12
/* 80086078 00082FD8  4E 80 00 21 */	blrl 
/* 8008607C 00082FDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80086080 00082FE0  41 82 00 0C */	beq lbl_8008608C
/* 80086084 00082FE4  38 00 00 01 */	li r0, 1
/* 80086088 00082FE8  48 00 00 30 */	b lbl_800860B8
lbl_8008608C:
/* 8008608C 00082FEC  7F E3 FB 78 */	mr r3, r31
/* 80086090 00082FF0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80086094 00082FF4  7F C4 F3 78 */	mr r4, r30
/* 80086098 00082FF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8008609C 00082FFC  7D 88 03 A6 */	mtlr r12
/* 800860A0 00083000  4E 80 00 21 */	blrl 
/* 800860A4 00083004  28 03 00 00 */	cmplwi r3, 0
/* 800860A8 00083008  40 82 00 0C */	bne lbl_800860B4
/* 800860AC 0008300C  38 00 00 01 */	li r0, 1
/* 800860B0 00083010  48 00 00 08 */	b lbl_800860B8
lbl_800860B4:
/* 800860B4 00083014  38 00 00 00 */	li r0, 0
lbl_800860B8:
/* 800860B8 00083018  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800860BC 0008301C  41 82 FF 3C */	beq lbl_80085FF8
/* 800860C0 00083020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800860C4 00083024  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800860C8 00083028  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800860CC 0008302C  38 21 00 30 */	addi r1, r1, 0x30
/* 800860D0 00083030  7C 08 03 A6 */	mtlr r0
/* 800860D4 00083034  4E 80 00 20 */	blr 

.global breakSluice__6AIPerfFR4Menu
breakSluice__6AIPerfFR4Menu:
/* 800860D8 00083038  7C 08 02 A6 */	mflr r0
/* 800860DC 0008303C  90 01 00 04 */	stw r0, 4(r1)
/* 800860E0 00083040  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 800860E4 00083044  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 800860E8 00083048  DB C1 00 78 */	stfd f30, 0x78(r1)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 8019BF18 00198E78  7D 88 03 A6 */	mtlr r12
/* 8019BF1C 00198E7C  4E 80 00 21 */	blrl 
/* 8019BF20 00198E80  7F A3 EB 78 */	mr r3, r29
/* 8019BF24 00198E84  81 9D 03 B4 */	lwz r12, 0x3b4(r29)
/* 8019BF28 00198E88  38 81 00 38 */	addi r4, r1, 0x38
/* 8019BF2C 00198E8C  38 A0 00 00 */	li r5, 0
/* 8019BF30 00198E90  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8019BF34 00198E94  7D 88 03 A6 */	mtlr r12
/* 8019BF38 00198E98  4E 80 00 21 */	blrl 
/* 8019BF3C 00198E9C  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 8019BF40 00198EA0  7F A4 EB 78 */	mr r4, r29
/* 8019BF44 00198EA4  80 BD 02 E4 */	lwz r5, 0x2e4(r29)
/* 8019BF48 00198EA8  38 C0 00 00 */	li r6, 0
/* 8019BF4C 00198EAC  4B E9 45 21 */	bl drawshape__9BaseShapeFR8GraphicsR6CameraP17ShapeDynMaterials
/* 8019BF50 00198EB0  83 39 00 10 */	lwz r25, 0x10(r25)
lbl_8019BF54:
/* 8019BF54 00198EB4  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8019BF58 00198EB8  7C 19 00 40 */	cmplw r25, r0
/* 8019BF5C 00198EBC  40 82 FF 64 */	bne lbl_8019BEC0
lbl_8019BF60:
/* 8019BF60 00198EC0  BB 21 01 1C */	lmw r25, 0x11c(r1)
/* 8019BF64 00198EC4  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8019BF68 00198EC8  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8019BF6C 00198ECC  CB C1 01 38 */	lfd f30, 0x138(r1)
/* 8019BF70 00198ED0  38 21 01 48 */	addi r1, r1, 0x148
/* 8019BF74 00198ED4  7C 08 03 A6 */	mtlr r0
/* 8019BF78 00198ED8  4E 80 00 20 */	blr 

.global update__10EffShpInstFv
update__10EffShpInstFv:
/* 8019BF7C 00198EDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019BF80 00198EE0  38 C0 00 00 */	li r6, 0
/* 8019BF84 00198EE4  88 03 00 42 */	lbz r0, 0x42(r3)
/* 8019BF88 00198EE8  28 00 00 00 */	cmplwi r0, 0
/* 8019BF8C 00198EEC  41 82 01 18 */	beq lbl_8019C0A4
/* 8019BF90 00198EF0  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8019BF94 00198EF4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8019BF98 00198EF8  80 84 00 18 */	lwz r4, 0x18(r4)
/* 8019BF9C 00198EFC  80 84 00 00 */	lwz r4, 0(r4)
/* 8019BFA0 00198F00  80 04 00 30 */	lwz r0, 0x30(r4)
/* 8019BFA4 00198F04  2C 00 00 00 */	cmpwi r0, 0
/* 8019BFA8 00198F08  40 81 00 A8 */	ble lbl_8019C050
/* 8019BFAC 00198F0C  80 AD 2D EC */	lwz r5, gsys@sda21(r13)
/* 8019BFB0 00198F10  3C 80 43 30 */	lis r4, 0x4330
/* 8019BFB4 00198F14  C0 22 B3 80 */	lfs f1, lbl_803EB580@sda21(r2)
/* 8019BFB8 00198F18  C0 05 02 8C */	lfs f0, 0x28c(r5)
/* 8019BFBC 00198F1C  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8019BFC0 00198F20  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019BFC4 00198F24  EC 02 00 2A */	fadds f0, f2, f0
/* 8019BFC8 00198F28  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8019BFCC 00198F2C  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8019BFD0 00198F30  C8 22 B3 88 */	lfd f1, "@1388"@sda21(r2)
/* 8019BFD4 00198F34  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8019BFD8 00198F38  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8019BFDC 00198F3C  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 8019BFE0 00198F40  80 A5 00 00 */	lwz r5, 0(r5)
/* 8019BFE4 00198F44  80 A5 00 30 */	lwz r5, 0x30(r5)
/* 8019BFE8 00198F48  38 05 FF FF */	addi r0, r5, -1
/* 8019BFEC 00198F4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019BFF0 00198F50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8019BFF4 00198F54  90 81 00 28 */	stw r4, 0x28(r1)
/* 8019BFF8 00198F58  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8019BFFC 00198F5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019C000 00198F60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019C004 00198F64  40 81 00 A0 */	ble lbl_8019C0A4
/* 8019C008 00198F68  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8019C00C 00198F6C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8019C010 00198F70  90 81 00 28 */	stw r4, 0x28(r1)
/* 8019C014 00198F74  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8019C018 00198F78  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019C01C 00198F7C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8019C020 00198F80  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8019C024 00198F84  88 A3 00 41 */	lbz r5, 0x41(r3)
/* 8019C028 00198F88  28 05 00 00 */	cmplwi r5, 0
/* 8019C02C 00198F8C  41 82 00 78 */	beq lbl_8019C0A4
/* 8019C030 00198F90  88 83 00 40 */	lbz r4, 0x40(r3)
/* 8019C034 00198F94  38 84 00 01 */	addi r4, r4, 1
/* 8019C038 00198F98  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8019C03C 00198F9C  98 83 00 40 */	stb r4, 0x40(r3)
/* 8019C040 00198FA0  7C 00 28 40 */	cmplw r0, r5
/* 8019C044 00198FA4  41 80 00 60 */	blt lbl_8019C0A4
/* 8019C048 00198FA8  38 C0 00 01 */	li r6, 1
/* 8019C04C 00198FAC  48 00 00 58 */	b lbl_8019C0A4
lbl_8019C050:
/* 8019C050 00198FB0  80 8D 2D EC */	lwz r4, gsys@sda21(r13)
/* 8019C054 00198FB4  C0 22 B3 80 */	lfs f1, lbl_803EB580@sda21(r2)
/* 8019C058 00198FB8  C0 04 02 8C */	lfs f0, 0x28c(r4)
/* 8019C05C 00198FBC  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 8019C060 00198FC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019C064 00198FC4  EC 02 00 2A */	fadds f0, f2, f0
/* 8019C068 00198FC8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8019C06C 00198FCC  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 8019C070 00198FD0  C0 02 B3 74 */	lfs f0, lbl_803EB574@sda21(r2)
/* 8019C074 00198FD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019C078 00198FD8  40 81 00 2C */	ble lbl_8019C0A4
/* 8019C07C 00198FDC  88 A3 00 41 */	lbz r5, 0x41(r3)
/* 8019C080 00198FE0  28 05 00 00 */	cmplwi r5, 0
/* 8019C084 00198FE4  41 82 00 20 */	beq lbl_8019C0A4
/* 8019C088 00198FE8  88 83 00 40 */	lbz r4, 0x40(r3)
/* 8019C08C 00198FEC  38 84 00 01 */	addi r4, r4, 1
/* 8019C090 00198FF0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8019C094 00198FF4  98 83 00 40 */	stb r4, 0x40(r3)
/* 8019C098 00198FF8  7C 00 28 40 */	cmplw r0, r5
/* 8019C09C 00198FFC  41 80 00 08 */	blt lbl_8019C0A4
/* 8019C0A0 00199000  38 C0 00 01 */	li r6, 1
lbl_8019C0A4:
/* 8019C0A4 00199004  7C C3 33 78 */	mr r3, r6
/* 8019C0A8 00199008  38 21 00 30 */	addi r1, r1, 0x30
/* 8019C0AC 0019900C  4E 80 00 20 */	blr 

.global create__26EffectGeometryRegistrationFR8Vector3fR8Vector3fR8Vector3f
create__26EffectGeometryRegistrationFR8Vector3fR8Vector3fR8Vector3f:
/* 8019C0B0 00199010  7C 08 02 A6 */	mflr r0
/* 8019C0B4 00199014  90 01 00 04 */	stw r0, 4(r1)
/* 8019C0B8 00199018  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8019C0BC 0019901C  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 8019C0C0 00199020  7C 7B 1B 78 */	mr r27, r3
/* 8019C0C4 00199024  3B 84 00 00 */	addi r28, r4, 0
/* 8019C0C8 00199028  3B A5 00 00 */	addi r29, r5, 0
/* 8019C0CC 0019902C  3B C6 00 00 */	addi r30, r6, 0
/* 8019C0D0 00199030  80 6D 31 80 */	lwz r3, effectMgr@sda21(r13)
/* 8019C0D4 00199034  48 00 0B 2D */	bl getShapeInst__9EffectMgrFv
/* 8019C0D8 00199038  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019C0DC 0019903C  41 82 00 B8 */	beq lbl_8019C194
/* 8019C0E0 00199040  38 A0 00 00 */	li r5, 0
/* 8019C0E4 00199044  90 BF 00 10 */	stw r5, 0x10(r31)
/* 8019C0E8 00199048  38 0D 10 68 */	addi r0, r13, lbl_803E5D88@sda21
/* 8019C0EC 0019904C  38 9F 00 00 */	addi r4, r31, 0
/* 8019C0F0 00199050  90 BF 00 0C */	stw r5, 0xc(r31)
/* 8019C0F4 00199054  90 BF 00 08 */	stw r5, 8(r31)
/* 8019C0F8 00199058  90 1F 00 04 */	stw r0, 4(r31)
/* 8019C0FC 0019905C  80 1B 00 04 */	lwz r0, 4(r27)
/* 8019C100 00199060  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8019C104 00199064  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8019C108 00199068  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8019C10C 0019906C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8019C110 00199070  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8019C114 00199074  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8019C118 00199078  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8019C11C 0019907C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8019C120 00199080  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8019C124 00199084  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019C128 00199088  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8019C12C 0019908C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8019C130 00199090  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8019C134 00199094  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019C138 00199098  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8019C13C 0019909C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8019C140 001990A0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8019C144 001990A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019C148 001990A8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8019C14C 001990AC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8019C150 001990B0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8019C154 001990B4  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8019C158 001990B8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8019C15C 001990BC  80 1E 00 08 */	lwz r0, 8(r30)
/* 8019C160 001990C0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8019C164 001990C4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8019C168 001990C8  80 1C 00 04 */	lwz r0, 4(r28)
/* 8019C16C 001990CC  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8019C170 001990D0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8019C174 001990D4  80 1C 00 08 */	lwz r0, 8(r28)
/* 8019C178 001990D8  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8019C17C 001990DC  98 BF 00 40 */	stb r5, 0x40(r31)
/* 8019C180 001990E0  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 8019C184 001990E4  98 1F 00 41 */	stb r0, 0x41(r31)
/* 8019C188 001990E8  80 6D 31 80 */	lwz r3, effectMgr@sda21(r13)
/* 8019C18C 001990EC  38 63 01 2C */	addi r3, r3, 0x12c
/* 8019C190 001990F0  4B EA 44 49 */	bl add__8CoreNodeFP8CoreNode
lbl_8019C194:
/* 8019C194 001990F4  7F E3 FB 78 */	mr r3, r31
/* 8019C198 001990F8  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 8019C19C 001990FC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8019C1A0 00199100  38 21 00 38 */	addi r1, r1, 0x38
/* 8019C1A4 00199104  7C 08 03 A6 */	mtlr r0
/* 8019C1A8 00199108  4E 80 00 20 */	blr 

.global __ct__9EffectMgrFv
__ct__9EffectMgrFv:
/* 8019C1AC 0019910C  7C 08 02 A6 */	mflr r0
/* 8019C1B0 00199110  3C A0 80 22 */	lis r5, __vt__5ANode@ha
/* 8019C1B4 00199114  90 01 00 04 */	stw r0, 4(r1)
/* 8019C1B8 00199118  3D 20 80 2E */	lis r9, __vt__9EffectMgr@ha
/* 8019C1BC 0019911C  38 A5 73 8C */	addi r5, r5, __vt__5ANode@l
/* 8019C1C0 00199120  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8019C1C4 00199124  38 00 00 00 */	li r0, 0
/* 8019C1C8 00199128  3D 00 80 2D */	lis r8, lbl_802D6CC0@ha
/* 8019C1CC 0019912C  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 8019C1D0 00199130  39 29 A5 00 */	addi r9, r9, __vt__9EffectMgr@l
/* 8019C1D4 00199134  BE 21 00 4C */	stmw r17, 0x4c(r1)
/* 8019C1D8 00199138  3B E8 6C C0 */	addi r31, r8, lbl_802D6CC0@l
/* 8019C1DC 0019913C  3D 00 80 2D */	lis r8, __vt__Q23zen7zenList@ha
/* 8019C1E0 00199140  39 5F 00 10 */	addi r10, r31, 0x10
/* 8019C1E4 00199144  3A 48 68 DC */	addi r18, r8, __vt__Q23zen7zenList@l
/* 8019C1E8 00199148  90 61 00 08 */	stw r3, 8(r1)
/* 8019C1EC 0019914C  3C 60 80 22 */	lis r3, __vt__8CoreNode@ha
/* 8019C1F0 00199150  38 63 73 7C */	addi r3, r3, __vt__8CoreNode@l
/* 8019C1F4 00199154  80 81 00 08 */	lwz r4, 8(r1)
/* 8019C1F8 00199158  90 A4 00 00 */	stw r5, 0(r4)
/* 8019C1FC 0019915C  38 C4 00 14 */	addi r6, r4, 0x14
/* 8019C200 00199160  38 E6 00 34 */	addi r7, r6, 0x34
/* 8019C204 00199164  90 64 00 00 */	stw r3, 0(r4)
/* 8019C208 00199168  39 86 00 14 */	addi r12, r6, 0x14
/* 8019C20C 0019916C  3A 26 00 24 */	addi r17, r6, 0x24
/* 8019C210 00199170  90 04 00 10 */	stw r0, 0x10(r4)
/* 8019C214 00199174  3A 67 00 14 */	addi r19, r7, 0x14
/* 8019C218 00199178  39 06 00 60 */	addi r8, r6, 0x60

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
	.4byte 0x636f6e74
	.4byte 0x726f6c6c
	.4byte 0x65724d67
	.4byte 0x722e6370
	.4byte 0x70000000
	.4byte 0x436f6e74
	.4byte 0x726f6c6c
	.4byte 0x65724d67
	.4byte 0x72000000
.global padChannels
padChannels:
	.4byte 0x80000000
	.4byte 0x40000000
	.4byte 0x20000000
	.4byte 0x10000000
.global __vt__13ControllerMgr
__vt__13ControllerMgr:
	.4byte __RTTI__13ControllerMgr
	.4byte 0
	.4byte keyDown__13ControllerMgrFi

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
	.4byte 0
.global __RTTI__6System
__RTTI__6System:
	.4byte 0x803dd4d0
