.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global TRKSetBufferUsed
TRKSetBufferUsed:
/* 8021C4CC 0021942C  90 83 00 04 */	stw r4, 4(r3)
/* 8021C4D0 00219430  4E 80 00 20 */	blr 

.global TRKInitializeMessageBuffers
TRKInitializeMessageBuffers:
/* 8021C4D4 00219434  7C 08 02 A6 */	mflr r0
/* 8021C4D8 00219438  3C 60 80 3D */	lis r3, gTRKMsgBufs@ha
/* 8021C4DC 0021943C  90 01 00 04 */	stw r0, 4(r1)
/* 8021C4E0 00219440  38 03 43 20 */	addi r0, r3, gTRKMsgBufs@l
/* 8021C4E4 00219444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C4E8 00219448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C4EC 0021944C  93 C1 00 08 */	stw r30, 8(r1)
/* 8021C4F0 00219450  3B C0 00 00 */	li r30, 0
/* 8021C4F4 00219454  1C 9E 08 90 */	mulli r4, r30, 0x890
/* 8021C4F8 00219458  7F E0 22 14 */	add r31, r0, r4
.L_8021C4FC:
/* 8021C4FC 0021945C  7F E3 FB 78 */	mr r3, r31
/* 8021C500 00219460  48 00 21 99 */	bl TRKInitializeMutex
/* 8021C504 00219464  7F E3 FB 78 */	mr r3, r31
/* 8021C508 00219468  48 00 21 99 */	bl TRKAcquireMutex
/* 8021C50C 0021946C  38 7F 00 00 */	addi r3, r31, 0
/* 8021C510 00219470  38 80 00 00 */	li r4, 0
/* 8021C514 00219474  4B FF FF B9 */	bl TRKSetBufferUsed
/* 8021C518 00219478  7F E3 FB 78 */	mr r3, r31
/* 8021C51C 0021947C  48 00 21 8D */	bl TRKReleaseMutex
/* 8021C520 00219480  3B DE 00 01 */	addi r30, r30, 1
/* 8021C524 00219484  3B FF 08 90 */	addi r31, r31, 0x890
/* 8021C528 00219488  2C 1E 00 03 */	cmpwi r30, 3
/* 8021C52C 0021948C  41 80 FF D0 */	blt .L_8021C4FC
/* 8021C530 00219490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C534 00219494  38 60 00 00 */	li r3, 0
/* 8021C538 00219498  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021C53C 0021949C  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C540 002194A0  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C544 002194A4  7C 08 03 A6 */	mtlr r0
/* 8021C548 002194A8  4E 80 00 20 */	blr 

.global TRKGetFreeBuffer
TRKGetFreeBuffer:
/* 8021C54C 002194AC  7C 08 02 A6 */	mflr r0
/* 8021C550 002194B0  90 01 00 04 */	stw r0, 4(r1)
/* 8021C554 002194B4  38 00 00 00 */	li r0, 0
/* 8021C558 002194B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021C55C 002194BC  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8021C560 002194C0  3B 84 00 00 */	addi r28, r4, 0
/* 8021C564 002194C4  3B 63 00 00 */	addi r27, r3, 0
/* 8021C568 002194C8  3B E0 03 00 */	li r31, 0x300
/* 8021C56C 002194CC  3B C0 00 00 */	li r30, 0
/* 8021C570 002194D0  90 04 00 00 */	stw r0, 0(r4)
/* 8021C574 002194D4  48 00 00 54 */	b .L_8021C5C8
.L_8021C578:
/* 8021C578 002194D8  7F C3 F3 78 */	mr r3, r30
/* 8021C57C 002194DC  48 00 00 6D */	bl TRKGetBuffer
/* 8021C580 002194E0  7C 7D 1B 78 */	mr r29, r3
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
/* 8021C664 002195C4  48 00 20 45 */	bl TRKReleaseMutex
.L_8021C668:
/* 8021C668 002195C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C66C 002195CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C670 002195D0  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C674 002195D4  7C 08 03 A6 */	mtlr r0
/* 8021C678 002195D8  4E 80 00 20 */	blr 

.global TRKResetBuffer
TRKResetBuffer:
/* 8021C67C 002195DC  7C 08 02 A6 */	mflr r0
/* 8021C680 002195E0  38 A0 00 00 */	li r5, 0
/* 8021C684 002195E4  90 01 00 04 */	stw r0, 4(r1)
/* 8021C688 002195E8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8021C68C 002195EC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021C690 002195F0  90 A3 00 08 */	stw r5, 8(r3)
/* 8021C694 002195F4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8021C698 002195F8  40 82 00 14 */	bne .L_8021C6AC
/* 8021C69C 002195FC  38 63 00 10 */	addi r3, r3, 0x10
/* 8021C6A0 00219600  38 80 00 00 */	li r4, 0
/* 8021C6A4 00219604  38 A0 08 80 */	li r5, 0x880
/* 8021C6A8 00219608  4B DE 6D E1 */	bl TRK_memset
.L_8021C6AC:
/* 8021C6AC 0021960C  38 21 00 08 */	addi r1, r1, 8
/* 8021C6B0 00219610  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C6B4 00219614  7C 08 03 A6 */	mtlr r0
/* 8021C6B8 00219618  4E 80 00 20 */	blr 

.global TRKSetBufferPosition
TRKSetBufferPosition:
/* 8021C6BC 0021961C  28 04 08 80 */	cmplwi r4, 0x880
/* 8021C6C0 00219620  38 A0 00 00 */	li r5, 0
/* 8021C6C4 00219624  40 81 00 0C */	ble .L_8021C6D0
/* 8021C6C8 00219628  38 A0 03 01 */	li r5, 0x301
/* 8021C6CC 0021962C  48 00 00 18 */	b .L_8021C6E4
.L_8021C6D0:
/* 8021C6D0 00219630  90 83 00 0C */	stw r4, 0xc(r3)
/* 8021C6D4 00219634  80 03 00 08 */	lwz r0, 8(r3)
/* 8021C6D8 00219638  7C 04 00 40 */	cmplw r4, r0
/* 8021C6DC 0021963C  40 81 00 08 */	ble .L_8021C6E4
/* 8021C6E0 00219640  90 83 00 08 */	stw r4, 8(r3)
.L_8021C6E4:
/* 8021C6E4 00219644  7C A3 2B 78 */	mr r3, r5
/* 8021C6E8 00219648  4E 80 00 20 */	blr 

.global TRKAppendBuffer
TRKAppendBuffer:
/* 8021C6EC 0021964C  7C 08 02 A6 */	mflr r0
/* 8021C6F0 00219650  90 01 00 04 */	stw r0, 4(r1)
/* 8021C6F4 00219654  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021C6F8 00219658  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021C6FC 0021965C  3B E0 00 00 */	li r31, 0
/* 8021C700 00219660  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021C704 00219664  7C BE 2B 79 */	or. r30, r5, r5
/* 8021C708 00219668  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8021C70C 0021966C  3B A3 00 00 */	addi r29, r3, 0
/* 8021C710 00219670  40 82 00 0C */	bne .L_8021C71C
/* 8021C714 00219674  38 60 00 00 */	li r3, 0
/* 8021C718 00219678  48 00 00 5C */	b .L_8021C774
.L_8021C71C:
/* 8021C71C 0021967C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8021C720 00219680  20 03 08 80 */	subfic r0, r3, 0x880
/* 8021C724 00219684  7C 00 F0 40 */	cmplw r0, r30
/* 8021C728 00219688  40 80 00 0C */	bge .L_8021C734
/* 8021C72C 0021968C  3B E0 03 01 */	li r31, 0x301
/* 8021C730 00219690  7C 1E 03 78 */	mr r30, r0
.L_8021C734:
/* 8021C734 00219694  28 1E 00 01 */	cmplwi r30, 1
/* 8021C738 00219698  40 82 00 14 */	bne .L_8021C74C
/* 8021C73C 0021969C  88 04 00 00 */	lbz r0, 0(r4)
/* 8021C740 002196A0  7C 7D 1A 14 */	add r3, r29, r3
/* 8021C744 002196A4  98 03 00 10 */	stb r0, 0x10(r3)
/* 8021C748 002196A8  48 00 00 14 */	b .L_8021C75C
.L_8021C74C:
/* 8021C74C 002196AC  38 63 00 10 */	addi r3, r3, 0x10
/* 8021C750 002196B0  38 BE 00 00 */	addi r5, r30, 0
/* 8021C754 002196B4  7C 7D 1A 14 */	add r3, r29, r3
/* 8021C758 002196B8  4B DE 6D 0D */	bl TRK_memcpy
.L_8021C75C:
/* 8021C75C 002196BC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8021C760 002196C0  38 7F 00 00 */	addi r3, r31, 0
/* 8021C764 002196C4  7C 00 F2 14 */	add r0, r0, r30
/* 8021C768 002196C8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8021C76C 002196CC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8021C770 002196D0  90 1D 00 08 */	stw r0, 8(r29)
.L_8021C774:
/* 8021C774 002196D4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021C778 002196D8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021C77C 002196DC  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8021C780 002196E0  38 21 00 18 */	addi r1, r1, 0x18
/* 8021C784 002196E4  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C788 002196E8  7C 08 03 A6 */	mtlr r0
/* 8021C78C 002196EC  4E 80 00 20 */	blr 

.global TRKReadBuffer
TRKReadBuffer:
/* 8021C790 002196F0  7C 08 02 A6 */	mflr r0
/* 8021C794 002196F4  90 01 00 04 */	stw r0, 4(r1)
/* 8021C798 002196F8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021C79C 002196FC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021C7A0 00219700  3B E0 00 00 */	li r31, 0
/* 8021C7A4 00219704  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021C7A8 00219708  7C BE 2B 79 */	or. r30, r5, r5
/* 8021C7AC 0021970C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8021C7B0 00219710  3B A3 00 00 */	addi r29, r3, 0
/* 8021C7B4 00219714  38 64 00 00 */	addi r3, r4, 0
/* 8021C7B8 00219718  40 82 00 0C */	bne .L_8021C7C4
/* 8021C7BC 0021971C  38 60 00 00 */	li r3, 0
/* 8021C7C0 00219720  48 00 00 40 */	b .L_8021C800
.L_8021C7C4:
/* 8021C7C4 00219724  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8021C7C8 00219728  80 1D 00 08 */	lwz r0, 8(r29)
/* 8021C7CC 0021972C  7C 04 00 50 */	subf r0, r4, r0
/* 8021C7D0 00219730  7C 1E 00 40 */	cmplw r30, r0
/* 8021C7D4 00219734  40 81 00 0C */	ble .L_8021C7E0
/* 8021C7D8 00219738  3B E0 03 02 */	li r31, 0x302
/* 8021C7DC 0021973C  7C 1E 03 78 */	mr r30, r0
.L_8021C7E0:
/* 8021C7E0 00219740  38 84 00 10 */	addi r4, r4, 0x10
/* 8021C7E4 00219744  38 BE 00 00 */	addi r5, r30, 0
/* 8021C7E8 00219748  7C 9D 22 14 */	add r4, r29, r4
/* 8021C7EC 0021974C  4B DE 6C 79 */	bl TRK_memcpy
/* 8021C7F0 00219750  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8021C7F4 00219754  38 7F 00 00 */	addi r3, r31, 0
/* 8021C7F8 00219758  7C 00 F2 14 */	add r0, r0, r30
/* 8021C7FC 0021975C  90 1D 00 0C */	stw r0, 0xc(r29)
.L_8021C800:
/* 8021C800 00219760  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021C804 00219764  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021C808 00219768  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8021C80C 0021976C  38 21 00 18 */	addi r1, r1, 0x18
/* 8021C810 00219770  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C814 00219774  7C 08 03 A6 */	mtlr r0
/* 8021C818 00219778  4E 80 00 20 */	blr 

.global TRKAppendBuffer1_ui16
TRKAppendBuffer1_ui16:
/* 8021C81C 0021977C  7C 08 02 A6 */	mflr r0
/* 8021C820 00219780  3C A0 80 3D */	lis r5, gTRKBigEndian@ha
/* 8021C824 00219784  90 01 00 04 */	stw r0, 4(r1)
/* 8021C828 00219788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C82C 0021978C  B0 81 00 08 */	sth r4, 8(r1)
/* 8021C830 00219790  80 05 43 18 */	lwz r0, gTRKBigEndian@l(r5)
/* 8021C834 00219794  2C 00 00 00 */	cmpwi r0, 0
/* 8021C838 00219798  41 82 00 0C */	beq .L_8021C844
/* 8021C83C 0021979C  38 81 00 08 */	addi r4, r1, 8
/* 8021C840 002197A0  48 00 00 18 */	b .L_8021C858
.L_8021C844:
/* 8021C844 002197A4  88 01 00 09 */	lbz r0, 9(r1)
/* 8021C848 002197A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8021C84C 002197AC  98 01 00 0C */	stb r0, 0xc(r1)
/* 8021C850 002197B0  88 01 00 08 */	lbz r0, 8(r1)
/* 8021C854 002197B4  98 01 00 0D */	stb r0, 0xd(r1)
.L_8021C858:
/* 8021C858 002197B8  38 A0 00 02 */	li r5, 2
/* 8021C85C 002197BC  4B FF FE 91 */	bl TRKAppendBuffer
/* 8021C860 002197C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C864 002197C4  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C868 002197C8  7C 08 03 A6 */	mtlr r0
/* 8021C86C 002197CC  4E 80 00 20 */	blr 

.global TRKAppendBuffer1_ui32
TRKAppendBuffer1_ui32:
/* 8021C870 002197D0  7C 08 02 A6 */	mflr r0
/* 8021C874 002197D4  3C A0 80 3D */	lis r5, gTRKBigEndian@ha
/* 8021C878 002197D8  90 01 00 04 */	stw r0, 4(r1)
/* 8021C87C 002197DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C880 002197E0  90 81 00 08 */	stw r4, 8(r1)
/* 8021C884 002197E4  80 05 43 18 */	lwz r0, gTRKBigEndian@l(r5)
/* 8021C888 002197E8  2C 00 00 00 */	cmpwi r0, 0
/* 8021C88C 002197EC  41 82 00 0C */	beq .L_8021C898
/* 8021C890 002197F0  38 81 00 08 */	addi r4, r1, 8
/* 8021C894 002197F4  48 00 00 28 */	b .L_8021C8BC
.L_8021C898:
/* 8021C898 002197F8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8021C89C 002197FC  38 81 00 0C */	addi r4, r1, 0xc
/* 8021C8A0 00219800  98 01 00 0C */	stb r0, 0xc(r1)
/* 8021C8A4 00219804  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8021C8A8 00219808  98 01 00 0D */	stb r0, 0xd(r1)
/* 8021C8AC 0021980C  88 01 00 09 */	lbz r0, 9(r1)
/* 8021C8B0 00219810  98 01 00 0E */	stb r0, 0xe(r1)
/* 8021C8B4 00219814  88 01 00 08 */	lbz r0, 8(r1)
/* 8021C8B8 00219818  98 01 00 0F */	stb r0, 0xf(r1)
.L_8021C8BC:
/* 8021C8BC 0021981C  38 A0 00 04 */	li r5, 4
/* 8021C8C0 00219820  4B FF FE 2D */	bl TRKAppendBuffer
/* 8021C8C4 00219824  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C8C8 00219828  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C8CC 0021982C  7C 08 03 A6 */	mtlr r0
/* 8021C8D0 00219830  4E 80 00 20 */	blr 

.global TRKAppendBuffer1_ui64
TRKAppendBuffer1_ui64:
/* 8021C8D4 00219834  7C 08 02 A6 */	mflr r0
/* 8021C8D8 00219838  3C 80 80 3D */	lis r4, gTRKBigEndian@ha
/* 8021C8DC 0021983C  90 01 00 04 */	stw r0, 4(r1)
/* 8021C8E0 00219840  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021C8E4 00219844  90 A1 00 08 */	stw r5, 8(r1)
/* 8021C8E8 00219848  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8021C8EC 0021984C  80 04 43 18 */	lwz r0, gTRKBigEndian@l(r4)
/* 8021C8F0 00219850  2C 00 00 00 */	cmpwi r0, 0
/* 8021C8F4 00219854  41 82 00 0C */	beq .L_8021C900
/* 8021C8F8 00219858  38 81 00 08 */	addi r4, r1, 8
/* 8021C8FC 0021985C  48 00 00 48 */	b .L_8021C944
.L_8021C900:
/* 8021C900 00219860  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8021C904 00219864  38 81 00 10 */	addi r4, r1, 0x10
/* 8021C908 00219868  98 01 00 10 */	stb r0, 0x10(r1)
/* 8021C90C 0021986C  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8021C910 00219870  98 01 00 11 */	stb r0, 0x11(r1)
/* 8021C914 00219874  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8021C918 00219878  98 01 00 12 */	stb r0, 0x12(r1)
/* 8021C91C 0021987C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8021C920 00219880  98 01 00 13 */	stb r0, 0x13(r1)
/* 8021C924 00219884  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8021C928 00219888  98 01 00 14 */	stb r0, 0x14(r1)
/* 8021C92C 0021988C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8021C930 00219890  98 01 00 15 */	stb r0, 0x15(r1)
/* 8021C934 00219894  88 01 00 09 */	lbz r0, 9(r1)
/* 8021C938 00219898  98 01 00 16 */	stb r0, 0x16(r1)
/* 8021C93C 0021989C  88 01 00 08 */	lbz r0, 8(r1)
/* 8021C940 002198A0  98 01 00 17 */	stb r0, 0x17(r1)
.L_8021C944:
/* 8021C944 002198A4  38 A0 00 08 */	li r5, 8
/* 8021C948 002198A8  4B FF FD A5 */	bl TRKAppendBuffer
/* 8021C94C 002198AC  38 21 00 18 */	addi r1, r1, 0x18
/* 8021C950 002198B0  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C954 002198B4  7C 08 03 A6 */	mtlr r0
/* 8021C958 002198B8  4E 80 00 20 */	blr 

.global TRKAppendBuffer_ui8
TRKAppendBuffer_ui8:
/* 8021C95C 002198BC  39 20 00 00 */	li r9, 0
/* 8021C960 002198C0  38 00 00 00 */	li r0, 0
/* 8021C964 002198C4  48 00 00 48 */	b .L_8021C9AC
.L_8021C968:
/* 8021C968 002198C8  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 8021C96C 002198CC  89 04 00 00 */	lbz r8, 0(r4)
/* 8021C970 002198D0  28 07 08 80 */	cmplwi r7, 0x880
/* 8021C974 002198D4  41 80 00 0C */	blt .L_8021C980
/* 8021C978 002198D8  38 E0 03 01 */	li r7, 0x301
/* 8021C97C 002198DC  48 00 00 24 */	b .L_8021C9A0
.L_8021C980:
/* 8021C980 002198E0  38 C7 00 01 */	addi r6, r7, 1
/* 8021C984 002198E4  38 07 00 10 */	addi r0, r7, 0x10
/* 8021C988 002198E8  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8021C98C 002198EC  38 E0 00 00 */	li r7, 0
/* 8021C990 002198F0  7D 03 01 AE */	stbx r8, r3, r0
/* 8021C994 002198F4  80 C3 00 08 */	lwz r6, 8(r3)
/* 8021C998 002198F8  38 06 00 01 */	addi r0, r6, 1
/* 8021C99C 002198FC  90 03 00 08 */	stw r0, 8(r3)
.L_8021C9A0:
/* 8021C9A0 00219900  38 07 00 00 */	addi r0, r7, 0
/* 8021C9A4 00219904  39 29 00 01 */	addi r9, r9, 1
/* 8021C9A8 00219908  38 84 00 01 */	addi r4, r4, 1
.L_8021C9AC:
/* 8021C9AC 0021990C  2C 00 00 00 */	cmpwi r0, 0
/* 8021C9B0 00219910  40 82 00 0C */	bne .L_8021C9BC
/* 8021C9B4 00219914  7C 09 28 00 */	cmpw r9, r5
/* 8021C9B8 00219918  41 80 FF B0 */	blt .L_8021C968
.L_8021C9BC:
/* 8021C9BC 0021991C  7C 03 03 78 */	mr r3, r0
/* 8021C9C0 00219920  4E 80 00 20 */	blr 

.global TRKAppendBuffer_ui32
TRKAppendBuffer_ui32:
/* 8021C9C4 00219924  7C 08 02 A6 */	mflr r0
/* 8021C9C8 00219928  90 01 00 04 */	stw r0, 4(r1)
/* 8021C9CC 0021992C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021C9D0 00219930  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021C9D4 00219934  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021C9D8 00219938  3B C0 00 00 */	li r30, 0
/* 8021C9DC 0021993C  57 C0 10 3A */	slwi r0, r30, 2
/* 8021C9E0 00219940  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8021C9E4 00219944  7F E4 02 14 */	add r31, r4, r0
/* 8021C9E8 00219948  3B A5 00 00 */	addi r29, r5, 0
/* 8021C9EC 0021994C  93 81 00 08 */	stw r28, 8(r1)
/* 8021C9F0 00219950  3B 83 00 00 */	addi r28, r3, 0
/* 8021C9F4 00219954  38 60 00 00 */	li r3, 0
/* 8021C9F8 00219958  48 00 00 18 */	b .L_8021CA10
.L_8021C9FC:
/* 8021C9FC 0021995C  7F 83 E3 78 */	mr r3, r28
/* 8021CA00 00219960  80 9F 00 00 */	lwz r4, 0(r31)
/* 8021CA04 00219964  4B FF FE 6D */	bl TRKAppendBuffer1_ui32
/* 8021CA08 00219968  3B DE 00 01 */	addi r30, r30, 1
/* 8021CA0C 0021996C  3B FF 00 04 */	addi r31, r31, 4
.L_8021CA10:
/* 8021CA10 00219970  2C 03 00 00 */	cmpwi r3, 0
/* 8021CA14 00219974  40 82 00 0C */	bne .L_8021CA20
/* 8021CA18 00219978  7C 1E E8 00 */	cmpw r30, r29
/* 8021CA1C 0021997C  41 80 FF E0 */	blt .L_8021C9FC
.L_8021CA20:
/* 8021CA20 00219980  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CA24 00219984  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CA28 00219988  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8021CA2C 0021998C  83 81 00 08 */	lwz r28, 8(r1)
/* 8021CA30 00219990  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CA34 00219994  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CA38 00219998  7C 08 03 A6 */	mtlr r0
/* 8021CA3C 0021999C  4E 80 00 20 */	blr 

.global TRKReadBuffer1_ui8
TRKReadBuffer1_ui8:
/* 8021CA40 002199A0  7C 08 02 A6 */	mflr r0
/* 8021CA44 002199A4  38 A0 00 01 */	li r5, 1
/* 8021CA48 002199A8  90 01 00 04 */	stw r0, 4(r1)
/* 8021CA4C 002199AC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021CA50 002199B0  4B FF FD 41 */	bl TRKReadBuffer
/* 8021CA54 002199B4  38 21 00 08 */	addi r1, r1, 8
/* 8021CA58 002199B8  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CA5C 002199BC  7C 08 03 A6 */	mtlr r0
/* 8021CA60 002199C0  4E 80 00 20 */	blr 

.global TRKReadBuffer1_ui16
TRKReadBuffer1_ui16:
/* 8021CA64 002199C4  7C 08 02 A6 */	mflr r0
/* 8021CA68 002199C8  3C A0 80 3D */	lis r5, gTRKBigEndian@ha
/* 8021CA6C 002199CC  90 01 00 04 */	stw r0, 4(r1)
/* 8021CA70 002199D0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CA74 002199D4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CA78 002199D8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CA7C 002199DC  3B C4 00 00 */	addi r30, r4, 0
/* 8021CA80 002199E0  80 05 43 18 */	lwz r0, gTRKBigEndian@l(r5)
/* 8021CA84 002199E4  2C 00 00 00 */	cmpwi r0, 0
/* 8021CA88 002199E8  41 82 00 0C */	beq .L_8021CA94
/* 8021CA8C 002199EC  7F DF F3 78 */	mr r31, r30
/* 8021CA90 002199F0  48 00 00 08 */	b .L_8021CA98
.L_8021CA94:
/* 8021CA94 002199F4  3B E1 00 08 */	addi r31, r1, 8
.L_8021CA98:
/* 8021CA98 002199F8  38 9F 00 00 */	addi r4, r31, 0
/* 8021CA9C 002199FC  38 A0 00 02 */	li r5, 2
/* 8021CAA0 00219A00  4B FF FC F1 */	bl TRKReadBuffer
/* 8021CAA4 00219A04  3C 80 80 3D */	lis r4, gTRKBigEndian@ha
/* 8021CAA8 00219A08  80 04 43 18 */	lwz r0, gTRKBigEndian@l(r4)
/* 8021CAAC 00219A0C  2C 00 00 00 */	cmpwi r0, 0
/* 8021CAB0 00219A10  40 82 00 1C */	bne .L_8021CACC
/* 8021CAB4 00219A14  2C 03 00 00 */	cmpwi r3, 0
/* 8021CAB8 00219A18  40 82 00 14 */	bne .L_8021CACC
/* 8021CABC 00219A1C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8021CAC0 00219A20  98 1E 00 00 */	stb r0, 0(r30)
/* 8021CAC4 00219A24  88 1F 00 00 */	lbz r0, 0(r31)
/* 8021CAC8 00219A28  98 1E 00 01 */	stb r0, 1(r30)
.L_8021CACC:
/* 8021CACC 00219A2C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CAD0 00219A30  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CAD4 00219A34  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CAD8 00219A38  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CADC 00219A3C  7C 08 03 A6 */	mtlr r0
/* 8021CAE0 00219A40  4E 80 00 20 */	blr 

.global TRKReadBuffer1_ui32
TRKReadBuffer1_ui32:
/* 8021CAE4 00219A44  7C 08 02 A6 */	mflr r0
/* 8021CAE8 00219A48  3C A0 80 3D */	lis r5, gTRKBigEndian@ha
/* 8021CAEC 00219A4C  90 01 00 04 */	stw r0, 4(r1)
/* 8021CAF0 00219A50  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CAF4 00219A54  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CAF8 00219A58  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CAFC 00219A5C  3B C4 00 00 */	addi r30, r4, 0
/* 8021CB00 00219A60  80 05 43 18 */	lwz r0, gTRKBigEndian@l(r5)
/* 8021CB04 00219A64  2C 00 00 00 */	cmpwi r0, 0
/* 8021CB08 00219A68  41 82 00 0C */	beq .L_8021CB14
/* 8021CB0C 00219A6C  7F DF F3 78 */	mr r31, r30
/* 8021CB10 00219A70  48 00 00 08 */	b .L_8021CB18
.L_8021CB14:
/* 8021CB14 00219A74  3B E1 00 08 */	addi r31, r1, 8
.L_8021CB18:
/* 8021CB18 00219A78  38 9F 00 00 */	addi r4, r31, 0
/* 8021CB1C 00219A7C  38 A0 00 04 */	li r5, 4
/* 8021CB20 00219A80  4B FF FC 71 */	bl TRKReadBuffer
/* 8021CB24 00219A84  3C 80 80 3D */	lis r4, gTRKBigEndian@ha
/* 8021CB28 00219A88  80 04 43 18 */	lwz r0, gTRKBigEndian@l(r4)
/* 8021CB2C 00219A8C  2C 00 00 00 */	cmpwi r0, 0
/* 8021CB30 00219A90  40 82 00 2C */	bne .L_8021CB5C
/* 8021CB34 00219A94  2C 03 00 00 */	cmpwi r3, 0
/* 8021CB38 00219A98  40 82 00 24 */	bne .L_8021CB5C
/* 8021CB3C 00219A9C  88 1F 00 03 */	lbz r0, 3(r31)
/* 8021CB40 00219AA0  98 1E 00 00 */	stb r0, 0(r30)
/* 8021CB44 00219AA4  88 1F 00 02 */	lbz r0, 2(r31)
/* 8021CB48 00219AA8  98 1E 00 01 */	stb r0, 1(r30)
/* 8021CB4C 00219AAC  88 1F 00 01 */	lbz r0, 1(r31)
/* 8021CB50 00219AB0  98 1E 00 02 */	stb r0, 2(r30)
/* 8021CB54 00219AB4  88 1F 00 00 */	lbz r0, 0(r31)
/* 8021CB58 00219AB8  98 1E 00 03 */	stb r0, 3(r30)
.L_8021CB5C:
/* 8021CB5C 00219ABC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CB60 00219AC0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CB64 00219AC4  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CB68 00219AC8  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CB6C 00219ACC  7C 08 03 A6 */	mtlr r0
/* 8021CB70 00219AD0  4E 80 00 20 */	blr 

.global TRKReadBuffer1_ui64
TRKReadBuffer1_ui64:
/* 8021CB74 00219AD4  7C 08 02 A6 */	mflr r0
/* 8021CB78 00219AD8  3C A0 80 3D */	lis r5, gTRKBigEndian@ha
/* 8021CB7C 00219ADC  90 01 00 04 */	stw r0, 4(r1)
/* 8021CB80 00219AE0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CB84 00219AE4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CB88 00219AE8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CB8C 00219AEC  3B C4 00 00 */	addi r30, r4, 0
/* 8021CB90 00219AF0  80 05 43 18 */	lwz r0, gTRKBigEndian@l(r5)
/* 8021CB94 00219AF4  2C 00 00 00 */	cmpwi r0, 0
/* 8021CB98 00219AF8  41 82 00 0C */	beq .L_8021CBA4
/* 8021CB9C 00219AFC  7F DF F3 78 */	mr r31, r30
/* 8021CBA0 00219B00  48 00 00 08 */	b .L_8021CBA8
.L_8021CBA4:
/* 8021CBA4 00219B04  3B E1 00 08 */	addi r31, r1, 8
.L_8021CBA8:
/* 8021CBA8 00219B08  38 9F 00 00 */	addi r4, r31, 0
/* 8021CBAC 00219B0C  38 A0 00 08 */	li r5, 8
/* 8021CBB0 00219B10  4B FF FB E1 */	bl TRKReadBuffer
/* 8021CBB4 00219B14  3C 80 80 3D */	lis r4, gTRKBigEndian@ha
/* 8021CBB8 00219B18  80 04 43 18 */	lwz r0, gTRKBigEndian@l(r4)
/* 8021CBBC 00219B1C  2C 00 00 00 */	cmpwi r0, 0
/* 8021CBC0 00219B20  40 82 00 4C */	bne .L_8021CC0C
/* 8021CBC4 00219B24  2C 03 00 00 */	cmpwi r3, 0
/* 8021CBC8 00219B28  40 82 00 44 */	bne .L_8021CC0C
/* 8021CBCC 00219B2C  88 1F 00 07 */	lbz r0, 7(r31)
/* 8021CBD0 00219B30  98 1E 00 00 */	stb r0, 0(r30)
/* 8021CBD4 00219B34  88 1F 00 06 */	lbz r0, 6(r31)
/* 8021CBD8 00219B38  98 1E 00 01 */	stb r0, 1(r30)
/* 8021CBDC 00219B3C  88 1F 00 05 */	lbz r0, 5(r31)
/* 8021CBE0 00219B40  98 1E 00 02 */	stb r0, 2(r30)
/* 8021CBE4 00219B44  88 1F 00 04 */	lbz r0, 4(r31)
/* 8021CBE8 00219B48  98 1E 00 03 */	stb r0, 3(r30)
/* 8021CBEC 00219B4C  88 1F 00 03 */	lbz r0, 3(r31)
/* 8021CBF0 00219B50  98 1E 00 04 */	stb r0, 4(r30)
/* 8021CBF4 00219B54  88 1F 00 02 */	lbz r0, 2(r31)
/* 8021CBF8 00219B58  98 1E 00 05 */	stb r0, 5(r30)
/* 8021CBFC 00219B5C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8021CC00 00219B60  98 1E 00 06 */	stb r0, 6(r30)
/* 8021CC04 00219B64  88 1F 00 00 */	lbz r0, 0(r31)
/* 8021CC08 00219B68  98 1E 00 07 */	stb r0, 7(r30)
.L_8021CC0C:
/* 8021CC0C 00219B6C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CC10 00219B70  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CC14 00219B74  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CC18 00219B78  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CC1C 00219B7C  7C 08 03 A6 */	mtlr r0
/* 8021CC20 00219B80  4E 80 00 20 */	blr 

.global TRKReadBuffer_ui8
TRKReadBuffer_ui8:
/* 8021CC24 00219B84  7C 08 02 A6 */	mflr r0
/* 8021CC28 00219B88  90 01 00 04 */	stw r0, 4(r1)
/* 8021CC2C 00219B8C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CC30 00219B90  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CC34 00219B94  3B E0 00 00 */	li r31, 0
/* 8021CC38 00219B98  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CC3C 00219B9C  3B C5 00 00 */	addi r30, r5, 0
/* 8021CC40 00219BA0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8021CC44 00219BA4  3B A4 00 00 */	addi r29, r4, 0
/* 8021CC48 00219BA8  93 81 00 08 */	stw r28, 8(r1)
/* 8021CC4C 00219BAC  3B 83 00 00 */	addi r28, r3, 0
/* 8021CC50 00219BB0  38 60 00 00 */	li r3, 0
/* 8021CC54 00219BB4  48 00 00 14 */	b .L_8021CC68
.L_8021CC58:
/* 8021CC58 00219BB8  38 7C 00 00 */	addi r3, r28, 0
/* 8021CC5C 00219BBC  7C 9D FA 14 */	add r4, r29, r31
/* 8021CC60 00219BC0  4B FF FD E1 */	bl TRKReadBuffer1_ui8
/* 8021CC64 00219BC4  3B FF 00 01 */	addi r31, r31, 1
.L_8021CC68:
/* 8021CC68 00219BC8  2C 03 00 00 */	cmpwi r3, 0
/* 8021CC6C 00219BCC  40 82 00 0C */	bne .L_8021CC78
/* 8021CC70 00219BD0  7C 1F F0 00 */	cmpw r31, r30
/* 8021CC74 00219BD4  41 80 FF E4 */	blt .L_8021CC58
.L_8021CC78:
/* 8021CC78 00219BD8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CC7C 00219BDC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CC80 00219BE0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8021CC84 00219BE4  83 81 00 08 */	lwz r28, 8(r1)
/* 8021CC88 00219BE8  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CC8C 00219BEC  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CC90 00219BF0  7C 08 03 A6 */	mtlr r0
/* 8021CC94 00219BF4  4E 80 00 20 */	blr 

.global TRKReadBuffer_ui32
TRKReadBuffer_ui32:
/* 8021CC98 00219BF8  7C 08 02 A6 */	mflr r0
/* 8021CC9C 00219BFC  90 01 00 04 */	stw r0, 4(r1)
/* 8021CCA0 00219C00  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021CCA4 00219C04  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021CCA8 00219C08  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8021CCAC 00219C0C  3B C0 00 00 */	li r30, 0
/* 8021CCB0 00219C10  57 C0 10 3A */	slwi r0, r30, 2
/* 8021CCB4 00219C14  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8021CCB8 00219C18  7F E4 02 14 */	add r31, r4, r0
/* 8021CCBC 00219C1C  3B A5 00 00 */	addi r29, r5, 0
/* 8021CCC0 00219C20  93 81 00 08 */	stw r28, 8(r1)
/* 8021CCC4 00219C24  3B 83 00 00 */	addi r28, r3, 0
/* 8021CCC8 00219C28  38 60 00 00 */	li r3, 0
/* 8021CCCC 00219C2C  48 00 00 18 */	b .L_8021CCE4
.L_8021CCD0:
/* 8021CCD0 00219C30  38 7C 00 00 */	addi r3, r28, 0
/* 8021CCD4 00219C34  38 9F 00 00 */	addi r4, r31, 0
/* 8021CCD8 00219C38  4B FF FE 0D */	bl TRKReadBuffer1_ui32
/* 8021CCDC 00219C3C  3B DE 00 01 */	addi r30, r30, 1
/* 8021CCE0 00219C40  3B FF 00 04 */	addi r31, r31, 4
.L_8021CCE4:
/* 8021CCE4 00219C44  2C 03 00 00 */	cmpwi r3, 0
/* 8021CCE8 00219C48  40 82 00 0C */	bne .L_8021CCF4
/* 8021CCEC 00219C4C  7C 1E E8 00 */	cmpw r30, r29
/* 8021CCF0 00219C50  41 80 FF E0 */	blt .L_8021CCD0
.L_8021CCF4:
/* 8021CCF4 00219C54  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021CCF8 00219C58  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8021CCFC 00219C5C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8021CD00 00219C60  83 81 00 08 */	lwz r28, 8(r1)
/* 8021CD04 00219C64  38 21 00 18 */	addi r1, r1, 0x18
/* 8021CD08 00219C68  80 01 00 04 */	lwz r0, 4(r1)
/* 8021CD0C 00219C6C  7C 08 03 A6 */	mtlr r0
/* 8021CD10 00219C70  4E 80 00 20 */	blr 
