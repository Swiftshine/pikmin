.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__Q23zen18ogScrFileChkSelMgrFv
__ct__Q23zen18ogScrFileChkSelMgrFv:
/* 80193594 001904F4  7C 08 02 A6 */	mflr r0
/* 80193598 001904F8  90 01 00 04 */	stw r0, 4(r1)
/* 8019359C 001904FC  38 00 FF FF */	li r0, -1
/* 801935A0 00190500  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801935A4 00190504  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801935A8 00190508  3B E0 00 00 */	li r31, 0
/* 801935AC 0019050C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801935B0 00190510  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 801935B4 00190514  3B A3 00 00 */	addi r29, r3, 0
/* 801935B8 00190518  90 03 00 00 */	stw r0, 0(r3)
/* 801935BC 0019051C  38 60 00 F8 */	li r3, 0xf8
/* 801935C0 00190520  9B FD 00 04 */	stb r31, 4(r29)
/* 801935C4 00190524  9B FD 00 0D */	stb r31, 0xd(r29)
/* 801935C8 00190528  9B FD 00 0E */	stb r31, 0xe(r29)
/* 801935CC 0019052C  4B EB 3A 39 */	bl alloc__6SystemFUl
/* 801935D0 00190530  3B C3 00 00 */	addi r30, r3, 0
/* 801935D4 00190534  7F C0 F3 79 */	or. r0, r30, r30
/* 801935D8 00190538  41 82 00 54 */	beq .L_8019362C
/* 801935DC 0019053C  38 61 00 0C */	addi r3, r1, 0xc
/* 801935E0 00190540  38 80 00 00 */	li r4, 0
/* 801935E4 00190544  38 A0 00 00 */	li r5, 0
/* 801935E8 00190548  38 C0 02 80 */	li r6, 0x280
/* 801935EC 0019054C  38 E0 01 E0 */	li r7, 0x1e0
/* 801935F0 00190550  48 02 00 39 */	bl set__7PUTRectFiiii
/* 801935F4 00190554  3C 80 72 6F */	lis r4, 0x726F6F74@ha
/* 801935F8 00190558  38 E4 6F 74 */	addi r7, r4, 0x726F6F74@l
/* 801935FC 0019055C  39 01 00 0C */	addi r8, r1, 0xc
/* 80193600 00190560  38 7E 00 00 */	addi r3, r30, 0
/* 80193604 00190564  38 80 00 00 */	li r4, 0
/* 80193608 00190568  38 A0 00 08 */	li r5, 8
/* 8019360C 0019056C  38 C0 00 01 */	li r6, 1
/* 80193610 00190570  48 01 D3 BD */	bl __ct__7P2DPaneFP7P2DPaneUsbUlRC7PUTRect
/* 80193614 00190574  3C 60 80 2E */	lis r3, __vt__9P2DScreen@ha
/* 80193618 00190578  38 03 07 E0 */	addi r0, r3, __vt__9P2DScreen@l
/* 8019361C 0019057C  90 1E 00 00 */	stw r0, 0(r30)
/* 80193620 00190580  9B FE 00 EC */	stb r31, 0xec(r30)
/* 80193624 00190584  93 FE 00 F0 */	stw r31, 0xf0(r30)
/* 80193628 00190588  93 FE 00 F4 */	stw r31, 0xf4(r30)
.L_8019362C:
/* 8019362C 0019058C  93 DD 00 08 */	stw r30, 8(r29)
/* 80193630 00190590  3C 60 80 2D */	lis r3, lbl_802D6010@ha
/* 80193634 00190594  38 83 60 10 */	addi r4, r3, lbl_802D6010@l
/* 80193638 00190598  80 7D 00 08 */	lwz r3, 8(r29)
/* 8019363C 0019059C  38 A0 00 01 */	li r5, 1
/* 80193640 001905A0  38 C0 00 01 */	li r6, 1
/* 80193644 001905A4  38 E0 00 01 */	li r7, 1
/* 80193648 001905A8  48 01 F5 B9 */	bl set__9P2DScreenFPCcbbb
/* 8019364C 001905AC  38 60 01 0C */	li r3, 0x10c
/* 80193650 001905B0  4B EB 39 B5 */	bl alloc__6SystemFUl
/* 80193654 001905B4  3B C3 00 00 */	addi r30, r3, 0
/* 80193658 001905B8  7F C3 F3 79 */	or. r3, r30, r30
/* 8019365C 001905BC  41 82 00 08 */	beq .L_80193664
/* 80193660 001905C0  4B FF 99 ED */	bl __ct__Q23zen14ogScrMemChkMgrFv
.L_80193664:
/* 80193664 001905C4  93 DD 00 10 */	stw r30, 0x10(r29)
/* 80193668 001905C8  38 60 11 A4 */	li r3, 0x11a4
/* 8019366C 001905CC  4B EB 39 99 */	bl alloc__6SystemFUl
/* 80193670 001905D0  3B C3 00 00 */	addi r30, r3, 0
/* 80193674 001905D4  7F C3 F3 79 */	or. r3, r30, r30
/* 80193678 001905D8  41 82 00 08 */	beq .L_80193680
/* 8019367C 001905DC  4B FF 60 41 */	bl __ct__Q23zen18ogScrFileSelectMgrFv
.L_80193680:
/* 80193680 001905E0  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80193684 001905E4  7F A3 EB 78 */	mr r3, r29
/* 80193688 001905E8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8019368C 001905EC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80193690 001905F0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80193694 001905F4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80193698 001905F8  38 21 00 28 */	addi r1, r1, 0x28
/* 8019369C 001905FC  7C 08 03 A6 */	mtlr r0
/* 801936A0 00190600  4E 80 00 20 */	blr 

.global start__Q23zen18ogScrFileChkSelMgrFb
start__Q23zen18ogScrFileChkSelMgrFb:
/* 801936A4 00190604  7C 08 02 A6 */	mflr r0
/* 801936A8 00190608  90 01 00 04 */	stw r0, 4(r1)
/* 801936AC 0019060C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801936B0 00190610  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801936B4 00190614  3B E0 00 00 */	li r31, 0
/* 801936B8 00190618  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801936BC 0019061C  7C 7E 1B 78 */	mr r30, r3
/* 801936C0 00190620  98 83 00 0D */	stb r4, 0xd(r3)
/* 801936C4 00190624  9B E3 00 04 */	stb r31, 4(r3)
/* 801936C8 00190628  93 E3 00 00 */	stw r31, 0(r3)
/* 801936CC 0019062C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801936D0 00190630  4B FF A6 59 */	bl start__Q23zen14ogScrMemChkMgrFv
/* 801936D4 00190634  9B FE 00 0C */	stb r31, 0xc(r30)
/* 801936D8 00190638  9B FE 00 0E */	stb r31, 0xe(r30)
/* 801936DC 0019063C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801936E0 00190640  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801936E4 00190644  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801936E8 00190648  38 21 00 18 */	addi r1, r1, 0x18
/* 801936EC 0019064C  7C 08 03 A6 */	mtlr r0
/* 801936F0 00190650  4E 80 00 20 */	blr 

.global startSave__Q23zen18ogScrFileChkSelMgrFv
startSave__Q23zen18ogScrFileChkSelMgrFv:
/* 801936F4 00190654  7C 08 02 A6 */	mflr r0
/* 801936F8 00190658  90 01 00 04 */	stw r0, 4(r1)
/* 801936FC 0019065C  38 00 00 01 */	li r0, 1
/* 80193700 00190660  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80193704 00190664  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80193708 00190668  3B E0 00 00 */	li r31, 0
/* 8019370C 0019066C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80193710 00190670  3B C3 00 00 */	addi r30, r3, 0
/* 80193714 00190674  9B E3 00 0D */	stb r31, 0xd(r3)
/* 80193718 00190678  98 03 00 04 */	stb r0, 4(r3)
/* 8019371C 0019067C  93 E3 00 00 */	stw r31, 0(r3)
/* 80193720 00190680  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80193724 00190684  4B FF A6 05 */	bl start__Q23zen14ogScrMemChkMgrFv
/* 80193728 00190688  9B FE 00 0C */	stb r31, 0xc(r30)
/* 8019372C 0019068C  9B FE 00 0E */	stb r31, 0xe(r30)
/* 80193730 00190690  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80193734 00190694  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80193738 00190698  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8019373C 0019069C  38 21 00 18 */	addi r1, r1, 0x18
/* 80193740 001906A0  7C 08 03 A6 */	mtlr r0
/* 80193744 001906A4  4E 80 00 20 */	blr 

.global update__Q23zen18ogScrFileChkSelMgrFP10ControllerR13CardQuickInfo
update__Q23zen18ogScrFileChkSelMgrFP10ControllerR13CardQuickInfo:
/* 80193748 001906A8  7C 08 02 A6 */	mflr r0
/* 8019374C 001906AC  90 01 00 04 */	stw r0, 4(r1)
/* 80193750 001906B0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80193754 001906B4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80193758 001906B8  3B E5 00 00 */	addi r31, r5, 0
/* 8019375C 001906BC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80193760 001906C0  3B C4 00 00 */	addi r30, r4, 0
/* 80193764 001906C4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80193768 001906C8  7C 7D 1B 78 */	mr r29, r3
/* 8019376C 001906CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80193770 001906D0  2C 03 FF FF */	cmpwi r3, -1
/* 80193774 001906D4  40 82 00 08 */	bne .L_8019377C
/* 80193778 001906D8  48 00 01 4C */	b .L_801938C4
.L_8019377C:
/* 8019377C 001906DC  2C 03 00 01 */	cmpwi r3, 1
/* 80193780 001906E0  41 80 00 14 */	blt .L_80193794
/* 80193784 001906E4  38 00 FF FF */	li r0, -1
/* 80193788 001906E8  90 1D 00 00 */	stw r0, 0(r29)
/* 8019378C 001906EC  80 7D 00 00 */	lwz r3, 0(r29)
/* 80193790 001906F0  48 00 01 34 */	b .L_801938C4
.L_80193794:
/* 80193794 001906F4  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80193798 001906F8  7F C4 F3 78 */	mr r4, r30
/* 8019379C 001906FC  4B FF A9 41 */	bl update__Q23zen14ogScrMemChkMgrFP10Controller
/* 801937A0 00190700  2C 03 00 15 */	cmpwi r3, 0x15
/* 801937A4 00190704  40 82 00 3C */	bne .L_801937E0
/* 801937A8 00190708  88 1D 00 0D */	lbz r0, 0xd(r29)
/* 801937AC 0019070C  28 00 00 00 */	cmplwi r0, 0
/* 801937B0 00190710  41 82 00 14 */	beq .L_801937C4
/* 801937B4 00190714  38 00 00 05 */	li r0, 5
/* 801937B8 00190718  90 1D 00 00 */	stw r0, 0(r29)
/* 801937BC 0019071C  80 7D 00 00 */	lwz r3, 0(r29)
/* 801937C0 00190720  48 00 01 04 */	b .L_801938C4
.L_801937C4:
/* 801937C4 00190724  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 801937C8 00190728  38 A0 00 00 */	li r5, 0
/* 801937CC 0019072C  88 9D 00 04 */	lbz r4, 4(r29)
/* 801937D0 00190730  4B FF 6C A1 */	bl start__Q23zen18ogScrFileSelectMgrFbi
/* 801937D4 00190734  38 00 00 01 */	li r0, 1
/* 801937D8 00190738  98 1D 00 0E */	stb r0, 0xe(r29)
/* 801937DC 0019073C  48 00 00 E4 */	b .L_801938C0
.L_801937E0:
/* 801937E0 00190740  2C 03 00 14 */	cmpwi r3, 0x14
/* 801937E4 00190744  40 82 00 14 */	bne .L_801937F8
/* 801937E8 00190748  38 00 00 05 */	li r0, 5
/* 801937EC 0019074C  90 1D 00 00 */	stw r0, 0(r29)
/* 801937F0 00190750  80 7D 00 00 */	lwz r3, 0(r29)
/* 801937F4 00190754  48 00 00 D0 */	b .L_801938C4
.L_801937F8:
/* 801937F8 00190758  2C 03 00 13 */	cmpwi r3, 0x13
/* 801937FC 0019075C  40 82 00 14 */	bne .L_80193810
/* 80193800 00190760  38 00 00 01 */	li r0, 1
/* 80193804 00190764  90 1D 00 00 */	stw r0, 0(r29)
/* 80193808 00190768  80 7D 00 00 */	lwz r3, 0(r29)
/* 8019380C 0019076C  48 00 00 B8 */	b .L_801938C4
.L_80193810:
/* 80193810 00190770  2C 03 FF FF */	cmpwi r3, -1
/* 80193814 00190774  40 82 00 AC */	bne .L_801938C0
/* 80193818 00190778  4B FE B0 39 */	bl ogCheckInsCard__3zenFv
/* 8019381C 0019077C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80193820 00190780  40 82 00 24 */	bne .L_80193844
/* 80193824 00190784  38 60 01 28 */	li r3, 0x128
/* 80193828 00190788  4B F1 1B 81 */	bl stopSysSe__8SeSystemFi
/* 8019382C 0019078C  38 60 01 2A */	li r3, 0x12a
/* 80193830 00190790  4B F1 1B 45 */	bl playSysSe__8SeSystemFi
/* 80193834 00190794  38 00 00 01 */	li r0, 1
/* 80193838 00190798  90 1D 00 00 */	stw r0, 0(r29)
/* 8019383C 0019079C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80193840 001907A0  48 00 00 84 */	b .L_801938C4
.L_80193844:
/* 80193844 001907A4  80 7D 00 08 */	lwz r3, 8(r29)
/* 80193848 001907A8  48 01 F3 09 */	bl update__9P2DScreenFv
/* 8019384C 001907AC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80193850 001907B0  38 9E 00 00 */	addi r4, r30, 0
/* 80193854 001907B4  38 BF 00 00 */	addi r5, r31, 0
/* 80193858 001907B8  4B FF 77 59 */	bl update__Q23zen18ogScrFileSelectMgrFP10ControllerR13CardQuickInfo
/* 8019385C 001907BC  2C 03 00 08 */	cmpwi r3, 8
/* 80193860 001907C0  41 82 00 40 */	beq .L_801938A0
/* 80193864 001907C4  40 80 00 14 */	bge .L_80193878
/* 80193868 001907C8  2C 03 00 06 */	cmpwi r3, 6
/* 8019386C 001907CC  41 82 00 1C */	beq .L_80193888
/* 80193870 001907D0  40 80 00 24 */	bge .L_80193894
/* 80193874 001907D4  48 00 00 4C */	b .L_801938C0
.L_80193878:
/* 80193878 001907D8  2C 03 00 0A */	cmpwi r3, 0xa
/* 8019387C 001907DC  41 82 00 3C */	beq .L_801938B8
/* 80193880 001907E0  40 80 00 40 */	bge .L_801938C0
/* 80193884 001907E4  48 00 00 28 */	b .L_801938AC
.L_80193888:
/* 80193888 001907E8  38 00 00 01 */	li r0, 1
/* 8019388C 001907EC  90 1D 00 00 */	stw r0, 0(r29)
/* 80193890 001907F0  48 00 00 30 */	b .L_801938C0
.L_80193894:
/* 80193894 001907F4  38 00 00 02 */	li r0, 2
/* 80193898 001907F8  90 1D 00 00 */	stw r0, 0(r29)
/* 8019389C 001907FC  48 00 00 24 */	b .L_801938C0
.L_801938A0:
/* 801938A0 00190800  38 00 00 03 */	li r0, 3
/* 801938A4 00190804  90 1D 00 00 */	stw r0, 0(r29)
/* 801938A8 00190808  48 00 00 18 */	b .L_801938C0
.L_801938AC:
/* 801938AC 0019080C  38 00 00 04 */	li r0, 4
/* 801938B0 00190810  90 1D 00 00 */	stw r0, 0(r29)
/* 801938B4 00190814  48 00 00 0C */	b .L_801938C0
.L_801938B8:
/* 801938B8 00190818  38 00 00 05 */	li r0, 5
/* 801938BC 0019081C  90 1D 00 00 */	stw r0, 0(r29)
.L_801938C0:
/* 801938C0 00190820  80 7D 00 00 */	lwz r3, 0(r29)
.L_801938C4:
/* 801938C4 00190824  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801938C8 00190828  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801938CC 0019082C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801938D0 00190830  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801938D4 00190834  38 21 00 28 */	addi r1, r1, 0x28
/* 801938D8 00190838  7C 08 03 A6 */	mtlr r0
/* 801938DC 0019083C  4E 80 00 20 */	blr 

.global draw__Q23zen18ogScrFileChkSelMgrFR8Graphics
draw__Q23zen18ogScrFileChkSelMgrFR8Graphics:
/* 801938E0 00190840  7C 08 02 A6 */	mflr r0
/* 801938E4 00190844  90 01 00 04 */	stw r0, 4(r1)
/* 801938E8 00190848  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801938EC 0019084C  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801938F0 00190850  3B E4 00 00 */	addi r31, r4, 0
/* 801938F4 00190854  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801938F8 00190858  7C 7E 1B 78 */	mr r30, r3
/* 801938FC 0019085C  80 03 00 00 */	lwz r0, 0(r3)
/* 80193900 00190860  2C 00 FF FF */	cmpwi r0, -1
/* 80193904 00190864  41 82 00 80 */	beq .L_80193984
/* 80193908 00190868  88 1E 00 0E */	lbz r0, 0xe(r30)
/* 8019390C 0019086C  28 00 00 00 */	cmplwi r0, 0
/* 80193910 00190870  41 82 00 5C */	beq .L_8019396C
/* 80193914 00190874  C0 22 B1 E8 */	lfs f1, lbl_803EB3E8@sda21(r2)
/* 80193918 00190878  38 61 00 10 */	addi r3, r1, 0x10
/* 8019391C 0019087C  C0 42 B1 EC */	lfs f2, lbl_803EB3EC@sda21(r2)
/* 80193920 00190880  38 80 00 00 */	li r4, 0
/* 80193924 00190884  C0 62 B1 F0 */	lfs f3, lbl_803EB3F0@sda21(r2)
/* 80193928 00190888  38 A0 00 00 */	li r5, 0
/* 8019392C 0019088C  38 C0 02 80 */	li r6, 0x280
/* 80193930 00190890  38 E0 01 E0 */	li r7, 0x1e0
/* 80193934 00190894  48 01 C8 5D */	bl __ct__13P2DPerspGraphFiiiifff
/* 80193938 00190898  38 61 00 10 */	addi r3, r1, 0x10
/* 8019393C 0019089C  48 01 C9 65 */	bl setPort__13P2DPerspGraphFv
/* 80193940 001908A0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80193944 001908A4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80193948 001908A8  38 80 00 00 */	li r4, 0
/* 8019394C 001908AC  38 A0 00 00 */	li r5, 0
/* 80193950 001908B0  48 01 F5 85 */	bl draw__9P2DScreenFiiPC14P2DGrafContext
/* 80193954 001908B4  3C 60 80 2E */	lis r3, __vt__13P2DPerspGraph@ha
/* 80193958 001908B8  38 03 06 98 */	addi r0, r3, __vt__13P2DPerspGraph@l
/* 8019395C 001908BC  3C 60 80 2E */	lis r3, __vt__14P2DGrafContext@ha
/* 80193960 001908C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80193964 001908C4  38 03 05 D4 */	addi r0, r3, __vt__14P2DGrafContext@l
/* 80193968 001908C8  90 01 00 10 */	stw r0, 0x10(r1)
.L_8019396C:
/* 8019396C 001908CC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80193970 001908D0  7F E4 FB 78 */	mr r4, r31
/* 80193974 001908D4  4B FF 80 81 */	bl draw__Q23zen18ogScrFileSelectMgrFR8Graphics
/* 80193978 001908D8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8019397C 001908DC  7F E4 FB 78 */	mr r4, r31
/* 80193980 001908E0  4B FF B6 21 */	bl draw__Q23zen14ogScrMemChkMgrFR8Graphics
.L_80193984:
/* 80193984 001908E4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80193988 001908E8  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8019398C 001908EC  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80193990 001908F0  38 21 01 00 */	addi r1, r1, 0x100
/* 80193994 001908F4  7C 08 03 A6 */	mtlr r0
/* 80193998 001908F8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802D6010:
	.asciz "screen/blo/data_b.blo"

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB3E8:
	.4byte 0x41F00000
lbl_803EB3EC:
	.4byte 0x3F800000
lbl_803EB3F0:
	.4byte 0x459C4000
