.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__Q23zen12DrawMenuBaseFPcbb
__ct__Q23zen12DrawMenuBaseFPcbb:
/* 801F014C 001ED0AC  7C 08 02 A6 */	mflr r0
/* 801F0150 001ED0B0  7C C7 33 78 */	mr r7, r6
/* 801F0154 001ED0B4  90 01 00 04 */	stw r0, 4(r1)
/* 801F0158 001ED0B8  38 C5 00 00 */	addi r6, r5, 0
/* 801F015C 001ED0BC  38 A0 00 00 */	li r5, 0
/* 801F0160 001ED0C0  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 801F0164 001ED0C4  BF 61 00 54 */	stmw r27, 0x54(r1)
/* 801F0168 001ED0C8  90 61 00 08 */	stw r3, 8(r1)
/* 801F016C 001ED0CC  80 61 00 08 */	lwz r3, 8(r1)
/* 801F0170 001ED0D0  4B FC F4 05 */	bl __ct__Q23zen10DrawScreenFPcP14P2DGrafContextbb
/* 801F0174 001ED0D4  83 81 00 08 */	lwz r28, 8(r1)
/* 801F0178 001ED0D8  3C 60 80 2E */	lis r3, __vt__Q23zen12DrawMenuBase@ha
/* 801F017C 001ED0DC  38 03 71 00 */	addi r0, r3, __vt__Q23zen12DrawMenuBase@l
/* 801F0180 001ED0E0  90 1C 00 00 */	stw r0, 0(r28)
/* 801F0184 001ED0E4  38 00 00 00 */	li r0, 0
/* 801F0188 001ED0E8  3C 80 72 6F */	lis r4, 0x726F6F74@ha
/* 801F018C 001ED0EC  90 1C 01 14 */	stw r0, 0x114(r28)
/* 801F0190 001ED0F0  38 7C 00 04 */	addi r3, r28, 4
/* 801F0194 001ED0F4  38 84 6F 74 */	addi r4, r4, 0x726F6F74@l
/* 801F0198 001ED0F8  90 1C 01 18 */	stw r0, 0x118(r28)
/* 801F019C 001ED0FC  38 A0 00 01 */	li r5, 1
/* 801F01A0 001ED100  C0 22 C1 E8 */	lfs f1, lbl_803EC3E8@sda21(r2)
/* 801F01A4 001ED104  D0 3C 01 20 */	stfs f1, 0x120(r28)
/* 801F01A8 001ED108  D0 3C 01 1C */	stfs f1, 0x11c(r28)
/* 801F01AC 001ED10C  C0 02 C1 EC */	lfs f0, lbl_803EC3EC@sda21(r2)
/* 801F01B0 001ED110  D0 1C 01 30 */	stfs f0, 0x130(r28)
/* 801F01B4 001ED114  D0 1C 01 2C */	stfs f0, 0x12c(r28)
/* 801F01B8 001ED118  D0 1C 01 28 */	stfs f0, 0x128(r28)
/* 801F01BC 001ED11C  D0 1C 01 24 */	stfs f0, 0x124(r28)
/* 801F01C0 001ED120  D0 3C 01 38 */	stfs f1, 0x138(r28)
/* 801F01C4 001ED124  D0 3C 01 34 */	stfs f1, 0x134(r28)
/* 801F01C8 001ED128  D0 3C 01 40 */	stfs f1, 0x140(r28)
/* 801F01CC 001ED12C  D0 3C 01 3C */	stfs f1, 0x13c(r28)
/* 801F01D0 001ED130  90 1C 01 44 */	stw r0, 0x144(r28)
/* 801F01D4 001ED134  90 1C 01 48 */	stw r0, 0x148(r28)
/* 801F01D8 001ED138  D0 3C 01 50 */	stfs f1, 0x150(r28)
/* 801F01DC 001ED13C  D0 3C 01 4C */	stfs f1, 0x14c(r28)
/* 801F01E0 001ED140  D0 1C 01 60 */	stfs f0, 0x160(r28)
/* 801F01E4 001ED144  D0 1C 01 5C */	stfs f0, 0x15c(r28)
/* 801F01E8 001ED148  D0 1C 01 58 */	stfs f0, 0x158(r28)
/* 801F01EC 001ED14C  D0 1C 01 54 */	stfs f0, 0x154(r28)
/* 801F01F0 001ED150  D0 3C 01 68 */	stfs f1, 0x168(r28)
/* 801F01F4 001ED154  D0 3C 01 64 */	stfs f1, 0x164(r28)
/* 801F01F8 001ED158  D0 3C 01 70 */	stfs f1, 0x170(r28)
/* 801F01FC 001ED15C  D0 3C 01 6C */	stfs f1, 0x16c(r28)
/* 801F0200 001ED160  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F0204 001ED164  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F0208 001ED168  7D 88 03 A6 */	mtlr r12
/* 801F020C 001ED16C  4E 80 00 21 */	blrl 
/* 801F0210 001ED170  7C 7D 1B 78 */	mr r29, r3
/* 801F0214 001ED174  A8 E3 00 1A */	lha r7, 0x1a(r3)
/* 801F0218 001ED178  A8 C3 00 1E */	lha r6, 0x1e(r3)
/* 801F021C 001ED17C  3C 80 73 65 */	lis r4, 0x73655F63@ha
/* 801F0220 001ED180  A8 BD 00 18 */	lha r5, 0x18(r29)
/* 801F0224 001ED184  38 7C 00 04 */	addi r3, r28, 4
/* 801F0228 001ED188  A8 1D 00 1C */	lha r0, 0x1c(r29)
/* 801F022C 001ED18C  7C C7 30 50 */	subf r6, r7, r6
/* 801F0230 001ED190  7C 05 00 50 */	subf r0, r5, r0
/* 801F0234 001ED194  7C C6 0E 70 */	srawi r6, r6, 1
/* 801F0238 001ED198  7C 00 0E 70 */	srawi r0, r0, 1
/* 801F023C 001ED19C  7C 00 07 34 */	extsh r0, r0
/* 801F0240 001ED1A0  B0 1D 00 B8 */	sth r0, 0xb8(r29)
/* 801F0244 001ED1A4  7C C0 07 34 */	extsh r0, r6
/* 801F0248 001ED1A8  38 84 5F 63 */	addi r4, r4, 0x73655F63@l
/* 801F024C 001ED1AC  B0 1D 00 BA */	sth r0, 0xba(r29)
/* 801F0250 001ED1B0  38 A0 00 01 */	li r5, 1
/* 801F0254 001ED1B4  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F0258 001ED1B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F025C 001ED1BC  7D 88 03 A6 */	mtlr r12
/* 801F0260 001ED1C0  4E 80 00 21 */	blrl 
/* 801F0264 001ED1C4  A0 03 00 08 */	lhz r0, 8(r3)
/* 801F0268 001ED1C8  28 00 00 13 */	cmplwi r0, 0x13
/* 801F026C 001ED1CC  40 82 00 14 */	bne lbl_801F0280
/* 801F0270 001ED1D0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 801F0274 001ED1D4  90 1C 01 78 */	stw r0, 0x178(r28)
/* 801F0278 001ED1D8  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 801F027C 001ED1DC  90 1C 01 7C */	stw r0, 0x17c(r28)
lbl_801F0280:
/* 801F0280 001ED1E0  38 61 00 44 */	addi r3, r1, 0x44
/* 801F0284 001ED1E4  4C C6 31 82 */	crclr 6
/* 801F0288 001ED1E8  3B 60 00 00 */	li r27, 0
/* 801F028C 001ED1EC  38 8D 29 30 */	addi r4, r13, lbl_803E7650@sda21
/* 801F0290 001ED1F0  38 A0 00 00 */	li r5, 0
/* 801F0294 001ED1F4  48 02 63 05 */	bl sprintf
/* 801F0298 001ED1F8  48 00 00 1C */	b lbl_801F02B4
lbl_801F029C:
/* 801F029C 001ED1FC  3B 7B 00 01 */	addi r27, r27, 1
/* 801F02A0 001ED200  4C C6 31 82 */	crclr 6
/* 801F02A4 001ED204  38 BB 00 00 */	addi r5, r27, 0
/* 801F02A8 001ED208  38 61 00 44 */	addi r3, r1, 0x44
/* 801F02AC 001ED20C  38 8D 29 30 */	addi r4, r13, lbl_803E7650@sda21
/* 801F02B0 001ED210  48 02 62 E9 */	bl sprintf
lbl_801F02B4:
/* 801F02B4 001ED214  83 81 00 08 */	lwz r28, 8(r1)
/* 801F02B8 001ED218  38 A0 00 00 */	li r5, 0
/* 801F02BC 001ED21C  88 01 00 45 */	lbz r0, 0x45(r1)
/* 801F02C0 001ED220  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F02C4 001ED224  38 7C 00 04 */	addi r3, r28, 4
/* 801F02C8 001ED228  88 81 00 44 */	lbz r4, 0x44(r1)
/* 801F02CC 001ED22C  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F02D0 001ED230  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F02D4 001ED234  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 801F02D8 001ED238  88 C1 00 46 */	lbz r6, 0x46(r1)
/* 801F02DC 001ED23C  88 81 00 47 */	lbz r4, 0x47(r1)
/* 801F02E0 001ED240  7D 88 03 A6 */	mtlr r12
/* 801F02E4 001ED244  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 801F02E8 001ED248  7C 84 03 78 */	or r4, r4, r0
/* 801F02EC 001ED24C  4E 80 00 21 */	blrl 
/* 801F02F0 001ED250  28 03 00 00 */	cmplwi r3, 0
/* 801F02F4 001ED254  40 82 FF A8 */	bne lbl_801F029C
/* 801F02F8 001ED258  93 7C 01 0C */	stw r27, 0x10c(r28)
/* 801F02FC 001ED25C  83 DC 01 0C */	lwz r30, 0x10c(r28)
/* 801F0300 001ED260  1C 7E 00 0C */	mulli r3, r30, 0xc
/* 801F0304 001ED264  38 63 00 08 */	addi r3, r3, 8
/* 801F0308 001ED268  4B E5 6C FD */	bl alloc__6SystemFUl
/* 801F030C 001ED26C  3C 80 80 1C */	lis r4, __ct__Q23zen12DrawMenuItemFv@ha
/* 801F0310 001ED270  3C A0 80 1C */	lis r5, __dt__Q23zen12DrawMenuItemFv@ha
/* 801F0314 001ED274  38 84 3C 4C */	addi r4, r4, __ct__Q23zen12DrawMenuItemFv@l
/* 801F0318 001ED278  38 A5 3B F8 */	addi r5, r5, __dt__Q23zen12DrawMenuItemFv@l
/* 801F031C 001ED27C  38 FE 00 00 */	addi r7, r30, 0
/* 801F0320 001ED280  38 C0 00 0C */	li r6, 0xc
/* 801F0324 001ED284  48 02 49 05 */	bl __construct_new_array
/* 801F0328 001ED288  3B E0 00 00 */	li r31, 0
/* 801F032C 001ED28C  90 7C 01 74 */	stw r3, 0x174(r28)
/* 801F0330 001ED290  7F FE FB 78 */	mr r30, r31
/* 801F0334 001ED294  48 00 01 D0 */	b lbl_801F0504
lbl_801F0338:
/* 801F0338 001ED298  38 BF 00 00 */	addi r5, r31, 0
/* 801F033C 001ED29C  4C C6 31 82 */	crclr 6
/* 801F0340 001ED2A0  38 61 00 44 */	addi r3, r1, 0x44
/* 801F0344 001ED2A4  38 8D 29 30 */	addi r4, r13, lbl_803E7650@sda21
/* 801F0348 001ED2A8  48 02 62 51 */	bl sprintf
/* 801F034C 001ED2AC  83 81 00 08 */	lwz r28, 8(r1)
/* 801F0350 001ED2B0  38 A0 00 01 */	li r5, 1
/* 801F0354 001ED2B4  88 01 00 45 */	lbz r0, 0x45(r1)
/* 801F0358 001ED2B8  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F035C 001ED2BC  38 7C 00 04 */	addi r3, r28, 4
/* 801F0360 001ED2C0  88 81 00 44 */	lbz r4, 0x44(r1)
/* 801F0364 001ED2C4  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F0368 001ED2C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F036C 001ED2CC  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 801F0370 001ED2D0  88 C1 00 46 */	lbz r6, 0x46(r1)
/* 801F0374 001ED2D4  88 81 00 47 */	lbz r4, 0x47(r1)
/* 801F0378 001ED2D8  7D 88 03 A6 */	mtlr r12
/* 801F037C 001ED2DC  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 801F0380 001ED2E0  7C 84 03 78 */	or r4, r4, r0
/* 801F0384 001ED2E4  4E 80 00 21 */	blrl 
/* 801F0388 001ED2E8  3B 63 00 00 */	addi r27, r3, 0
/* 801F038C 001ED2EC  4C C6 31 82 */	crclr 6
/* 801F0390 001ED2F0  38 BF 00 00 */	addi r5, r31, 0
/* 801F0394 001ED2F4  38 61 00 44 */	addi r3, r1, 0x44
/* 801F0398 001ED2F8  38 8D 29 38 */	addi r4, r13, lbl_803E7658@sda21
/* 801F039C 001ED2FC  48 02 61 FD */	bl sprintf
/* 801F03A0 001ED300  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F03A4 001ED304  38 7C 00 04 */	addi r3, r28, 4
/* 801F03A8 001ED308  88 01 00 45 */	lbz r0, 0x45(r1)
/* 801F03AC 001ED30C  38 A0 00 00 */	li r5, 0
/* 801F03B0 001ED310  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F03B4 001ED314  88 81 00 44 */	lbz r4, 0x44(r1)
/* 801F03B8 001ED318  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F03BC 001ED31C  88 C1 00 46 */	lbz r6, 0x46(r1)
/* 801F03C0 001ED320  7D 88 03 A6 */	mtlr r12
/* 801F03C4 001ED324  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 801F03C8 001ED328  88 E1 00 47 */	lbz r7, 0x47(r1)
/* 801F03CC 001ED32C  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 801F03D0 001ED330  7C E4 03 78 */	or r4, r7, r0
/* 801F03D4 001ED334  4E 80 00 21 */	blrl 
/* 801F03D8 001ED338  80 1C 01 74 */	lwz r0, 0x174(r28)
/* 801F03DC 001ED33C  38 A3 00 00 */	addi r5, r3, 0
/* 801F03E0 001ED340  7F 64 DB 78 */	mr r4, r27
/* 801F03E4 001ED344  7C 60 F2 14 */	add r3, r0, r30
/* 801F03E8 001ED348  80 63 00 00 */	lwz r3, 0(r3)
/* 801F03EC 001ED34C  4B FD 24 3D */	bl setPane__Q23zen12DrawMenuTextFP7P2DPaneP7P2DPane
/* 801F03F0 001ED350  38 BF 00 00 */	addi r5, r31, 0
/* 801F03F4 001ED354  4C C6 31 82 */	crclr 6
/* 801F03F8 001ED358  38 61 00 44 */	addi r3, r1, 0x44
/* 801F03FC 001ED35C  38 8D 29 40 */	addi r4, r13, lbl_803E7660@sda21
/* 801F0400 001ED360  48 02 61 99 */	bl sprintf
/* 801F0404 001ED364  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F0408 001ED368  38 7C 00 04 */	addi r3, r28, 4
/* 801F040C 001ED36C  88 01 00 45 */	lbz r0, 0x45(r1)
/* 801F0410 001ED370  38 A0 00 01 */	li r5, 1
/* 801F0414 001ED374  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F0418 001ED378  88 81 00 44 */	lbz r4, 0x44(r1)
/* 801F041C 001ED37C  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F0420 001ED380  88 C1 00 46 */	lbz r6, 0x46(r1)
/* 801F0424 001ED384  7D 88 03 A6 */	mtlr r12
/* 801F0428 001ED388  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 801F042C 001ED38C  88 E1 00 47 */	lbz r7, 0x47(r1)
/* 801F0430 001ED390  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 801F0434 001ED394  7C E4 03 78 */	or r4, r7, r0
/* 801F0438 001ED398  4E 80 00 21 */	blrl 
/* 801F043C 001ED39C  A0 03 00 08 */	lhz r0, 8(r3)
/* 801F0440 001ED3A0  80 9C 01 74 */	lwz r4, 0x174(r28)
/* 801F0444 001ED3A4  28 00 00 12 */	cmplwi r0, 0x12
/* 801F0448 001ED3A8  7C C4 F2 14 */	add r6, r4, r30
/* 801F044C 001ED3AC  40 82 00 28 */	bne lbl_801F0474
/* 801F0450 001ED3B0  90 66 00 04 */	stw r3, 4(r6)
/* 801F0454 001ED3B4  38 A0 00 00 */	li r5, 0
/* 801F0458 001ED3B8  38 9D 00 00 */	addi r4, r29, 0
/* 801F045C 001ED3BC  80 66 00 04 */	lwz r3, 4(r6)
/* 801F0460 001ED3C0  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801F0464 001ED3C4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801F0468 001ED3C8  98 03 00 0C */	stb r0, 0xc(r3)
/* 801F046C 001ED3CC  80 66 00 04 */	lwz r3, 4(r6)
/* 801F0470 001ED3D0  4B FC F7 31 */	bl changeParent__Q23zen14P2DPaneLibraryFP7P2DPaneP7P2DPane
lbl_801F0474:
/* 801F0474 001ED3D4  38 BF 00 00 */	addi r5, r31, 0
/* 801F0478 001ED3D8  4C C6 31 82 */	crclr 6
/* 801F047C 001ED3DC  38 61 00 44 */	addi r3, r1, 0x44
/* 801F0480 001ED3E0  38 8D 29 48 */	addi r4, r13, lbl_803E7668@sda21
/* 801F0484 001ED3E4  48 02 61 15 */	bl sprintf
/* 801F0488 001ED3E8  83 81 00 08 */	lwz r28, 8(r1)
/* 801F048C 001ED3EC  38 A0 00 01 */	li r5, 1
/* 801F0490 001ED3F0  88 01 00 45 */	lbz r0, 0x45(r1)
/* 801F0494 001ED3F4  81 9C 00 04 */	lwz r12, 4(r28)
/* 801F0498 001ED3F8  38 7C 00 04 */	addi r3, r28, 4
/* 801F049C 001ED3FC  88 81 00 44 */	lbz r4, 0x44(r1)
/* 801F04A0 001ED400  54 00 80 1E */	slwi r0, r0, 0x10
/* 801F04A4 001ED404  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801F04A8 001ED408  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 801F04AC 001ED40C  88 C1 00 46 */	lbz r6, 0x46(r1)
/* 801F04B0 001ED410  88 81 00 47 */	lbz r4, 0x47(r1)
/* 801F04B4 001ED414  7D 88 03 A6 */	mtlr r12
/* 801F04B8 001ED418  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 801F04BC 001ED41C  7C 84 03 78 */	or r4, r4, r0
/* 801F04C0 001ED420  4E 80 00 21 */	blrl 
/* 801F04C4 001ED424  A0 03 00 08 */	lhz r0, 8(r3)
/* 801F04C8 001ED428  80 9C 01 74 */	lwz r4, 0x174(r28)
/* 801F04CC 001ED42C  28 00 00 12 */	cmplwi r0, 0x12
/* 801F04D0 001ED430  7C C4 F2 14 */	add r6, r4, r30
/* 801F04D4 001ED434  40 82 00 28 */	bne lbl_801F04FC
/* 801F04D8 001ED438  90 66 00 08 */	stw r3, 8(r6)
/* 801F04DC 001ED43C  38 A0 00 00 */	li r5, 0
/* 801F04E0 001ED440  38 9D 00 00 */	addi r4, r29, 0
/* 801F04E4 001ED444  80 66 00 08 */	lwz r3, 8(r6)
/* 801F04E8 001ED448  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801F04EC 001ED44C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801F04F0 001ED450  98 03 00 0C */	stb r0, 0xc(r3)
/* 801F04F4 001ED454  80 66 00 08 */	lwz r3, 8(r6)
/* 801F04F8 001ED458  4B FC F6 A9 */	bl changeParent__Q23zen14P2DPaneLibraryFP7P2DPaneP7P2DPane
lbl_801F04FC:
/* 801F04FC 001ED45C  3B DE 00 0C */	addi r30, r30, 0xc
/* 801F0500 001ED460  3B FF 00 01 */	addi r31, r31, 1
lbl_801F0504:
/* 801F0504 001ED464  83 61 00 08 */	lwz r27, 8(r1)
/* 801F0508 001ED468  80 1B 01 0C */	lwz r0, 0x10c(r27)
/* 801F050C 001ED46C  7C 1F 00 00 */	cmpw r31, r0
/* 801F0510 001ED470  41 80 FE 28 */	blt lbl_801F0338
/* 801F0514 001ED474  3F 80 7A 2A */	lis r28, 0x7A2A2A6C@ha
/* 801F0518 001ED478  C0 22 C1 F0 */	lfs f1, lbl_803EC3F0@sda21(r2)
/* 801F051C 001ED47C  C0 42 C1 F4 */	lfs f2, lbl_803EC3F4@sda21(r2)
/* 801F0520 001ED480  38 BD 00 00 */	addi r5, r29, 0
/* 801F0524 001ED484  38 7B 01 14 */	addi r3, r27, 0x114
/* 801F0528 001ED488  38 9B 00 04 */	addi r4, r27, 4
/* 801F052C 001ED48C  38 DC 2A 6C */	addi r6, r28, 0x7A2A2A6C@l
/* 801F0530 001ED490  4B FE A7 0D */	bl init__Q23zen17SpectrumCursorMgrFP9P2DScreenP7P2DPaneUlff
/* 801F0534 001ED494  C0 22 C1 F8 */	lfs f1, lbl_803EC3F8@sda21(r2)
/* 801F0538 001ED498  7F A5 EB 78 */	mr r5, r29
/* 801F053C 001ED49C  C0 42 C1 F4 */	lfs f2, lbl_803EC3F4@sda21(r2)
/* 801F0540 001ED4A0  38 7B 01 44 */	addi r3, r27, 0x144
/* 801F0544 001ED4A4  38 9B 00 04 */	addi r4, r27, 4
/* 801F0548 001ED4A8  38 DC 2A 72 */	addi r6, r28, 0x2a72
/* 801F054C 001ED4AC  4B FE A6 F1 */	bl init__Q23zen17SpectrumCursorMgrFP9P2DScreenP7P2DPaneUlff
/* 801F0550 001ED4B0  38 00 10 00 */	li r0, 0x1000
/* 801F0554 001ED4B4  90 1B 01 90 */	stw r0, 0x190(r27)
/* 801F0558 001ED4B8  38 00 20 00 */	li r0, 0x2000
/* 801F055C 001ED4BC  38 7B 00 00 */	addi r3, r27, 0
/* 801F0560 001ED4C0  90 1B 01 94 */	stw r0, 0x194(r27)
/* 801F0564 001ED4C4  38 80 00 00 */	li r4, 0
/* 801F0568 001ED4C8  48 00 00 AD */	bl init__Q23zen12DrawMenuBaseFi
/* 801F056C 001ED4CC  7F 63 DB 78 */	mr r3, r27
/* 801F0570 001ED4D0  BB 61 00 54 */	lmw r27, 0x54(r1)
/* 801F0574 001ED4D4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 801F0578 001ED4D8  38 21 00 68 */	addi r1, r1, 0x68
/* 801F057C 001ED4DC  7C 08 03 A6 */	mtlr r0
/* 801F0580 001ED4E0  4E 80 00 20 */	blr 

.global update__Q23zen12DrawMenuBaseFP10Controller
update__Q23zen12DrawMenuBaseFP10Controller:
/* 801F0584 001ED4E4  7C 08 02 A6 */	mflr r0
/* 801F0588 001ED4E8  90 01 00 04 */	stw r0, 4(r1)
/* 801F058C 001ED4EC  38 00 00 00 */	li r0, 0
/* 801F0590 001ED4F0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801F0594 001ED4F4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801F0598 001ED4F8  3B E0 00 00 */	li r31, 0
/* 801F059C 001ED4FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801F05A0 001ED500  3B C3 00 00 */	addi r30, r3, 0
/* 801F05A4 001ED504  39 9E 01 80 */	addi r12, r30, 0x180
/* 801F05A8 001ED508  90 03 01 8C */	stw r0, 0x18c(r3)
/* 801F05AC 001ED50C  48 02 47 85 */	bl __ptmf_scall
/* 801F05B0 001ED510  60 00 00 00 */	nop 
/* 801F05B4 001ED514  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F05B8 001ED518  41 82 00 08 */	beq lbl_801F05C0
/* 801F05BC 001ED51C  3B E0 00 01 */	li r31, 1
lbl_801F05C0:
/* 801F05C0 001ED520  38 7E 00 04 */	addi r3, r30, 4
/* 801F05C4 001ED524  4B FC 25 8D */	bl update__9P2DScreenFv
/* 801F05C8 001ED528  38 7E 01 14 */	addi r3, r30, 0x114
/* 801F05CC 001ED52C  4B FE A2 49 */	bl update__Q23zen17SpectrumCursorMgrFv
/* 801F05D0 001ED530  38 7E 01 44 */	addi r3, r30, 0x144
/* 801F05D4 001ED534  4B FE A2 41 */	bl update__Q23zen17SpectrumCursorMgrFv
/* 801F05D8 001ED538  7F E3 FB 78 */	mr r3, r31
/* 801F05DC 001ED53C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801F05E0 001ED540  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801F05E4 001ED544  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801F05E8 001ED548  38 21 00 18 */	addi r1, r1, 0x18
/* 801F05EC 001ED54C  7C 08 03 A6 */	mtlr r0
/* 801F05F0 001ED550  4E 80 00 20 */	blr 

.global draw__Q23zen12DrawMenuBaseFR8Graphics
draw__Q23zen12DrawMenuBaseFR8Graphics:
/* 801F05F4 001ED554  7C 08 02 A6 */	mflr r0
/* 801F05F8 001ED558  90 01 00 04 */	stw r0, 4(r1)
/* 801F05FC 001ED55C  94 21 FF F8 */	stwu r1, -8(r1)
/* 801F0600 001ED560  4B FC F0 A1 */	bl draw__Q23zen10DrawScreenFv
/* 801F0604 001ED564  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F0608 001ED568  38 21 00 08 */	addi r1, r1, 8
/* 801F060C 001ED56C  7C 08 03 A6 */	mtlr r0
/* 801F0610 001ED570  4E 80 00 20 */	blr 

.global init__Q23zen12DrawMenuBaseFi
init__Q23zen12DrawMenuBaseFi:
/* 801F0614 001ED574  7C 08 02 A6 */	mflr r0
/* 801F0618 001ED578  90 01 00 04 */	stw r0, 4(r1)
/* 801F061C 001ED57C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801F0620 001ED580  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801F0624 001ED584  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801F0628 001ED588  7C 9E 23 78 */	mr r30, r4
/* 801F062C 001ED58C  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801F0630 001ED590  7C 7D 1B 78 */	mr r29, r3
/* 801F0634 001ED594  93 81 00 80 */	stw r28, 0x80(r1)
/* 801F0638 001ED598  81 9D 00 00 */	lwz r12, 0(r29)
/* 801F063C 001ED59C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801F0640 001ED5A0  7D 88 03 A6 */	mtlr r12
/* 801F0644 001ED5A4  4E 80 00 21 */	blrl 
/* 801F0648 001ED5A8  3B E0 00 00 */	li r31, 0
/* 801F064C 001ED5AC  93 FD 01 8C */	stw r31, 0x18c(r29)
/* 801F0650 001ED5B0  38 7D 00 04 */	addi r3, r29, 4
/* 801F0654 001ED5B4  38 80 00 00 */	li r4, 0
/* 801F0658 001ED5B8  93 FD 01 04 */	stw r31, 0x104(r29)
/* 801F065C 001ED5BC  38 A0 00 00 */	li r5, 0
/* 801F0660 001ED5C0  93 FD 01 08 */	stw r31, 0x108(r29)
/* 801F0664 001ED5C4  81 9D 00 04 */	lwz r12, 4(r29)
/* 801F0668 001ED5C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801F066C 001ED5CC  7D 88 03 A6 */	mtlr r12
/* 801F0670 001ED5D0  4E 80 00 21 */	blrl 
/* 801F0674 001ED5D4  C0 02 C1 E8 */	lfs f0, lbl_803EC3E8@sda21(r2)
/* 801F0678 001ED5D8  38 80 00 01 */	li r4, 1
/* 801F067C 001ED5DC  3F 80 43 30 */	lis r28, 0x4330
/* 801F0680 001ED5E0  D0 1D 00 C4 */	stfs f0, 0xc4(r29)
/* 801F0684 001ED5E4  38 7D 01 14 */	addi r3, r29, 0x114
/* 801F0688 001ED5E8  D0 1D 00 C8 */	stfs f0, 0xc8(r29)
/* 801F068C 001ED5EC  D0 1D 00 CC */	stfs f0, 0xcc(r29)
/* 801F0690 001ED5F0  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 801F0694 001ED5F4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801F0698 001ED5F8  98 1D 00 10 */	stb r0, 0x10(r29)
/* 801F069C 001ED5FC  80 1D 01 04 */	lwz r0, 0x104(r29)
/* 801F06A0 001ED600  80 BD 01 74 */	lwz r5, 0x174(r29)
/* 801F06A4 001ED604  1C 80 00 0C */	mulli r4, r0, 0xc
/* 801F06A8 001ED608  C8 42 C2 00 */	lfd f2, "@827"@sda21(r2)
/* 801F06AC 001ED60C  38 04 00 04 */	addi r0, r4, 4
/* 801F06B0 001ED610  7C 85 00 2E */	lwzx r4, r5, r0
/* 801F06B4 001ED614  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 801F06B8 001ED618  A8 84 00 18 */	lha r4, 0x18(r4)
/* 801F06BC 001ED61C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F06C0 001ED620  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801F06C4 001ED624  90 01 00 74 */	stw r0, 0x74(r1)
/* 801F06C8 001ED628  90 81 00 7C */	stw r4, 0x7c(r1)
/* 801F06CC 001ED62C  93 81 00 78 */	stw r28, 0x78(r1)
/* 801F06D0 001ED630  93 81 00 70 */	stw r28, 0x70(r1)
/* 801F06D4 001ED634  C8 21 00 78 */	lfd f1, 0x78(r1)
/* 801F06D8 001ED638  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 801F06DC 001ED63C  EC 21 10 28 */	fsubs f1, f1, f2
/* 801F06E0 001ED640  EC 40 10 28 */	fsubs f2, f0, f2
/* 801F06E4 001ED644  4B FE A8 CD */	bl initPos__Q23zen17SpectrumCursorMgrFff
/* 801F06E8 001ED648  80 1D 01 04 */	lwz r0, 0x104(r29)
/* 801F06EC 001ED64C  38 7D 01 44 */	addi r3, r29, 0x144
/* 801F06F0 001ED650  80 BD 01 74 */	lwz r5, 0x174(r29)
/* 801F06F4 001ED654  1C 80 00 0C */	mulli r4, r0, 0xc
/* 801F06F8 001ED658  C8 42 C2 00 */	lfd f2, "@827"@sda21(r2)
/* 801F06FC 001ED65C  38 04 00 08 */	addi r0, r4, 8
/* 801F0700 001ED660  7C 85 00 2E */	lwzx r4, r5, r0
/* 801F0704 001ED664  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 801F0708 001ED668  A8 84 00 18 */	lha r4, 0x18(r4)
/* 801F070C 001ED66C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F0710 001ED670  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801F0714 001ED674  90 01 00 64 */	stw r0, 0x64(r1)
/* 801F0718 001ED678  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801F071C 001ED67C  93 81 00 68 */	stw r28, 0x68(r1)
/* 801F0720 001ED680  93 81 00 60 */	stw r28, 0x60(r1)
/* 801F0724 001ED684  C8 21 00 68 */	lfd f1, 0x68(r1)
/* 801F0728 001ED688  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801F072C 001ED68C  EC 21 10 28 */	fsubs f1, f1, f2
/* 801F0730 001ED690  EC 40 10 28 */	fsubs f2, f0, f2
/* 801F0734 001ED694  4B FE A8 7D */	bl initPos__Q23zen17SpectrumCursorMgrFff
/* 801F0738 001ED698  3B 80 00 00 */	li r28, 0
/* 801F073C 001ED69C  48 00 00 34 */	b lbl_801F0770
lbl_801F0740:
/* 801F0740 001ED6A0  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 801F0744 001ED6A4  38 BD 01 78 */	addi r5, r29, 0x178
/* 801F0748 001ED6A8  80 1D 01 74 */	lwz r0, 0x174(r29)
/* 801F074C 001ED6AC  38 DD 01 7C */	addi r6, r29, 0x17c
/* 801F0750 001ED6B0  7C 7C 18 50 */	subf r3, r28, r3
/* 801F0754 001ED6B4  7C 63 00 34 */	cntlzw r3, r3
/* 801F0758 001ED6B8  7C E0 FA 14 */	add r7, r0, r31
/* 801F075C 001ED6BC  54 64 D9 7E */	srwi r4, r3, 5
/* 801F0760 001ED6C0  80 67 00 00 */	lwz r3, 0(r7)
/* 801F0764 001ED6C4  4B FD 20 19 */	bl init__Q23zen12DrawMenuTextFbR6ColourR6Colour
/* 801F0768 001ED6C8  3B FF 00 0C */	addi r31, r31, 0xc
/* 801F076C 001ED6CC  3B 9C 00 01 */	addi r28, r28, 1
lbl_801F0770:
/* 801F0770 001ED6D0  80 1D 01 0C */	lwz r0, 0x10c(r29)
/* 801F0774 001ED6D4  7C 1C 00 00 */	cmpw r28, r0
/* 801F0778 001ED6D8  41 80 FF C8 */	blt lbl_801F0740
/* 801F077C 001ED6DC  7F A3 EB 78 */	mr r3, r29
/* 801F0780 001ED6E0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801F0784 001ED6E4  7F C4 F3 78 */	mr r4, r30
/* 801F0788 001ED6E8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801F078C 001ED6EC  7D 88 03 A6 */	mtlr r12
/* 801F0790 001ED6F0  4E 80 00 21 */	blrl 
/* 801F0794 001ED6F4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801F0798 001ED6F8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801F079C 001ED6FC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801F07A0 001ED700  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 801F07A4 001ED704  83 81 00 80 */	lwz r28, 0x80(r1)
/* 801F07A8 001ED708  38 21 00 90 */	addi r1, r1, 0x90
/* 801F07AC 001ED70C  7C 08 03 A6 */	mtlr r0
/* 801F07B0 001ED710  4E 80 00 20 */	blr 

.global start__Q23zen12DrawMenuBaseFv
start__Q23zen12DrawMenuBaseFv:
/* 801F07B4 001ED714  7C 08 02 A6 */	mflr r0
/* 801F07B8 001ED718  38 80 00 01 */	li r4, 1
/* 801F07BC 001ED71C  90 01 00 04 */	stw r0, 4(r1)
/* 801F07C0 001ED720  38 00 00 00 */	li r0, 0
/* 801F07C4 001ED724  94 21 FF F8 */	stwu r1, -8(r1)
/* 801F07C8 001ED728  90 03 01 04 */	stw r0, 0x104(r3)
/* 801F07CC 001ED72C  80 03 01 04 */	lwz r0, 0x104(r3)
/* 801F07D0 001ED730  90 03 01 08 */	stw r0, 0x108(r3)
/* 801F07D4 001ED734  4B FF FE 41 */	bl init__Q23zen12DrawMenuBaseFi
/* 801F07D8 001ED738  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F07DC 001ED73C  38 21 00 08 */	addi r1, r1, 8
/* 801F07E0 001ED740  7C 08 03 A6 */	mtlr r0
/* 801F07E4 001ED744  4E 80 00 20 */	blr 

.global modeSleep__Q23zen12DrawMenuBaseFP10Controller
modeSleep__Q23zen12DrawMenuBaseFP10Controller:
/* 801F07E8 001ED748  38 60 00 00 */	li r3, 0
/* 801F07EC 001ED74C  4E 80 00 20 */	blr 

.global modeOperation__Q23zen12DrawMenuBaseFP10Controller
modeOperation__Q23zen12DrawMenuBaseFP10Controller:
/* 801F07F0 001ED750  7C 08 02 A6 */	mflr r0
/* 801F07F4 001ED754  90 01 00 04 */	stw r0, 4(r1)
/* 801F07F8 001ED758  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 801F07FC 001ED75C  BF 21 00 6C */	stmw r25, 0x6c(r1)
/* 801F0800 001ED760  7C 9C 23 78 */	mr r28, r4
/* 801F0804 001ED764  7C 7B 1B 78 */	mr r27, r3
/* 801F0808 001ED768  3B E0 00 00 */	li r31, 0
/* 801F080C 001ED76C  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 801F0810 001ED770  83 A3 01 04 */	lwz r29, 0x104(r3)
/* 801F0814 001ED774  54 A0 03 18 */	rlwinm r0, r5, 0, 0xc, 0xc
/* 801F0818 001ED778  7C 80 00 D0 */	neg r4, r0
/* 801F081C 001ED77C  30 64 FF FF */	addic r3, r4, -1
/* 801F0820 001ED780  54 A0 02 94 */	rlwinm r0, r5, 0, 0xa, 0xa
/* 801F0824 001ED784  7C 83 21 10 */	subfe r4, r3, r4
/* 801F0828 001ED788  7C 60 00 D0 */	neg r3, r0
/* 801F082C 001ED78C  30 03 FF FF */	addic r0, r3, -1
/* 801F0830 001ED790  7C 00 19 10 */	subfe r0, r0, r3
/* 801F0834 001ED794  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 801F0838 001ED798  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801F083C 001ED79C  7C A3 00 51 */	subf. r5, r3, r0
/* 801F0840 001ED7A0  41 82 00 64 */	beq lbl_801F08A4
/* 801F0844 001ED7A4  38 80 00 00 */	li r4, 0
lbl_801F0848:
/* 801F0848 001ED7A8  80 1B 01 04 */	lwz r0, 0x104(r27)
/* 801F084C 001ED7AC  7C 00 2A 14 */	add r0, r0, r5
/* 801F0850 001ED7B0  90 1B 01 04 */	stw r0, 0x104(r27)
/* 801F0854 001ED7B4  80 1B 01 04 */	lwz r0, 0x104(r27)
/* 801F0858 001ED7B8  2C 00 00 00 */	cmpwi r0, 0
/* 801F085C 001ED7BC  40 80 00 10 */	bge lbl_801F086C
/* 801F0860 001ED7C0  80 7B 01 0C */	lwz r3, 0x10c(r27)
/* 801F0864 001ED7C4  38 03 FF FF */	addi r0, r3, -1
/* 801F0868 001ED7C8  90 1B 01 04 */	stw r0, 0x104(r27)
lbl_801F086C:
/* 801F086C 001ED7CC  80 7B 01 04 */	lwz r3, 0x104(r27)
/* 801F0870 001ED7D0  80 1B 01 0C */	lwz r0, 0x10c(r27)
/* 801F0874 001ED7D4  7C 03 00 00 */	cmpw r3, r0
/* 801F0878 001ED7D8  41 80 00 08 */	blt lbl_801F0880
/* 801F087C 001ED7DC  90 9B 01 04 */	stw r4, 0x104(r27)
lbl_801F0880:
/* 801F0880 001ED7E0  80 1B 01 04 */	lwz r0, 0x104(r27)
/* 801F0884 001ED7E4  80 7B 01 74 */	lwz r3, 0x174(r27)
/* 801F0888 001ED7E8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801F088C 001ED7EC  7C C3 02 14 */	add r6, r3, r0
/* 801F0890 001ED7F0  80 66 00 00 */	lwz r3, 0(r6)
/* 801F0894 001ED7F4  7C DE 33 78 */	mr r30, r6
/* 801F0898 001ED7F8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801F089C 001ED7FC  28 00 00 00 */	cmplwi r0, 0
/* 801F08A0 001ED800  41 82 FF A8 */	beq lbl_801F0848
lbl_801F08A4:
/* 801F08A4 001ED804  3B 20 00 00 */	li r25, 0
/* 801F08A8 001ED808  3B 40 00 00 */	li r26, 0
/* 801F08AC 001ED80C  48 00 00 34 */	b lbl_801F08E0
lbl_801F08B0:
/* 801F08B0 001ED810  80 7B 01 04 */	lwz r3, 0x104(r27)
/* 801F08B4 001ED814  38 BB 01 78 */	addi r5, r27, 0x178
/* 801F08B8 001ED818  80 1B 01 74 */	lwz r0, 0x174(r27)
/* 801F08BC 001ED81C  38 DB 01 7C */	addi r6, r27, 0x17c
/* 801F08C0 001ED820  7C 79 18 50 */	subf r3, r25, r3
/* 801F08C4 001ED824  7C 63 00 34 */	cntlzw r3, r3
/* 801F08C8 001ED828  7C E0 D2 14 */	add r7, r0, r26
/* 801F08CC 001ED82C  54 64 D9 7E */	srwi r4, r3, 5
/* 801F08D0 001ED830  80 67 00 00 */	lwz r3, 0(r7)
/* 801F08D4 001ED834  4B FD 20 49 */	bl update__Q23zen12DrawMenuTextFbR6ColourR6Colour
/* 801F08D8 001ED838  3B 5A 00 0C */	addi r26, r26, 0xc
/* 801F08DC 001ED83C  3B 39 00 01 */	addi r25, r25, 1
lbl_801F08E0:
/* 801F08E0 001ED840  80 1B 01 0C */	lwz r0, 0x10c(r27)
/* 801F08E4 001ED844  7C 19 00 00 */	cmpw r25, r0
/* 801F08E8 001ED848  41 80 FF C8 */	blt lbl_801F08B0
/* 801F08EC 001ED84C  80 1B 01 04 */	lwz r0, 0x104(r27)
/* 801F08F0 001ED850  7C 1D 00 00 */	cmpw r29, r0
/* 801F08F4 001ED854  41 82 00 A4 */	beq lbl_801F0998
/* 801F08F8 001ED858  38 60 01 12 */	li r3, 0x112
/* 801F08FC 001ED85C  4B EB 4A 79 */	bl playSysSe__8SeSystemFi
/* 801F0900 001ED860  80 9E 00 04 */	lwz r4, 4(r30)
/* 801F0904 001ED864  3F A0 43 30 */	lis r29, 0x4330
/* 801F0908 001ED868  C8 42 C2 00 */	lfd f2, "@827"@sda21(r2)
/* 801F090C 001ED86C  38 7B 01 14 */	addi r3, r27, 0x114
/* 801F0910 001ED870  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 801F0914 001ED874  A8 84 00 18 */	lha r4, 0x18(r4)
/* 801F0918 001ED878  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F091C 001ED87C  C0 62 C2 08 */	lfs f3, lbl_803EC408@sda21(r2)
/* 801F0920 001ED880  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801F0924 001ED884  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801F0928 001ED888  90 81 00 64 */	stw r4, 0x64(r1)
/* 801F092C 001ED88C  93 A1 00 60 */	stw r29, 0x60(r1)
/* 801F0930 001ED890  93 A1 00 58 */	stw r29, 0x58(r1)
/* 801F0934 001ED894  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 801F0938 001ED898  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801F093C 001ED89C  EC 21 10 28 */	fsubs f1, f1, f2
/* 801F0940 001ED8A0  EC 40 10 28 */	fsubs f2, f0, f2
/* 801F0944 001ED8A4  4B FE A2 65 */	bl move__Q23zen17SpectrumCursorMgrFfff
/* 801F0948 001ED8A8  80 9E 00 08 */	lwz r4, 8(r30)
/* 801F094C 001ED8AC  38 7B 01 44 */	addi r3, r27, 0x144
/* 801F0950 001ED8B0  C8 42 C2 00 */	lfd f2, "@827"@sda21(r2)
/* 801F0954 001ED8B4  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 801F0958 001ED8B8  A8 84 00 18 */	lha r4, 0x18(r4)
/* 801F095C 001ED8BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F0960 001ED8C0  C0 62 C2 08 */	lfs f3, lbl_803EC408@sda21(r2)
/* 801F0964 001ED8C4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801F0968 001ED8C8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801F096C 001ED8CC  90 81 00 54 */	stw r4, 0x54(r1)
/* 801F0970 001ED8D0  93 A1 00 50 */	stw r29, 0x50(r1)
/* 801F0974 001ED8D4  93 A1 00 48 */	stw r29, 0x48(r1)
/* 801F0978 001ED8D8  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 801F097C 001ED8DC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801F0980 001ED8E0  EC 21 10 28 */	fsubs f1, f1, f2
/* 801F0984 001ED8E4  EC 40 10 28 */	fsubs f2, f0, f2
/* 801F0988 001ED8E8  4B FE A2 21 */	bl move__Q23zen17SpectrumCursorMgrFfff
/* 801F098C 001ED8EC  80 1B 01 8C */	lwz r0, 0x18c(r27)
/* 801F0990 001ED8F0  60 00 00 01 */	ori r0, r0, 1
/* 801F0994 001ED8F4  90 1B 01 8C */	stw r0, 0x18c(r27)
lbl_801F0998:
/* 801F0998 001ED8F8  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 801F099C 001ED8FC  80 1B 01 94 */	lwz r0, 0x194(r27)
/* 801F09A0 001ED900  7C 60 00 39 */	and. r0, r3, r0
/* 801F09A4 001ED904  41 82 00 1C */	beq lbl_801F09C0
/* 801F09A8 001ED908  38 60 01 1D */	li r3, 0x11d
/* 801F09AC 001ED90C  4B EB 49 C9 */	bl playSysSe__8SeSystemFi
/* 801F09B0 001ED910  80 0D 29 50 */	lwz r0, SELECT_CANCEL__Q23zen12DrawMenuBase@sda21(r13)
/* 801F09B4 001ED914  3B E0 00 01 */	li r31, 1
/* 801F09B8 001ED918  90 1B 01 08 */	stw r0, 0x108(r27)
/* 801F09BC 001ED91C  48 00 00 30 */	b lbl_801F09EC
lbl_801F09C0:
/* 801F09C0 001ED920  80 1B 01 90 */	lwz r0, 0x190(r27)
/* 801F09C4 001ED924  7C 60 00 39 */	and. r0, r3, r0
/* 801F09C8 001ED928  41 82 00 1C */	beq lbl_801F09E4
/* 801F09CC 001ED92C  38 60 01 11 */	li r3, 0x111
/* 801F09D0 001ED930  4B EB 49 A5 */	bl playSysSe__8SeSystemFi
/* 801F09D4 001ED934  80 1B 01 04 */	lwz r0, 0x104(r27)
/* 801F09D8 001ED938  3B E0 00 01 */	li r31, 1
/* 801F09DC 001ED93C  90 1B 01 08 */	stw r0, 0x108(r27)
/* 801F09E0 001ED940  48 00 00 0C */	b lbl_801F09EC
lbl_801F09E4:
/* 801F09E4 001ED944  80 1B 01 04 */	lwz r0, 0x104(r27)
/* 801F09E8 001ED948  90 1B 01 08 */	stw r0, 0x108(r27)
lbl_801F09EC:
/* 801F09EC 001ED94C  7F E3 FB 78 */	mr r3, r31
/* 801F09F0 001ED950  BB 21 00 6C */	lmw r25, 0x6c(r1)
/* 801F09F4 001ED954  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 801F09F8 001ED958  38 21 00 88 */	addi r1, r1, 0x88
/* 801F09FC 001ED95C  7C 08 03 A6 */	mtlr r0
/* 801F0A00 001ED960  4E 80 00 20 */	blr 

.global setModeFunc__Q23zen12DrawMenuBaseFi
setModeFunc__Q23zen12DrawMenuBaseFi:
/* 801F0A04 001ED964  90 83 01 00 */	stw r4, 0x100(r3)
/* 801F0A08 001ED968  3C 80 80 2E */	lis r4, lbl_802E7088@ha
/* 801F0A0C 001ED96C  38 A4 70 88 */	addi r5, r4, lbl_802E7088@l
/* 801F0A10 001ED970  80 03 01 00 */	lwz r0, 0x100(r3)
/* 801F0A14 001ED974  2C 00 00 01 */	cmpwi r0, 1
/* 801F0A18 001ED978  41 82 00 30 */	beq lbl_801F0A48
/* 801F0A1C 001ED97C  40 80 00 48 */	bge lbl_801F0A64
/* 801F0A20 001ED980  2C 00 00 00 */	cmpwi r0, 0
/* 801F0A24 001ED984  40 80 00 08 */	bge lbl_801F0A2C
/* 801F0A28 001ED988  48 00 00 3C */	b lbl_801F0A64
lbl_801F0A2C:
/* 801F0A2C 001ED98C  80 85 00 24 */	lwz r4, 0x24(r5)
/* 801F0A30 001ED990  80 05 00 28 */	lwz r0, 0x28(r5)
/* 801F0A34 001ED994  90 83 01 80 */	stw r4, 0x180(r3)
/* 801F0A38 001ED998  90 03 01 84 */	stw r0, 0x184(r3)
/* 801F0A3C 001ED99C  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 801F0A40 001ED9A0  90 03 01 88 */	stw r0, 0x188(r3)
/* 801F0A44 001ED9A4  4E 80 00 20 */	blr 
lbl_801F0A48:
/* 801F0A48 001ED9A8  80 85 00 30 */	lwz r4, 0x30(r5)
/* 801F0A4C 001ED9AC  80 05 00 34 */	lwz r0, 0x34(r5)
/* 801F0A50 001ED9B0  90 83 01 80 */	stw r4, 0x180(r3)
/* 801F0A54 001ED9B4  90 03 01 84 */	stw r0, 0x184(r3)
/* 801F0A58 001ED9B8  80 05 00 38 */	lwz r0, 0x38(r5)
/* 801F0A5C 001ED9BC  90 03 01 88 */	stw r0, 0x188(r3)
/* 801F0A60 001ED9C0  4E 80 00 20 */	blr 
lbl_801F0A64:
/* 801F0A64 001ED9C4  80 85 00 3C */	lwz r4, 0x3c(r5)
/* 801F0A68 001ED9C8  80 05 00 40 */	lwz r0, 0x40(r5)
/* 801F0A6C 001ED9CC  90 83 01 80 */	stw r4, 0x180(r3)
/* 801F0A70 001ED9D0  90 03 01 84 */	stw r0, 0x184(r3)
/* 801F0A74 001ED9D4  80 05 00 44 */	lwz r0, 0x44(r5)
/* 801F0A78 001ED9D8  90 03 01 88 */	stw r0, 0x188(r3)
/* 801F0A7C 001ED9DC  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 0x8
.global lbl_802E7088
lbl_802E7088:
	.4byte 0x64726177
	.4byte 0x4D656E75
	.4byte 0x42617365
	.4byte 0x2E637070
	.4byte 0x00000000
	.4byte 0x64726177
	.4byte 0x4D656E75
	.4byte 0x42617365
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001C
	.4byte 0x00000000
	.4byte 0x7A656E3A
	.4byte 0x3A447261
	.4byte 0x774D656E
	.4byte 0x75426173
	.4byte 0x65000000
	.4byte 0x7A656E3A
	.4byte 0x3A447261
	.4byte 0x77536372
	.4byte 0x65656E00
	.4byte 0x803E7674
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q23zen12DrawMenuBase
__vt__Q23zen12DrawMenuBase:
	.4byte __RTTI__Q23zen12DrawMenuBase_1
	.4byte 0
	.4byte update__Q23zen10DrawScreenFv
	.4byte draw__Q23zen10DrawScreenFv
	.4byte draw__Q23zen12DrawMenuBaseFR8Graphics
	.4byte update__Q23zen12DrawMenuBaseFP10Controller
	.4byte start__Q23zen12DrawMenuBaseFv
	.4byte modeDefault__Q23zen12DrawMenuBaseFP10Controller
	.4byte modeSleep__Q23zen12DrawMenuBaseFP10Controller
	.4byte modeOperation__Q23zen12DrawMenuBaseFP10Controller
	.4byte setModeFunc__Q23zen12DrawMenuBaseFi

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 0x8
.global lbl_803E7650
lbl_803E7650:
	.4byte 0x68652530
	.4byte 0x32640000
.global lbl_803E7658
lbl_803E7658:
	.4byte 0x686D2530
	.4byte 0x32640000
.global lbl_803E7660
lbl_803E7660:
	.4byte 0x69253032
	.4byte 0x646C0000
.global lbl_803E7668
lbl_803E7668:
	.4byte 0x69253032
	.4byte 0x64720000
.global SELECT_CANCEL__Q23zen12DrawMenuBase
SELECT_CANCEL__Q23zen12DrawMenuBase:
	.4byte 0xFFFFFFFF
.global __RTTI__Q23zen10DrawScreen_4
__RTTI__Q23zen10DrawScreen_4:
	.4byte 0x802e70e4
	.4byte 0
.global __RTTI__Q23zen12DrawMenuBase_1
__RTTI__Q23zen12DrawMenuBase_1:
	.4byte 0x802e70d0
	.4byte 0x802e70f4
	.4byte 0

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 0x8
.global lbl_803EC3E8
lbl_803EC3E8:
	.4byte 0x3F800000
.global lbl_803EC3EC
lbl_803EC3EC:
	.4byte 0x00000000
.global lbl_803EC3F0
lbl_803EC3F0:
	.4byte 0x41200000
.global lbl_803EC3F4
lbl_803EC3F4:
	.4byte 0x42C80000
.global lbl_803EC3F8
lbl_803EC3F8:
	.4byte 0x42480000
	.4byte 0x00000000
.global "@827"
"@827":
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_803EC408
lbl_803EC408:
	.4byte 0x3F000000
