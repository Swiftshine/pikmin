.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 800056E0 00002640  90 C7 00 04 */	stw r6, 4(r7)
/* 800056E4 00002644  90 C7 00 10 */	stw r6, 0x10(r7)
/* 800056E8 00002648  48 00 00 28 */	b .L_80005710
.L_800056EC:
/* 800056EC 0000264C  38 64 00 1F */	addi r3, r4, 0x1f
/* 800056F0 00002650  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800056F4 00002654  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 800056F8 00002658  7C 00 28 50 */	subf r0, r0, r5
/* 800056FC 0000265C  90 67 00 00 */	stw r3, 0(r7)
/* 80005700 00002660  80 67 00 00 */	lwz r3, 0(r7)
/* 80005704 00002664  90 67 00 04 */	stw r3, 4(r7)
/* 80005708 00002668  90 07 00 08 */	stw r0, 8(r7)
/* 8000570C 0000266C  90 C7 00 10 */	stw r6, 0x10(r7)
.L_80005710:
/* 80005710 00002670  38 21 00 28 */	addi r1, r1, 0x28
/* 80005714 00002674  4E 80 00 20 */	blr 
/* 80005718 00002678  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000571C 0000267C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Jac_HeapSetup
Jac_HeapSetup:
/* 80005720 00002680  7C 08 02 A6 */	mflr r0
/* 80005724 00002684  28 03 00 00 */	cmplwi r3, 0
/* 80005728 00002688  90 01 00 04 */	stw r0, 4(r1)
/* 8000572C 0000268C  38 A4 00 00 */	addi r5, r4, 0
/* 80005730 00002690  94 21 FF F8 */	stwu r1, -8(r1)
/* 80005734 00002694  41 82 00 20 */	beq .L_80005754
/* 80005738 00002698  3C C0 80 2F */	lis r6, audio_hp@ha
/* 8000573C 0000269C  38 83 00 00 */	addi r4, r3, 0
/* 80005740 000026A0  38 66 96 4C */	addi r3, r6, audio_hp@l
/* 80005744 000026A4  4B FF FF 7D */	bl Nas_HeapInit__FP6ALHeapPUcl
/* 80005748 000026A8  38 00 00 01 */	li r0, 1
/* 8000574C 000026AC  90 0D 2B 04 */	stw r0, audio_hp_exist@sda21(r13)
/* 80005750 000026B0  48 00 00 0C */	b .L_8000575C
.L_80005754:
/* 80005754 000026B4  38 00 00 00 */	li r0, 0
/* 80005758 000026B8  90 0D 2B 04 */	stw r0, audio_hp_exist@sda21(r13)
.L_8000575C:
/* 8000575C 000026BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80005760 000026C0  38 21 00 08 */	addi r1, r1, 8
/* 80005764 000026C4  7C 08 03 A6 */	mtlr r0
/* 80005768 000026C8  4E 80 00 20 */	blr 
/* 8000576C 000026CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005770 000026D0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005774 000026D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005778 000026D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000577C 000026DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global OSAlloc2
OSAlloc2:
/* 80005780 000026E0  7C 08 02 A6 */	mflr r0
/* 80005784 000026E4  90 01 00 04 */	stw r0, 4(r1)
/* 80005788 000026E8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000578C 000026EC  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 80005790 000026F0  90 61 00 08 */	stw r3, 8(r1)
/* 80005794 000026F4  48 1F 37 E9 */	bl OSDisableInterrupts
/* 80005798 000026F8  80 0D 2B 04 */	lwz r0, audio_hp_exist@sda21(r13)
/* 8000579C 000026FC  3B C3 00 00 */	addi r30, r3, 0
/* 800057A0 00002700  2C 00 00 01 */	cmpwi r0, 1
/* 800057A4 00002704  41 82 00 28 */	beq .L_800057CC
/* 800057A8 00002708  40 80 00 38 */	bge .L_800057E0
/* 800057AC 0000270C  2C 00 00 00 */	cmpwi r0, 0
/* 800057B0 00002710  40 80 00 08 */	bge .L_800057B8
/* 800057B4 00002714  48 00 00 2C */	b .L_800057E0
.L_800057B8:
/* 800057B8 00002718  80 6D 29 D8 */	lwz r3, __OSCurrHeap@sda21(r13)
/* 800057BC 0000271C  80 81 00 08 */	lwz r4, 8(r1)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80037218 00034178  38 80 00 01 */	li r4, 1
/* 8003721C 0003417C  48 00 9E 95 */	bl getToken__9CmdStreamFb
/* 80037220 00034180  38 83 00 00 */	addi r4, r3, 0
/* 80037224 00034184  4C C6 31 82 */	crclr 6
/* 80037228 00034188  38 7C 00 5C */	addi r3, r28, 0x5c
/* 8003722C 0003418C  48 1D F3 6D */	bl sprintf
/* 80037230 00034190  88 1E 00 00 */	lbz r0, 0(r30)
/* 80037234 00034194  98 1F 00 00 */	stb r0, 0(r31)
/* 80037238 00034198  88 1E 00 01 */	lbz r0, 1(r30)
/* 8003723C 0003419C  98 1F 00 01 */	stb r0, 1(r31)
/* 80037240 000341A0  88 1E 00 02 */	lbz r0, 2(r30)
/* 80037244 000341A4  98 1F 00 02 */	stb r0, 2(r31)
/* 80037248 000341A8  88 1E 00 03 */	lbz r0, 3(r30)
/* 8003724C 000341AC  98 1F 00 03 */	stb r0, 3(r31)
/* 80037250 000341B0  48 00 02 B8 */	b .L_80037508
.L_80037254:
/* 80037254 000341B4  38 7D 00 00 */	addi r3, r29, 0
/* 80037258 000341B8  38 8D 85 7C */	addi r4, r13, lbl_803DD29C@sda21
/* 8003725C 000341BC  48 00 A1 79 */	bl isToken__9CmdStreamFPc
/* 80037260 000341C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80037264 000341C4  41 82 00 24 */	beq .L_80037288
/* 80037268 000341C8  38 7D 00 00 */	addi r3, r29, 0
/* 8003726C 000341CC  38 80 00 01 */	li r4, 1
/* 80037270 000341D0  48 00 9E 41 */	bl getToken__9CmdStreamFb
/* 80037274 000341D4  38 83 00 00 */	addi r4, r3, 0
/* 80037278 000341D8  4C C6 31 82 */	crclr 6
/* 8003727C 000341DC  38 7C 00 18 */	addi r3, r28, 0x18
/* 80037280 000341E0  48 1D F3 19 */	bl sprintf
/* 80037284 000341E4  48 00 02 84 */	b .L_80037508
.L_80037288:
/* 80037288 000341E8  38 7D 00 00 */	addi r3, r29, 0
/* 8003728C 000341EC  38 8D 85 84 */	addi r4, r13, lbl_803DD2A4@sda21
/* 80037290 000341F0  48 00 A1 45 */	bl isToken__9CmdStreamFPc
/* 80037294 000341F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80037298 000341F8  41 82 00 98 */	beq .L_80037330
/* 8003729C 000341FC  38 7D 00 00 */	addi r3, r29, 0
/* 800372A0 00034200  38 80 00 01 */	li r4, 1
/* 800372A4 00034204  48 00 9E 0D */	bl getToken__9CmdStreamFb
/* 800372A8 00034208  4C C6 31 82 */	crclr 6
/* 800372AC 0003420C  38 A1 00 34 */	addi r5, r1, 0x34
/* 800372B0 00034210  38 8D 85 40 */	addi r4, r13, lbl_803DD260@sda21
/* 800372B4 00034214  48 1E 0D E1 */	bl sscanf
/* 800372B8 00034218  38 7D 00 00 */	addi r3, r29, 0
/* 800372BC 0003421C  38 80 00 01 */	li r4, 1
/* 800372C0 00034220  48 00 9D F1 */	bl getToken__9CmdStreamFb
/* 800372C4 00034224  4C C6 31 82 */	crclr 6
/* 800372C8 00034228  38 A1 00 30 */	addi r5, r1, 0x30
/* 800372CC 0003422C  38 8D 85 40 */	addi r4, r13, lbl_803DD260@sda21
/* 800372D0 00034230  48 1E 0D C5 */	bl sscanf
/* 800372D4 00034234  38 7D 00 00 */	addi r3, r29, 0
/* 800372D8 00034238  38 80 00 01 */	li r4, 1
/* 800372DC 0003423C  48 00 9D D5 */	bl getToken__9CmdStreamFb
/* 800372E0 00034240  4C C6 31 82 */	crclr 6
/* 800372E4 00034244  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800372E8 00034248  38 8D 85 40 */	addi r4, r13, lbl_803DD260@sda21
/* 800372EC 0003424C  48 1E 0D A9 */	bl sscanf
/* 800372F0 00034250  38 7D 00 00 */	addi r3, r29, 0
/* 800372F4 00034254  38 80 00 01 */	li r4, 1

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 8021C584 002194E4  48 00 21 1D */	bl TRKAcquireMutex
/* 8021C588 002194E8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8021C58C 002194EC  2C 00 00 00 */	cmpwi r0, 0
/* 8021C590 002194F0  40 82 00 2C */	bne .L_8021C5BC
/* 8021C594 002194F4  38 7D 00 00 */	addi r3, r29, 0
/* 8021C598 002194F8  38 80 00 01 */	li r4, 1
/* 8021C59C 002194FC  48 00 00 E1 */	bl TRKResetBuffer
/* 8021C5A0 00219500  38 7D 00 00 */	addi r3, r29, 0
/* 8021C5A4 00219504  38 80 00 01 */	li r4, 1
/* 8021C5A8 00219508  4B FF FF 25 */	bl TRKSetBufferUsed
/* 8021C5AC 0021950C  93 BC 00 00 */	stw r29, 0(r28)
/* 8021C5B0 00219510  3B E0 00 00 */	li r31, 0
/* 8021C5B4 00219514  93 DB 00 00 */	stw r30, 0(r27)
/* 8021C5B8 00219518  3B C0 00 03 */	li r30, 3
.L_8021C5BC:
/* 8021C5BC 0021951C  7F A3 EB 78 */	mr r3, r29
/* 8021C5C0 00219520  48 00 20 E9 */	bl TRKReleaseMutex
/* 8021C5C4 00219524  3B DE 00 01 */	addi r30, r30, 1
.L_8021C5C8:
/* 8021C5C8 00219528  2C 1E 00 03 */	cmpwi r30, 3
/* 8021C5CC 0021952C  41 80 FF AC */	blt .L_8021C578
/* 8021C5D0 00219530  7F E3 FB 78 */	mr r3, r31
/* 8021C5D4 00219534  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8021C5D8 00219538  38 21 00 20 */	addi r1, r1, 0x20
/* 8021C5DC 0021953C  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C5E0 00219540  7C 08 03 A6 */	mtlr r0
/* 8021C5E4 00219544  4E 80 00 20 */	blr 

.global TRKGetBuffer
TRKGetBuffer:
/* 8021C5E8 00219548  2C 03 00 00 */	cmpwi r3, 0
/* 8021C5EC 0021954C  38 00 00 00 */	li r0, 0
/* 8021C5F0 00219550  41 80 00 1C */	blt .L_8021C60C
/* 8021C5F4 00219554  2C 03 00 03 */	cmpwi r3, 3
/* 8021C5F8 00219558  40 80 00 14 */	bge .L_8021C60C
/* 8021C5FC 0021955C  1C 83 08 90 */	mulli r4, r3, 0x890
/* 8021C600 00219560  3C 60 80 3D */	lis r3, gTRKMsgBufs@ha
/* 8021C604 00219564  38 03 43 20 */	addi r0, r3, gTRKMsgBufs@l
/* 8021C608 00219568  7C 00 22 14 */	add r0, r0, r4
.L_8021C60C:
/* 8021C60C 0021956C  7C 03 03 78 */	mr r3, r0
/* 8021C610 00219570  4E 80 00 20 */	blr 

.global TRKReleaseBuffer
TRKReleaseBuffer:
/* 8021C614 00219574  7C 08 02 A6 */	mflr r0
/* 8021C618 00219578  2C 03 FF FF */	cmpwi r3, -1
/* 8021C61C 0021957C  90 01 00 04 */	stw r0, 4(r1)
/* 8021C620 00219580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C624 00219584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C628 00219588  41 82 00 40 */	beq .L_8021C668
/* 8021C62C 0021958C  2C 03 00 00 */	cmpwi r3, 0
/* 8021C630 00219590  41 80 00 38 */	blt .L_8021C668
/* 8021C634 00219594  2C 03 00 03 */	cmpwi r3, 3
/* 8021C638 00219598  40 80 00 30 */	bge .L_8021C668
/* 8021C63C 0021959C  1C 83 08 90 */	mulli r4, r3, 0x890
/* 8021C640 002195A0  3C 60 80 3D */	lis r3, gTRKMsgBufs@ha
/* 8021C644 002195A4  38 03 43 20 */	addi r0, r3, gTRKMsgBufs@l
/* 8021C648 002195A8  7F E0 22 14 */	add r31, r0, r4
/* 8021C64C 002195AC  38 7F 00 00 */	addi r3, r31, 0
/* 8021C650 002195B0  48 00 20 51 */	bl TRKAcquireMutex
/* 8021C654 002195B4  38 7F 00 00 */	addi r3, r31, 0
/* 8021C658 002195B8  38 80 00 00 */	li r4, 0
/* 8021C65C 002195BC  4B FF FE 71 */	bl TRKSetBufferUsed
/* 8021C660 002195C0  7F E3 FB 78 */	mr r3, r31

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 802141C8 00211128  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802141CC 0021112C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802141D0 00211130  93 81 00 10 */	stw r28, 0x10(r1)
/* 802141D4 00211134  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 802141D8 00211138  80 03 04 F0 */	lwz r0, 0x4f0(r3)
/* 802141DC 0021113C  28 00 00 00 */	cmplwi r0, 0
/* 802141E0 00211140  41 82 00 08 */	beq .L_802141E8
/* 802141E4 00211144  4B FF C9 65 */	bl __GXSetDirtyState
.L_802141E8:
/* 802141E8 00211148  80 8D 34 20 */	lwz r4, __piReg@sda21(r13)
/* 802141EC 0021114C  7F E3 FB 78 */	mr r3, r31
/* 802141F0 00211150  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802141F4 00211154  54 1E 37 FE */	rlwinm r30, r0, 6, 0x1f, 0x1f
/* 802141F8 00211158  4B FF AE 15 */	bl __GXSaveCPUFifoAux
/* 802141FC 0021115C  80 6D 34 68 */	lwz r3, OldCPUFifo@sda21(r13)
/* 80214200 00211160  4B FF AB 65 */	bl GXSetCPUFifo
/* 80214204 00211164  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80214208 00211168  88 03 04 ED */	lbz r0, 0x4ed(r3)
/* 8021420C 0021116C  28 00 00 00 */	cmplwi r0, 0
/* 80214210 00211170  41 82 00 34 */	beq .L_80214244
/* 80214214 00211174  4B FE 4D 69 */	bl OSDisableInterrupts
/* 80214218 00211178  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 8021421C 0021117C  7C 7D 1B 78 */	mr r29, r3
/* 80214220 00211180  38 A0 04 F4 */	li r5, 0x4f4
/* 80214224 00211184  83 84 00 08 */	lwz r28, 8(r4)
/* 80214228 00211188  38 64 00 00 */	addi r3, r4, 0
/* 8021422C 0021118C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80214230 00211190  4B DE F1 E5 */	bl memcpy
/* 80214234 00211194  80 8D 2A 68 */	lwz r4, gx@sda21(r13)
/* 80214238 00211198  7F A3 EB 78 */	mr r3, r29
/* 8021423C 0021119C  93 84 00 08 */	stw r28, 8(r4)
/* 80214240 002111A0  4B FE 4D 65 */	bl OSRestoreInterrupts
.L_80214244:
/* 80214244 002111A4  80 6D 2A 68 */	lwz r3, gx@sda21(r13)
/* 80214248 002111A8  38 00 00 00 */	li r0, 0
/* 8021424C 002111AC  28 1E 00 00 */	cmplwi r30, 0
/* 80214250 002111B0  98 03 04 EC */	stb r0, 0x4ec(r3)
/* 80214254 002111B4  40 82 00 0C */	bne .L_80214260
/* 80214258 002111B8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8021425C 002111BC  48 00 00 08 */	b .L_80214264
.L_80214260:
/* 80214260 002111C0  38 60 00 00 */	li r3, 0
.L_80214264:
/* 80214264 002111C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80214268 002111C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021426C 002111CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80214270 002111D0  7C 08 03 A6 */	mtlr r0
/* 80214274 002111D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80214278 002111D8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8021427C 002111DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80214280 002111E0  4E 80 00 20 */	blr 

.global GXCallDisplayList
GXCallDisplayList:
/* 80214284 002111E4  7C 08 02 A6 */	mflr r0
/* 80214288 002111E8  90 01 00 04 */	stw r0, 4(r1)
/* 8021428C 002111EC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80214290 002111F0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80214294 002111F4  3B E4 00 00 */	addi r31, r4, 0
/* 80214298 002111F8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021429C 002111FC  3B C3 00 00 */	addi r30, r3, 0
/* 802142A0 00211200  80 AD 2A 68 */	lwz r5, gx@sda21(r13)
/* 802142A4 00211204  80 05 04 F0 */	lwz r0, 0x4f0(r5)

.section .text, "ax"  # 0x80005560 - 0x80221F60
.L_800259F4:
/* 800259F4 00022954  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 800259F8 00022958  38 9F 00 00 */	addi r4, r31, 0
/* 800259FC 0002295C  38 7E 00 0C */	addi r3, r30, 0xc
/* 80025A00 00022960  48 00 00 35 */	bl extract__17PVWColourAnimInfoFfR6Colour
/* 80025A04 00022964  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80025A08 00022968  38 9F 00 00 */	addi r4, r31, 0
/* 80025A0C 0002296C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80025A10 00022970  48 00 04 BD */	bl extract__16PVWAlphaAnimInfoFfR6Colour
.L_80025A14:
/* 80025A14 00022974  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80025A18 00022978  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80025A1C 0002297C  CB C1 00 38 */	lfd f30, 0x38(r1)
/* 80025A20 00022980  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80025A24 00022984  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80025A28 00022988  38 21 00 48 */	addi r1, r1, 0x48
/* 80025A2C 0002298C  7C 08 03 A6 */	mtlr r0
/* 80025A30 00022990  4E 80 00 20 */	blr 

.global extract__17PVWColourAnimInfoFfR6Colour
extract__17PVWColourAnimInfoFfR6Colour:
/* 80025A34 00022994  94 21 FE 08 */	stwu r1, -0x1f8(r1)
/* 80025A38 00022998  DB E1 01 F0 */	stfd f31, 0x1f0(r1)
/* 80025A3C 0002299C  DB C1 01 E8 */	stfd f30, 0x1e8(r1)
/* 80025A40 000229A0  DB A1 01 E0 */	stfd f29, 0x1e0(r1)
/* 80025A44 000229A4  DB 81 01 D8 */	stfd f28, 0x1d8(r1)
/* 80025A48 000229A8  DB 61 01 D0 */	stfd f27, 0x1d0(r1)
/* 80025A4C 000229AC  DB 41 01 C8 */	stfd f26, 0x1c8(r1)
/* 80025A50 000229B0  DB 21 01 C0 */	stfd f25, 0x1c0(r1)
/* 80025A54 000229B4  DB 01 01 B8 */	stfd f24, 0x1b8(r1)
/* 80025A58 000229B8  DA E1 01 B0 */	stfd f23, 0x1b0(r1)
/* 80025A5C 000229BC  DA C1 01 A8 */	stfd f22, 0x1a8(r1)
/* 80025A60 000229C0  DA A1 01 A0 */	stfd f21, 0x1a0(r1)
/* 80025A64 000229C4  DA 81 01 98 */	stfd f20, 0x198(r1)
/* 80025A68 000229C8  DA 61 01 90 */	stfd f19, 0x190(r1)
/* 80025A6C 000229CC  DA 41 01 88 */	stfd f18, 0x188(r1)
/* 80025A70 000229D0  DA 21 01 80 */	stfd f17, 0x180(r1)
/* 80025A74 000229D4  80 A3 00 00 */	lwz r5, 0(r3)
/* 80025A78 000229D8  28 05 00 00 */	cmplwi r5, 0
/* 80025A7C 000229DC  41 82 04 0C */	beq .L_80025E88
/* 80025A80 000229E0  28 05 00 01 */	cmplwi r5, 1
/* 80025A84 000229E4  40 82 00 2C */	bne .L_80025AB0
/* 80025A88 000229E8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80025A8C 000229EC  88 05 00 04 */	lbz r0, 4(r5)
/* 80025A90 000229F0  98 04 00 00 */	stb r0, 0(r4)
/* 80025A94 000229F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80025A98 000229F8  88 05 00 10 */	lbz r0, 0x10(r5)
/* 80025A9C 000229FC  98 04 00 01 */	stb r0, 1(r4)
/* 80025AA0 00022A00  80 63 00 04 */	lwz r3, 4(r3)
/* 80025AA4 00022A04  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80025AA8 00022A08  98 04 00 02 */	stb r0, 2(r4)
/* 80025AAC 00022A0C  48 00 03 DC */	b .L_80025E88
.L_80025AB0:
/* 80025AB0 00022A10  34 05 FF FF */	addic. r0, r5, -1
/* 80025AB4 00022A14  C8 42 82 30 */	lfd f2, "@613"@sda21(r2)
/* 80025AB8 00022A18  39 00 00 00 */	li r8, 0
/* 80025ABC 00022A1C  39 20 00 00 */	li r9, 0
/* 80025AC0 00022A20  7C 09 03 A6 */	mtctr r0
/* 80025AC4 00022A24  38 C0 00 00 */	li r6, 0
/* 80025AC8 00022A28  3C A0 43 30 */	lis r5, 0x4330
/* 80025ACC 00022A2C  40 81 00 60 */	ble .L_80025B2C
.L_80025AD0:
/* 80025AD0 00022A30  80 03 00 04 */	lwz r0, 4(r3)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80044274 000411D4  7D 05 3B 96 */	divwu r8, r5, r7
/* 80044278 000411D8  A0 03 00 08 */	lhz r0, 8(r3)
/* 8004427C 000411DC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80044280 000411E0  7C C0 53 96 */	divwu r6, r0, r10
/* 80044284 000411E4  7C 08 39 D6 */	mullw r0, r8, r7
/* 80044288 000411E8  7D 6A 39 D6 */	mullw r11, r10, r7
/* 8004428C 000411EC  7C 00 28 50 */	subf r0, r0, r5
/* 80044290 000411F0  7C E6 59 D6 */	mullw r7, r6, r11
/* 80044294 000411F4  7D 24 53 96 */	divwu r9, r4, r10
/* 80044298 000411F8  7C C9 51 D6 */	mullw r6, r9, r10
/* 8004429C 000411FC  7C 0A 01 D6 */	mullw r0, r10, r0
/* 800442A0 00041200  7C 86 20 50 */	subf r4, r6, r4
/* 800442A4 00041204  7C 84 02 14 */	add r4, r4, r0
/* 800442A8 00041208  7C A8 39 D6 */	mullw r5, r8, r7
/* 800442AC 0004120C  7C 09 59 D6 */	mullw r0, r9, r11
/* 800442B0 00041210  7C 84 2A 14 */	add r4, r4, r5
/* 800442B4 00041214  7C 80 22 14 */	add r4, r0, r4
/* 800442B8 00041218  54 80 08 3C */	slwi r0, r4, 1
/* 800442BC 0004121C  7C 63 02 2E */	lhzx r3, r3, r0
/* 800442C0 00041220  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 800442C4 00041224  41 82 00 0C */	beq .L_800442D0
/* 800442C8 00041228  38 60 00 FF */	li r3, 0xff
/* 800442CC 0004122C  4E 80 00 20 */	blr 
.L_800442D0:
/* 800442D0 00041230  54 63 CE 34 */	rlwinm r3, r3, 0x19, 0x18, 0x1a
/* 800442D4 00041234  4E 80 00 20 */	blr 

.global read__7TextureFR18RandomAccessStream
read__7TextureFR18RandomAccessStream:
/* 800442D8 00041238  7C 08 02 A6 */	mflr r0
/* 800442DC 0004123C  90 01 00 04 */	stw r0, 4(r1)
/* 800442E0 00041240  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800442E4 00041244  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800442E8 00041248  3B E4 00 00 */	addi r31, r4, 0
/* 800442EC 0004124C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800442F0 00041250  3B C3 00 00 */	addi r30, r3, 0
/* 800442F4 00041254  80 64 00 00 */	lwz r3, 0(r4)
/* 800442F8 00041258  48 1D 51 15 */	bl strlen
/* 800442FC 0004125C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80044300 00041260  38 8D 87 80 */	addi r4, r13, lbl_803DD4A0@sda21
/* 80044304 00041264  7C 63 02 14 */	add r3, r3, r0
/* 80044308 00041268  38 63 FF FD */	addi r3, r3, -3
/* 8004430C 0004126C  48 1D 4E B9 */	bl strcmp
/* 80044310 00041270  2C 03 00 00 */	cmpwi r3, 0
/* 80044314 00041274  40 82 00 6C */	bne .L_80044380
/* 80044318 00041278  38 60 00 34 */	li r3, 0x34
/* 8004431C 0004127C  48 00 2C E9 */	bl alloc__6SystemFUl
/* 80044320 00041280  28 03 00 00 */	cmplwi r3, 0
/* 80044324 00041284  41 82 00 4C */	beq .L_80044370
/* 80044328 00041288  3C 80 80 22 */	lis r4, __vt__5ANode@ha
/* 8004432C 0004128C  38 04 73 8C */	addi r0, r4, __vt__5ANode@l
/* 80044330 00041290  3C 80 80 22 */	lis r4, __vt__8CoreNode@ha
/* 80044334 00041294  90 03 00 00 */	stw r0, 0(r3)
/* 80044338 00041298  38 04 73 7C */	addi r0, r4, __vt__8CoreNode@l
/* 8004433C 0004129C  90 03 00 00 */	stw r0, 0(r3)
/* 80044340 000412A0  38 C0 00 00 */	li r6, 0
/* 80044344 000412A4  3C 80 80 23 */	lis r4, __vt__6TexImg@ha
/* 80044348 000412A8  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8004434C 000412AC  38 AD 87 84 */	addi r5, r13, lbl_803DD4A4@sda21
/* 80044350 000412B0  38 84 81 44 */	addi r4, r4, __vt__6TexImg@l

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80207F40 00204EA0  38 80 FF FD */	li r4, -3
/* 80207F44 00204EA4  4E 80 00 21 */	blrl 
.L_80207F48:
/* 80207F48 00204EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207F4C 00204EAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80207F50 00204EB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80207F54 00204EB4  7C 08 03 A6 */	mtlr r0
/* 80207F58 00204EB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80207F5C 00204EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80207F60 00204EC0  4E 80 00 20 */	blr 

.global __CARDExiHandler
__CARDExiHandler:
/* 80207F64 00204EC4  7C 08 02 A6 */	mflr r0
/* 80207F68 00204EC8  90 01 00 04 */	stw r0, 4(r1)
/* 80207F6C 00204ECC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80207F70 00204ED0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80207F74 00204ED4  3B E3 00 00 */	addi r31, r3, 0
/* 80207F78 00204ED8  1C 9F 01 08 */	mulli r4, r31, 0x108
/* 80207F7C 00204EDC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80207F80 00204EE0  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 80207F84 00204EE4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80207F88 00204EE8  38 03 34 20 */	addi r0, r3, __CARDBlock@l
/* 80207F8C 00204EEC  7F C0 22 14 */	add r30, r0, r4
/* 80207F90 00204EF0  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80207F94 00204EF4  4B FE E4 A1 */	bl OSCancelAlarm
/* 80207F98 00204EF8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80207F9C 00204EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80207FA0 00204F00  41 82 00 C0 */	beq .L_80208060
/* 80207FA4 00204F04  38 7F 00 00 */	addi r3, r31, 0
/* 80207FA8 00204F08  38 80 00 00 */	li r4, 0
/* 80207FAC 00204F0C  38 A0 00 00 */	li r5, 0
/* 80207FB0 00204F10  4B FF 0D 8D */	bl EXILock
/* 80207FB4 00204F14  2C 03 00 00 */	cmpwi r3, 0
/* 80207FB8 00204F18  40 82 00 0C */	bne .L_80207FC4
/* 80207FBC 00204F1C  3B A0 FF 80 */	li r29, -128
/* 80207FC0 00204F20  48 00 00 78 */	b .L_80208038
.L_80207FC4:
/* 80207FC4 00204F24  38 7F 00 00 */	addi r3, r31, 0
/* 80207FC8 00204F28  38 81 00 10 */	addi r4, r1, 0x10
/* 80207FCC 00204F2C  48 00 03 A9 */	bl __CARDReadStatus
/* 80207FD0 00204F30  7C 7D 1B 79 */	or. r29, r3, r3
/* 80207FD4 00204F34  41 80 00 5C */	blt .L_80208030
/* 80207FD8 00204F38  7F E3 FB 78 */	mr r3, r31
/* 80207FDC 00204F3C  48 00 04 89 */	bl __CARDClearStatus
/* 80207FE0 00204F40  7C 7D 1B 79 */	or. r29, r3, r3
/* 80207FE4 00204F44  41 80 00 4C */	blt .L_80208030
/* 80207FE8 00204F48  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80207FEC 00204F4C  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 80207FF0 00204F50  41 82 00 0C */	beq .L_80207FFC
/* 80207FF4 00204F54  38 00 FF FB */	li r0, -5
/* 80207FF8 00204F58  48 00 00 08 */	b .L_80208000
.L_80207FFC:
/* 80207FFC 00204F5C  38 00 00 00 */	li r0, 0
.L_80208000:
/* 80208000 00204F60  7C 1D 03 78 */	mr r29, r0
/* 80208004 00204F64  2C 1D FF FB */	cmpwi r29, -5
/* 80208008 00204F68  40 82 00 28 */	bne .L_80208030
/* 8020800C 00204F6C  80 7E 00 A8 */	lwz r3, 0xa8(r30)
/* 80208010 00204F70  34 03 FF FF */	addic. r0, r3, -1
/* 80208014 00204F74  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 80208018 00204F78  40 81 00 18 */	ble .L_80208030
/* 8020801C 00204F7C  7F E3 FB 78 */	mr r3, r31

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 8015A3A4 00157304  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 8015A3A8 00157308  80 01 01 A0 */	lwz r0, 0x1a0(r1)
/* 8015A3AC 0015730C  90 01 01 80 */	stw r0, 0x180(r1)
/* 8015A3B0 00157310  4B F0 46 D1 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 8015A3B4 00157314  93 DF 02 2C */	stw r30, 0x22c(r31)
/* 8015A3B8 00157318  38 A1 01 7C */	addi r5, r1, 0x17c
/* 8015A3BC 0015731C  38 7F 02 34 */	addi r3, r31, 0x234
/* 8015A3C0 00157320  C0 02 AA 00 */	lfs f0, lbl_803EAC00@sda21(r2)
/* 8015A3C4 00157324  38 9F 02 00 */	addi r4, r31, 0x200
/* 8015A3C8 00157328  D0 1F 02 30 */	stfs f0, 0x230(r31)
/* 8015A3CC 0015732C  80 0D FE 5C */	lwz r0, lbl_803E4B7C@sda21(r13)
/* 8015A3D0 00157330  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 8015A3D4 00157334  80 01 01 A8 */	lwz r0, 0x1a8(r1)
/* 8015A3D8 00157338  90 01 01 7C */	stw r0, 0x17c(r1)
/* 8015A3DC 0015733C  4B F0 46 A5 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 8015A3E0 00157340  93 DF 02 3C */	stw r30, 0x23c(r31)
/* 8015A3E4 00157344  38 A1 01 78 */	addi r5, r1, 0x178
/* 8015A3E8 00157348  38 7F 02 44 */	addi r3, r31, 0x244
/* 8015A3EC 0015734C  C0 02 A9 FC */	lfs f0, lbl_803EABFC@sda21(r2)
/* 8015A3F0 00157350  38 9F 02 00 */	addi r4, r31, 0x200
/* 8015A3F4 00157354  D0 1F 02 40 */	stfs f0, 0x240(r31)
/* 8015A3F8 00157358  80 0D FE 60 */	lwz r0, lbl_803E4B80@sda21(r13)
/* 8015A3FC 0015735C  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 8015A400 00157360  80 01 01 B0 */	lwz r0, 0x1b0(r1)
/* 8015A404 00157364  90 01 01 78 */	stw r0, 0x178(r1)
/* 8015A408 00157368  4B F0 46 79 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 8015A40C 0015736C  93 DF 02 4C */	stw r30, 0x24c(r31)
/* 8015A410 00157370  38 A1 01 74 */	addi r5, r1, 0x174
/* 8015A414 00157374  38 7F 02 54 */	addi r3, r31, 0x254
/* 8015A418 00157378  C0 02 AA 04 */	lfs f0, lbl_803EAC04@sda21(r2)
/* 8015A41C 0015737C  38 9F 02 00 */	addi r4, r31, 0x200
/* 8015A420 00157380  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 8015A424 00157384  80 0D FE 64 */	lwz r0, lbl_803E4B84@sda21(r13)
/* 8015A428 00157388  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 8015A42C 0015738C  80 01 01 B8 */	lwz r0, 0x1b8(r1)
/* 8015A430 00157390  90 01 01 74 */	stw r0, 0x174(r1)
/* 8015A434 00157394  4B F0 46 4D */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 8015A438 00157398  93 DF 02 5C */	stw r30, 0x25c(r31)
/* 8015A43C 0015739C  38 A1 01 70 */	addi r5, r1, 0x170
/* 8015A440 001573A0  38 7F 02 64 */	addi r3, r31, 0x264
/* 8015A444 001573A4  C0 02 AA 08 */	lfs f0, lbl_803EAC08@sda21(r2)
/* 8015A448 001573A8  38 9F 02 00 */	addi r4, r31, 0x200
/* 8015A44C 001573AC  D0 1F 02 60 */	stfs f0, 0x260(r31)
/* 8015A450 001573B0  80 0D FE 68 */	lwz r0, lbl_803E4B88@sda21(r13)
/* 8015A454 001573B4  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 8015A458 001573B8  80 01 01 C0 */	lwz r0, 0x1c0(r1)
/* 8015A45C 001573BC  90 01 01 70 */	stw r0, 0x170(r1)
/* 8015A460 001573C0  4B F0 46 21 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 8015A464 001573C4  93 DF 02 6C */	stw r30, 0x26c(r31)
/* 8015A468 001573C8  38 A1 01 6C */	addi r5, r1, 0x16c
/* 8015A46C 001573CC  38 7F 02 74 */	addi r3, r31, 0x274
/* 8015A470 001573D0  C0 02 AA 0C */	lfs f0, lbl_803EAC0C@sda21(r2)
/* 8015A474 001573D4  38 9F 02 00 */	addi r4, r31, 0x200
/* 8015A478 001573D8  D0 1F 02 70 */	stfs f0, 0x270(r31)
/* 8015A47C 001573DC  80 0D FE 6C */	lwz r0, lbl_803E4B8C@sda21(r13)
/* 8015A480 001573E0  90 01 01 C8 */	stw r0, 0x1c8(r1)
