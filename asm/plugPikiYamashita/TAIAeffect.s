.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global init__18TAIAeffCloudOfDustFQ29EffectMgr12effTypeTablebiifiiiii
init__18TAIAeffCloudOfDustFQ29EffectMgr12effTypeTablebiifiiiii:
/* 801D5E50 001D2DB0  7C 08 02 A6 */	mflr r0
/* 801D5E54 001D2DB4  2C 08 00 04 */	cmpwi r8, 4
/* 801D5E58 001D2DB8  90 01 00 04 */	stw r0, 4(r1)
/* 801D5E5C 001D2DBC  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 801D5E60 001D2DC0  BF 61 00 34 */	stmw r27, 0x34(r1)
/* 801D5E64 001D2DC4  7C 7B 1B 78 */	mr r27, r3
/* 801D5E68 001D2DC8  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 801D5E6C 001D2DCC  3B 89 00 00 */	addi r28, r9, 0
/* 801D5E70 001D2DD0  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 801D5E74 001D2DD4  3B AA 00 00 */	addi r29, r10, 0
/* 801D5E78 001D2DD8  98 A3 00 20 */	stb r5, 0x20(r3)
/* 801D5E7C 001D2DDC  41 81 00 78 */	bgt .L_801D5EF4
/* 801D5E80 001D2DE0  90 9B 00 14 */	stw r4, 0x14(r27)
/* 801D5E84 001D2DE4  90 DB 00 18 */	stw r6, 0x18(r27)
/* 801D5E88 001D2DE8  90 FB 00 1C */	stw r7, 0x1c(r27)
/* 801D5E8C 001D2DEC  D0 3B 00 10 */	stfs f1, 0x10(r27)
/* 801D5E90 001D2DF0  91 1B 00 0C */	stw r8, 0xc(r27)
/* 801D5E94 001D2DF4  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D5E98 001D2DF8  54 03 10 3A */	slwi r3, r0, 2
/* 801D5E9C 001D2DFC  4B E7 11 69 */	bl alloc__6SystemFUl
/* 801D5EA0 001D2E00  90 7B 00 08 */	stw r3, 8(r27)
/* 801D5EA4 001D2E04  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D5EA8 001D2E08  2C 00 00 00 */	cmpwi r0, 0
/* 801D5EAC 001D2E0C  40 81 00 0C */	ble .L_801D5EB8
/* 801D5EB0 001D2E10  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D5EB4 001D2E14  93 83 00 00 */	stw r28, 0(r3)
.L_801D5EB8:
/* 801D5EB8 001D2E18  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D5EBC 001D2E1C  2C 00 00 01 */	cmpwi r0, 1
/* 801D5EC0 001D2E20  40 81 00 0C */	ble .L_801D5ECC
/* 801D5EC4 001D2E24  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D5EC8 001D2E28  93 A3 00 04 */	stw r29, 4(r3)
.L_801D5ECC:
/* 801D5ECC 001D2E2C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D5ED0 001D2E30  2C 00 00 02 */	cmpwi r0, 2
/* 801D5ED4 001D2E34  40 81 00 0C */	ble .L_801D5EE0
/* 801D5ED8 001D2E38  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D5EDC 001D2E3C  93 C3 00 08 */	stw r30, 8(r3)
.L_801D5EE0:
/* 801D5EE0 001D2E40  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D5EE4 001D2E44  2C 00 00 03 */	cmpwi r0, 3
/* 801D5EE8 001D2E48  40 81 00 0C */	ble .L_801D5EF4
/* 801D5EEC 001D2E4C  80 7B 00 08 */	lwz r3, 8(r27)
/* 801D5EF0 001D2E50  93 E3 00 0C */	stw r31, 0xc(r3)
.L_801D5EF4:
/* 801D5EF4 001D2E54  BB 61 00 34 */	lmw r27, 0x34(r1)
/* 801D5EF8 001D2E58  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801D5EFC 001D2E5C  38 21 00 48 */	addi r1, r1, 0x48
/* 801D5F00 001D2E60  7C 08 03 A6 */	mtlr r0
/* 801D5F04 001D2E64  4E 80 00 20 */	blr 

.global start__18TAIAeffCloudOfDustFR4Teki
start__18TAIAeffCloudOfDustFR4Teki:
/* 801D5F08 001D2E68  7C 08 02 A6 */	mflr r0
/* 801D5F0C 001D2E6C  90 01 00 04 */	stw r0, 4(r1)
/* 801D5F10 001D2E70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D5F14 001D2E74  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801D5F18 001D2E78  3B A0 00 00 */	li r29, 0
/* 801D5F1C 001D2E7C  3B 63 00 00 */	addi r27, r3, 0
/* 801D5F20 001D2E80  3B 84 00 00 */	addi r28, r4, 0
/* 801D5F24 001D2E84  57 BE 10 3A */	slwi r30, r29, 2
/* 801D5F28 001D2E88  3B E0 00 00 */	li r31, 0
/* 801D5F2C 001D2E8C  48 00 00 5C */	b .L_801D5F88
.L_801D5F30:
/* 801D5F30 001D2E90  80 BB 00 08 */	lwz r5, 8(r27)
/* 801D5F34 001D2E94  38 7B 00 00 */	addi r3, r27, 0
/* 801D5F38 001D2E98  38 9C 00 00 */	addi r4, r28, 0
/* 801D5F3C 001D2E9C  7C A5 F0 2E */	lwzx r5, r5, r30
/* 801D5F40 001D2EA0  48 00 02 BD */	bl getCollPart__18TAIAeffCloudOfDustFR4Tekii
/* 801D5F44 001D2EA4  28 03 00 00 */	cmplwi r3, 0
/* 801D5F48 001D2EA8  41 82 00 34 */	beq .L_801D5F7C
/* 801D5F4C 001D2EAC  C0 03 00 08 */	lfs f0, 8(r3)
/* 801D5F50 001D2EB0  38 7F 04 80 */	addi r3, r31, 0x480
/* 801D5F54 001D2EB4  38 00 00 01 */	li r0, 1
/* 801D5F58 001D2EB8  7C 1C 1D 2E */	stfsx f0, r28, r3
/* 801D5F5C 001D2EBC  7C 03 E8 30 */	slw r3, r0, r29
/* 801D5F60 001D2EC0  38 00 FF FF */	li r0, -1
/* 801D5F64 001D2EC4  A0 BC 04 C8 */	lhz r5, 0x4c8(r28)
/* 801D5F68 001D2EC8  54 A4 DF 3E */	rlwinm r4, r5, 0x1b, 0x1c, 0x1f
/* 801D5F6C 001D2ECC  7C 83 1B 78 */	or r3, r4, r3
/* 801D5F70 001D2ED0  50 65 2D F4 */	rlwimi r5, r3, 5, 0x17, 0x1a
/* 801D5F74 001D2ED4  B0 BC 04 C8 */	sth r5, 0x4c8(r28)
/* 801D5F78 001D2ED8  90 1C 04 74 */	stw r0, 0x474(r28)
.L_801D5F7C:
/* 801D5F7C 001D2EDC  3B DE 00 04 */	addi r30, r30, 4
/* 801D5F80 001D2EE0  3B BD 00 01 */	addi r29, r29, 1
/* 801D5F84 001D2EE4  3B FF 00 04 */	addi r31, r31, 4
.L_801D5F88:
/* 801D5F88 001D2EE8  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801D5F8C 001D2EEC  7C 1D 00 00 */	cmpw r29, r0
/* 801D5F90 001D2EF0  41 80 FF A0 */	blt .L_801D5F30
/* 801D5F94 001D2EF4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801D5F98 001D2EF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D5F9C 001D2EFC  38 21 00 30 */	addi r1, r1, 0x30
/* 801D5FA0 001D2F00  7C 08 03 A6 */	mtlr r0
/* 801D5FA4 001D2F04  4E 80 00 20 */	blr 

.global act__18TAIAeffCloudOfDustFR4Teki
act__18TAIAeffCloudOfDustFR4Teki:
/* 801D5FA8 001D2F08  7C 08 02 A6 */	mflr r0
/* 801D5FAC 001D2F0C  90 01 00 04 */	stw r0, 4(r1)
/* 801D5FB0 001D2F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D5FB4 001D2F14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D5FB8 001D2F18  3B E0 00 00 */	li r31, 0
/* 801D5FBC 001D2F1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D5FC0 001D2F20  3B C4 00 00 */	addi r30, r4, 0
/* 801D5FC4 001D2F24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D5FC8 001D2F28  3B A3 00 00 */	addi r29, r3, 0
/* 801D5FCC 001D2F2C  48 00 00 18 */	b .L_801D5FE4
.L_801D5FD0:
/* 801D5FD0 001D2F30  38 7D 00 00 */	addi r3, r29, 0
/* 801D5FD4 001D2F34  38 9E 00 00 */	addi r4, r30, 0
/* 801D5FD8 001D2F38  38 BF 00 00 */	addi r5, r31, 0
/* 801D5FDC 001D2F3C  48 00 00 75 */	bl createCloudOfDust__18TAIAeffCloudOfDustFR4Tekii
/* 801D5FE0 001D2F40  3B FF 00 01 */	addi r31, r31, 1
.L_801D5FE4:
/* 801D5FE4 001D2F44  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 801D5FE8 001D2F48  7C 1F 00 00 */	cmpw r31, r0
/* 801D5FEC 001D2F4C  41 80 FF E4 */	blt .L_801D5FD0
/* 801D5FF0 001D2F50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D5FF4 001D2F54  38 60 00 00 */	li r3, 0
/* 801D5FF8 001D2F58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D5FFC 001D2F5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D6000 001D2F60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D6004 001D2F64  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6008 001D2F68  7C 08 03 A6 */	mtlr r0
/* 801D600C 001D2F6C  4E 80 00 20 */	blr 

.global setType__18TAIAeffCloudOfDustFR8Vector3fii
setType__18TAIAeffCloudOfDustFR8Vector3fii:
/* 801D6010 001D2F70  7C 08 02 A6 */	mflr r0
/* 801D6014 001D2F74  90 01 00 04 */	stw r0, 4(r1)
/* 801D6018 001D2F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D601C 001D2F7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D6020 001D2F80  7C 9F 23 78 */	mr r31, r4
/* 801D6024 001D2F84  C0 24 00 00 */	lfs f1, 0(r4)
/* 801D6028 001D2F88  38 80 00 01 */	li r4, 1
/* 801D602C 001D2F8C  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 801D6030 001D2F90  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801D6034 001D2F94  4B E9 1E D1 */	bl getMinY__6MapMgrFffb
/* 801D6038 001D2F98  D0 3F 00 04 */	stfs f1, 4(r31)
/* 801D603C 001D2F9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D6040 001D2FA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D6044 001D2FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6048 001D2FA8  7C 08 03 A6 */	mtlr r0
/* 801D604C 001D2FAC  4E 80 00 20 */	blr 

.global createCloudOfDust__18TAIAeffCloudOfDustFR4Tekii
createCloudOfDust__18TAIAeffCloudOfDustFR4Tekii:
/* 801D6050 001D2FB0  7C 08 02 A6 */	mflr r0
/* 801D6054 001D2FB4  90 01 00 04 */	stw r0, 4(r1)
/* 801D6058 001D2FB8  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 801D605C 001D2FBC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801D6060 001D2FC0  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 801D6064 001D2FC4  3B 63 00 00 */	addi r27, r3, 0
/* 801D6068 001D2FC8  54 BA 10 3A */	slwi r26, r5, 2
/* 801D606C 001D2FCC  3B 25 00 00 */	addi r25, r5, 0
/* 801D6070 001D2FD0  3B 84 00 00 */	addi r28, r4, 0
/* 801D6074 001D2FD4  80 63 00 08 */	lwz r3, 8(r3)
/* 801D6078 001D2FD8  7C A3 D0 2E */	lwzx r5, r3, r26
/* 801D607C 001D2FDC  7F 63 DB 78 */	mr r3, r27
/* 801D6080 001D2FE0  48 00 01 7D */	bl getCollPart__18TAIAeffCloudOfDustFR4Tekii
/* 801D6084 001D2FE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801D6088 001D2FE8  41 82 01 5C */	beq .L_801D61E4
/* 801D608C 001D2FEC  A0 9C 04 C8 */	lhz r4, 0x4c8(r28)
/* 801D6090 001D2FF0  7F BC D2 14 */	add r29, r28, r26
/* 801D6094 001D2FF4  38 00 00 01 */	li r0, 1
/* 801D6098 001D2FF8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 801D609C 001D2FFC  C4 1D 04 80 */	lfsu f0, 0x480(r29)
/* 801D60A0 001D3000  54 83 DF 3E */	rlwinm r3, r4, 0x1b, 0x1c, 0x1f
/* 801D60A4 001D3004  7C 1E C8 30 */	slw r30, r0, r25
/* 801D60A8 001D3008  EF E1 00 28 */	fsubs f31, f1, f0
/* 801D60AC 001D300C  7C 60 F0 39 */	and. r0, r3, r30
/* 801D60B0 001D3010  41 82 01 14 */	beq .L_801D61C4
/* 801D60B4 001D3014  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 801D60B8 001D3018  38 80 00 01 */	li r4, 1
/* 801D60BC 001D301C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801D60C0 001D3020  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 801D60C4 001D3024  4B E9 1E 41 */	bl getMinY__6MapMgrFffb
/* 801D60C8 001D3028  C0 5F 00 08 */	lfs f2, 8(r31)
/* 801D60CC 001D302C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801D60D0 001D3030  EC 42 00 28 */	fsubs f2, f2, f0
/* 801D60D4 001D3034  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801D60D8 001D3038  40 80 01 04 */	bge .L_801D61DC
/* 801D60DC 001D303C  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 801D60E0 001D3040  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D60E4 001D3044  40 80 00 F8 */	bge .L_801D61DC
/* 801D60E8 001D3048  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 801D60EC 001D304C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801D60F0 001D3050  40 80 00 EC */	bge .L_801D61DC
/* 801D60F4 001D3054  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 801D60F8 001D3058  38 80 00 01 */	li r4, 1
/* 801D60FC 001D305C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801D6100 001D3060  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 801D6104 001D3064  4B E9 20 D5 */	bl getCurrTri__6MapMgrFffb
/* 801D6108 001D3068  28 03 00 00 */	cmplwi r3, 0
/* 801D610C 001D306C  41 82 00 D0 */	beq .L_801D61DC
/* 801D6110 001D3070  4B F3 FF 71 */	bl getAttribute__7MapCodeFP11CollTriInfo
/* 801D6114 001D3074  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801D6118 001D3078  7C 79 1B 78 */	mr r25, r3
/* 801D611C 001D307C  38 7B 00 00 */	addi r3, r27, 0
/* 801D6120 001D3080  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801D6124 001D3084  38 B9 00 00 */	addi r5, r25, 0
/* 801D6128 001D3088  38 81 00 20 */	addi r4, r1, 0x20
/* 801D612C 001D308C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801D6130 001D3090  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801D6134 001D3094  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801D6138 001D3098  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801D613C 001D309C  81 9B 00 04 */	lwz r12, 4(r27)
/* 801D6140 001D30A0  80 DB 00 08 */	lwz r6, 8(r27)
/* 801D6144 001D30A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D6148 001D30A8  7C C6 D0 2E */	lwzx r6, r6, r26
/* 801D614C 001D30AC  7D 88 03 A6 */	mtlr r12
/* 801D6150 001D30B0  4E 80 00 21 */	blrl 
/* 801D6154 001D30B4  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 801D6158 001D30B8  2C 04 FF FF */	cmpwi r4, -1
/* 801D615C 001D30BC  41 82 00 18 */	beq .L_801D6174
/* 801D6160 001D30C0  80 6D 31 80 */	lwz r3, effectMgr@sda21(r13)
/* 801D6164 001D30C4  38 A1 00 20 */	addi r5, r1, 0x20
/* 801D6168 001D30C8  38 C0 00 00 */	li r6, 0
/* 801D616C 001D30CC  38 E0 00 00 */	li r7, 0
/* 801D6170 001D30D0  4B FC 69 C9 */	bl "create__9EffectMgrFQ29EffectMgr12effTypeTableR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
.L_801D6174:
/* 801D6174 001D30D4  80 BB 00 18 */	lwz r5, 0x18(r27)
/* 801D6178 001D30D8  2C 05 FF FF */	cmpwi r5, -1
/* 801D617C 001D30DC  41 82 00 10 */	beq .L_801D618C
/* 801D6180 001D30E0  38 7C 00 00 */	addi r3, r28, 0
/* 801D6184 001D30E4  38 9C 00 00 */	addi r4, r28, 0
/* 801D6188 001D30E8  4B EB 44 2D */	bl playEventSound__8CreatureFP8Creaturei
.L_801D618C:
/* 801D618C 001D30EC  80 9B 00 1C */	lwz r4, 0x1c(r27)
/* 801D6190 001D30F0  2C 04 FF FF */	cmpwi r4, -1
/* 801D6194 001D30F4  41 82 00 14 */	beq .L_801D61A8
/* 801D6198 001D30F8  80 6D 31 78 */	lwz r3, rumbleMgr@sda21(r13)
/* 801D619C 001D30FC  38 C1 00 20 */	addi r6, r1, 0x20
/* 801D61A0 001D3100  38 A0 00 00 */	li r5, 0
/* 801D61A4 001D3104  4B FA 6C 31 */	bl start__9RumbleMgrFiiR8Vector3f
.L_801D61A8:
/* 801D61A8 001D3108  93 3C 04 74 */	stw r25, 0x474(r28)
/* 801D61AC 001D310C  A0 7C 04 C8 */	lhz r3, 0x4c8(r28)
/* 801D61B0 001D3110  54 60 DF 3E */	rlwinm r0, r3, 0x1b, 0x1c, 0x1f
/* 801D61B4 001D3114  7C 00 F0 78 */	andc r0, r0, r30
/* 801D61B8 001D3118  50 03 2D F4 */	rlwimi r3, r0, 5, 0x17, 0x1a
/* 801D61BC 001D311C  B0 7C 04 C8 */	sth r3, 0x4c8(r28)
/* 801D61C0 001D3120  48 00 00 1C */	b .L_801D61DC
.L_801D61C4:
/* 801D61C4 001D3124  C0 02 BD 98 */	lfs f0, lbl_803EBF98@sda21(r2)
/* 801D61C8 001D3128  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801D61CC 001D312C  40 81 00 10 */	ble .L_801D61DC
/* 801D61D0 001D3130  7C 60 F3 78 */	or r0, r3, r30
/* 801D61D4 001D3134  50 04 2D F4 */	rlwimi r4, r0, 5, 0x17, 0x1a
/* 801D61D8 001D3138  B0 9C 04 C8 */	sth r4, 0x4c8(r28)
.L_801D61DC:
/* 801D61DC 001D313C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801D61E0 001D3140  D0 1D 00 00 */	stfs f0, 0(r29)
.L_801D61E4:
/* 801D61E4 001D3144  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 801D61E8 001D3148  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 801D61EC 001D314C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801D61F0 001D3150  38 21 00 58 */	addi r1, r1, 0x58
/* 801D61F4 001D3154  7C 08 03 A6 */	mtlr r0
/* 801D61F8 001D3158  4E 80 00 20 */	blr 

.global getCollPart__18TAIAeffCloudOfDustFR4Tekii
getCollPart__18TAIAeffCloudOfDustFR4Tekii:
/* 801D61FC 001D315C  7C 08 02 A6 */	mflr r0
/* 801D6200 001D3160  90 01 00 04 */	stw r0, 4(r1)
/* 801D6204 001D3164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6208 001D3168  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D620C 001D316C  3B E5 00 00 */	addi r31, r5, 0
/* 801D6210 001D3170  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D6214 001D3174  7C 7E 1B 78 */	mr r30, r3
/* 801D6218 001D3178  80 64 02 20 */	lwz r3, 0x220(r4)
/* 801D621C 001D317C  38 9F 00 00 */	addi r4, r31, 0
/* 801D6220 001D3180  4B EB 34 F1 */	bl getSphere__8CollInfoFUl
/* 801D6224 001D3184  28 03 00 00 */	cmplwi r3, 0
/* 801D6228 001D3188  40 82 00 0C */	bne .L_801D6234
/* 801D622C 001D318C  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 801D6230 001D3190  28 00 00 00 */	cmplwi r0, 0
.L_801D6234:
/* 801D6234 001D3194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D6238 001D3198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D623C 001D319C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D6240 001D31A0  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6244 001D31A4  7C 08 03 A6 */	mtlr r0
/* 801D6248 001D31A8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802E4B60:
	.asciz "TAIAeffect.cpp"
	.skip 1
lbl_802E4B70:
	.asciz "TAIAeffect"
	.skip 1
lbl_802E4B7C:
	.asciz "TAIAeffCloudOfDust"
	.skip 1
lbl_802E4B90:
	.asciz "TaiAction"
	.skip 2
lbl_802E4B9C:
	.4byte __RTTI__9TaiAction
	.4byte 0
	.4byte 0
.global __vt__18TAIAeffCloudOfDust
__vt__18TAIAeffCloudOfDust:
	.4byte __RTTI__18TAIAeffCloudOfDust
	.4byte 0
	.4byte start__18TAIAeffCloudOfDustFR4Teki
	.4byte finish__9TaiActionFR4Teki
	.4byte act__18TAIAeffCloudOfDustFR4Teki
	.4byte actByEvent__9TaiActionFR9TekiEvent
	.4byte hasNextState__9TaiActionFv
	.4byte setType__18TAIAeffCloudOfDustFR8Vector3fii

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
.global RUMBLE_NONE__18TAIAeffCloudOfDust
RUMBLE_NONE__18TAIAeffCloudOfDust:
	.4byte 0xFFFFFFFF
__RTTI__9TaiAction:
	.4byte lbl_802E4B90
	.4byte 0x00000000
__RTTI__18TAIAeffCloudOfDust:
	.4byte lbl_802E4B7C
	.4byte lbl_802E4B9C

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EBF98:
	.4byte 0x00000000
