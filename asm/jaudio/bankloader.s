.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.balign 32, 0
.global Bank_Setup__FPc
Bank_Setup__FPc:
/* 8001D9A0 0001A900  7C 08 02 A6 */	mflr r0
/* 8001D9A4 0001A904  90 01 00 04 */	stw r0, 4(r1)
/* 8001D9A8 0001A908  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8001D9AC 0001A90C  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8001D9B0 0001A910  7C 7B 1B 78 */	mr r27, r3
/* 8001D9B4 0001A914  4B FE E7 CD */	bl Bank_Init__Fv
/* 8001D9B8 0001A918  7F 63 DB 78 */	mr r3, r27
/* 8001D9BC 0001A91C  4B FE A4 C5 */	bl DVDT_CheckFile__FPc
/* 8001D9C0 0001A920  4B FE 7D C1 */	bl OSAlloc2
/* 8001D9C4 0001A924  38 03 00 00 */	addi r0, r3, 0
/* 8001D9C8 0001A928  38 7B 00 00 */	addi r3, r27, 0
/* 8001D9CC 0001A92C  7C 1B 03 78 */	mr r27, r0
/* 8001D9D0 0001A930  38 9B 00 00 */	addi r4, r27, 0
/* 8001D9D4 0001A934  4B FE A5 2D */	bl DVDT_LoadFile__FPcPUc
/* 8001D9D8 0001A938  4B FE EB A9 */	bl Wavegroup_Init__Fv
/* 8001D9DC 0001A93C  80 1B 00 00 */	lwz r0, 0(r27)
/* 8001D9E0 0001A940  3B 80 00 00 */	li r28, 0
/* 8001D9E4 0001A944  83 DB 00 04 */	lwz r30, 4(r27)
/* 8001D9E8 0001A948  3B E0 00 00 */	li r31, 0
/* 8001D9EC 0001A94C  7F BB 02 14 */	add r29, r27, r0
/* 8001D9F0 0001A950  48 00 00 2C */	b .L_8001DA1C
.L_8001D9F4:
/* 8001D9F4 0001A954  7C 7D FA 14 */	add r3, r29, r31
/* 8001D9F8 0001A958  80 03 00 04 */	lwz r0, 4(r3)
/* 8001D9FC 0001A95C  28 00 00 00 */	cmplwi r0, 0
/* 8001DA00 0001A960  41 82 00 14 */	beq .L_8001DA14
/* 8001DA04 0001A964  80 03 00 00 */	lwz r0, 0(r3)
/* 8001DA08 0001A968  38 9C 00 00 */	addi r4, r28, 0
/* 8001DA0C 0001A96C  7C 7B 02 14 */	add r3, r27, r0
/* 8001DA10 0001A970  4B FE EA D1 */	bl Wavegroup_Regist__FPvUl
.L_8001DA14:
/* 8001DA14 0001A974  3B 9C 00 01 */	addi r28, r28, 1
/* 8001DA18 0001A978  3B FF 00 08 */	addi r31, r31, 8
.L_8001DA1C:
/* 8001DA1C 0001A97C  7C 1C F0 40 */	cmplw r28, r30
/* 8001DA20 0001A980  41 80 FF D4 */	blt .L_8001D9F4
/* 8001DA24 0001A984  80 1B 00 08 */	lwz r0, 8(r27)
/* 8001DA28 0001A988  3B 80 00 00 */	li r28, 0
/* 8001DA2C 0001A98C  83 DB 00 0C */	lwz r30, 0xc(r27)
/* 8001DA30 0001A990  3B E0 00 00 */	li r31, 0
/* 8001DA34 0001A994  7F BB 02 14 */	add r29, r27, r0
/* 8001DA38 0001A998  48 00 00 2C */	b .L_8001DA64
.L_8001DA3C:
/* 8001DA3C 0001A99C  7C 7D FA 14 */	add r3, r29, r31
/* 8001DA40 0001A9A0  80 03 00 04 */	lwz r0, 4(r3)
/* 8001DA44 0001A9A4  28 00 00 00 */	cmplwi r0, 0
/* 8001DA48 0001A9A8  41 82 00 14 */	beq .L_8001DA5C
/* 8001DA4C 0001A9AC  80 03 00 00 */	lwz r0, 0(r3)
/* 8001DA50 0001A9B0  38 9C 00 00 */	addi r4, r28, 0
/* 8001DA54 0001A9B4  7C 7B 02 14 */	add r3, r27, r0
/* 8001DA58 0001A9B8  4B FE E6 E9 */	bl Bank_Regist__FPvUl
.L_8001DA5C:
/* 8001DA5C 0001A9BC  3B 9C 00 01 */	addi r28, r28, 1
/* 8001DA60 0001A9C0  3B FF 00 08 */	addi r31, r31, 8
.L_8001DA64:
/* 8001DA64 0001A9C4  7C 1C F0 40 */	cmplw r28, r30
/* 8001DA68 0001A9C8  41 80 FF D4 */	blt .L_8001DA3C
/* 8001DA6C 0001A9CC  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8001DA70 0001A9D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8001DA74 0001A9D4  38 21 00 28 */	addi r1, r1, 0x28
/* 8001DA78 0001A9D8  7C 08 03 A6 */	mtlr r0
/* 8001DA7C 0001A9DC  4E 80 00 20 */	blr 
