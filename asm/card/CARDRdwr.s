.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global BlockReadCallback
BlockReadCallback:
/* 80209214 00206174  7C 08 02 A6 */	mflr r0
/* 80209218 00206178  90 01 00 04 */	stw r0, 4(r1)
/* 8020921C 0020617C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80209220 00206180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80209224 00206184  3B E3 00 00 */	addi r31, r3, 0
/* 80209228 00206188  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 8020922C 0020618C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80209230 00206190  1C BF 01 08 */	mulli r5, r31, 0x108
/* 80209234 00206194  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80209238 00206198  38 03 34 20 */	addi r0, r3, __CARDBlock@l
/* 8020923C 0020619C  7C 9D 23 79 */	or. r29, r4, r4
/* 80209240 002061A0  7F C0 2A 14 */	add r30, r0, r5
/* 80209244 002061A4  41 80 00 50 */	blt .L_80209294
/* 80209248 002061A8  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 8020924C 002061AC  38 03 02 00 */	addi r0, r3, 0x200
/* 80209250 002061B0  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 80209254 002061B4  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80209258 002061B8  38 03 02 00 */	addi r0, r3, 0x200
/* 8020925C 002061BC  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 80209260 002061C0  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 80209264 002061C4  38 03 02 00 */	addi r0, r3, 0x200
/* 80209268 002061C8  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 8020926C 002061CC  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 80209270 002061D0  34 03 FF FF */	addic. r0, r3, -1
/* 80209274 002061D4  90 1E 00 AC */	stw r0, 0xac(r30)
/* 80209278 002061D8  40 81 00 1C */	ble .L_80209294
/* 8020927C 002061DC  3C 60 80 21 */	lis r3, BlockReadCallback@ha
/* 80209280 002061E0  38 83 92 14 */	addi r4, r3, BlockReadCallback@l
/* 80209284 002061E4  38 7F 00 00 */	addi r3, r31, 0
/* 80209288 002061E8  4B FF F8 09 */	bl __CARDReadSegment
/* 8020928C 002061EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80209290 002061F0  40 80 00 44 */	bge .L_802092D4
.L_80209294:
/* 80209294 002061F4  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80209298 002061F8  28 00 00 00 */	cmplwi r0, 0
/* 8020929C 002061FC  40 82 00 10 */	bne .L_802092AC
/* 802092A0 00206200  38 7E 00 00 */	addi r3, r30, 0
/* 802092A4 00206204  38 9D 00 00 */	addi r4, r29, 0
/* 802092A8 00206208  4B FF FC 79 */	bl __CARDPutControlBlock
.L_802092AC:
/* 802092AC 0020620C  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 802092B0 00206210  28 00 00 00 */	cmplwi r0, 0
/* 802092B4 00206214  7C 0C 03 78 */	mr r12, r0
/* 802092B8 00206218  41 82 00 1C */	beq .L_802092D4
/* 802092BC 0020621C  38 00 00 00 */	li r0, 0
/* 802092C0 00206220  7D 88 03 A6 */	mtlr r12
/* 802092C4 00206224  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 802092C8 00206228  38 7F 00 00 */	addi r3, r31, 0
/* 802092CC 0020622C  38 9D 00 00 */	addi r4, r29, 0
/* 802092D0 00206230  4E 80 00 21 */	blrl 
.L_802092D4:
/* 802092D4 00206234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802092D8 00206238  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802092DC 0020623C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802092E0 00206240  7C 08 03 A6 */	mtlr r0
/* 802092E4 00206244  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802092E8 00206248  38 21 00 20 */	addi r1, r1, 0x20
/* 802092EC 0020624C  4E 80 00 20 */	blr 

.global __CARDRead
__CARDRead:
/* 802092F0 00206250  7C 08 02 A6 */	mflr r0
/* 802092F4 00206254  1D 23 01 08 */	mulli r9, r3, 0x108
/* 802092F8 00206258  90 01 00 04 */	stw r0, 4(r1)
/* 802092FC 0020625C  3D 00 80 3D */	lis r8, __CARDBlock@ha
/* 80209300 00206260  94 21 FF F8 */	stwu r1, -8(r1)
/* 80209304 00206264  38 08 34 20 */	addi r0, r8, __CARDBlock@l
/* 80209308 00206268  7D 00 4A 14 */	add r8, r0, r9
/* 8020930C 0020626C  80 08 00 00 */	lwz r0, 0(r8)
/* 80209310 00206270  2C 00 00 00 */	cmpwi r0, 0
/* 80209314 00206274  40 82 00 0C */	bne .L_80209320
/* 80209318 00206278  38 60 FF FD */	li r3, -3
/* 8020931C 0020627C  48 00 00 28 */	b .L_80209344
.L_80209320:
/* 80209320 00206280  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 80209324 00206284  54 A0 BA 7E */	srwi r0, r5, 9
/* 80209328 00206288  3C A0 80 21 */	lis r5, BlockReadCallback@ha
/* 8020932C 0020628C  90 08 00 AC */	stw r0, 0xac(r8)
/* 80209330 00206290  38 05 92 14 */	addi r0, r5, BlockReadCallback@l
/* 80209334 00206294  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 80209338 00206298  7C 04 03 78 */	mr r4, r0
/* 8020933C 0020629C  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 80209340 002062A0  4B FF F7 51 */	bl __CARDReadSegment
.L_80209344:
/* 80209344 002062A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80209348 002062A8  38 21 00 08 */	addi r1, r1, 8
/* 8020934C 002062AC  7C 08 03 A6 */	mtlr r0
/* 80209350 002062B0  4E 80 00 20 */	blr 

.global BlockWriteCallback
BlockWriteCallback:
/* 80209354 002062B4  7C 08 02 A6 */	mflr r0
/* 80209358 002062B8  90 01 00 04 */	stw r0, 4(r1)
/* 8020935C 002062BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80209360 002062C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80209364 002062C4  3B E3 00 00 */	addi r31, r3, 0
/* 80209368 002062C8  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 8020936C 002062CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80209370 002062D0  1C BF 01 08 */	mulli r5, r31, 0x108
/* 80209374 002062D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80209378 002062D8  38 03 34 20 */	addi r0, r3, __CARDBlock@l
/* 8020937C 002062DC  7C 9D 23 79 */	or. r29, r4, r4
/* 80209380 002062E0  7F C0 2A 14 */	add r30, r0, r5
/* 80209384 002062E4  41 80 00 50 */	blt .L_802093D4
/* 80209388 002062E8  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 8020938C 002062EC  38 03 00 80 */	addi r0, r3, 0x80
/* 80209390 002062F0  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 80209394 002062F4  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80209398 002062F8  38 03 00 80 */	addi r0, r3, 0x80
/* 8020939C 002062FC  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 802093A0 00206300  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 802093A4 00206304  38 03 00 80 */	addi r0, r3, 0x80
/* 802093A8 00206308  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 802093AC 0020630C  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 802093B0 00206310  34 03 FF FF */	addic. r0, r3, -1
/* 802093B4 00206314  90 1E 00 AC */	stw r0, 0xac(r30)
/* 802093B8 00206318  40 81 00 1C */	ble .L_802093D4
/* 802093BC 0020631C  3C 60 80 21 */	lis r3, BlockWriteCallback@ha
/* 802093C0 00206320  38 83 93 54 */	addi r4, r3, BlockWriteCallback@l
/* 802093C4 00206324  38 7F 00 00 */	addi r3, r31, 0
/* 802093C8 00206328  4B FF F8 01 */	bl __CARDWritePage
/* 802093CC 0020632C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802093D0 00206330  40 80 00 44 */	bge .L_80209414
.L_802093D4:
/* 802093D4 00206334  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 802093D8 00206338  28 00 00 00 */	cmplwi r0, 0
/* 802093DC 0020633C  40 82 00 10 */	bne .L_802093EC
/* 802093E0 00206340  38 7E 00 00 */	addi r3, r30, 0
/* 802093E4 00206344  38 9D 00 00 */	addi r4, r29, 0
/* 802093E8 00206348  4B FF FB 39 */	bl __CARDPutControlBlock
.L_802093EC:
/* 802093EC 0020634C  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 802093F0 00206350  28 00 00 00 */	cmplwi r0, 0
/* 802093F4 00206354  7C 0C 03 78 */	mr r12, r0
/* 802093F8 00206358  41 82 00 1C */	beq .L_80209414
/* 802093FC 0020635C  38 00 00 00 */	li r0, 0
/* 80209400 00206360  7D 88 03 A6 */	mtlr r12
/* 80209404 00206364  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 80209408 00206368  38 7F 00 00 */	addi r3, r31, 0
/* 8020940C 0020636C  38 9D 00 00 */	addi r4, r29, 0
/* 80209410 00206370  4E 80 00 21 */	blrl 
.L_80209414:
/* 80209414 00206374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80209418 00206378  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020941C 0020637C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80209420 00206380  7C 08 03 A6 */	mtlr r0
/* 80209424 00206384  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80209428 00206388  38 21 00 20 */	addi r1, r1, 0x20
/* 8020942C 0020638C  4E 80 00 20 */	blr 

.global __CARDWrite
__CARDWrite:
/* 80209430 00206390  7C 08 02 A6 */	mflr r0
/* 80209434 00206394  1D 23 01 08 */	mulli r9, r3, 0x108
/* 80209438 00206398  90 01 00 04 */	stw r0, 4(r1)
/* 8020943C 0020639C  3D 00 80 3D */	lis r8, __CARDBlock@ha
/* 80209440 002063A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 80209444 002063A4  38 08 34 20 */	addi r0, r8, __CARDBlock@l
/* 80209448 002063A8  7D 00 4A 14 */	add r8, r0, r9
/* 8020944C 002063AC  80 08 00 00 */	lwz r0, 0(r8)
/* 80209450 002063B0  2C 00 00 00 */	cmpwi r0, 0
/* 80209454 002063B4  40 82 00 0C */	bne .L_80209460
/* 80209458 002063B8  38 60 FF FD */	li r3, -3
/* 8020945C 002063BC  48 00 00 28 */	b .L_80209484
.L_80209460:
/* 80209460 002063C0  90 E8 00 D4 */	stw r7, 0xd4(r8)
/* 80209464 002063C4  54 A0 C9 FE */	srwi r0, r5, 7
/* 80209468 002063C8  3C A0 80 21 */	lis r5, BlockWriteCallback@ha
/* 8020946C 002063CC  90 08 00 AC */	stw r0, 0xac(r8)
/* 80209470 002063D0  38 05 93 54 */	addi r0, r5, BlockWriteCallback@l
/* 80209474 002063D4  90 88 00 B0 */	stw r4, 0xb0(r8)
/* 80209478 002063D8  7C 04 03 78 */	mr r4, r0
/* 8020947C 002063DC  90 C8 00 B4 */	stw r6, 0xb4(r8)
/* 80209480 002063E0  4B FF F7 49 */	bl __CARDWritePage
.L_80209484:
/* 80209484 002063E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80209488 002063E8  38 21 00 08 */	addi r1, r1, 8
/* 8020948C 002063EC  7C 08 03 A6 */	mtlr r0
/* 80209490 002063F0  4E 80 00 20 */	blr 

.global CARDGetXferredBytes
CARDGetXferredBytes:
/* 80209494 002063F4  1C 03 01 08 */	mulli r0, r3, 0x108
/* 80209498 002063F8  3C 60 80 3D */	lis r3, __CARDBlock@ha
/* 8020949C 002063FC  38 63 34 20 */	addi r3, r3, __CARDBlock@l
/* 802094A0 00206400  7C 63 02 14 */	add r3, r3, r0
/* 802094A4 00206404  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 802094A8 00206408  4E 80 00 20 */	blr 
