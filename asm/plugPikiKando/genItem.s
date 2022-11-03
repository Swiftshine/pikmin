.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global ramSaveParameters__13GenObjectItemFR18RandomAccessStream
ramSaveParameters__13GenObjectItemFR18RandomAccessStream:
/* 800EE320 000EB280  7C 08 02 A6 */	mflr r0
/* 800EE324 000EB284  90 01 00 04 */	stw r0, 4(r1)
/* 800EE328 000EB288  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800EE32C 000EB28C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800EE330 000EB290  3B E4 00 00 */	addi r31, r4, 0
/* 800EE334 000EB294  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800EE338 000EB298  3B C3 00 00 */	addi r30, r3, 0
/* 800EE33C 000EB29C  38 9E 00 24 */	addi r4, r30, 0x24
/* 800EE340 000EB2A0  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE344 000EB2A4  38 7F 00 00 */	addi r3, r31, 0
/* 800EE348 000EB2A8  80 84 00 00 */	lwz r4, 0(r4)
/* 800EE34C 000EB2AC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE350 000EB2B0  38 84 00 01 */	addi r4, r4, 1
/* 800EE354 000EB2B4  7D 88 03 A6 */	mtlr r12
/* 800EE358 000EB2B8  4E 80 00 21 */	blrl 
/* 800EE35C 000EB2BC  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE360 000EB2C0  7F E3 FB 78 */	mr r3, r31
/* 800EE364 000EB2C4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 800EE368 000EB2C8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE36C 000EB2CC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800EE370 000EB2D0  7D 88 03 A6 */	mtlr r12
/* 800EE374 000EB2D4  4E 80 00 21 */	blrl 
/* 800EE378 000EB2D8  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE37C 000EB2DC  7F E3 FB 78 */	mr r3, r31
/* 800EE380 000EB2E0  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 800EE384 000EB2E4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE388 000EB2E8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800EE38C 000EB2EC  7D 88 03 A6 */	mtlr r12
/* 800EE390 000EB2F0  4E 80 00 21 */	blrl 
/* 800EE394 000EB2F4  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE398 000EB2F8  7F E3 FB 78 */	mr r3, r31
/* 800EE39C 000EB2FC  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 800EE3A0 000EB300  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE3A4 000EB304  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800EE3A8 000EB308  7D 88 03 A6 */	mtlr r12
/* 800EE3AC 000EB30C  4E 80 00 21 */	blrl 
/* 800EE3B0 000EB310  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800EE3B4 000EB314  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800EE3B8 000EB318  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800EE3BC 000EB31C  38 21 00 18 */	addi r1, r1, 0x18
/* 800EE3C0 000EB320  7C 08 03 A6 */	mtlr r0
/* 800EE3C4 000EB324  4E 80 00 20 */	blr 

.global ramLoadParameters__13GenObjectItemFR18RandomAccessStream
ramLoadParameters__13GenObjectItemFR18RandomAccessStream:
/* 800EE3C8 000EB328  7C 08 02 A6 */	mflr r0
/* 800EE3CC 000EB32C  90 01 00 04 */	stw r0, 4(r1)
/* 800EE3D0 000EB330  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800EE3D4 000EB334  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800EE3D8 000EB338  3B E4 00 00 */	addi r31, r4, 0
/* 800EE3DC 000EB33C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800EE3E0 000EB340  3B C3 00 00 */	addi r30, r3, 0
/* 800EE3E4 000EB344  38 7F 00 00 */	addi r3, r31, 0
/* 800EE3E8 000EB348  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE3EC 000EB34C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE3F0 000EB350  7D 88 03 A6 */	mtlr r12
/* 800EE3F4 000EB354  4E 80 00 21 */	blrl 
/* 800EE3F8 000EB358  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800EE3FC 000EB35C  38 03 FF FF */	addi r0, r3, -1
/* 800EE400 000EB360  90 1E 00 24 */	stw r0, 0x24(r30)
/* 800EE404 000EB364  7F E3 FB 78 */	mr r3, r31
/* 800EE408 000EB368  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE40C 000EB36C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE410 000EB370  7D 88 03 A6 */	mtlr r12
/* 800EE414 000EB374  4E 80 00 21 */	blrl 
/* 800EE418 000EB378  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EE41C 000EB37C  90 1E 00 34 */	stw r0, 0x34(r30)
/* 800EE420 000EB380  7F E3 FB 78 */	mr r3, r31
/* 800EE424 000EB384  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE428 000EB388  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE42C 000EB38C  7D 88 03 A6 */	mtlr r12
/* 800EE430 000EB390  4E 80 00 21 */	blrl 
/* 800EE434 000EB394  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EE438 000EB398  90 1E 00 44 */	stw r0, 0x44(r30)
/* 800EE43C 000EB39C  7F E3 FB 78 */	mr r3, r31
/* 800EE440 000EB3A0  81 9F 00 04 */	lwz r12, 4(r31)
/* 800EE444 000EB3A4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE448 000EB3A8  7D 88 03 A6 */	mtlr r12
/* 800EE44C 000EB3AC  4E 80 00 21 */	blrl 
/* 800EE450 000EB3B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EE454 000EB3B4  90 1E 00 54 */	stw r0, 0x54(r30)
/* 800EE458 000EB3B8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800EE45C 000EB3BC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800EE460 000EB3C0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800EE464 000EB3C4  38 21 00 28 */	addi r1, r1, 0x28
/* 800EE468 000EB3C8  7C 08 03 A6 */	mtlr r0
/* 800EE46C 000EB3CC  4E 80 00 20 */	blr 

.global makeObjectItem__Fv
makeObjectItem__Fv:
/* 800EE470 000EB3D0  7C 08 02 A6 */	mflr r0
/* 800EE474 000EB3D4  38 60 00 9C */	li r3, 0x9c
/* 800EE478 000EB3D8  90 01 00 04 */	stw r0, 4(r1)
/* 800EE47C 000EB3DC  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 800EE480 000EB3E0  93 E1 00 54 */	stw r31, 0x54(r1)
/* 800EE484 000EB3E4  93 C1 00 50 */	stw r30, 0x50(r1)
/* 800EE488 000EB3E8  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 800EE48C 000EB3EC  4B F5 8B 79 */	bl alloc__6SystemFUl
/* 800EE490 000EB3F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800EE494 000EB3F4  41 82 01 14 */	beq .L_800EE5A8
/* 800EE498 000EB3F8  3C 80 80 2C */	lis r4, lbl_802BD7A4@ha
/* 800EE49C 000EB3FC  3C 60 80 2C */	lis r3, lbl_802BD7B0@ha
/* 800EE4A0 000EB400  38 A4 D7 A4 */	addi r5, r4, lbl_802BD7A4@l
/* 800EE4A4 000EB404  3C 80 69 74 */	lis r4, 0x6974656D@ha
/* 800EE4A8 000EB408  38 C3 D7 B0 */	addi r6, r3, lbl_802BD7B0@l
/* 800EE4AC 000EB40C  38 7F 00 00 */	addi r3, r31, 0
/* 800EE4B0 000EB410  38 84 65 6D */	addi r4, r4, 0x6974656D@l
/* 800EE4B4 000EB414  4B FE C8 01 */	bl __ct__7GenBaseFUlPcPc
/* 800EE4B8 000EB418  3C 60 80 2C */	lis r3, __vt__9GenObject@ha
/* 800EE4BC 000EB41C  38 03 AB 70 */	addi r0, r3, __vt__9GenObject@l
/* 800EE4C0 000EB420  3C 60 80 2C */	lis r3, __vt__13GenObjectItem@ha
/* 800EE4C4 000EB424  90 1F 00 04 */	stw r0, 4(r31)
/* 800EE4C8 000EB428  38 03 D8 90 */	addi r0, r3, __vt__13GenObjectItem@l
/* 800EE4CC 000EB42C  90 1F 00 04 */	stw r0, 4(r31)
/* 800EE4D0 000EB430  38 A1 00 24 */	addi r5, r1, 0x24
/* 800EE4D4 000EB434  38 9F 00 00 */	addi r4, r31, 0
/* 800EE4D8 000EB438  80 0D CD 38 */	lwz r0, lbl_803E1A58@sda21(r13)
/* 800EE4DC 000EB43C  38 7F 00 18 */	addi r3, r31, 0x18
/* 800EE4E0 000EB440  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800EE4E4 000EB444  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800EE4E8 000EB448  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EE4EC 000EB44C  4B F7 05 95 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 800EE4F0 000EB450  3C 60 80 2A */	lis r3, "__vt__7Parm<i>"@ha
/* 800EE4F4 000EB454  3B A3 60 C4 */	addi r29, r3, "__vt__7Parm<i>"@l
/* 800EE4F8 000EB458  93 BF 00 20 */	stw r29, 0x20(r31)
/* 800EE4FC 000EB45C  3B C0 00 00 */	li r30, 0
/* 800EE500 000EB460  38 A1 00 20 */	addi r5, r1, 0x20
/* 800EE504 000EB464  93 DF 00 24 */	stw r30, 0x24(r31)
/* 800EE508 000EB468  7F E4 FB 78 */	mr r4, r31
/* 800EE50C 000EB46C  38 7F 00 28 */	addi r3, r31, 0x28
/* 800EE510 000EB470  80 0D CD 3C */	lwz r0, lbl_803E1A5C@sda21(r13)
/* 800EE514 000EB474  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EE518 000EB478  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EE51C 000EB47C  90 01 00 20 */	stw r0, 0x20(r1)
/* 800EE520 000EB480  4B F7 05 61 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 800EE524 000EB484  93 BF 00 30 */	stw r29, 0x30(r31)
/* 800EE528 000EB488  38 A1 00 1C */	addi r5, r1, 0x1c
/* 800EE52C 000EB48C  38 9F 00 00 */	addi r4, r31, 0
/* 800EE530 000EB490  93 DF 00 34 */	stw r30, 0x34(r31)
/* 800EE534 000EB494  38 7F 00 38 */	addi r3, r31, 0x38
/* 800EE538 000EB498  80 0D CD 40 */	lwz r0, lbl_803E1A60@sda21(r13)
/* 800EE53C 000EB49C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800EE540 000EB4A0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800EE544 000EB4A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800EE548 000EB4A8  4B F7 05 39 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 800EE54C 000EB4AC  93 BF 00 40 */	stw r29, 0x40(r31)
/* 800EE550 000EB4B0  38 A1 00 18 */	addi r5, r1, 0x18
/* 800EE554 000EB4B4  38 9F 00 00 */	addi r4, r31, 0
/* 800EE558 000EB4B8  93 DF 00 44 */	stw r30, 0x44(r31)
/* 800EE55C 000EB4BC  38 7F 00 48 */	addi r3, r31, 0x48
/* 800EE560 000EB4C0  80 0D CD 44 */	lwz r0, lbl_803E1A64@sda21(r13)
/* 800EE564 000EB4C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800EE568 000EB4C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EE56C 000EB4CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 800EE570 000EB4D0  4B F7 05 11 */	bl __ct__8BaseParmFP10Parameters5ayuID
/* 800EE574 000EB4D4  93 BF 00 50 */	stw r29, 0x50(r31)
/* 800EE578 000EB4D8  38 60 00 03 */	li r3, 3
/* 800EE57C 000EB4DC  38 00 00 01 */	li r0, 1
/* 800EE580 000EB4E0  4C C6 31 82 */	crclr 6
/* 800EE584 000EB4E4  90 7F 00 54 */	stw r3, 0x54(r31)
/* 800EE588 000EB4E8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800EE58C 000EB4EC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800EE590 000EB4F0  38 8D CD 48 */	addi r4, r13, lbl_803E1A68@sda21
/* 800EE594 000EB4F4  48 12 80 05 */	bl sprintf
/* 800EE598 000EB4F8  38 7F 00 7C */	addi r3, r31, 0x7c
/* 800EE59C 000EB4FC  4C C6 31 82 */	crclr 6
/* 800EE5A0 000EB500  38 8D CD 48 */	addi r4, r13, lbl_803E1A68@sda21
/* 800EE5A4 000EB504  48 12 7F F5 */	bl sprintf
.L_800EE5A8:
/* 800EE5A8 000EB508  7F E3 FB 78 */	mr r3, r31
/* 800EE5AC 000EB50C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 800EE5B0 000EB510  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 800EE5B4 000EB514  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 800EE5B8 000EB518  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 800EE5BC 000EB51C  38 21 00 58 */	addi r1, r1, 0x58
/* 800EE5C0 000EB520  7C 08 03 A6 */	mtlr r0
/* 800EE5C4 000EB524  4E 80 00 20 */	blr 

.global initialise__13GenObjectItemFv
initialise__13GenObjectItemFv:
/* 800EE5C8 000EB528  80 ED 30 74 */	lwz r7, factory__16GenObjectFactory@sda21(r13)
/* 800EE5CC 000EB52C  80 A7 00 00 */	lwz r5, 0(r7)
/* 800EE5D0 000EB530  80 07 00 04 */	lwz r0, 4(r7)
/* 800EE5D4 000EB534  7C 05 00 00 */	cmpw r5, r0
/* 800EE5D8 000EB538  4C 80 00 20 */	bgelr 
/* 800EE5DC 000EB53C  3C 80 69 74 */	lis r4, 0x6974656D@ha
/* 800EE5E0 000EB540  80 67 00 08 */	lwz r3, 8(r7)
/* 800EE5E4 000EB544  38 84 65 6D */	addi r4, r4, 0x6974656D@l
/* 800EE5E8 000EB548  54 A0 20 36 */	slwi r0, r5, 4
/* 800EE5EC 000EB54C  7C 83 01 2E */	stwx r4, r3, r0
/* 800EE5F0 000EB550  3C C0 80 0F */	lis r6, makeObjectItem__Fv@ha
/* 800EE5F4 000EB554  3C 80 80 2C */	lis r4, lbl_802BD7C0@ha
/* 800EE5F8 000EB558  80 07 00 00 */	lwz r0, 0(r7)
/* 800EE5FC 000EB55C  3C 60 76 30 */	lis r3, 0x76302E31@ha
/* 800EE600 000EB560  80 A7 00 08 */	lwz r5, 8(r7)
/* 800EE604 000EB564  38 C6 E4 70 */	addi r6, r6, makeObjectItem__Fv@l
/* 800EE608 000EB568  54 00 20 36 */	slwi r0, r0, 4
/* 800EE60C 000EB56C  7C A5 02 14 */	add r5, r5, r0
/* 800EE610 000EB570  90 C5 00 04 */	stw r6, 4(r5)
/* 800EE614 000EB574  38 A4 D7 C0 */	addi r5, r4, lbl_802BD7C0@l
/* 800EE618 000EB578  38 83 2E 31 */	addi r4, r3, 0x76302E31@l
/* 800EE61C 000EB57C  80 07 00 00 */	lwz r0, 0(r7)
/* 800EE620 000EB580  80 67 00 08 */	lwz r3, 8(r7)
/* 800EE624 000EB584  54 00 20 36 */	slwi r0, r0, 4
/* 800EE628 000EB588  7C 63 02 14 */	add r3, r3, r0
/* 800EE62C 000EB58C  90 A3 00 08 */	stw r5, 8(r3)
/* 800EE630 000EB590  80 07 00 00 */	lwz r0, 0(r7)
/* 800EE634 000EB594  80 67 00 08 */	lwz r3, 8(r7)
/* 800EE638 000EB598  54 00 20 36 */	slwi r0, r0, 4
/* 800EE63C 000EB59C  7C 63 02 14 */	add r3, r3, r0
/* 800EE640 000EB5A0  90 83 00 0C */	stw r4, 0xc(r3)
/* 800EE644 000EB5A4  80 67 00 00 */	lwz r3, 0(r7)
/* 800EE648 000EB5A8  38 03 00 01 */	addi r0, r3, 1
/* 800EE64C 000EB5AC  90 07 00 00 */	stw r0, 0(r7)
/* 800EE650 000EB5B0  4E 80 00 20 */	blr 

.global doRead__13GenObjectItemFR18RandomAccessStream
doRead__13GenObjectItemFR18RandomAccessStream:
/* 800EE654 000EB5B4  7C 08 02 A6 */	mflr r0
/* 800EE658 000EB5B8  90 01 00 04 */	stw r0, 4(r1)
/* 800EE65C 000EB5BC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 800EE660 000EB5C0  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 800EE664 000EB5C4  93 C1 01 18 */	stw r30, 0x118(r1)
/* 800EE668 000EB5C8  3B C4 00 00 */	addi r30, r4, 0
/* 800EE66C 000EB5CC  93 A1 01 14 */	stw r29, 0x114(r1)
/* 800EE670 000EB5D0  3B A3 00 00 */	addi r29, r3, 0
/* 800EE674 000EB5D4  88 0D 30 70 */	lbz r0, ramMode__9Generator@sda21(r13)
/* 800EE678 000EB5D8  28 00 00 00 */	cmplwi r0, 0
/* 800EE67C 000EB5DC  41 82 00 24 */	beq .L_800EE6A0
/* 800EE680 000EB5E0  7F C3 F3 78 */	mr r3, r30
/* 800EE684 000EB5E4  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE688 000EB5E8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE68C 000EB5EC  7D 88 03 A6 */	mtlr r12
/* 800EE690 000EB5F0  4E 80 00 21 */	blrl 
/* 800EE694 000EB5F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EE698 000EB5F8  90 1D 00 58 */	stw r0, 0x58(r29)
/* 800EE69C 000EB5FC  48 00 00 B8 */	b .L_800EE754
.L_800EE6A0:
/* 800EE6A0 000EB600  7F C3 F3 78 */	mr r3, r30
/* 800EE6A4 000EB604  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE6A8 000EB608  38 81 00 10 */	addi r4, r1, 0x10
/* 800EE6AC 000EB60C  38 A0 01 00 */	li r5, 0x100
/* 800EE6B0 000EB610  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800EE6B4 000EB614  7D 88 03 A6 */	mtlr r12
/* 800EE6B8 000EB618  4E 80 00 21 */	blrl 
/* 800EE6BC 000EB61C  38 61 00 10 */	addi r3, r1, 0x10
/* 800EE6C0 000EB620  4B FA 63 C1 */	bl getIndex__7ObjTypeFPc
/* 800EE6C4 000EB624  90 7D 00 58 */	stw r3, 0x58(r29)
/* 800EE6C8 000EB628  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 800EE6CC 000EB62C  3C 03 89 D0 */	addis r0, r3, 0x89d0
/* 800EE6D0 000EB630  28 00 2E 30 */	cmplwi r0, 0x2e30
/* 800EE6D4 000EB634  41 82 00 60 */	beq .L_800EE734
/* 800EE6D8 000EB638  3B E0 00 00 */	li r31, 0
.L_800EE6DC:
/* 800EE6DC 000EB63C  7F C3 F3 78 */	mr r3, r30
/* 800EE6E0 000EB640  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE6E4 000EB644  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE6E8 000EB648  7D 88 03 A6 */	mtlr r12
/* 800EE6EC 000EB64C  4E 80 00 21 */	blrl 
/* 800EE6F0 000EB650  38 1F 00 5C */	addi r0, r31, 0x5c
/* 800EE6F4 000EB654  3B FF 00 01 */	addi r31, r31, 1
/* 800EE6F8 000EB658  7C 7D 01 AE */	stbx r3, r29, r0
/* 800EE6FC 000EB65C  2C 1F 00 20 */	cmpwi r31, 0x20
/* 800EE700 000EB660  41 80 FF DC */	blt .L_800EE6DC
/* 800EE704 000EB664  3B E0 00 00 */	li r31, 0
.L_800EE708:
/* 800EE708 000EB668  7F C3 F3 78 */	mr r3, r30
/* 800EE70C 000EB66C  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE710 000EB670  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EE714 000EB674  7D 88 03 A6 */	mtlr r12
/* 800EE718 000EB678  4E 80 00 21 */	blrl 
/* 800EE71C 000EB67C  38 1F 00 7C */	addi r0, r31, 0x7c
/* 800EE720 000EB680  3B FF 00 01 */	addi r31, r31, 1
/* 800EE724 000EB684  7C 7D 01 AE */	stbx r3, r29, r0
/* 800EE728 000EB688  2C 1F 00 20 */	cmpwi r31, 0x20
/* 800EE72C 000EB68C  41 80 FF DC */	blt .L_800EE708
/* 800EE730 000EB690  48 00 00 24 */	b .L_800EE754
.L_800EE734:
/* 800EE734 000EB694  38 7D 00 5C */	addi r3, r29, 0x5c
/* 800EE738 000EB698  4C C6 31 82 */	crclr 6
/* 800EE73C 000EB69C  38 8D CD 48 */	addi r4, r13, lbl_803E1A68@sda21
/* 800EE740 000EB6A0  48 12 7E 59 */	bl sprintf
/* 800EE744 000EB6A4  38 7D 00 7C */	addi r3, r29, 0x7c
/* 800EE748 000EB6A8  4C C6 31 82 */	crclr 6
/* 800EE74C 000EB6AC  38 8D CD 48 */	addi r4, r13, lbl_803E1A68@sda21
/* 800EE750 000EB6B0  48 12 7E 49 */	bl sprintf
.L_800EE754:
/* 800EE754 000EB6B4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 800EE758 000EB6B8  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 800EE75C 000EB6BC  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 800EE760 000EB6C0  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 800EE764 000EB6C4  38 21 01 20 */	addi r1, r1, 0x120
/* 800EE768 000EB6C8  7C 08 03 A6 */	mtlr r0
/* 800EE76C 000EB6CC  4E 80 00 20 */	blr 

.global doWrite__13GenObjectItemFR18RandomAccessStream
doWrite__13GenObjectItemFR18RandomAccessStream:
/* 800EE770 000EB6D0  7C 08 02 A6 */	mflr r0
/* 800EE774 000EB6D4  90 01 00 04 */	stw r0, 4(r1)
/* 800EE778 000EB6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EE77C 000EB6DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EE780 000EB6E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EE784 000EB6E4  3B C4 00 00 */	addi r30, r4, 0
/* 800EE788 000EB6E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EE78C 000EB6EC  3B A3 00 00 */	addi r29, r3, 0
/* 800EE790 000EB6F0  88 0D 30 70 */	lbz r0, ramMode__9Generator@sda21(r13)
/* 800EE794 000EB6F4  28 00 00 00 */	cmplwi r0, 0
/* 800EE798 000EB6F8  41 82 00 24 */	beq .L_800EE7BC
/* 800EE79C 000EB6FC  7F C3 F3 78 */	mr r3, r30
/* 800EE7A0 000EB700  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 800EE7A4 000EB704  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE7A8 000EB708  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800EE7AC 000EB70C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE7B0 000EB710  7D 88 03 A6 */	mtlr r12
/* 800EE7B4 000EB714  4E 80 00 21 */	blrl 
/* 800EE7B8 000EB718  48 00 00 9C */	b .L_800EE854
.L_800EE7BC:
/* 800EE7BC 000EB71C  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 800EE7C0 000EB720  4B FA 62 79 */	bl getName__7ObjTypeFi
/* 800EE7C4 000EB724  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE7C8 000EB728  38 83 00 00 */	addi r4, r3, 0
/* 800EE7CC 000EB72C  38 7E 00 00 */	addi r3, r30, 0
/* 800EE7D0 000EB730  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800EE7D4 000EB734  7D 88 03 A6 */	mtlr r12
/* 800EE7D8 000EB738  4E 80 00 21 */	blrl 
/* 800EE7DC 000EB73C  7F A3 EB 78 */	mr r3, r29
/* 800EE7E0 000EB740  81 9D 00 04 */	lwz r12, 4(r29)
/* 800EE7E4 000EB744  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800EE7E8 000EB748  7D 88 03 A6 */	mtlr r12
/* 800EE7EC 000EB74C  4E 80 00 21 */	blrl 
/* 800EE7F0 000EB750  3C 03 89 D0 */	addis r0, r3, 0x89d0
/* 800EE7F4 000EB754  28 00 2E 30 */	cmplwi r0, 0x2e30
/* 800EE7F8 000EB758  41 82 00 5C */	beq .L_800EE854
/* 800EE7FC 000EB75C  3B E0 00 00 */	li r31, 0
.L_800EE800:
/* 800EE800 000EB760  7F C3 F3 78 */	mr r3, r30
/* 800EE804 000EB764  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE808 000EB768  38 1F 00 5C */	addi r0, r31, 0x5c
/* 800EE80C 000EB76C  7C 9D 00 AE */	lbzx r4, r29, r0
/* 800EE810 000EB770  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE814 000EB774  7D 88 03 A6 */	mtlr r12
/* 800EE818 000EB778  4E 80 00 21 */	blrl 
/* 800EE81C 000EB77C  3B FF 00 01 */	addi r31, r31, 1
/* 800EE820 000EB780  2C 1F 00 20 */	cmpwi r31, 0x20
/* 800EE824 000EB784  41 80 FF DC */	blt .L_800EE800
/* 800EE828 000EB788  3B E0 00 00 */	li r31, 0
.L_800EE82C:
/* 800EE82C 000EB78C  7F C3 F3 78 */	mr r3, r30
/* 800EE830 000EB790  81 9E 00 04 */	lwz r12, 4(r30)
/* 800EE834 000EB794  38 1F 00 7C */	addi r0, r31, 0x7c
/* 800EE838 000EB798  7C 9D 00 AE */	lbzx r4, r29, r0
/* 800EE83C 000EB79C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EE840 000EB7A0  7D 88 03 A6 */	mtlr r12
/* 800EE844 000EB7A4  4E 80 00 21 */	blrl 
/* 800EE848 000EB7A8  3B FF 00 01 */	addi r31, r31, 1
/* 800EE84C 000EB7AC  2C 1F 00 20 */	cmpwi r31, 0x20
/* 800EE850 000EB7B0  41 80 FF DC */	blt .L_800EE82C
.L_800EE854:
/* 800EE854 000EB7B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EE858 000EB7B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EE85C 000EB7BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EE860 000EB7C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EE864 000EB7C4  38 21 00 20 */	addi r1, r1, 0x20
/* 800EE868 000EB7C8  7C 08 03 A6 */	mtlr r0
/* 800EE86C 000EB7CC  4E 80 00 20 */	blr 

.global updateUseList__13GenObjectItemFP9Generatori
updateUseList__13GenObjectItemFP9Generatori:
/* 800EE870 000EB7D0  7C 08 02 A6 */	mflr r0
/* 800EE874 000EB7D4  90 01 00 04 */	stw r0, 4(r1)
/* 800EE878 000EB7D8  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EE87C 000EB7DC  80 83 00 58 */	lwz r4, 0x58(r3)
/* 800EE880 000EB7E0  2C 04 FF FF */	cmpwi r4, -1
/* 800EE884 000EB7E4  41 82 00 0C */	beq .L_800EE890
/* 800EE888 000EB7E8  80 6D 30 AC */	lwz r3, itemMgr@sda21(r13)
/* 800EE88C 000EB7EC  48 00 50 11 */	bl addUseList__7ItemMgrFi
.L_800EE890:
/* 800EE890 000EB7F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800EE894 000EB7F4  38 21 00 08 */	addi r1, r1, 8
/* 800EE898 000EB7F8  7C 08 03 A6 */	mtlr r0
/* 800EE89C 000EB7FC  4E 80 00 20 */	blr 

.global birth__13GenObjectItemFR9BirthInfo
birth__13GenObjectItemFR9BirthInfo:
/* 800EE8A0 000EB800  7C 08 02 A6 */	mflr r0
/* 800EE8A4 000EB804  90 01 00 04 */	stw r0, 4(r1)
/* 800EE8A8 000EB808  94 21 FF 58 */	stwu r1, -0xa8(r1)
/* 800EE8AC 000EB80C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800EE8B0 000EB810  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 800EE8B4 000EB814  7C 7D 1B 78 */	mr r29, r3
/* 800EE8B8 000EB818  3B C4 00 00 */	addi r30, r4, 0
/* 800EE8BC 000EB81C  80 03 00 58 */	lwz r0, 0x58(r3)
/* 800EE8C0 000EB820  2C 00 FF FF */	cmpwi r0, -1
/* 800EE8C4 000EB824  40 82 00 0C */	bne .L_800EE8D0
/* 800EE8C8 000EB828  38 60 00 00 */	li r3, 0
/* 800EE8CC 000EB82C  48 00 04 04 */	b .L_800EECD0
.L_800EE8D0:
/* 800EE8D0 000EB830  2C 00 00 10 */	cmpwi r0, 0x10
/* 800EE8D4 000EB834  40 82 00 68 */	bne .L_800EE93C
/* 800EE8D8 000EB838  80 8D 2F 6C */	lwz r4, playerState@sda21(r13)
/* 800EE8DC 000EB83C  38 60 00 01 */	li r3, 1
/* 800EE8E0 000EB840  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 800EE8E4 000EB844  88 84 01 84 */	lbz r4, 0x184(r4)
/* 800EE8E8 000EB848  7C 60 00 30 */	slw r0, r3, r0
/* 800EE8EC 000EB84C  7C 80 00 39 */	and. r0, r4, r0
/* 800EE8F0 000EB850  40 82 00 28 */	bne .L_800EE918
/* 800EE8F4 000EB854  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 800EE8F8 000EB858  3C 60 6E 65 */	lis r3, 0x6E657874@ha
/* 800EE8FC 000EB85C  38 83 78 74 */	addi r4, r3, 0x6E657874@l
/* 800EE900 000EB860  38 65 00 58 */	addi r3, r5, 0x58
/* 800EE904 000EB864  4B F5 56 F1 */	bl __ne__4ID32FUl
/* 800EE908 000EB868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE90C 000EB86C  41 82 00 30 */	beq .L_800EE93C
/* 800EE910 000EB870  38 60 00 00 */	li r3, 0
/* 800EE914 000EB874  48 00 03 BC */	b .L_800EECD0
.L_800EE918:
/* 800EE918 000EB878  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 800EE91C 000EB87C  3C 60 6E 65 */	lis r3, 0x6E657874@ha
/* 800EE920 000EB880  38 83 78 74 */	addi r4, r3, 0x6E657874@l
/* 800EE924 000EB884  38 65 00 58 */	addi r3, r5, 0x58
/* 800EE928 000EB888  4B F5 56 B9 */	bl __eq__4ID32FUl
/* 800EE92C 000EB88C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EE930 000EB890  41 82 00 0C */	beq .L_800EE93C
/* 800EE934 000EB894  38 60 00 00 */	li r3, 0
/* 800EE938 000EB898  48 00 03 98 */	b .L_800EECD0
.L_800EE93C:
/* 800EE93C 000EB89C  80 6D 30 AC */	lwz r3, itemMgr@sda21(r13)
/* 800EE940 000EB8A0  80 9D 00 58 */	lwz r4, 0x58(r29)
/* 800EE944 000EB8A4  81 83 00 00 */	lwz r12, 0(r3)
/* 800EE948 000EB8A8  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 800EE94C 000EB8AC  7D 88 03 A6 */	mtlr r12
/* 800EE950 000EB8B0  4E 80 00 21 */	blrl 
/* 800EE954 000EB8B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800EE958 000EB8B8  41 82 03 74 */	beq .L_800EECCC
/* 800EE95C 000EB8BC  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 800EE960 000EB8C0  38 03 FF F4 */	addi r0, r3, -12
/* 800EE964 000EB8C4  28 00 00 16 */	cmplwi r0, 0x16
/* 800EE968 000EB8C8  41 81 01 1C */	bgt .L_800EEA84
/* 800EE96C 000EB8CC  3C 60 80 2C */	lis r3, lbl_802BD7D0@ha
/* 800EE970 000EB8D0  38 63 D7 D0 */	addi r3, r3, lbl_802BD7D0@l
/* 800EE974 000EB8D4  54 00 10 3A */	slwi r0, r0, 2
/* 800EE978 000EB8D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 800EE97C 000EB8DC  7C 09 03 A6 */	mtctr r0
/* 800EE980 000EB8E0  4E 80 04 20 */	bctr 
.L_800EE984:
/* 800EE984 000EB8E4  38 9D 00 24 */	addi r4, r29, 0x24
/* 800EE988 000EB8E8  80 84 00 00 */	lwz r4, 0(r4)
/* 800EE98C 000EB8EC  38 7F 00 00 */	addi r3, r31, 0
/* 800EE990 000EB8F0  4B FF CD 5D */	bl setColorType__8GoalItemFi
/* 800EE994 000EB8F4  48 00 00 F0 */	b .L_800EEA84
.L_800EE998:
/* 800EE998 000EB8F8  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 800EE99C 000EB8FC  7F E3 FB 78 */	mr r3, r31
/* 800EE9A0 000EB900  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 800EE9A4 000EB904  4B FF F1 45 */	bl autoInit__8RopeItemFv
/* 800EE9A8 000EB908  48 00 00 DC */	b .L_800EEA84
.L_800EE9AC:
/* 800EE9AC 000EB90C  38 9D 00 24 */	addi r4, r29, 0x24
/* 800EE9B0 000EB910  80 84 00 00 */	lwz r4, 0(r4)
/* 800EE9B4 000EB914  38 7F 00 00 */	addi r3, r31, 0
/* 800EE9B8 000EB918  4B FF 59 D9 */	bl setColorType__7GemItemFi
/* 800EE9BC 000EB91C  48 00 00 C8 */	b .L_800EEA84
.L_800EE9C0:
/* 800EE9C0 000EB920  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 800EE9C4 000EB924  90 1F 04 40 */	stw r0, 0x440(r31)
/* 800EE9C8 000EB928  48 00 00 BC */	b .L_800EEA84
.L_800EE9CC:
/* 800EE9CC 000EB92C  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 800EE9D0 000EB930  3C 00 43 30 */	lis r0, 0x4330
/* 800EE9D4 000EB934  C8 42 9B A0 */	lfd f2, lbl_803E9DA0@sda21(r2)
/* 800EE9D8 000EB938  38 7F 00 00 */	addi r3, r31, 0
/* 800EE9DC 000EB93C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 800EE9E0 000EB940  90 81 00 7C */	stw r4, 0x7c(r1)
/* 800EE9E4 000EB944  C0 02 9B 90 */	lfs f0, lbl_803E9D90@sda21(r2)
/* 800EE9E8 000EB948  90 01 00 78 */	stw r0, 0x78(r1)
/* 800EE9EC 000EB94C  C8 21 00 78 */	lfd f1, 0x78(r1)
/* 800EE9F0 000EB950  90 81 00 84 */	stw r4, 0x84(r1)
/* 800EE9F4 000EB954  EC 21 10 28 */	fsubs f1, f1, f2
/* 800EE9F8 000EB958  90 01 00 80 */	stw r0, 0x80(r1)
/* 800EE9FC 000EB95C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EEA00 000EB960  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 800EEA04 000EB964  EC 20 10 28 */	fsubs f1, f0, f2
/* 800EEA08 000EB968  4C 40 13 82 */	cror 2, 0, 2
/* 800EEA0C 000EB96C  40 82 00 08 */	bne .L_800EEA14
/* 800EEA10 000EB970  C0 22 9B 94 */	lfs f1, lbl_803E9D94@sda21(r2)
.L_800EEA14:
/* 800EEA14 000EB974  38 9D 00 54 */	addi r4, r29, 0x54
/* 800EEA18 000EB978  80 84 00 00 */	lwz r4, 0(r4)
/* 800EEA1C 000EB97C  4B FF 64 F1 */	bl setSizeAndNum__7RockGenFfi
/* 800EEA20 000EB980  48 00 00 64 */	b .L_800EEA84
.L_800EEA24:
/* 800EEA24 000EB984  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 800EEA28 000EB988  3C 00 43 30 */	lis r0, 0x4330
/* 800EEA2C 000EB98C  C8 42 9B A0 */	lfd f2, lbl_803E9DA0@sda21(r2)
/* 800EEA30 000EB990  38 7F 00 00 */	addi r3, r31, 0
/* 800EEA34 000EB994  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 800EEA38 000EB998  90 81 00 84 */	stw r4, 0x84(r1)
/* 800EEA3C 000EB99C  C0 02 9B 90 */	lfs f0, lbl_803E9D90@sda21(r2)
/* 800EEA40 000EB9A0  90 01 00 80 */	stw r0, 0x80(r1)
/* 800EEA44 000EB9A4  C8 21 00 80 */	lfd f1, 0x80(r1)
/* 800EEA48 000EB9A8  90 81 00 7C */	stw r4, 0x7c(r1)
/* 800EEA4C 000EB9AC  EC 21 10 28 */	fsubs f1, f1, f2
/* 800EEA50 000EB9B0  90 01 00 78 */	stw r0, 0x78(r1)
/* 800EEA54 000EB9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EEA58 000EB9B8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 800EEA5C 000EB9BC  EC 20 10 28 */	fsubs f1, f0, f2
/* 800EEA60 000EB9C0  4C 40 13 82 */	cror 2, 0, 2
/* 800EEA64 000EB9C4  40 82 00 08 */	bne .L_800EEA6C
/* 800EEA68 000EB9C8  C0 22 9B 94 */	lfs f1, lbl_803E9D94@sda21(r2)
.L_800EEA6C:
/* 800EEA6C 000EB9CC  38 9D 00 54 */	addi r4, r29, 0x54
/* 800EEA70 000EB9D0  80 84 00 00 */	lwz r4, 0(r4)
/* 800EEA74 000EB9D4  4B FF 6B 6D */	bl setSizeAndNum__8GrassGenFfi
/* 800EEA78 000EB9D8  48 00 00 0C */	b .L_800EEA84
.L_800EEA7C:
/* 800EEA7C 000EB9DC  80 1D 00 54 */	lwz r0, 0x54(r29)
/* 800EEA80 000EB9E0  90 1F 03 C8 */	stw r0, 0x3c8(r31)
.L_800EEA84:
/* 800EEA84 000EB9E4  3C 60 80 3A */	lis r3, gameflow@ha
/* 800EEA88 000EB9E8  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 800EEA8C 000EB9EC  38 63 D7 B8 */	addi r3, r3, gameflow@l
/* 800EEA90 000EB9F0  80 DD 00 44 */	lwz r6, 0x44(r29)
/* 800EEA94 000EB9F4  C0 03 02 DC */	lfs f0, 0x2dc(r3)
/* 800EEA98 000EB9F8  7F E3 FB 78 */	mr r3, r31
/* 800EEA9C 000EB9FC  81 9F 00 00 */	lwz r12, 0(r31)
/* 800EEAA0 000EBA00  7F C4 F3 78 */	mr r4, r30
/* 800EEAA4 000EBA04  FC 00 00 1E */	fctiwz f0, f0
/* 800EEAA8 000EBA08  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800EEAAC 000EBA0C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 800EEAB0 000EBA10  7D 88 03 A6 */	mtlr r12
/* 800EEAB4 000EBA14  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 800EEAB8 000EBA18  7C 05 01 D6 */	mullw r0, r5, r0
/* 800EEABC 000EBA1C  7F 86 02 14 */	add r28, r6, r0
/* 800EEAC0 000EBA20  4E 80 00 21 */	blrl 
/* 800EEAC4 000EBA24  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 800EEAC8 000EBA28  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 800EEACC 000EBA2C  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 800EEAD0 000EBA30  3C 00 43 30 */	lis r0, 0x4330
/* 800EEAD4 000EBA34  90 61 00 84 */	stw r3, 0x84(r1)
/* 800EEAD8 000EBA38  7F E3 FB 78 */	mr r3, r31
/* 800EEADC 000EBA3C  90 9F 00 88 */	stw r4, 0x88(r31)
/* 800EEAE0 000EBA40  38 80 00 00 */	li r4, 0
/* 800EEAE4 000EBA44  90 BF 00 8C */	stw r5, 0x8c(r31)
/* 800EEAE8 000EBA48  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 800EEAEC 000EBA4C  90 01 00 80 */	stw r0, 0x80(r1)
/* 800EEAF0 000EBA50  90 BF 00 90 */	stw r5, 0x90(r31)
/* 800EEAF4 000EBA54  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 800EEAF8 000EBA58  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 800EEAFC 000EBA5C  D0 3F 00 A0 */	stfs f1, 0xa0(r31)
/* 800EEB00 000EBA60  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800EEB04 000EBA64  90 1F 00 64 */	stw r0, 0x64(r31)
/* 800EEB08 000EBA68  C8 22 9B A0 */	lfd f1, lbl_803E9DA0@sda21(r2)
/* 800EEB0C 000EBA6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800EEB10 000EBA70  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 800EEB14 000EBA74  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 800EEB18 000EBA78  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800EEB1C 000EBA7C  81 9F 00 00 */	lwz r12, 0(r31)
/* 800EEB20 000EBA80  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800EEB24 000EBA84  7D 88 03 A6 */	mtlr r12
/* 800EEB28 000EBA88  4E 80 00 21 */	blrl 
/* 800EEB2C 000EBA8C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800EEB30 000EBA90  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800EEB34 000EBA94  80 03 00 34 */	lwz r0, 0x34(r3)
/* 800EEB38 000EBA98  2C 00 00 00 */	cmpwi r0, 0
/* 800EEB3C 000EBA9C  41 82 00 10 */	beq .L_800EEB4C
/* 800EEB40 000EBAA0  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 800EEB44 000EBAA4  64 00 00 01 */	oris r0, r0, 1
/* 800EEB48 000EBAA8  90 1F 00 C8 */	stw r0, 0xc8(r31)
.L_800EEB4C:
/* 800EEB4C 000EBAAC  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 800EEB50 000EBAB0  38 81 00 64 */	addi r4, r1, 0x64
/* 800EEB54 000EBAB4  38 63 00 58 */	addi r3, r3, 0x58
/* 800EEB58 000EBAB8  4B F5 56 05 */	bl sprint__4ID32FPc
/* 800EEB5C 000EBABC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 800EEB60 000EBAC0  3C 03 89 D0 */	addis r0, r3, 0x89d0
/* 800EEB64 000EBAC4  28 00 2E 30 */	cmplwi r0, 0x2e30
/* 800EEB68 000EBAC8  41 82 00 20 */	beq .L_800EEB88
/* 800EEB6C 000EBACC  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 800EEB70 000EBAD0  2C 00 00 04 */	cmpwi r0, 4
/* 800EEB74 000EBAD4  40 82 00 14 */	bne .L_800EEB88
/* 800EEB78 000EBAD8  38 1D 00 5C */	addi r0, r29, 0x5c
/* 800EEB7C 000EBADC  90 1F 03 D0 */	stw r0, 0x3d0(r31)
/* 800EEB80 000EBAE0  38 1D 00 7C */	addi r0, r29, 0x7c
/* 800EEB84 000EBAE4  90 1F 03 D4 */	stw r0, 0x3d4(r31)
.L_800EEB88:
/* 800EEB88 000EBAE8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 800EEB8C 000EBAEC  2C 00 00 0D */	cmpwi r0, 0xd
/* 800EEB90 000EBAF0  40 82 00 20 */	bne .L_800EEBB0
/* 800EEB94 000EBAF4  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 800EEB98 000EBAF8  38 7F 00 40 */	addi r3, r31, 0x40
/* 800EEB9C 000EBAFC  38 9F 00 94 */	addi r4, r31, 0x94
/* 800EEBA0 000EBB00  7C 00 07 34 */	extsh r0, r0
/* 800EEBA4 000EBB04  B0 1F 03 CA */	sth r0, 0x3ca(r31)
/* 800EEBA8 000EBB08  B0 1F 03 C8 */	sth r0, 0x3c8(r31)
/* 800EEBAC 000EBB0C  4B FA 59 75 */	bl updateGrid__8FastGridFRC8Vector3f
.L_800EEBB0:
/* 800EEBB0 000EBB10  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 800EEBB4 000EBB14  2C 00 00 0F */	cmpwi r0, 0xf
/* 800EEBB8 000EBB18  40 82 01 14 */	bne .L_800EECCC
/* 800EEBBC 000EBB1C  83 CD 30 AC */	lwz r30, itemMgr@sda21(r13)
/* 800EEBC0 000EBB20  3B 60 00 00 */	li r27, 0
/* 800EEBC4 000EBB24  C3 E2 9B 98 */	lfs f31, lbl_803E9D98@sda21(r2)
/* 800EEBC8 000EBB28  7F C3 F3 78 */	mr r3, r30
/* 800EEBCC 000EBB2C  81 9E 00 00 */	lwz r12, 0(r30)
/* 800EEBD0 000EBB30  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800EEBD4 000EBB34  7D 88 03 A6 */	mtlr r12
/* 800EEBD8 000EBB38  4E 80 00 21 */	blrl 
/* 800EEBDC 000EBB3C  7C 7C 1B 78 */	mr r28, r3
/* 800EEBE0 000EBB40  48 00 00 8C */	b .L_800EEC6C
.L_800EEBE4:
/* 800EEBE4 000EBB44  2C 1C FF FF */	cmpwi r28, -1
/* 800EEBE8 000EBB48  40 82 00 24 */	bne .L_800EEC0C
/* 800EEBEC 000EBB4C  7F C3 F3 78 */	mr r3, r30
/* 800EEBF0 000EBB50  81 9E 00 00 */	lwz r12, 0(r30)
/* 800EEBF4 000EBB54  38 80 00 00 */	li r4, 0
/* 800EEBF8 000EBB58  81 8C 00 08 */	lwz r12, 8(r12)
/* 800EEBFC 000EBB5C  7D 88 03 A6 */	mtlr r12
/* 800EEC00 000EBB60  4E 80 00 21 */	blrl 
/* 800EEC04 000EBB64  7C 7D 1B 78 */	mr r29, r3
/* 800EEC08 000EBB68  48 00 00 20 */	b .L_800EEC28
.L_800EEC0C:
/* 800EEC0C 000EBB6C  7F C3 F3 78 */	mr r3, r30
/* 800EEC10 000EBB70  81 9E 00 00 */	lwz r12, 0(r30)
/* 800EEC14 000EBB74  7F 84 E3 78 */	mr r4, r28
/* 800EEC18 000EBB78  81 8C 00 08 */	lwz r12, 8(r12)
/* 800EEC1C 000EBB7C  7D 88 03 A6 */	mtlr r12
/* 800EEC20 000EBB80  4E 80 00 21 */	blrl 
/* 800EEC24 000EBB84  7C 7D 1B 78 */	mr r29, r3
.L_800EEC28:
/* 800EEC28 000EBB88  80 1D 00 6C */	lwz r0, 0x6c(r29)
/* 800EEC2C 000EBB8C  38 7D 00 00 */	addi r3, r29, 0
/* 800EEC30 000EBB90  2C 00 00 10 */	cmpwi r0, 0x10
/* 800EEC34 000EBB94  40 82 00 1C */	bne .L_800EEC50
/* 800EEC38 000EBB98  7F E4 FB 78 */	mr r4, r31
/* 800EEC3C 000EBB9C  4B F9 CE E5 */	bl sphereDist__FP8CreatureP8Creature
/* 800EEC40 000EBBA0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800EEC44 000EBBA4  40 80 00 0C */	bge .L_800EEC50
/* 800EEC48 000EBBA8  FF E0 08 90 */	fmr f31, f1
/* 800EEC4C 000EBBAC  7F BB EB 78 */	mr r27, r29
.L_800EEC50:
/* 800EEC50 000EBBB0  7F C3 F3 78 */	mr r3, r30
/* 800EEC54 000EBBB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 800EEC58 000EBBB8  7F 84 E3 78 */	mr r4, r28
/* 800EEC5C 000EBBBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800EEC60 000EBBC0  7D 88 03 A6 */	mtlr r12
/* 800EEC64 000EBBC4  4E 80 00 21 */	blrl 
/* 800EEC68 000EBBC8  7C 7C 1B 78 */	mr r28, r3
.L_800EEC6C:
/* 800EEC6C 000EBBCC  7F C3 F3 78 */	mr r3, r30
/* 800EEC70 000EBBD0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800EEC74 000EBBD4  7F 84 E3 78 */	mr r4, r28
/* 800EEC78 000EBBD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800EEC7C 000EBBDC  7D 88 03 A6 */	mtlr r12
/* 800EEC80 000EBBE0  4E 80 00 21 */	blrl 
/* 800EEC84 000EBBE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EEC88 000EBBE8  41 82 00 0C */	beq .L_800EEC94
/* 800EEC8C 000EBBEC  38 00 00 01 */	li r0, 1
/* 800EEC90 000EBBF0  48 00 00 30 */	b .L_800EECC0
.L_800EEC94:
/* 800EEC94 000EBBF4  7F C3 F3 78 */	mr r3, r30
/* 800EEC98 000EBBF8  81 9E 00 00 */	lwz r12, 0(r30)
/* 800EEC9C 000EBBFC  7F 84 E3 78 */	mr r4, r28
/* 800EECA0 000EBC00  81 8C 00 08 */	lwz r12, 8(r12)
/* 800EECA4 000EBC04  7D 88 03 A6 */	mtlr r12
/* 800EECA8 000EBC08  4E 80 00 21 */	blrl 
/* 800EECAC 000EBC0C  28 03 00 00 */	cmplwi r3, 0
/* 800EECB0 000EBC10  40 82 00 0C */	bne .L_800EECBC
/* 800EECB4 000EBC14  38 00 00 01 */	li r0, 1
/* 800EECB8 000EBC18  48 00 00 08 */	b .L_800EECC0
.L_800EECBC:
/* 800EECBC 000EBC1C  38 00 00 00 */	li r0, 0
.L_800EECC0:
/* 800EECC0 000EBC20  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800EECC4 000EBC24  41 82 FF 20 */	beq .L_800EEBE4
/* 800EECC8 000EBC28  93 7F 03 E0 */	stw r27, 0x3e0(r31)
.L_800EECCC:
/* 800EECCC 000EBC2C  7F E3 FB 78 */	mr r3, r31
.L_800EECD0:
/* 800EECD0 000EBC30  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 800EECD4 000EBC34  80 01 00 AC */	lwz r0, 0xac(r1)
/* 800EECD8 000EBC38  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800EECDC 000EBC3C  38 21 00 A8 */	addi r1, r1, 0xa8
/* 800EECE0 000EBC40  7C 08 03 A6 */	mtlr r0
/* 800EECE4 000EBC44  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802BD798:
	.asciz "genItem.cpp"
.balign 4
lbl_802BD7A4:
	.asciz "object type"
.balign 4
lbl_802BD7B0:
	.4byte 0x83418343
	.4byte 0x83658380
	.4byte 0x82F090B6
	.4byte 0x82DE0000
lbl_802BD7C0:
	.4byte 0x83418343
	.4byte 0x83658380
	.4byte 0x82F094AD
	.4byte 0x90B60000
lbl_802BD7D0:
	.4byte .L_800EE9AC
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EE984
	.4byte .L_800EEA84
	.4byte .L_800EE998
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EE9C0
	.4byte .L_800EE9C0
	.4byte .L_800EE9C0
	.4byte .L_800EE9C0
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EEA84
	.4byte .L_800EEA7C
	.4byte .L_800EEA84
	.4byte .L_800EE9CC
	.4byte .L_800EEA24
.balign 4
lbl_802BD82C:
	.asciz "GenObjectItem"
.balign 4
lbl_802BD83C:
	.asciz "Parameters"
.balign 4
lbl_802BD848:
	.4byte __RTTI__10Parameters
	.4byte 0x00000000
	.4byte 0x00000000
.balign 4
lbl_802BD854:
	.asciz "GenObject"
.balign 4
lbl_802BD860:
	.4byte __RTTI__10Parameters
	.4byte 0x00000000
	.4byte __RTTI__7GenBase
	.4byte 0x00000000
	.4byte 0x00000000
lbl_802BD874:
	.4byte __RTTI__10Parameters
	.4byte 0x00000000
	.4byte __RTTI__7GenBase
	.4byte 0x00000000
	.4byte __RTTI__9GenObject
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
.balign 4
lbl_802BD8C8:
	.asciz "Parm<int>"
.balign 4
lbl_802BD8D4:
	.asciz "BaseParm"
.balign 4
lbl_802BD8E0:
	.4byte __RTTI__8BaseParm
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
lbl_803E1A58:
	.asciz "p00"
.balign 4
lbl_803E1A5C:
	.asciz "p01"
.balign 4
lbl_803E1A60:
	.asciz "p02"
.balign 4
lbl_803E1A64:
	.asciz "p03"
.balign 4
lbl_803E1A68:
	.asciz " "
.balign 4
__RTTI__10Parameters:
	.4byte lbl_802BD83C
	.4byte 0
.balign 4
lbl_803E1A74:
	.asciz "GenBase"
.balign 4
__RTTI__7GenBase:
	.4byte lbl_803E1A74
	.4byte lbl_802BD848
__RTTI__9GenObject:
	.4byte lbl_802BD854
	.4byte lbl_802BD860
__RTTI__13GenObjectItem:
	.4byte lbl_802BD82C
	.4byte lbl_802BD874
__RTTI__8BaseParm:
	.4byte lbl_802BD8D4
	.4byte 0

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803E9D90:
	.float 0.0
lbl_803E9D94:
	.float 30.0
lbl_803E9D98:
	.float 12800.0
.balign 8
lbl_803E9DA0:
	.4byte 0x43300000
	.4byte 0x80000000
