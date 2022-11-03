.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.balign 32, 0
.global Jaf_InitSeqArchive2__FPcPUcPUc
Jaf_InitSeqArchive2__FPcPUcPUc:
/* 8001B3E0 00018340  7C 08 02 A6 */	mflr r0
/* 8001B3E4 00018344  90 01 00 04 */	stw r0, 4(r1)
/* 8001B3E8 00018348  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B3EC 0001834C  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 8001B3F0 00018350  3B 84 00 00 */	addi r28, r4, 0
/* 8001B3F4 00018354  3B A5 00 00 */	addi r29, r5, 0
/* 8001B3F8 00018358  90 61 00 08 */	stw r3, 8(r1)
/* 8001B3FC 0001835C  83 E1 00 08 */	lwz r31, 8(r1)
/* 8001B400 00018360  7F E3 FB 78 */	mr r3, r31
/* 8001B404 00018364  48 1F E0 09 */	bl strlen
/* 8001B408 00018368  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001B40C 0001836C  7F C9 03 A6 */	mtctr r30
/* 8001B410 00018370  41 82 00 20 */	beq .L_8001B430
.L_8001B414:
/* 8001B414 00018374  38 1E FF FF */	addi r0, r30, -1
/* 8001B418 00018378  7C 1F 00 AE */	lbzx r0, r31, r0
/* 8001B41C 0001837C  7C 00 07 74 */	extsb r0, r0
/* 8001B420 00018380  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8001B424 00018384  41 82 00 0C */	beq .L_8001B430
/* 8001B428 00018388  3B DE FF FF */	addi r30, r30, -1
/* 8001B42C 0001838C  42 00 FF E8 */	bdnz .L_8001B414
.L_8001B430:
/* 8001B430 00018390  38 7F 00 00 */	addi r3, r31, 0
/* 8001B434 00018394  38 9C 00 00 */	addi r4, r28, 0
/* 8001B438 00018398  38 BD 00 00 */	addi r5, r29, 0
/* 8001B43C 0001839C  4B FF 31 45 */	bl JV_InitHeader_M__FPcPUcPUc
/* 8001B440 000183A0  7C 7F F2 14 */	add r3, r31, r30
/* 8001B444 000183A4  4B FF 32 7D */	bl JV_GetArchiveHandle__FPc
/* 8001B448 000183A8  38 C0 00 00 */	li r6, 0
/* 8001B44C 000183AC  3C A0 80 36 */	lis r5, seq_loadbuffer@ha
/* 8001B450 000183B0  38 00 01 00 */	li r0, 0x100
/* 8001B454 000183B4  38 86 00 00 */	addi r4, r6, 0
/* 8001B458 000183B8  90 6D 2D 58 */	stw r3, seq_archandle@sda21(r13)
/* 8001B45C 000183BC  38 A5 46 88 */	addi r5, r5, seq_loadbuffer@l
/* 8001B460 000183C0  7C 09 03 A6 */	mtctr r0
.L_8001B464:
/* 8001B464 000183C4  7C 65 22 14 */	add r3, r5, r4
/* 8001B468 000183C8  38 84 00 04 */	addi r4, r4, 4
/* 8001B46C 000183CC  90 C3 00 00 */	stw r6, 0(r3)
/* 8001B470 000183D0  42 00 FF F4 */	bdnz .L_8001B464
/* 8001B474 000183D4  3C 60 80 37 */	lis r3, rootseqhandle@ha
/* 8001B478 000183D8  38 00 00 10 */	li r0, 0x10
/* 8001B47C 000183DC  38 A3 8D C8 */	addi r5, r3, rootseqhandle@l
/* 8001B480 000183E0  38 60 00 00 */	li r3, 0
/* 8001B484 000183E4  38 C0 FF FF */	li r6, -1
/* 8001B488 000183E8  7C 09 03 A6 */	mtctr r0
.L_8001B48C:
/* 8001B48C 000183EC  7C 85 1A 14 */	add r4, r5, r3
/* 8001B490 000183F0  38 63 00 04 */	addi r3, r3, 4
/* 8001B494 000183F4  90 C4 00 00 */	stw r6, 0(r4)
/* 8001B498 000183F8  42 00 FF F4 */	bdnz .L_8001B48C
/* 8001B49C 000183FC  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 8001B4A0 00018400  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B4A4 00018404  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B4A8 00018408  7C 08 03 A6 */	mtlr r0
/* 8001B4AC 0001840C  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_CheckSeqSize__FUl
Jaf_CheckSeqSize__FUl:
/* 8001B4C0 00018420  7C 08 02 A6 */	mflr r0
/* 8001B4C4 00018424  90 01 00 04 */	stw r0, 4(r1)
/* 8001B4C8 00018428  94 21 FF F8 */	stwu r1, -8(r1)
/* 8001B4CC 0001842C  80 8D 2D 58 */	lwz r4, seq_archandle@sda21(r13)
/* 8001B4D0 00018430  3C 04 00 01 */	addis r0, r4, 1
/* 8001B4D4 00018434  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001B4D8 00018438  40 82 00 0C */	bne .L_8001B4E4
/* 8001B4DC 0001843C  38 60 00 00 */	li r3, 0
/* 8001B4E0 00018440  48 00 00 0C */	b .L_8001B4EC
.L_8001B4E4:
/* 8001B4E4 00018444  7C 83 1B 78 */	or r3, r4, r3
/* 8001B4E8 00018448  4B FF 32 D9 */	bl JV_CheckSize__FUl
.L_8001B4EC:
/* 8001B4EC 0001844C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001B4F0 00018450  38 21 00 08 */	addi r1, r1, 8
/* 8001B4F4 00018454  7C 08 03 A6 */	mtlr r0
/* 8001B4F8 00018458  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_LoadSeq__FUlPUc
Jaf_LoadSeq__FUlPUc:
/* 8001B500 00018460  7C 08 02 A6 */	mflr r0
/* 8001B504 00018464  90 01 00 04 */	stw r0, 4(r1)
/* 8001B508 00018468  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001B50C 0001846C  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 8001B510 00018470  3B C3 00 00 */	addi r30, r3, 0
/* 8001B514 00018474  3B E4 00 00 */	addi r31, r4, 0
/* 8001B518 00018478  80 AD 2D 58 */	lwz r5, seq_archandle@sda21(r13)
/* 8001B51C 0001847C  3C 05 00 01 */	addis r0, r5, 1
/* 8001B520 00018480  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001B524 00018484  40 82 00 0C */	bne .L_8001B530
/* 8001B528 00018488  38 60 00 00 */	li r3, 0
/* 8001B52C 0001848C  48 00 00 48 */	b .L_8001B574
.L_8001B530:
/* 8001B530 00018490  7F C3 F3 78 */	mr r3, r30
/* 8001B534 00018494  4B FF FF 8D */	bl Jaf_CheckSeqSize__FUl
/* 8001B538 00018498  28 03 00 00 */	cmplwi r3, 0
/* 8001B53C 0001849C  40 82 00 0C */	bne .L_8001B548
/* 8001B540 000184A0  38 60 00 00 */	li r3, 0
/* 8001B544 000184A4  48 00 00 30 */	b .L_8001B574
.L_8001B548:
/* 8001B548 000184A8  80 0D 2D 58 */	lwz r0, seq_archandle@sda21(r13)
/* 8001B54C 000184AC  38 C3 00 00 */	addi r6, r3, 0
/* 8001B550 000184B0  38 9F 00 00 */	addi r4, r31, 0
/* 8001B554 000184B4  38 A0 00 00 */	li r5, 0
/* 8001B558 000184B8  7C 03 F3 78 */	or r3, r0, r30
/* 8001B55C 000184BC  4B FF 32 A5 */	bl JV_LoadFile__FUlPUcUlUl
/* 8001B560 000184C0  3C 80 80 36 */	lis r4, seq_loadbuffer@ha
/* 8001B564 000184C4  57 C5 10 3A */	slwi r5, r30, 2
/* 8001B568 000184C8  38 04 46 88 */	addi r0, r4, seq_loadbuffer@l
/* 8001B56C 000184CC  7C 80 2A 14 */	add r4, r0, r5
/* 8001B570 000184D0  93 E4 00 00 */	stw r31, 0(r4)
.L_8001B574:
/* 8001B574 000184D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001B578 000184D8  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 8001B57C 000184DC  38 21 00 18 */	addi r1, r1, 0x18
/* 8001B580 000184E0  7C 08 03 A6 */	mtlr r0
/* 8001B584 000184E4  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_ClearSeq__FUl
Jaf_ClearSeq__FUl:
/* 8001B5A0 00018500  3C 80 80 36 */	lis r4, seq_loadbuffer@ha
/* 8001B5A4 00018504  54 63 10 3A */	slwi r3, r3, 2
/* 8001B5A8 00018508  38 04 46 88 */	addi r0, r4, seq_loadbuffer@l
/* 8001B5AC 0001850C  38 80 00 00 */	li r4, 0
/* 8001B5B0 00018510  7C 60 1A 14 */	add r3, r0, r3
/* 8001B5B4 00018514  90 83 00 00 */	stw r4, 0(r3)
/* 8001B5B8 00018518  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_CheckSeq__FUl
Jaf_CheckSeq__FUl:
/* 8001B5C0 00018520  3C 80 80 36 */	lis r4, seq_loadbuffer@ha
/* 8001B5C4 00018524  54 63 10 3A */	slwi r3, r3, 2
/* 8001B5C8 00018528  38 04 46 88 */	addi r0, r4, seq_loadbuffer@l
/* 8001B5CC 0001852C  7C 60 1A 14 */	add r3, r0, r3
/* 8001B5D0 00018530  80 63 00 00 */	lwz r3, 0(r3)
/* 8001B5D4 00018534  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_ReadySeq__FUlUl
Jaf_ReadySeq__FUlUl:
/* 8001B5E0 00018540  7C 08 02 A6 */	mflr r0
/* 8001B5E4 00018544  28 04 01 00 */	cmplwi r4, 0x100
/* 8001B5E8 00018548  90 01 00 04 */	stw r0, 4(r1)
/* 8001B5EC 0001854C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8001B5F0 00018550  BF 81 00 18 */	stmw r28, 0x18(r1)
/* 8001B5F4 00018554  3B 83 00 00 */	addi r28, r3, 0
/* 8001B5F8 00018558  1C 1C 04 34 */	mulli r0, r28, 0x434
/* 8001B5FC 0001855C  3C 60 80 36 */	lis r3, seq_loadbuffer@ha
/* 8001B600 00018560  3B E3 46 88 */	addi r31, r3, seq_loadbuffer@l
/* 8001B604 00018564  7F BF 02 14 */	add r29, r31, r0
/* 8001B608 00018568  3B BD 04 00 */	addi r29, r29, 0x400
/* 8001B60C 0001856C  41 80 00 0C */	blt .L_8001B618
/* 8001B610 00018570  38 60 00 00 */	li r3, 0
/* 8001B614 00018574  48 00 00 58 */	b .L_8001B66C
.L_8001B618:
/* 8001B618 00018578  54 80 10 3A */	slwi r0, r4, 2
/* 8001B61C 0001857C  7F DF 02 14 */	add r30, r31, r0
/* 8001B620 00018580  80 1E 00 00 */	lwz r0, 0(r30)
/* 8001B624 00018584  28 00 00 00 */	cmplwi r0, 0
/* 8001B628 00018588  40 82 00 0C */	bne .L_8001B634
/* 8001B62C 0001858C  38 60 00 00 */	li r3, 0
/* 8001B630 00018590  48 00 00 3C */	b .L_8001B66C
.L_8001B634:
/* 8001B634 00018594  7C 83 23 78 */	mr r3, r4
/* 8001B638 00018598  4B FF FE 89 */	bl Jaf_CheckSeqSize__FUl
/* 8001B63C 0001859C  7C 65 1B 79 */	or. r5, r3, r3
/* 8001B640 000185A0  40 82 00 0C */	bne .L_8001B64C
/* 8001B644 000185A4  38 60 00 00 */	li r3, 0
/* 8001B648 000185A8  48 00 00 24 */	b .L_8001B66C
.L_8001B64C:
/* 8001B64C 000185AC  80 9E 00 00 */	lwz r4, 0(r30)
/* 8001B650 000185B0  38 7D 00 00 */	addi r3, r29, 0
/* 8001B654 000185B4  38 C0 00 00 */	li r6, 0
/* 8001B658 000185B8  4B FF 8E 69 */	bl Jaq_SetSeqData
/* 8001B65C 000185BC  57 80 10 3A */	slwi r0, r28, 2
/* 8001B660 000185C0  7C 9F 02 14 */	add r4, r31, r0
/* 8001B664 000185C4  90 64 47 40 */	stw r3, 0x4740(r4)
/* 8001B668 000185C8  80 64 47 40 */	lwz r3, 0x4740(r4)
.L_8001B66C:
/* 8001B66C 000185CC  BB 81 00 18 */	lmw r28, 0x18(r1)
/* 8001B670 000185D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8001B674 000185D4  38 21 00 28 */	addi r1, r1, 0x28
/* 8001B678 000185D8  7C 08 03 A6 */	mtlr r0
/* 8001B67C 000185DC  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_PlaySeq__FUl
Jaf_PlaySeq__FUl:
/* 8001B680 000185E0  7C 08 02 A6 */	mflr r0
/* 8001B684 000185E4  3C 80 80 37 */	lis r4, rootseqhandle@ha
/* 8001B688 000185E8  90 01 00 04 */	stw r0, 4(r1)
/* 8001B68C 000185EC  54 63 10 3A */	slwi r3, r3, 2
/* 8001B690 000185F0  38 04 8D C8 */	addi r0, r4, rootseqhandle@l
/* 8001B694 000185F4  94 21 FF F8 */	stwu r1, -8(r1)
/* 8001B698 000185F8  7C 60 1A 14 */	add r3, r0, r3
/* 8001B69C 000185FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8001B6A0 00018600  4B FF 90 21 */	bl Jaq_StartSeq
/* 8001B6A4 00018604  38 60 00 01 */	li r3, 1
/* 8001B6A8 00018608  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001B6AC 0001860C  38 21 00 08 */	addi r1, r1, 8
/* 8001B6B0 00018610  7C 08 03 A6 */	mtlr r0
/* 8001B6B4 00018614  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_StartSeq__FUlUl
Jaf_StartSeq__FUlUl:
/* 8001B6C0 00018620  7C 08 02 A6 */	mflr r0
/* 8001B6C4 00018624  90 01 00 04 */	stw r0, 4(r1)
/* 8001B6C8 00018628  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001B6CC 0001862C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001B6D0 00018630  7C 7F 1B 78 */	mr r31, r3
/* 8001B6D4 00018634  4B FF FF 0D */	bl Jaf_ReadySeq__FUlUl
/* 8001B6D8 00018638  7F E3 FB 78 */	mr r3, r31
/* 8001B6DC 0001863C  4B FF FF A5 */	bl Jaf_PlaySeq__FUl
/* 8001B6E0 00018640  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001B6E4 00018644  38 60 00 01 */	li r3, 1
/* 8001B6E8 00018648  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001B6EC 0001864C  38 21 00 18 */	addi r1, r1, 0x18
/* 8001B6F0 00018650  7C 08 03 A6 */	mtlr r0
/* 8001B6F4 00018654  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_StopSeq__FUl
Jaf_StopSeq__FUl:
/* 8001B700 00018660  7C 08 02 A6 */	mflr r0
/* 8001B704 00018664  3C 80 80 37 */	lis r4, rootseqhandle@ha
/* 8001B708 00018668  90 01 00 04 */	stw r0, 4(r1)
/* 8001B70C 0001866C  54 63 10 3A */	slwi r3, r3, 2
/* 8001B710 00018670  38 04 8D C8 */	addi r0, r4, rootseqhandle@l
/* 8001B714 00018674  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B718 00018678  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 8001B71C 0001867C  7F E0 1A 14 */	add r31, r0, r3
/* 8001B720 00018680  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001B724 00018684  3C 03 00 01 */	addis r0, r3, 1
/* 8001B728 00018688  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001B72C 0001868C  40 82 00 0C */	bne .L_8001B738
/* 8001B730 00018690  38 60 00 00 */	li r3, 0
/* 8001B734 00018694  48 00 00 28 */	b .L_8001B75C
.L_8001B738:
/* 8001B738 00018698  4B FF 8C 89 */	bl Jaq_StopSeq
/* 8001B73C 0001869C  7C 7E 1B 78 */	mr r30, r3
.L_8001B740:
/* 8001B740 000186A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001B744 000186A4  4B FF 88 DD */	bl Jaq_HandleToSeq
/* 8001B748 000186A8  28 03 00 00 */	cmplwi r3, 0
/* 8001B74C 000186AC  40 82 FF F4 */	bne .L_8001B740
/* 8001B750 000186B0  38 00 FF FF */	li r0, -1
/* 8001B754 000186B4  38 7E 00 00 */	addi r3, r30, 0
/* 8001B758 000186B8  90 1F 00 00 */	stw r0, 0(r31)
.L_8001B75C:
/* 8001B75C 000186BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B760 000186C0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 8001B764 000186C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B768 000186C8  7C 08 03 A6 */	mtlr r0
/* 8001B76C 000186CC  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_HandleToSeq__FUl
Jaf_HandleToSeq__FUl:
/* 8001B780 000186E0  1C 83 04 34 */	mulli r4, r3, 0x434
/* 8001B784 000186E4  3C 60 80 36 */	lis r3, rootseq_1@ha
/* 8001B788 000186E8  38 03 4A 88 */	addi r0, r3, rootseq_1@l
/* 8001B78C 000186EC  7C 60 22 14 */	add r3, r0, r4
/* 8001B790 000186F0  4E 80 00 20 */	blr 

.balign 32, 0
Jaf_LoadFinish__FUl: # static function
/* 8001B7A0 00018700  80 03 00 04 */	lwz r0, 4(r3)
/* 8001B7A4 00018704  3C 80 80 36 */	lis r4, seq_loadbuffer@ha
/* 8001B7A8 00018708  38 84 46 88 */	addi r4, r4, seq_loadbuffer@l
/* 8001B7AC 0001870C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8001B7B0 00018710  54 05 10 3A */	slwi r5, r0, 2
/* 8001B7B4 00018714  38 00 00 00 */	li r0, 0
/* 8001B7B8 00018718  7C 84 2A 14 */	add r4, r4, r5
/* 8001B7BC 0001871C  90 C4 00 00 */	stw r6, 0(r4)
/* 8001B7C0 00018720  98 03 00 00 */	stb r0, 0(r3)
/* 8001B7C4 00018724  4E 80 00 20 */	blr 

.balign 32, 0
.global __LoadSeqA__FUlUlPUcPFUl_v
__LoadSeqA__FUlUlPUcPFUl_v:
/* 8001B7E0 00018740  7C 08 02 A6 */	mflr r0
/* 8001B7E4 00018744  3C E0 80 36 */	lis r7, seq_loadbuffer@ha
/* 8001B7E8 00018748  90 01 00 04 */	stw r0, 4(r1)
/* 8001B7EC 0001874C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8001B7F0 00018750  BF 81 00 28 */	stmw r28, 0x28(r1)
/* 8001B7F4 00018754  3B C6 00 00 */	addi r30, r6, 0
/* 8001B7F8 00018758  3B E7 46 88 */	addi r31, r7, seq_loadbuffer@l
/* 8001B7FC 0001875C  80 0D 81 28 */	lwz r0, first@sda21(r13)
/* 8001B800 00018760  90 61 00 08 */	stw r3, 8(r1)
/* 8001B804 00018764  28 00 00 00 */	cmplwi r0, 0
/* 8001B808 00018768  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001B80C 0001876C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8001B810 00018770  41 82 00 2C */	beq .L_8001B83C
/* 8001B814 00018774  38 60 00 00 */	li r3, 0
/* 8001B818 00018778  38 00 00 08 */	li r0, 8
/* 8001B81C 0001877C  38 A3 00 00 */	addi r5, r3, 0
/* 8001B820 00018780  7C 09 03 A6 */	mtctr r0
.L_8001B824:
/* 8001B824 00018784  7C 9F 1A 14 */	add r4, r31, r3
/* 8001B828 00018788  38 63 00 10 */	addi r3, r3, 0x10
/* 8001B82C 0001878C  98 A4 47 80 */	stb r5, 0x4780(r4)
/* 8001B830 00018790  42 00 FF F4 */	bdnz .L_8001B824
/* 8001B834 00018794  38 00 00 00 */	li r0, 0
/* 8001B838 00018798  90 0D 81 28 */	stw r0, first@sda21(r13)
.L_8001B83C:
/* 8001B83C 0001879C  38 00 00 08 */	li r0, 8
/* 8001B840 000187A0  3B 80 00 00 */	li r28, 0
/* 8001B844 000187A4  38 60 00 00 */	li r3, 0
/* 8001B848 000187A8  7C 09 03 A6 */	mtctr r0
.L_8001B84C:
/* 8001B84C 000187AC  7C 9F 1A 14 */	add r4, r31, r3
/* 8001B850 000187B0  88 04 47 80 */	lbz r0, 0x4780(r4)
/* 8001B854 000187B4  28 00 00 00 */	cmplwi r0, 0
/* 8001B858 000187B8  41 82 00 10 */	beq .L_8001B868
/* 8001B85C 000187BC  3B 9C 00 01 */	addi r28, r28, 1
/* 8001B860 000187C0  38 63 00 10 */	addi r3, r3, 0x10
/* 8001B864 000187C4  42 00 FF E8 */	bdnz .L_8001B84C
.L_8001B868:
/* 8001B868 000187C8  28 1C 00 08 */	cmplwi r28, 8
/* 8001B86C 000187CC  40 82 00 0C */	bne .L_8001B878
/* 8001B870 000187D0  38 60 00 00 */	li r3, 0
/* 8001B874 000187D4  48 00 00 7C */	b .L_8001B8F0
.L_8001B878:
/* 8001B878 000187D8  80 6D 2D 58 */	lwz r3, seq_archandle@sda21(r13)
/* 8001B87C 000187DC  3C 03 00 01 */	addis r0, r3, 1
/* 8001B880 000187E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001B884 000187E4  40 82 00 0C */	bne .L_8001B890
/* 8001B888 000187E8  38 60 00 00 */	li r3, 0
/* 8001B88C 000187EC  48 00 00 64 */	b .L_8001B8F0
.L_8001B890:
/* 8001B890 000187F0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8001B894 000187F4  7F A3 EB 78 */	mr r3, r29
/* 8001B898 000187F8  4B FF FC 29 */	bl Jaf_CheckSeqSize__FUl
/* 8001B89C 000187FC  7C 66 1B 79 */	or. r6, r3, r3
/* 8001B8A0 00018800  40 82 00 0C */	bne .L_8001B8AC
/* 8001B8A4 00018804  38 60 00 00 */	li r3, 0
/* 8001B8A8 00018808  48 00 00 48 */	b .L_8001B8F0
.L_8001B8AC:
/* 8001B8AC 0001880C  80 0D 2D 58 */	lwz r0, seq_archandle@sda21(r13)
/* 8001B8B0 00018810  57 84 20 36 */	slwi r4, r28, 4
/* 8001B8B4 00018814  39 60 00 01 */	li r11, 1
/* 8001B8B8 00018818  7D 1F 22 14 */	add r8, r31, r4
/* 8001B8BC 0001881C  9D 68 47 80 */	stbu r11, 0x4780(r8)
/* 8001B8C0 00018820  7D 5F 22 14 */	add r10, r31, r4
/* 8001B8C4 00018824  7C 03 EB 78 */	or r3, r0, r29
/* 8001B8C8 00018828  57 A0 10 3A */	slwi r0, r29, 2
/* 8001B8CC 0001882C  93 AA 47 84 */	stw r29, 0x4784(r10)
/* 8001B8D0 00018830  38 FE 00 00 */	addi r7, r30, 0
/* 8001B8D4 00018834  38 A0 00 00 */	li r5, 0
/* 8001B8D8 00018838  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8001B8DC 0001883C  90 8A 47 8C */	stw r4, 0x478c(r10)
/* 8001B8E0 00018840  81 21 00 08 */	lwz r9, 8(r1)
/* 8001B8E4 00018844  91 2A 47 88 */	stw r9, 0x4788(r10)
/* 8001B8E8 00018848  7D 7F 01 2E */	stwx r11, r31, r0
/* 8001B8EC 0001884C  4B FF 2F F5 */	bl JV_LoadFile_Async2__FUlPUcUlUlPFUl_vUl
.L_8001B8F0:
/* 8001B8F0 00018850  BB 81 00 28 */	lmw r28, 0x28(r1)
/* 8001B8F4 00018854  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8001B8F8 00018858  38 21 00 38 */	addi r1, r1, 0x38
/* 8001B8FC 0001885C  7C 08 03 A6 */	mtlr r0
/* 8001B900 00018860  4E 80 00 20 */	blr 

.balign 32, 0
.global Jaf_LoadSeqA__FUlPUc
Jaf_LoadSeqA__FUlPUc:
/* 8001B920 00018880  7C 08 02 A6 */	mflr r0
/* 8001B924 00018884  3C C0 80 02 */	lis r6, Jaf_LoadFinish__FUl@ha
/* 8001B928 00018888  90 01 00 04 */	stw r0, 4(r1)
/* 8001B92C 0001888C  38 A4 00 00 */	addi r5, r4, 0
/* 8001B930 00018890  38 83 00 00 */	addi r4, r3, 0
/* 8001B934 00018894  38 C6 B7 A0 */	addi r6, r6, Jaf_LoadFinish__FUl@l
/* 8001B938 00018898  94 21 FF F8 */	stwu r1, -8(r1)
/* 8001B93C 0001889C  38 60 00 00 */	li r3, 0
/* 8001B940 000188A0  4B FF FE A1 */	bl __LoadSeqA__FUlUlPUcPFUl_v
/* 8001B944 000188A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001B948 000188A8  38 21 00 08 */	addi r1, r1, 8
/* 8001B94C 000188AC  7C 08 03 A6 */	mtlr r0
/* 8001B950 000188B0  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
first:
	.4byte 1

.section .sbss, "wa"
.balign 8
seq_archandle:
	.skip 4
