.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.fn newActor__8ActorMgrFi, global
/* 80119AB4 00116A14  7C 08 02 A6 */	mflr r0
/* 80119AB8 00116A18  90 01 00 04 */	stw r0, 4(r1)
/* 80119ABC 00116A1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80119AC0 00116A20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80119AC4 00116A24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80119AC8 00116A28  7C 9E 23 78 */	mr r30, r4
/* 80119ACC 00116A2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80119AD0 00116A30  7C 7D 1B 78 */	mr r29, r3
/* 80119AD4 00116A34  81 9D 00 00 */	lwz r12, 0(r29)
/* 80119AD8 00116A38  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80119ADC 00116A3C  7D 88 03 A6 */	mtlr r12
/* 80119AE0 00116A40  4E 80 00 21 */	blrl 
/* 80119AE4 00116A44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80119AE8 00116A48  41 82 00 28 */	beq .L_80119B10
/* 80119AEC 00116A4C  80 BD 00 40 */	lwz r5, 0x40(r29)
/* 80119AF0 00116A50  7F E3 FB 78 */	mr r3, r31
/* 80119AF4 00116A54  80 DD 00 44 */	lwz r6, 0x44(r29)
/* 80119AF8 00116A58  7F C4 F3 78 */	mr r4, r30
/* 80119AFC 00116A5C  80 FD 00 48 */	lwz r7, 0x48(r29)
/* 80119B00 00116A60  80 A5 00 00 */	lwz r5, 0(r5)
/* 80119B04 00116A64  80 C6 00 00 */	lwz r6, 0(r6)
/* 80119B08 00116A68  80 E7 00 00 */	lwz r7, 0(r7)
/* 80119B0C 00116A6C  4B FF FF 05 */	bl setType__5ActorFiP15PikiShapeObjectP12CreaturePropP8SimpleAI
.L_80119B10:
/* 80119B10 00116A70  7F E3 FB 78 */	mr r3, r31
/* 80119B14 00116A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80119B18 00116A78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80119B1C 00116A7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80119B20 00116A80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80119B24 00116A84  38 21 00 20 */	addi r1, r1, 0x20
/* 80119B28 00116A88  7C 08 03 A6 */	mtlr r0
/* 80119B2C 00116A8C  4E 80 00 20 */	blr 
.endfn newActor__8ActorMgrFi

.section .sbss, "wa"
.balign 8
.obj actorMgr, global
	.skip 0x4
.endobj actorMgr
