.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__5SeMgrFv
__ct__5SeMgrFv:
/* 800A3428 000A0388  7C 08 02 A6 */	mflr r0
/* 800A342C 000A038C  3C 80 80 22 */	lis r4, __vt__5ANode@ha
/* 800A3430 000A0390  90 01 00 04 */	stw r0, 4(r1)
/* 800A3434 000A0394  38 04 73 8C */	addi r0, r4, __vt__5ANode@l
/* 800A3438 000A0398  3C 80 80 2B */	lis r4, lbl_802B1B70@ha
/* 800A343C 000A039C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3440 000A03A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A3444 000A03A4  3B E0 00 00 */	li r31, 0
/* 800A3448 000A03A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A344C 000A03AC  3B C4 1B 70 */	addi r30, r4, lbl_802B1B70@l
/* 800A3450 000A03B0  38 8D AC 80 */	addi r4, r13, lbl_803DF9A0@sda21
/* 800A3454 000A03B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A3458 000A03B8  3B A3 00 00 */	addi r29, r3, 0
/* 800A345C 000A03BC  3C 60 80 22 */	lis r3, __vt__8CoreNode@ha
/* 800A3460 000A03C0  90 1D 00 00 */	stw r0, 0(r29)
/* 800A3464 000A03C4  38 03 73 7C */	addi r0, r3, __vt__8CoreNode@l
/* 800A3468 000A03C8  38 7D 00 00 */	addi r3, r29, 0
/* 800A346C 000A03CC  90 1D 00 00 */	stw r0, 0(r29)
/* 800A3470 000A03D0  93 FD 00 10 */	stw r31, 0x10(r29)
/* 800A3474 000A03D4  93 FD 00 0C */	stw r31, 0xc(r29)
/* 800A3478 000A03D8  93 FD 00 08 */	stw r31, 8(r29)
/* 800A347C 000A03DC  4B F8 1A 59 */	bl setName__8CoreNodeFPc
/* 800A3480 000A03E0  3C 60 80 23 */	lis r3, __vt__4Node@ha
/* 800A3484 000A03E4  38 03 8E 20 */	addi r0, r3, __vt__4Node@l
/* 800A3488 000A03E8  90 1D 00 00 */	stw r0, 0(r29)
/* 800A348C 000A03EC  38 7D 00 00 */	addi r3, r29, 0
/* 800A3490 000A03F0  38 8D AC 80 */	addi r4, r13, lbl_803DF9A0@sda21
/* 800A3494 000A03F4  4B F9 D2 A9 */	bl init__4NodeFPc
/* 800A3498 000A03F8  3C 60 80 2B */	lis r3, __vt__5SeMgr@ha
/* 800A349C 000A03FC  38 03 1C C4 */	addi r0, r3, __vt__5SeMgr@l
/* 800A34A0 000A0400  90 1D 00 00 */	stw r0, 0(r29)
/* 800A34A4 000A0404  38 00 00 80 */	li r0, 0x80
/* 800A34A8 000A0408  93 FD 00 20 */	stw r31, 0x20(r29)
/* 800A34AC 000A040C  93 FD 00 24 */	stw r31, 0x24(r29)
/* 800A34B0 000A0410  90 1D 00 28 */	stw r0, 0x28(r29)
/* 800A34B4 000A0414  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 800A34B8 000A0418  54 03 18 38 */	slwi r3, r0, 3
/* 800A34BC 000A041C  4B FA 3B 49 */	bl alloc__6SystemFUl
/* 800A34C0 000A0420  90 7D 00 2C */	stw r3, 0x2c(r29)
/* 800A34C4 000A0424  38 7D 00 00 */	addi r3, r29, 0
/* 800A34C8 000A0428  38 80 00 07 */	li r4, 7
/* 800A34CC 000A042C  38 AD AC 88 */	addi r5, r13, lbl_803DF9A8@sda21
/* 800A34D0 000A0430  48 00 01 01 */	bl addInfo__5SeMgrFiPc
/* 800A34D4 000A0434  38 7D 00 00 */	addi r3, r29, 0
/* 800A34D8 000A0438  38 80 00 08 */	li r4, 8
/* 800A34DC 000A043C  38 AD AC 90 */	addi r5, r13, lbl_803DF9B0@sda21
/* 800A34E0 000A0440  48 00 00 F1 */	bl addInfo__5SeMgrFiPc
/* 800A34E4 000A0444  38 7D 00 00 */	addi r3, r29, 0
/* 800A34E8 000A0448  38 80 00 06 */	li r4, 6
/* 800A34EC 000A044C  38 AD AC 98 */	addi r5, r13, lbl_803DF9B8@sda21
/* 800A34F0 000A0450  48 00 00 E1 */	bl addInfo__5SeMgrFiPc
/* 800A34F4 000A0454  38 7D 00 00 */	addi r3, r29, 0
/* 800A34F8 000A0458  38 BE 00 0C */	addi r5, r30, 0xc
/* 800A34FC 000A045C  38 80 00 00 */	li r4, 0
/* 800A3500 000A0460  48 00 00 D1 */	bl addInfo__5SeMgrFiPc
/* 800A3504 000A0464  3F E0 00 01 */	lis r31, 0x00008002@ha
/* 800A3508 000A0468  38 7D 00 00 */	addi r3, r29, 0
/* 800A350C 000A046C  38 9F 80 02 */	addi r4, r31, 0x00008002@l
/* 800A3510 000A0470  38 BE 00 18 */	addi r5, r30, 0x18
/* 800A3514 000A0474  48 00 00 BD */	bl addInfo__5SeMgrFiPc
/* 800A3518 000A0478  38 7D 00 00 */	addi r3, r29, 0
/* 800A351C 000A047C  38 BE 00 24 */	addi r5, r30, 0x24
/* 800A3520 000A0480  38 80 00 03 */	li r4, 3
/* 800A3524 000A0484  48 00 00 AD */	bl addInfo__5SeMgrFiPc
/* 800A3528 000A0488  38 7D 00 00 */	addi r3, r29, 0
/* 800A352C 000A048C  38 9F 80 07 */	addi r4, r31, -32761
/* 800A3530 000A0490  38 BE 00 34 */	addi r5, r30, 0x34
/* 800A3534 000A0494  48 00 00 9D */	bl addInfo__5SeMgrFiPc
/* 800A3538 000A0498  38 7D 00 00 */	addi r3, r29, 0
/* 800A353C 000A049C  38 9F 80 03 */	addi r4, r31, -32765
/* 800A3540 000A04A0  38 BE 00 40 */	addi r5, r30, 0x40
/* 800A3544 000A04A4  48 00 00 8D */	bl addInfo__5SeMgrFiPc
/* 800A3548 000A04A8  38 7D 00 00 */	addi r3, r29, 0
/* 800A354C 000A04AC  38 BE 00 54 */	addi r5, r30, 0x54
/* 800A3550 000A04B0  38 80 00 02 */	li r4, 2
/* 800A3554 000A04B4  48 00 00 7D */	bl addInfo__5SeMgrFiPc
/* 800A3558 000A04B8  38 7D 00 00 */	addi r3, r29, 0
/* 800A355C 000A04BC  38 9F 80 06 */	addi r4, r31, -32762
/* 800A3560 000A04C0  38 BE 00 60 */	addi r5, r30, 0x60
/* 800A3564 000A04C4  48 00 00 6D */	bl addInfo__5SeMgrFiPc
/* 800A3568 000A04C8  38 7D 00 00 */	addi r3, r29, 0
/* 800A356C 000A04CC  38 9F 80 04 */	addi r4, r31, -32764
/* 800A3570 000A04D0  38 BE 00 6C */	addi r5, r30, 0x6c
/* 800A3574 000A04D4  48 00 00 5D */	bl addInfo__5SeMgrFiPc
/* 800A3578 000A04D8  38 7D 00 00 */	addi r3, r29, 0
/* 800A357C 000A04DC  38 9F 80 05 */	addi r4, r31, -32763
/* 800A3580 000A04E0  38 BE 00 7C */	addi r5, r30, 0x7c
/* 800A3584 000A04E4  48 00 00 4D */	bl addInfo__5SeMgrFiPc
/* 800A3588 000A04E8  7F A3 EB 78 */	mr r3, r29
/* 800A358C 000A04EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3590 000A04F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3594 000A04F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A3598 000A04F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A359C 000A04FC  38 21 00 20 */	addi r1, r1, 0x20
/* 800A35A0 000A0500  7C 08 03 A6 */	mtlr r0
/* 800A35A4 000A0504  4E 80 00 20 */	blr 

.global playNaviSound__5SeMgrFll
playNaviSound__5SeMgrFll:
/* 800A35A8 000A0508  7C 08 02 A6 */	mflr r0
/* 800A35AC 000A050C  38 64 00 00 */	addi r3, r4, 0
/* 800A35B0 000A0510  90 01 00 04 */	stw r0, 4(r1)
/* 800A35B4 000A0514  38 85 00 00 */	addi r4, r5, 0
/* 800A35B8 000A0518  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A35BC 000A051C  4B F7 4C 45 */	bl Jac_Orima_Formation
/* 800A35C0 000A0520  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A35C4 000A0524  38 21 00 08 */	addi r1, r1, 8
/* 800A35C8 000A0528  7C 08 03 A6 */	mtlr r0
/* 800A35CC 000A052C  4E 80 00 20 */	blr 

.global addInfo__5SeMgrFiPc
addInfo__5SeMgrFiPc:
/* 800A35D0 000A0530  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800A35D4 000A0534  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 800A35D8 000A0538  54 00 18 38 */	slwi r0, r0, 3
/* 800A35DC 000A053C  7C 86 01 2E */	stwx r4, r6, r0
/* 800A35E0 000A0540  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800A35E4 000A0544  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 800A35E8 000A0548  54 00 18 38 */	slwi r0, r0, 3
/* 800A35EC 000A054C  7C 84 02 14 */	add r4, r4, r0
/* 800A35F0 000A0550  90 A4 00 04 */	stw r5, 4(r4)
/* 800A35F4 000A0554  80 83 00 24 */	lwz r4, 0x24(r3)
/* 800A35F8 000A0558  38 04 00 01 */	addi r0, r4, 1
/* 800A35FC 000A055C  90 03 00 24 */	stw r0, 0x24(r3)
/* 800A3600 000A0560  4E 80 00 20 */	blr 

.global update__5SeMgrFv
update__5SeMgrFv:
/* 800A3604 000A0564  4E 80 00 20 */	blr 

.global joinBattle__5SeMgrFv
joinBattle__5SeMgrFv:
/* 800A3608 000A0568  80 83 00 20 */	lwz r4, 0x20(r3)
/* 800A360C 000A056C  38 04 00 01 */	addi r0, r4, 1
/* 800A3610 000A0570  90 03 00 20 */	stw r0, 0x20(r3)
/* 800A3614 000A0574  4E 80 00 20 */	blr 

.global leaveBattle__5SeMgrFv
leaveBattle__5SeMgrFv:
/* 800A3618 000A0578  80 83 00 20 */	lwz r4, 0x20(r3)
/* 800A361C 000A057C  38 04 FF FF */	addi r0, r4, -1
/* 800A3620 000A0580  90 03 00 20 */	stw r0, 0x20(r3)
/* 800A3624 000A0584  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800A3628 000A0588  2C 00 00 00 */	cmpwi r0, 0
/* 800A362C 000A058C  4D 81 00 20 */	bgtlr 
/* 800A3630 000A0590  38 00 00 00 */	li r0, 0
/* 800A3634 000A0594  90 03 00 20 */	stw r0, 0x20(r3)
/* 800A3638 000A0598  4E 80 00 20 */	blr 

.global setPikiNum__5SeMgrFi
setPikiNum__5SeMgrFi:
/* 800A363C 000A059C  7C 08 02 A6 */	mflr r0
/* 800A3640 000A05A0  2C 04 00 00 */	cmpwi r4, 0
/* 800A3644 000A05A4  90 01 00 04 */	stw r0, 4(r1)
/* 800A3648 000A05A8  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A364C 000A05AC  40 82 00 10 */	bne lbl_800A365C
/* 800A3650 000A05B0  38 60 00 00 */	li r3, 0
/* 800A3654 000A05B4  4B F7 50 ED */	bl Jac_Piki_Number
/* 800A3658 000A05B8  48 00 00 0C */	b lbl_800A3664
lbl_800A365C:
/* 800A365C 000A05BC  7C 83 23 78 */	mr r3, r4
/* 800A3660 000A05C0  4B F7 50 E1 */	bl Jac_Piki_Number
lbl_800A3664:
/* 800A3664 000A05C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A3668 000A05C8  38 21 00 08 */	addi r1, r1, 8
/* 800A366C 000A05CC  7C 08 03 A6 */	mtlr r0
/* 800A3670 000A05D0  4E 80 00 20 */	blr 

.global doRender__5SeWinFR8Graphics
doRender__5SeWinFR8Graphics:
/* 800A3674 000A05D4  7C 08 02 A6 */	mflr r0
/* 800A3678 000A05D8  90 01 00 04 */	stw r0, 4(r1)
/* 800A367C 000A05DC  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 800A3680 000A05E0  93 E1 00 64 */	stw r31, 0x64(r1)
/* 800A3684 000A05E4  7C 9F 23 78 */	mr r31, r4
/* 800A3688 000A05E8  93 C1 00 60 */	stw r30, 0x60(r1)
/* 800A368C 000A05EC  7C 7E 1B 78 */	mr r30, r3
/* 800A3690 000A05F0  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A3694 000A05F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800A3698 000A05F8  7D 88 03 A6 */	mtlr r12
/* 800A369C 000A05FC  4E 80 00 21 */	blrl 
/* 800A36A0 000A0600  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A36A4 000A0604  3C 80 80 2B */	lis r4, lbl_802B1BF8@ha
/* 800A36A8 000A0608  38 C4 1B F8 */	addi r6, r4, lbl_802B1BF8@l
/* 800A36AC 000A060C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800A36B0 000A0610  7F C3 F3 78 */	mr r3, r30
/* 800A36B4 000A0614  38 9F 00 00 */	addi r4, r31, 0
/* 800A36B8 000A0618  7D 88 03 A6 */	mtlr r12
/* 800A36BC 000A061C  38 A0 00 20 */	li r5, 0x20
/* 800A36C0 000A0620  4E 80 00 21 */	blrl 
/* 800A36C4 000A0624  80 BE 00 4C */	lwz r5, 0x4c(r30)
/* 800A36C8 000A0628  38 61 00 20 */	addi r3, r1, 0x20
/* 800A36CC 000A062C  4C C6 31 82 */	crclr 6
/* 800A36D0 000A0630  38 8D AC A0 */	addi r4, r13, lbl_803DF9C0@sda21
/* 800A36D4 000A0634  48 17 2E C5 */	bl sprintf
/* 800A36D8 000A0638  7F C3 F3 78 */	mr r3, r30
/* 800A36DC 000A063C  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A36E0 000A0640  38 9F 00 00 */	addi r4, r31, 0
/* 800A36E4 000A0644  38 C1 00 20 */	addi r6, r1, 0x20
/* 800A36E8 000A0648  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800A36EC 000A064C  38 A0 00 50 */	li r5, 0x50
/* 800A36F0 000A0650  7D 88 03 A6 */	mtlr r12
/* 800A36F4 000A0654  4E 80 00 21 */	blrl 
/* 800A36F8 000A0658  80 8D 30 30 */	lwz r4, seMgr@sda21(r13)
/* 800A36FC 000A065C  38 61 00 20 */	addi r3, r1, 0x20
/* 800A3700 000A0660  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 800A3704 000A0664  4C C6 31 82 */	crclr 6
/* 800A3708 000A0668  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 800A370C 000A066C  54 00 18 38 */	slwi r0, r0, 3
/* 800A3710 000A0670  7C 84 02 14 */	add r4, r4, r0
/* 800A3714 000A0674  80 A4 00 04 */	lwz r5, 4(r4)
/* 800A3718 000A0678  38 8D AC A8 */	addi r4, r13, lbl_803DF9C8@sda21
/* 800A371C 000A067C  48 17 2E 7D */	bl sprintf
/* 800A3720 000A0680  7F C3 F3 78 */	mr r3, r30
/* 800A3724 000A0684  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A3728 000A0688  38 9F 00 00 */	addi r4, r31, 0
/* 800A372C 000A068C  38 C1 00 20 */	addi r6, r1, 0x20
/* 800A3730 000A0690  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800A3734 000A0694  38 A0 00 8C */	li r5, 0x8c
/* 800A3738 000A0698  7D 88 03 A6 */	mtlr r12
/* 800A373C 000A069C  4E 80 00 21 */	blrl 
/* 800A3740 000A06A0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 800A3744 000A06A4  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 800A3748 000A06A8  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 800A374C 000A06AC  38 21 00 68 */	addi r1, r1, 0x68
/* 800A3750 000A06B0  7C 08 03 A6 */	mtlr r0
/* 800A3754 000A06B4  4E 80 00 20 */	blr 

.global update__5SeWinFv
update__5SeWinFv:
/* 800A3758 000A06B8  7C 08 02 A6 */	mflr r0
/* 800A375C 000A06BC  90 01 00 04 */	stw r0, 4(r1)
/* 800A3760 000A06C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800A3764 000A06C4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800A3768 000A06C8  7C 7F 1B 78 */	mr r31, r3
/* 800A376C 000A06CC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800A3770 000A06D0  2C 00 10 01 */	cmpwi r0, 0x1001
/* 800A3774 000A06D4  41 82 00 A0 */	beq lbl_800A3814
/* 800A3778 000A06D8  40 80 00 10 */	bge lbl_800A3788
/* 800A377C 000A06DC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 800A3780 000A06E0  40 80 00 14 */	bge lbl_800A3794
/* 800A3784 000A06E4  48 00 02 A4 */	b lbl_800A3A28
lbl_800A3788:
/* 800A3788 000A06E8  2C 00 10 03 */	cmpwi r0, 0x1003
/* 800A378C 000A06EC  40 80 02 9C */	bge lbl_800A3A28
/* 800A3790 000A06F0  48 00 00 54 */	b lbl_800A37E4
lbl_800A3794:
/* 800A3794 000A06F4  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 800A3798 000A06F8  38 03 FF FF */	addi r0, r3, -1
/* 800A379C 000A06FC  90 1F 00 54 */	stw r0, 0x54(r31)
/* 800A37A0 000A0700  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800A37A4 000A0704  38 03 00 20 */	addi r0, r3, 0x20
/* 800A37A8 000A0708  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800A37AC 000A070C  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 800A37B0 000A0710  2C 00 00 00 */	cmpwi r0, 0
/* 800A37B4 000A0714  40 82 00 0C */	bne lbl_800A37C0
/* 800A37B8 000A0718  38 00 10 01 */	li r0, 0x1001
/* 800A37BC 000A071C  90 1F 00 28 */	stw r0, 0x28(r31)
lbl_800A37C0:
/* 800A37C0 000A0720  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A37C4 000A0724  4B F9 D3 11 */	bl getMainStickY__10ControllerFv
/* 800A37C8 000A0728  FC 20 0A 10 */	fabs f1, f1
/* 800A37CC 000A072C  C0 02 8D 70 */	lfs f0, lbl_803E8F70@sda21(r2)
/* 800A37D0 000A0730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A37D4 000A0734  40 81 02 54 */	ble lbl_800A3A28
/* 800A37D8 000A0738  38 00 00 01 */	li r0, 1
/* 800A37DC 000A073C  98 1F 00 60 */	stb r0, 0x60(r31)
/* 800A37E0 000A0740  48 00 02 48 */	b lbl_800A3A28
lbl_800A37E4:
/* 800A37E4 000A0744  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 800A37E8 000A0748  38 03 FF FF */	addi r0, r3, -1
/* 800A37EC 000A074C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 800A37F0 000A0750  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800A37F4 000A0754  38 03 00 20 */	addi r0, r3, 0x20
/* 800A37F8 000A0758  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800A37FC 000A075C  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 800A3800 000A0760  2C 00 00 00 */	cmpwi r0, 0
/* 800A3804 000A0764  40 82 02 24 */	bne lbl_800A3A28
/* 800A3808 000A0768  38 00 10 03 */	li r0, 0x1003
/* 800A380C 000A076C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 800A3810 000A0770  48 00 02 18 */	b lbl_800A3A28
lbl_800A3814:
/* 800A3814 000A0774  88 1F 00 60 */	lbz r0, 0x60(r31)
/* 800A3818 000A0778  28 00 00 00 */	cmplwi r0, 0
/* 800A381C 000A077C  41 82 00 24 */	beq lbl_800A3840
/* 800A3820 000A0780  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A3824 000A0784  4B F9 D2 B1 */	bl getMainStickY__10ControllerFv
/* 800A3828 000A0788  FC 20 0A 10 */	fabs f1, f1
/* 800A382C 000A078C  C0 02 8D 70 */	lfs f0, lbl_803E8F70@sda21(r2)
/* 800A3830 000A0790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3834 000A0794  41 81 01 F4 */	bgt lbl_800A3A28
/* 800A3838 000A0798  38 00 00 00 */	li r0, 0
/* 800A383C 000A079C  98 1F 00 60 */	stb r0, 0x60(r31)
lbl_800A3840:
/* 800A3840 000A07A0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A3844 000A07A4  4B F9 D2 91 */	bl getMainStickY__10ControllerFv
/* 800A3848 000A07A8  C0 02 8D 70 */	lfs f0, lbl_803E8F70@sda21(r2)
/* 800A384C 000A07AC  38 A0 00 01 */	li r5, 1
/* 800A3850 000A07B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3854 000A07B4  40 81 00 78 */	ble lbl_800A38CC
/* 800A3858 000A07B8  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 800A385C 000A07BC  2C 00 00 00 */	cmpwi r0, 0
/* 800A3860 000A07C0  41 81 00 10 */	bgt lbl_800A3870
/* 800A3864 000A07C4  C0 02 8D 74 */	lfs f0, lbl_803E8F74@sda21(r2)
/* 800A3868 000A07C8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800A386C 000A07CC  48 00 00 18 */	b lbl_800A3884
lbl_800A3870:
/* 800A3870 000A07D0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800A3874 000A07D4  C0 02 8D 78 */	lfs f0, lbl_803E8F78@sda21(r2)
/* 800A3878 000A07D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A387C 000A07DC  40 80 00 08 */	bge lbl_800A3884
/* 800A3880 000A07E0  38 A0 00 00 */	li r5, 0
lbl_800A3884:
/* 800A3884 000A07E4  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 800A3888 000A07E8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800A388C 000A07EC  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 800A3890 000A07F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800A3894 000A07F4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800A3898 000A07F8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800A389C 000A07FC  C0 02 8D 7C */	lfs f0, lbl_803E8F7C@sda21(r2)
/* 800A38A0 000A0800  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A38A4 000A0804  40 81 00 1C */	ble lbl_800A38C0
/* 800A38A8 000A0808  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 800A38AC 000A080C  2C 03 00 06 */	cmpwi r3, 6
/* 800A38B0 000A0810  40 80 00 AC */	bge lbl_800A395C
/* 800A38B4 000A0814  38 03 00 01 */	addi r0, r3, 1
/* 800A38B8 000A0818  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800A38BC 000A081C  48 00 00 A0 */	b lbl_800A395C
lbl_800A38C0:
/* 800A38C0 000A0820  38 00 00 01 */	li r0, 1
/* 800A38C4 000A0824  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800A38C8 000A0828  48 00 00 94 */	b lbl_800A395C
lbl_800A38CC:
/* 800A38CC 000A082C  C0 02 8D 80 */	lfs f0, lbl_803E8F80@sda21(r2)
/* 800A38D0 000A0830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A38D4 000A0834  40 80 00 78 */	bge lbl_800A394C
/* 800A38D8 000A0838  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 800A38DC 000A083C  2C 00 00 00 */	cmpwi r0, 0
/* 800A38E0 000A0840  41 80 00 10 */	blt lbl_800A38F0
/* 800A38E4 000A0844  C0 02 8D 74 */	lfs f0, lbl_803E8F74@sda21(r2)
/* 800A38E8 000A0848  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800A38EC 000A084C  48 00 00 18 */	b lbl_800A3904
lbl_800A38F0:
/* 800A38F0 000A0850  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800A38F4 000A0854  C0 02 8D 78 */	lfs f0, lbl_803E8F78@sda21(r2)
/* 800A38F8 000A0858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A38FC 000A085C  40 80 00 08 */	bge lbl_800A3904
/* 800A3900 000A0860  38 A0 00 00 */	li r5, 0
lbl_800A3904:
/* 800A3904 000A0864  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 800A3908 000A0868  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800A390C 000A086C  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 800A3910 000A0870  EC 01 00 2A */	fadds f0, f1, f0
/* 800A3914 000A0874  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800A3918 000A0878  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 800A391C 000A087C  C0 02 8D 7C */	lfs f0, lbl_803E8F7C@sda21(r2)
/* 800A3920 000A0880  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A3924 000A0884  40 81 00 1C */	ble lbl_800A3940
/* 800A3928 000A0888  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 800A392C 000A088C  2C 03 FF FA */	cmpwi r3, -6
/* 800A3930 000A0890  40 81 00 2C */	ble lbl_800A395C
/* 800A3934 000A0894  38 03 FF FF */	addi r0, r3, -1
/* 800A3938 000A0898  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800A393C 000A089C  48 00 00 20 */	b lbl_800A395C
lbl_800A3940:
/* 800A3940 000A08A0  38 00 FF FF */	li r0, -1
/* 800A3944 000A08A4  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800A3948 000A08A8  48 00 00 14 */	b lbl_800A395C
lbl_800A394C:
/* 800A394C 000A08AC  38 00 00 00 */	li r0, 0
/* 800A3950 000A08B0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800A3954 000A08B4  C0 02 8D 74 */	lfs f0, lbl_803E8F74@sda21(r2)
/* 800A3958 000A08B8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_800A395C:
/* 800A395C 000A08BC  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 800A3960 000A08C0  2C 04 00 00 */	cmpwi r4, 0
/* 800A3964 000A08C4  41 82 00 60 */	beq lbl_800A39C4
/* 800A3968 000A08C8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800A396C 000A08CC  41 82 00 58 */	beq lbl_800A39C4
/* 800A3970 000A08D0  2C 04 00 00 */	cmpwi r4, 0
/* 800A3974 000A08D4  40 81 00 34 */	ble lbl_800A39A8
/* 800A3978 000A08D8  80 6D 30 30 */	lwz r3, seMgr@sda21(r13)
/* 800A397C 000A08DC  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 800A3980 000A08E0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 800A3984 000A08E4  7C 04 2A 14 */	add r0, r4, r5
/* 800A3988 000A08E8  7C 00 18 00 */	cmpw r0, r3
/* 800A398C 000A08EC  41 80 00 0C */	blt lbl_800A3998
/* 800A3990 000A08F0  7C 65 18 50 */	subf r3, r5, r3
/* 800A3994 000A08F4  38 83 FF FF */	addi r4, r3, -1
lbl_800A3998:
/* 800A3998 000A08F8  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 800A399C 000A08FC  7C 00 22 14 */	add r0, r0, r4
/* 800A39A0 000A0900  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800A39A4 000A0904  48 00 00 20 */	b lbl_800A39C4
lbl_800A39A8:
/* 800A39A8 000A0908  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 800A39AC 000A090C  7C 04 02 15 */	add. r0, r4, r0
/* 800A39B0 000A0910  40 80 00 08 */	bge lbl_800A39B8
/* 800A39B4 000A0914  38 80 00 00 */	li r4, 0
lbl_800A39B8:
/* 800A39B8 000A0918  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 800A39BC 000A091C  7C 00 22 14 */	add r0, r0, r4
/* 800A39C0 000A0920  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_800A39C4:
/* 800A39C4 000A0924  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 800A39C8 000A0928  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800A39CC 000A092C  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800A39D0 000A0930  41 82 00 2C */	beq lbl_800A39FC
/* 800A39D4 000A0934  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 800A39D8 000A0938  4B F7 31 09 */	bl Jac_StopSe
/* 800A39DC 000A093C  80 6D 30 30 */	lwz r3, seMgr@sda21(r13)
/* 800A39E0 000A0940  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 800A39E4 000A0944  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 800A39E8 000A0948  54 00 18 38 */	slwi r0, r0, 3
/* 800A39EC 000A094C  7C 63 02 14 */	add r3, r3, r0
/* 800A39F0 000A0950  80 03 00 00 */	lwz r0, 0(r3)
/* 800A39F4 000A0954  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800A39F8 000A0958  48 00 00 30 */	b lbl_800A3A28
lbl_800A39FC:
/* 800A39FC 000A095C  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 800A3A00 000A0960  40 82 00 0C */	bne lbl_800A3A0C
/* 800A3A04 000A0964  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 800A3A08 000A0968  41 82 00 20 */	beq lbl_800A3A28
lbl_800A3A0C:
/* 800A3A0C 000A096C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 800A3A10 000A0970  4B F7 30 D1 */	bl Jac_StopSe
/* 800A3A14 000A0974  7F E3 FB 78 */	mr r3, r31
/* 800A3A18 000A0978  81 9F 00 00 */	lwz r12, 0(r31)
/* 800A3A1C 000A097C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800A3A20 000A0980  7D 88 03 A6 */	mtlr r12
/* 800A3A24 000A0984  4E 80 00 21 */	blrl 
lbl_800A3A28:
/* 800A3A28 000A0988  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800A3A2C 000A098C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800A3A30 000A0990  38 21 00 70 */	addi r1, r1, 0x70
/* 800A3A34 000A0994  7C 08 03 A6 */	mtlr r0
/* 800A3A38 000A0998  4E 80 00 20 */	blr 

.global open__5SeWinFv
open__5SeWinFv:
/* 800A3A3C 000A099C  7C 08 02 A6 */	mflr r0
/* 800A3A40 000A09A0  90 01 00 04 */	stw r0, 4(r1)
/* 800A3A44 000A09A4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A3A48 000A09A8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A3A4C 000A09AC  7C 7F 1B 78 */	mr r31, r3
/* 800A3A50 000A09B0  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800A3A54 000A09B4  2C 00 10 00 */	cmpwi r0, 0x1000
/* 800A3A58 000A09B8  41 82 00 4C */	beq lbl_800A3AA4
/* 800A3A5C 000A09BC  7F E3 FB 78 */	mr r3, r31
/* 800A3A60 000A09C0  48 06 E5 A9 */	bl placeCentre__5GmWinFv
/* 800A3A64 000A09C4  7F E3 FB 78 */	mr r3, r31
/* 800A3A68 000A09C8  48 06 E3 AD */	bl open__5GmWinFv
/* 800A3A6C 000A09CC  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 800A3A70 000A09D0  38 60 FF 88 */	li r3, -120
/* 800A3A74 000A09D4  38 00 00 00 */	li r0, 0
/* 800A3A78 000A09D8  38 84 00 78 */	addi r4, r4, 0x78
/* 800A3A7C 000A09DC  7C 84 2E 70 */	srawi r4, r4, 5
/* 800A3A80 000A09E0  7C 84 01 94 */	addze r4, r4
/* 800A3A84 000A09E4  90 9F 00 54 */	stw r4, 0x54(r31)
/* 800A3A88 000A09E8  90 7F 00 24 */	stw r3, 0x24(r31)
/* 800A3A8C 000A09EC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800A3A90 000A09F0  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800A3A94 000A09F4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 800A3A98 000A09F8  C0 02 8D 74 */	lfs f0, lbl_803E8F74@sda21(r2)
/* 800A3A9C 000A09FC  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800A3AA0 000A0A00  98 1F 00 60 */	stb r0, 0x60(r31)
lbl_800A3AA4:
/* 800A3AA4 000A0A04  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A3AA8 000A0A08  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A3AAC 000A0A0C  38 21 00 18 */	addi r1, r1, 0x18
/* 800A3AB0 000A0A10  7C 08 03 A6 */	mtlr r0
/* 800A3AB4 000A0A14  4E 80 00 20 */	blr 

.global close__5SeWinFv
close__5SeWinFv:
/* 800A3AB8 000A0A18  7C 08 02 A6 */	mflr r0
/* 800A3ABC 000A0A1C  90 01 00 04 */	stw r0, 4(r1)
/* 800A3AC0 000A0A20  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A3AC4 000A0A24  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A3AC8 000A0A28  7C 7F 1B 78 */	mr r31, r3
/* 800A3ACC 000A0A2C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800A3AD0 000A0A30  2C 00 10 02 */	cmpwi r0, 0x1002
/* 800A3AD4 000A0A34  41 82 00 1C */	beq lbl_800A3AF0
/* 800A3AD8 000A0A38  7F E3 FB 78 */	mr r3, r31
/* 800A3ADC 000A0A3C  48 06 E5 2D */	bl placeCentre__5GmWinFv
/* 800A3AE0 000A0A40  7F E3 FB 78 */	mr r3, r31
/* 800A3AE4 000A0A44  48 06 E3 3D */	bl close__5GmWinFv
/* 800A3AE8 000A0A48  38 00 00 0F */	li r0, 0xf
/* 800A3AEC 000A0A4C  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_800A3AF0:
/* 800A3AF0 000A0A50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A3AF4 000A0A54  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A3AF8 000A0A58  38 21 00 18 */	addi r1, r1, 0x18
/* 800A3AFC 000A0A5C  7C 08 03 A6 */	mtlr r0
/* 800A3B00 000A0A60  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802B1B70:
	.asciz "seMgr.cpp"
.balign 4
lbl_802B1B7C:
	.asciz "Piki Hit"
.balign 4
lbl_802B1B88:
	.asciz "Piki Fly"
.balign 4
lbl_802B1B94:
	.asciz "Piki Pulling"
.balign 4
lbl_802B1BA4:
	.asciz "Piki Pulled"
.balign 4
lbl_802B1BB0:
	.asciz "Piki Breakup Voice"
.balign 4
lbl_802B1BC4:
	.asciz "Piki Lift"
.balign 4
lbl_802B1BD0:
	.asciz "Piki Find"
.balign 4
lbl_802B1BDC:
	.asciz "Piki Flyready"
.balign 4
lbl_802B1BEC:
	.asciz "Piki Called"
.balign 4
lbl_802B1BF8:
	.4byte 0x53452083
	.4byte 0x65835883
	.4byte 0x67000000
.balign 4
lbl_802B1C04:
	.asciz "CoreNode"
.balign 4
lbl_802B1C10:
	.4byte __RTTI__5ANode
	.4byte 0x00000000
	.4byte 0x00000000
lbl_802B1C1C:
	.4byte __RTTI__5ANode
	.4byte 0x00000000
	.4byte __RTTI__8CoreNode
	.4byte 0x00000000
	.4byte 0x00000000
lbl_802B1C30:
	.4byte __RTTI__5ANode
	.4byte 0x00000000
	.4byte __RTTI__8CoreNode
	.4byte 0x00000000
	.4byte __RTTI__5GmWin
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__5SeWin
__vt__5SeWin:
	.4byte __RTTI__5SeWin
	.4byte 0
	.4byte getAgeNodeType__5ANodeFv
	.4byte read__8CoreNodeFR18RandomAccessStream
	.4byte open__5SeWinFv
	.4byte close__5SeWinFv
	.4byte update__5SeWinFv
	.4byte doRender__5SeWinFR8Graphics
	.4byte render__5GmWinFR8Graphics
	.4byte printStart__5GmWinFR8Graphics
	.4byte print__5GmWinFR8GraphicsiiPc
	.4byte printcentre__5GmWinFR8GraphicsiPc
	.4byte printleft__5GmWinFR8GraphicsiPc
	.4byte printright__5GmWinFR8GraphicsiPc
	.4byte texture__5GmWinFR8GraphicsP7Textureiiii8RectArea
	.4byte texturecentre__5GmWinFR8GraphicsP7Textureiii8RectArea
	.4byte textureleft__5GmWinFR8GraphicsP7Textureiii8RectArea
	.4byte textureright__5GmWinFR8GraphicsP7Textureiii8RectArea
lbl_802B1C94:
	.4byte __RTTI__5ANode
	.4byte 0
	.4byte __RTTI__8CoreNode
	.4byte 0
	.4byte 0
lbl_802B1CA8:
	.4byte __RTTI__5ANode
	.4byte 0
	.4byte __RTTI__8CoreNode
	.4byte 0
	.4byte __RTTI__4Node
	.4byte 0
	.4byte 0
.global __vt__5SeMgr
__vt__5SeMgr:
	.4byte __RTTI__5SeMgr
	.4byte 0
	.4byte getAgeNodeType__5ANodeFv
	.4byte read__8CoreNodeFR18RandomAccessStream
	.4byte update__5SeMgrFv
	.4byte draw__4NodeFR8Graphics
	.4byte render__4NodeFR8Graphics
	.4byte concat__4NodeFv
	.4byte concat__4NodeFR3VQS
	.4byte concat__4NodeFR3SRT
	.4byte concat__4NodeFR8Matrix4f
	.4byte getModelMatrix__4NodeFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
lbl_803DF9A0:
	.asciz "<Node>"
.balign 4
lbl_803DF9A8:
	.asciz "Breakup"
.balign 4
lbl_803DF9B0:
	.asciz "Gather"
.balign 4
lbl_803DF9B8:
	.asciz "Throw"
.balign 4
lbl_803DF9C0:
	.asciz "SE %d"
.balign 4
lbl_803DF9C8:
	.asciz "%s"
.balign 4
lbl_803DF9CC:
	.asciz "SeWin"
.balign 4
lbl_803DF9D4:
	.asciz "ANode"
.balign 4
__RTTI__5ANode:
	.4byte lbl_803DF9D4
	.4byte 0
__RTTI__8CoreNode:
	.4byte lbl_802B1C04
	.4byte lbl_802B1C10
.balign 4
lbl_803DF9EC:
	.asciz "GmWin"
.balign 4
__RTTI__5GmWin:
	.4byte lbl_803DF9EC
	.4byte lbl_802B1C1C
__RTTI__5SeWin:
	.4byte lbl_803DF9CC
	.4byte lbl_802B1C30
.balign 4
lbl_803DFA04:
	.asciz "SeMgr"
.balign 4
lbl_803DFA0C:
	.asciz "Node"
.balign 4
__RTTI__4Node:
	.4byte lbl_803DFA0C
	.4byte lbl_802B1C94
__RTTI__5SeMgr:
	.4byte lbl_803DFA04
	.4byte lbl_802B1CA8

.section .sbss, "wa"
.balign 8
.global seMgr
seMgr:
	.skip 0x4

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803E8F70:
	.float 0.5
lbl_803E8F74:
	.float 0.0
lbl_803E8F78:
	.float 0.8
lbl_803E8F7C:
	.float 1.4
lbl_803E8F80:
	.float -0.5
