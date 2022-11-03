.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80008360 000052C0  38 63 A0 02 */	addi r3, r3, 0x80F3A002@l
/* 80008364 000052C4  48 1F FA E9 */	bl DSPSendMailToDSP
.L_80008368:
/* 80008368 000052C8  48 1F FA AD */	bl DSPCheckMailToDSP
/* 8000836C 000052CC  28 03 00 00 */	cmplwi r3, 0
/* 80008370 000052D0  40 82 FF F8 */	bne .L_80008368
/* 80008374 000052D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80008378 000052D8  48 1F FA D5 */	bl DSPSendMailToDSP
.L_8000837C:
/* 8000837C 000052DC  48 1F FA 99 */	bl DSPCheckMailToDSP
/* 80008380 000052E0  28 03 00 00 */	cmplwi r3, 0
/* 80008384 000052E4  40 82 FF F8 */	bne .L_8000837C
/* 80008388 000052E8  3C 60 80 F4 */	lis r3, 0x80F3C002@ha
/* 8000838C 000052EC  38 63 C0 02 */	addi r3, r3, 0x80F3C002@l
/* 80008390 000052F0  48 1F FA BD */	bl DSPSendMailToDSP
.L_80008394:
/* 80008394 000052F4  48 1F FA 81 */	bl DSPCheckMailToDSP
/* 80008398 000052F8  28 03 00 00 */	cmplwi r3, 0
/* 8000839C 000052FC  40 82 FF F8 */	bne .L_80008394

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80039E98 00036DF8  40 80 01 20 */	bge .L_80039FB8
/* 80039E9C 00036DFC  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 80039EA0 00036E00  40 80 00 C4 */	bge .L_80039F64
/* 80039EA4 00036E04  80 D9 00 00 */	lwz r6, 0(r25)
/* 80039EA8 00036E08  7F 03 C3 78 */	mr r3, r24
/* 80039EAC 00036E0C  80 19 00 04 */	lwz r0, 4(r25)
/* 80039EB0 00036E10  38 81 05 E8 */	addi r4, r1, 0x5e8
/* 80039EB4 00036E14  38 A1 05 D8 */	addi r5, r1, 0x5d8
/* 80039EB8 00036E18  90 C1 05 E8 */	stw r6, 0x5e8(r1)
/* 80039EBC 00036E1C  38 C1 05 D0 */	addi r6, r1, 0x5d0
/* 80039EC0 00036E20  90 01 05 EC */	stw r0, 0x5ec(r1)
/* 80039EC4 00036E24  80 19 00 08 */	lwz r0, 8(r25)
/* 80039EC8 00036E28  90 01 05 F0 */	stw r0, 0x5f0(r1)
/* 80039ECC 00036E2C  80 F9 00 18 */	lwz r7, 0x18(r25)
/* 80039ED0 00036E30  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 80039ED4 00036E34  90 E1 05 F4 */	stw r7, 0x5f4(r1)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 8021F204 0021C164  98 1F 00 04 */	stb r0, 4(r31)
/* 8021F208 0021C168  98 9F 00 05 */	stb r4, 5(r31)
/* 8021F20C 0021C16C  98 1F 00 06 */	stb r0, 6(r31)
/* 8021F210 0021C170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021F214 0021C174  38 21 00 10 */	addi r1, r1, 0x10
/* 8021F218 0021C178  80 01 00 04 */	lwz r0, 4(r1)
/* 8021F21C 0021C17C  7C 08 03 A6 */	mtlr r0
/* 8021F220 0021C180  4E 80 00 20 */	blr 

.global TRKInterruptHandler
TRKInterruptHandler:
/* 8021F224 0021C184  7C 5A 03 A6 */	mtspr 0x1a, r2
/* 8021F228 0021C188  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 8021F22C 0021C18C  7C 93 42 A6 */	mfspr r4, 0x113
/* 8021F230 0021C190  7C 40 00 26 */	mfcr r2
/* 8021F234 0021C194  7C 53 43 A6 */	mtspr 0x113, r2
/* 8021F238 0021C198  3C 40 80 3D */	lis r2, gTRKState@h
/* 8021F23C 0021C19C  60 42 5D 98 */	ori r2, r2, gTRKState@l
/* 8021F240 0021C1A0  80 42 00 8C */	lwz r2, 0x8c(r2)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80216E48 00213DA8  38 7E 00 00 */	addi r3, r30, 0
/* 80216E4C 00213DAC  38 81 00 19 */	addi r4, r1, 0x19
/* 80216E50 00213DB0  38 A0 00 01 */	li r5, 1
/* 80216E54 00213DB4  4E 80 00 21 */	blrl 
/* 80216E58 00213DB8  28 03 00 00 */	cmplwi r3, 0
/* 80216E5C 00213DBC  40 82 00 0C */	bne .L_80216E68
/* 80216E60 00213DC0  38 60 FF FF */	li r3, -1
/* 80216E64 00213DC4  48 00 00 A8 */	b .L_80216F0C
.L_80216E68:
/* 80216E68 00213DC8  3A 52 00 01 */	addi r18, r18, 1
.L_80216E6C:
/* 80216E6C 00213DCC  80 01 02 24 */	lwz r0, 0x224(r1)
/* 80216E70 00213DD0  7C 12 00 00 */	cmpw r18, r0
/* 80216E74 00213DD4  41 80 FF CC */	blt .L_80216E40
.L_80216E78:
/* 80216E78 00213DD8  2C 18 00 00 */	cmpwi r24, 0
/* 80216E7C 00213DDC  41 82 00 2C */	beq .L_80216EA8
/* 80216E80 00213DE0  39 9F 00 00 */	addi r12, r31, 0
/* 80216E84 00213DE4  7D 88 03 A6 */	mtlr r12

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80028674 000255D4  40 82 FF C4 */	bne .L_80028638
.L_80028678:
/* 80028678 000255D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8002867C 000255DC  40 82 00 20 */	bne .L_8002869C
/* 80028680 000255E0  80 7D 03 94 */	lwz r3, 0x394(r29)
/* 80028684 000255E4  38 1D 03 90 */	addi r0, r29, 0x390
/* 80028688 000255E8  90 7A 00 04 */	stw r3, 4(r26)
/* 8002868C 000255EC  90 1A 00 00 */	stw r0, 0(r26)
/* 80028690 000255F0  80 7D 03 94 */	lwz r3, 0x394(r29)
/* 80028694 000255F4  93 43 00 00 */	stw r26, 0(r3)
/* 80028698 000255F8  93 5D 03 94 */	stw r26, 0x394(r29)
.L_8002869C:
/* 8002869C 000255FC  93 FA 00 08 */	stw r31, 8(r26)
/* 800286A0 00025600  93 DA 00 0C */	stw r30, 0xc(r26)
/* 800286A4 00025604  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 800286A8 00025608  90 1A 00 10 */	stw r0, 0x10(r26)
/* 800286AC 0002560C  80 7D 03 B0 */	lwz r3, 0x3b0(r29)
/* 800286B0 00025610  38 03 00 01 */	addi r0, r3, 1

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 80046EF4 00043E54  38 7F 00 0C */	addi r3, r31, 0xc
/* 80046EF8 00043E58  4B FF EA 3D */	bl __ct__6SystemFv
/* 80046EFC 00043E5C  3C 80 80 04 */	lis r4, __dt__6SystemFv@ha
/* 80046F00 00043E60  38 84 61 B8 */	addi r4, r4, __dt__6SystemFv@l
/* 80046F04 00043E64  38 BF 00 00 */	addi r5, r31, 0
/* 80046F08 00043E68  48 1C DA A5 */	bl __register_global_object
/* 80046F0C 00043E6C  3C 60 80 22 */	lis r3, __vt__6Stream@ha
/* 80046F10 00043E70  38 C3 73 98 */	addi r6, r3, __vt__6Stream@l
/* 80046F14 00043E74  3C 60 80 22 */	lis r3, __vt__18RandomAccessStream@ha
/* 80046F18 00043E78  90 DF 03 A4 */	stw r6, 0x3a4(r31)
/* 80046F1C 00043E7C  38 A3 74 C8 */	addi r5, r3, __vt__18RandomAccessStream@l
/* 80046F20 00043E80  3C 60 80 2A */	lis r3, __vt__10AramStream@ha
/* 80046F24 00043E84  90 BF 03 A4 */	stw r5, 0x3a4(r31)
/* 80046F28 00043E88  38 03 56 44 */	addi r0, r3, __vt__10AramStream@l
/* 80046F2C 00043E8C  90 1F 03 A4 */	stw r0, 0x3a4(r31)
/* 80046F30 00043E90  3C 80 80 2A */	lis r4, __vt__9DVDStream@ha

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 8020ABC0 00207B20  4B FE D7 B5 */	bl EXIProbe
/* 8020ABC4 00207B24  2C 03 00 00 */	cmpwi r3, 0
/* 8020ABC8 00207B28  40 82 00 0C */	bne .L_8020ABD4
/* 8020ABCC 00207B2C  3B C0 FF FD */	li r30, -3
/* 8020ABD0 00207B30  48 00 02 60 */	b .L_8020AE30
.L_8020ABD4:
/* 8020ABD4 00207B34  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8020ABD8 00207B38  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8020ABDC 00207B3C  40 82 01 14 */	bne .L_8020ACF0
/* 8020ABE0 00207B40  38 7D 00 00 */	addi r3, r29, 0
/* 8020ABE4 00207B44  38 9F 00 18 */	addi r4, r31, 0x18
/* 8020ABE8 00207B48  4B DF E3 79 */	bl __CARDUnlock
/* 8020ABEC 00207B4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020ABF0 00207B50  41 80 02 40 */	blt .L_8020AE30
/* 8020ABF4 00207B54  4B FE FD B1 */	bl __OSLockSramEx
/* 8020ABF8 00207B58  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 8020ABFC 00207B5C  7C 83 02 14 */	add r4, r3, r0

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 8015D024 00159F84  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8015D028 00159F88  EC 22 08 28 */	fsubs f1, f2, f1
/* 8015D02C 00159F8C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8015D030 00159F90  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8015D034 00159F94  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8015D038 00159F98  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 8015D03C 00159F9C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8015D040 00159FA0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8015D044 00159FA4  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 8015D048 00159FA8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8015D04C 00159FAC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8015D050 00159FB0  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8015D054 00159FB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8015D058 00159FB8  EC 22 00 2A */	fadds f1, f2, f0
/* 8015D05C 00159FBC  4B EB 0B E5 */	bl sqrtf__3stdFf
/* 8015D060 00159FC0  80 9D 00 4C */	lwz r4, 0x4c(r29)
