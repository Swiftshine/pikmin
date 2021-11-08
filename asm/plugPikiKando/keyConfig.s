.include "macros.inc"

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 800C32F4 000C0254  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C32F8 000C0258  C0 84 00 08 */	lfs f4, 8(r4)
/* 800C32FC 000C025C  C0 23 00 08 */	lfs f1, 8(r3)
/* 800C3300 000C0260  EC 43 10 28 */	fsubs f2, f3, f2
/* 800C3304 000C0264  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800C3308 000C0268  EC 04 08 28 */	fsubs f0, f4, f1
/* 800C330C 000C026C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800C3310 000C0270  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800C3314 000C0274  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800C3318 000C0278  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 800C331C 000C027C  EC 40 00 32 */	fmuls f2, f0, f0
/* 800C3320 000C0280  C0 02 95 50 */	lfs f0, lbl_803E9750@sda21(r2)
/* 800C3324 000C0284  EC 21 00 72 */	fmuls f1, f1, f1
/* 800C3328 000C0288  EF E2 08 2A */	fadds f31, f2, f1
/* 800C332C 000C028C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800C3330 000C0290  40 81 00 5C */	ble lbl_800C338C
/* 800C3334 000C0294  FC 20 F8 34 */	frsqrte f1, f31
/* 800C3338 000C0298  C8 62 95 58 */	lfd f3, "@1504"@sda21(r2)
/* 800C333C 000C029C  C8 42 95 60 */	lfd f2, "@1505"@sda21(r2)
/* 800C3340 000C02A0  FC 01 00 72 */	fmul f0, f1, f1
/* 800C3344 000C02A4  FC 23 00 72 */	fmul f1, f3, f1
/* 800C3348 000C02A8  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C334C 000C02AC  FC 02 00 28 */	fsub f0, f2, f0
/* 800C3350 000C02B0  FC 21 00 32 */	fmul f1, f1, f0
/* 800C3354 000C02B4  FC 01 00 72 */	fmul f0, f1, f1
/* 800C3358 000C02B8  FC 23 00 72 */	fmul f1, f3, f1
/* 800C335C 000C02BC  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C3360 000C02C0  FC 02 00 28 */	fsub f0, f2, f0
/* 800C3364 000C02C4  FC 21 00 32 */	fmul f1, f1, f0
/* 800C3368 000C02C8  FC 01 00 72 */	fmul f0, f1, f1
/* 800C336C 000C02CC  FC 23 00 72 */	fmul f1, f3, f1
/* 800C3370 000C02D0  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C3374 000C02D4  FC 02 00 28 */	fsub f0, f2, f0
/* 800C3378 000C02D8  FC 01 00 32 */	fmul f0, f1, f0
/* 800C337C 000C02DC  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C3380 000C02E0  FC 00 00 18 */	frsp f0, f0
/* 800C3384 000C02E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800C3388 000C02E8  C3 E1 00 2C */	lfs f31, 0x2c(r1)
lbl_800C338C:
/* 800C338C 000C02EC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 800C3390 000C02F0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800C3394 000C02F4  EC 21 00 72 */	fmuls f1, f1, f1
/* 800C3398 000C02F8  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 800C339C 000C02FC  EC 00 00 32 */	fmuls f0, f0, f0
/* 800C33A0 000C0300  EC 42 00 B2 */	fmuls f2, f2, f2
/* 800C33A4 000C0304  EC 01 00 2A */	fadds f0, f1, f0
/* 800C33A8 000C0308  EC 22 00 2A */	fadds f1, f2, f0
/* 800C33AC 000C030C  4B F4 A8 95 */	bl sqrtf__3stdFf
/* 800C33B0 000C0310  C0 02 95 50 */	lfs f0, lbl_803E9750@sda21(r2)
/* 800C33B4 000C0314  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800C33B8 000C0318  41 82 00 28 */	beq lbl_800C33E0
/* 800C33BC 000C031C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800C33C0 000C0320  EC 00 08 24 */	fdivs f0, f0, f1
/* 800C33C4 000C0324  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800C33C8 000C0328  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800C33CC 000C032C  EC 00 08 24 */	fdivs f0, f0, f1
/* 800C33D0 000C0330  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800C33D4 000C0334  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800C33D8 000C0338  EC 00 08 24 */	fdivs f0, f0, f1
/* 800C33DC 000C033C  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_800C33E0:
/* 800C33E0 000C0340  C0 02 95 68 */	lfs f0, lbl_803E9768@sda21(r2)
/* 800C33E4 000C0344  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800C33E8 000C0348  4C 40 13 82 */	cror 2, 0, 2
/* 800C33EC 000C034C  40 82 00 14 */	bne lbl_800C3400
/* 800C33F0 000C0350  7F C3 F3 78 */	mr r3, r30
/* 800C33F4 000C0354  48 00 00 3D */	bl initAdjust__7ActWeedFv
/* 800C33F8 000C0358  38 60 00 00 */	li r3, 0
/* 800C33FC 000C035C  48 00 00 18 */	b lbl_800C3414
lbl_800C3400:
/* 800C3400 000C0360  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800C3404 000C0364  38 81 00 58 */	addi r4, r1, 0x58
/* 800C3408 000C0368  C0 22 95 6C */	lfs f1, lbl_803E976C@sda21(r2)
/* 800C340C 000C036C  48 00 89 CD */	bl setSpeed__4PikiFfR8Vector3f
/* 800C3410 000C0370  38 60 00 00 */	li r3, 0
lbl_800C3414:
/* 800C3414 000C0374  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 800C3418 000C0378  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800C341C 000C037C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800C3420 000C0380  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800C3424 000C0384  38 21 00 78 */	addi r1, r1, 0x78
/* 800C3428 000C0388  7C 08 03 A6 */	mtlr r0
/* 800C342C 000C038C  4E 80 00 20 */	blr 

.global initAdjust__7ActWeedFv
initAdjust__7ActWeedFv:
/* 800C3430 000C0390  38 00 00 01 */	li r0, 1
/* 800C3434 000C0394  B0 03 00 18 */	sth r0, 0x18(r3)
/* 800C3438 000C0398  4E 80 00 20 */	blr 

.global exeAdjust__7ActWeedFv
exeAdjust__7ActWeedFv:
/* 800C343C 000C039C  7C 08 02 A6 */	mflr r0
/* 800C3440 000C03A0  90 01 00 04 */	stw r0, 4(r1)
/* 800C3444 000C03A4  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 800C3448 000C03A8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800C344C 000C03AC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800C3450 000C03B0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800C3454 000C03B4  7C 7E 1B 78 */	mr r30, r3
/* 800C3458 000C03B8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 800C345C 000C03BC  28 04 00 00 */	cmplwi r4, 0
/* 800C3460 000C03C0  40 82 00 18 */	bne lbl_800C3478
/* 800C3464 000C03C4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 800C3468 000C03C8  38 00 00 01 */	li r0, 1
/* 800C346C 000C03CC  38 60 00 01 */	li r3, 1
/* 800C3470 000C03D0  98 04 04 00 */	stb r0, 0x400(r4)
/* 800C3474 000C03D4  48 00 01 C0 */	b lbl_800C3634
lbl_800C3478:
/* 800C3478 000C03D8  88 04 00 0C */	lbz r0, 0xc(r4)
/* 800C347C 000C03DC  28 00 00 00 */	cmplwi r0, 0
/* 800C3480 000C03E0  40 82 00 4C */	bne lbl_800C34CC
/* 800C3484 000C03E4  38 00 00 00 */	li r0, 0
/* 800C3488 000C03E8  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 800C348C 000C03EC  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800C3490 000C03F0  48 02 23 81 */	bl getRandomGrass__8GrassGenFv
/* 800C3494 000C03F4  90 7E 00 20 */	stw r3, 0x20(r30)
/* 800C3498 000C03F8  38 61 00 38 */	addi r3, r1, 0x38
/* 800C349C 000C03FC  38 80 00 02 */	li r4, 2
/* 800C34A0 000C0400  48 05 BA B9 */	bl __ct__14PaniMotionInfoFi
/* 800C34A4 000C0404  3B E3 00 00 */	addi r31, r3, 0
/* 800C34A8 000C0408  38 61 00 30 */	addi r3, r1, 0x30
/* 800C34AC 000C040C  38 80 00 02 */	li r4, 2
/* 800C34B0 000C0410  48 05 BA A9 */	bl __ct__14PaniMotionInfoFi
/* 800C34B4 000C0414  7C 64 1B 78 */	mr r4, r3
/* 800C34B8 000C0418  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800C34BC 000C041C  7F E5 FB 78 */	mr r5, r31
/* 800C34C0 000C0420  48 00 75 19 */	bl startMotion__4PikiFR14PaniMotionInfoR14PaniMotionInfo
/* 800C34C4 000C0424  38 60 00 00 */	li r3, 0
/* 800C34C8 000C0428  48 00 01 6C */	b lbl_800C3634
lbl_800C34CC:
/* 800C34CC 000C042C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 800C34D0 000C0430  C4 03 00 94 */	lfsu f0, 0x94(r3)
/* 800C34D4 000C0434  C0 24 00 00 */	lfs f1, 0(r4)
/* 800C34D8 000C0438  C0 64 00 04 */	lfs f3, 4(r4)
/* 800C34DC 000C043C  C0 43 00 04 */	lfs f2, 4(r3)
/* 800C34E0 000C0440  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C34E4 000C0444  C0 84 00 08 */	lfs f4, 8(r4)
/* 800C34E8 000C0448  C0 23 00 08 */	lfs f1, 8(r3)
/* 800C34EC 000C044C  EC 43 10 28 */	fsubs f2, f3, f2
/* 800C34F0 000C0450  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800C34F4 000C0454  EC 04 08 28 */	fsubs f0, f4, f1
/* 800C34F8 000C0458  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800C34FC 000C045C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800C3500 000C0460  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800C3504 000C0464  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 800C3508 000C0468  EC 40 00 32 */	fmuls f2, f0, f0
/* 800C350C 000C046C  C0 02 95 50 */	lfs f0, lbl_803E9750@sda21(r2)
/* 800C3510 000C0470  EC 21 00 72 */	fmuls f1, f1, f1
/* 800C3514 000C0474  EF E2 08 2A */	fadds f31, f2, f1
/* 800C3518 000C0478  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800C351C 000C047C  40 81 00 5C */	ble lbl_800C3578
/* 800C3520 000C0480  FC 20 F8 34 */	frsqrte f1, f31
/* 800C3524 000C0484  C8 62 95 58 */	lfd f3, "@1504"@sda21(r2)
/* 800C3528 000C0488  C8 42 95 60 */	lfd f2, "@1505"@sda21(r2)
/* 800C352C 000C048C  FC 01 00 72 */	fmul f0, f1, f1
/* 800C3530 000C0490  FC 23 00 72 */	fmul f1, f3, f1
/* 800C3534 000C0494  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C3538 000C0498  FC 02 00 28 */	fsub f0, f2, f0
/* 800C353C 000C049C  FC 21 00 32 */	fmul f1, f1, f0
/* 800C3540 000C04A0  FC 01 00 72 */	fmul f0, f1, f1
/* 800C3544 000C04A4  FC 23 00 72 */	fmul f1, f3, f1
/* 800C3548 000C04A8  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C354C 000C04AC  FC 02 00 28 */	fsub f0, f2, f0
/* 800C3550 000C04B0  FC 21 00 32 */	fmul f1, f1, f0
/* 800C3554 000C04B4  FC 01 00 72 */	fmul f0, f1, f1
/* 800C3558 000C04B8  FC 23 00 72 */	fmul f1, f3, f1
/* 800C355C 000C04BC  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C3560 000C04C0  FC 02 00 28 */	fsub f0, f2, f0
/* 800C3564 000C04C4  FC 01 00 32 */	fmul f0, f1, f0
/* 800C3568 000C04C8  FC 1F 00 32 */	fmul f0, f31, f0
/* 800C356C 000C04CC  FC 00 00 18 */	frsp f0, f0
/* 800C3570 000C04D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800C3574 000C04D4  C3 E1 00 2C */	lfs f31, 0x2c(r1)
lbl_800C3578:
/* 800C3578 000C04D8  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 800C357C 000C04DC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800C3580 000C04E0  EC 21 00 72 */	fmuls f1, f1, f1
/* 800C3584 000C04E4  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 800C3588 000C04E8  EC 00 00 32 */	fmuls f0, f0, f0
/* 800C358C 000C04EC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 800C3590 000C04F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800C3594 000C04F4  EC 22 00 2A */	fadds f1, f2, f0
/* 800C3598 000C04F8  4B F4 A6 A9 */	bl sqrtf__3stdFf
/* 800C359C 000C04FC  C0 02 95 50 */	lfs f0, lbl_803E9750@sda21(r2)
/* 800C35A0 000C0500  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800C35A4 000C0504  41 82 00 28 */	beq lbl_800C35CC
/* 800C35A8 000C0508  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800C35AC 000C050C  EC 00 08 24 */	fdivs f0, f0, f1
/* 800C35B0 000C0510  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800C35B4 000C0514  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 800C35B8 000C0518  EC 00 08 24 */	fdivs f0, f0, f1
/* 800C35BC 000C051C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800C35C0 000C0520  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800C35C4 000C0524  EC 00 08 24 */	fdivs f0, f0, f1
/* 800C35C8 000C0528  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_800C35CC:
/* 800C35CC 000C052C  C0 02 95 70 */	lfs f0, lbl_803E9770@sda21(r2)
/* 800C35D0 000C0530  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800C35D4 000C0534  40 80 00 4C */	bge lbl_800C3620
/* 800C35D8 000C0538  7F C3 F3 78 */	mr r3, r30
/* 800C35DC 000C053C  48 00 00 75 */	bl initNuking__7ActWeedFv
/* 800C35E0 000C0540  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 800C35E4 000C0544  38 60 00 00 */	li r3, 0
/* 800C35E8 000C0548  C0 0D BB E0 */	lfs f0, lbl_803E0900@sda21(r13)
/* 800C35EC 000C054C  D4 04 00 A4 */	stfsu f0, 0xa4(r4)
/* 800C35F0 000C0550  C0 0D BB E4 */	lfs f0, lbl_803E0904@sda21(r13)
/* 800C35F4 000C0554  D0 04 00 04 */	stfs f0, 4(r4)
/* 800C35F8 000C0558  C0 0D BB E8 */	lfs f0, lbl_803E0908@sda21(r13)
/* 800C35FC 000C055C  D0 04 00 08 */	stfs f0, 8(r4)
/* 800C3600 000C0560  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 800C3604 000C0564  C0 0D BB EC */	lfs f0, lbl_803E090C@sda21(r13)
/* 800C3608 000C0568  D4 04 00 70 */	stfsu f0, 0x70(r4)
/* 800C360C 000C056C  C0 0D BB F0 */	lfs f0, lbl_803E0910@sda21(r13)
/* 800C3610 000C0570  D0 04 00 04 */	stfs f0, 4(r4)
/* 800C3614 000C0574  C0 0D BB F4 */	lfs f0, lbl_803E0914@sda21(r13)
/* 800C3618 000C0578  D0 04 00 08 */	stfs f0, 8(r4)

.section .text, "ax"  # 0x80005560 - 0x80221F60
/* 801D9424 001D6384  48 00 00 0C */	b lbl_801D9430
lbl_801D9428:
/* 801D9428 001D6388  C0 02 BE 28 */	lfs f0, lbl_803EC028@sda21(r2)
/* 801D942C 001D638C  EC 42 00 2A */	fadds f2, f2, f0
lbl_801D9430:
/* 801D9430 001D6390  C0 02 BD A0 */	lfs f0, lbl_803EBFA0@sda21(r2)
/* 801D9434 001D6394  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D9438 001D6398  40 80 00 0C */	bge lbl_801D9444
/* 801D943C 001D639C  FC 20 10 50 */	fneg f1, f2
/* 801D9440 001D63A0  48 00 00 08 */	b lbl_801D9448
lbl_801D9444:
/* 801D9444 001D63A4  FC 20 10 90 */	fmr f1, f2
lbl_801D9448:
/* 801D9448 001D63A8  C0 02 BE 2C */	lfs f0, lbl_803EC02C@sda21(r2)
/* 801D944C 001D63AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9450 001D63B0  40 81 00 10 */	ble lbl_801D9460
/* 801D9454 001D63B4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801D9458 001D63B8  90 1E 00 08 */	stw r0, 8(r30)
/* 801D945C 001D63BC  48 00 00 48 */	b lbl_801D94A4
lbl_801D9460:
/* 801D9460 001D63C0  C0 02 BD CC */	lfs f0, lbl_803EBFCC@sda21(r2)
/* 801D9464 001D63C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D9468 001D63C8  40 81 00 10 */	ble lbl_801D9478
/* 801D946C 001D63CC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801D9470 001D63D0  90 1E 00 08 */	stw r0, 8(r30)
/* 801D9474 001D63D4  48 00 00 30 */	b lbl_801D94A4
lbl_801D9478:
/* 801D9478 001D63D8  C0 02 BE 30 */	lfs f0, lbl_803EC030@sda21(r2)
/* 801D947C 001D63DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D9480 001D63E0  40 81 00 1C */	ble lbl_801D949C
/* 801D9484 001D63E4  C0 02 BE 34 */	lfs f0, lbl_803EC034@sda21(r2)
/* 801D9488 001D63E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D948C 001D63EC  40 80 00 10 */	bge lbl_801D949C
/* 801D9490 001D63F0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 801D9494 001D63F4  90 1E 00 08 */	stw r0, 8(r30)
/* 801D9498 001D63F8  48 00 00 0C */	b lbl_801D94A4
lbl_801D949C:
/* 801D949C 001D63FC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 801D94A0 001D6400  90 1E 00 08 */	stw r0, 8(r30)
lbl_801D94A4:
/* 801D94A4 001D6404  38 7E 00 00 */	addi r3, r30, 0
/* 801D94A8 001D6408  38 9F 00 00 */	addi r4, r31, 0
/* 801D94AC 001D640C  4B FD 38 59 */	bl start__17TAIAreserveMotionFR4Teki
/* 801D94B0 001D6410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D94B4 001D6414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D94B8 001D6418  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D94BC 001D641C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D94C0 001D6420  7C 08 03 A6 */	mtlr r0
/* 801D94C4 001D6424  4E 80 00 20 */	blr 

.global act__16TAIAattackMiurinFR4Teki
act__16TAIAattackMiurinFR4Teki:
/* 801D94C8 001D6428  7C 08 02 A6 */	mflr r0
/* 801D94CC 001D642C  90 01 00 04 */	stw r0, 4(r1)
/* 801D94D0 001D6430  94 21 FE 48 */	stwu r1, -0x1b8(r1)
/* 801D94D4 001D6434  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 801D94D8 001D6438  DB C1 01 A8 */	stfd f30, 0x1a8(r1)
/* 801D94DC 001D643C  BE C1 01 80 */	stmw r22, 0x180(r1)
/* 801D94E0 001D6440  3B E4 00 00 */	addi r31, r4, 0
/* 801D94E4 001D6444  3B C0 00 00 */	li r30, 0
/* 801D94E8 001D6448  4B FD 39 D1 */	bl act__17TAIAreserveMotionFR4Teki
/* 801D94EC 001D644C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D94F0 001D6450  41 82 08 B8 */	beq lbl_801D9DA8
/* 801D94F4 001D6454  80 1F 03 A8 */	lwz r0, 0x3a8(r31)
/* 801D94F8 001D6458  2C 00 00 01 */	cmpwi r0, 1
/* 801D94FC 001D645C  40 82 04 30 */	bne lbl_801D992C
/* 801D9500 001D6460  3C 80 68 6E */	lis r4, 0x686E6452@ha
/* 801D9504 001D6464  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 801D9508 001D6468  38 84 64 52 */	addi r4, r4, 0x686E6452@l
/* 801D950C 001D646C  4B EB 02 05 */	bl getSphere__8CollInfoFUl
/* 801D9510 001D6470  C0 02 BD A0 */	lfs f0, lbl_803EBFA0@sda21(r2)
/* 801D9514 001D6474  7C 7D 1B 79 */	or. r29, r3, r3
/* 801D9518 001D6478  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 801D951C 001D647C  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 801D9520 001D6480  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 801D9524 001D6484  41 82 04 08 */	beq lbl_801D992C
/* 801D9528 001D6488  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 801D952C 001D648C  38 80 00 01 */	li r4, 1
/* 801D9530 001D6490  C0 3D 00 04 */	lfs f1, 4(r29)
/* 801D9534 001D6494  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 801D9538 001D6498  4B E8 E9 CD */	bl getMinY__6MapMgrFffb
/* 801D953C 001D649C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801D9540 001D64A0  38 A1 01 34 */	addi r5, r1, 0x134
/* 801D9544 001D64A4  38 80 00 43 */	li r4, 0x43
/* 801D9548 001D64A8  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 801D954C 001D64AC  38 C0 00 00 */	li r6, 0
/* 801D9550 001D64B0  38 E0 00 00 */	li r7, 0
/* 801D9554 001D64B4  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 801D9558 001D64B8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 801D955C 001D64BC  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 801D9560 001D64C0  80 6D 31 80 */	lwz r3, effectMgr@sda21(r13)
/* 801D9564 001D64C4  4B FC 35 D5 */	bl "create__9EffectMgrFQ29EffectMgr12effTypeTableR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 801D9568 001D64C8  80 6D 31 80 */	lwz r3, effectMgr@sda21(r13)
/* 801D956C 001D64CC  38 BD 00 04 */	addi r5, r29, 4
/* 801D9570 001D64D0  38 80 00 4C */	li r4, 0x4c
/* 801D9574 001D64D4  38 C0 00 00 */	li r6, 0
/* 801D9578 001D64D8  38 E0 00 00 */	li r7, 0
/* 801D957C 001D64DC  4B FC 35 BD */	bl "create__9EffectMgrFQ29EffectMgr12effTypeTableR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 801D9580 001D64E0  80 6D 31 20 */	lwz r3, naviMgr@sda21(r13)
/* 801D9584 001D64E4  38 00 00 00 */	li r0, 0
/* 801D9588 001D64E8  90 61 01 44 */	stw r3, 0x144(r1)
/* 801D958C 001D64EC  38 61 01 40 */	addi r3, r1, 0x140
/* 801D9590 001D64F0  90 01 01 48 */	stw r0, 0x148(r1)
/* 801D9594 001D64F4  4B EB 68 29 */	bl first__8IteratorFv
/* 801D9598 001D64F8  3C 80 80 2B */	lis r4, __vt__11Interaction@ha
/* 801D959C 001D64FC  C3 C2 BD E0 */	lfs f30, lbl_803EBFE0@sda21(r2)
/* 801D95A0 001D6500  3C 60 80 2B */	lis r3, __vt__12InteractBury@ha
/* 801D95A4 001D6504  C3 E2 BD A0 */	lfs f31, lbl_803EBFA0@sda21(r2)
/* 801D95A8 001D6508  3B 84 CF 9C */	addi r28, r4, __vt__11Interaction@l
/* 801D95AC 001D650C  3B 63 D1 10 */	addi r27, r3, __vt__12InteractBury@l
/* 801D95B0 001D6510  3B 5D 00 04 */	addi r26, r29, 4
/* 801D95B4 001D6514  3B 21 00 7C */	addi r25, r1, 0x7c
/* 801D95B8 001D6518  3B 01 00 78 */	addi r24, r1, 0x78
/* 801D95BC 001D651C  3A E1 00 74 */	addi r23, r1, 0x74
/* 801D95C0 001D6520  48 00 01 20 */	b lbl_801D96E0
lbl_801D95C4:
/* 801D95C4 001D6524  80 81 01 40 */	lwz r4, 0x140(r1)
/* 801D95C8 001D6528  2C 04 FF FF */	cmpwi r4, -1
/* 801D95CC 001D652C  40 82 00 20 */	bne lbl_801D95EC
/* 801D95D0 001D6530  80 61 01 44 */	lwz r3, 0x144(r1)
/* 801D95D4 001D6534  38 80 00 00 */	li r4, 0
/* 801D95D8 001D6538  81 83 00 00 */	lwz r12, 0(r3)
/* 801D95DC 001D653C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D95E0 001D6540  7D 88 03 A6 */	mtlr r12
/* 801D95E4 001D6544  4E 80 00 21 */	blrl 
/* 801D95E8 001D6548  48 00 00 18 */	b lbl_801D9600
lbl_801D95EC:
/* 801D95EC 001D654C  80 61 01 44 */	lwz r3, 0x144(r1)
/* 801D95F0 001D6550  81 83 00 00 */	lwz r12, 0(r3)
/* 801D95F4 001D6554  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D95F8 001D6558  7D 88 03 A6 */	mtlr r12
/* 801D95FC 001D655C  4E 80 00 21 */	blrl 
lbl_801D9600:
/* 801D9600 001D6560  D3 E1 00 DC */	stfs f31, 0xdc(r1)
/* 801D9604 001D6564  38 E3 00 94 */	addi r7, r3, 0x94
/* 801D9608 001D6568  3A C3 00 00 */	addi r22, r3, 0
/* 801D960C 001D656C  D3 E1 00 D8 */	stfs f31, 0xd8(r1)
/* 801D9610 001D6570  38 97 00 00 */	addi r4, r23, 0
/* 801D9614 001D6574  38 B8 00 00 */	addi r5, r24, 0
/* 801D9618 001D6578  D3 E1 00 D4 */	stfs f31, 0xd4(r1)
/* 801D961C 001D657C  38 D9 00 00 */	addi r6, r25, 0
/* 801D9620 001D6580  38 61 00 D4 */	addi r3, r1, 0xd4
/* 801D9624 001D6584  C0 27 00 08 */	lfs f1, 8(r7)
/* 801D9628 001D6588  C0 1A 00 08 */	lfs f0, 8(r26)
/* 801D962C 001D658C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D9630 001D6590  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801D9634 001D6594  C0 27 00 04 */	lfs f1, 4(r7)
/* 801D9638 001D6598  C0 1A 00 04 */	lfs f0, 4(r26)
/* 801D963C 001D659C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D9640 001D65A0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801D9644 001D65A4  C0 27 00 00 */	lfs f1, 0(r7)
/* 801D9648 001D65A8  C0 1A 00 00 */	lfs f0, 0(r26)
/* 801D964C 001D65AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D9650 001D65B0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801D9654 001D65B4  4B E8 40 39 */	bl set__8Vector3fFRCfRCfRCf
/* 801D9658 001D65B8  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 801D965C 001D65BC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 801D9660 001D65C0  EC 21 00 72 */	fmuls f1, f1, f1
/* 801D9664 001D65C4  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 801D9668 001D65C8  EC 00 00 32 */	fmuls f0, f0, f0
/* 801D966C 001D65CC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801D9670 001D65D0  EC 01 00 2A */	fadds f0, f1, f0
/* 801D9674 001D65D4  EC 22 00 2A */	fadds f1, f2, f0
/* 801D9678 001D65D8  4B E3 45 C9 */	bl sqrtf__3stdFf
/* 801D967C 001D65DC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801D9680 001D65E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D9684 001D65E4  40 80 00 54 */	bge lbl_801D96D8
/* 801D9688 001D65E8  93 81 01 4C */	stw r28, 0x14c(r1)
/* 801D968C 001D65EC  38 00 00 01 */	li r0, 1
/* 801D9690 001D65F0  38 76 00 00 */	addi r3, r22, 0
/* 801D9694 001D65F4  93 E1 01 50 */	stw r31, 0x150(r1)
/* 801D9698 001D65F8  38 81 01 4C */	addi r4, r1, 0x14c
/* 801D969C 001D65FC  93 61 01 4C */	stw r27, 0x14c(r1)
/* 801D96A0 001D6600  98 01 01 54 */	stb r0, 0x154(r1)
/* 801D96A4 001D6604  D3 C1 01 58 */	stfs f30, 0x158(r1)
/* 801D96A8 001D6608  81 96 00 00 */	lwz r12, 0(r22)
/* 801D96AC 001D660C  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 801D96B0 001D6610  7D 88 03 A6 */	mtlr r12
/* 801D96B4 001D6614  4E 80 00 21 */	blrl 
/* 801D96B8 001D6618  7F E3 FB 78 */	mr r3, r31
/* 801D96BC 001D661C  4B FC 93 8D */	bl isNaviWatch__5YTekiFv
/* 801D96C0 001D6620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D96C4 001D6624  41 82 00 14 */	beq lbl_801D96D8
/* 801D96C8 001D6628  80 6D 2F 6C */	lwz r3, playerState@sda21(r13)
/* 801D96CC 001D662C  38 80 00 33 */	li r4, 0x33
/* 801D96D0 001D6630  38 63 00 70 */	addi r3, r3, 0x70
/* 801D96D4 001D6634  4B EA A3 2D */	bl setOn__11ResultFlagsFi
lbl_801D96D8:
/* 801D96D8 001D6638  38 61 01 40 */	addi r3, r1, 0x140
/* 801D96DC 001D663C  4B EB 65 BD */	bl next__8IteratorFv
lbl_801D96E0:
/* 801D96E0 001D6640  80 61 01 44 */	lwz r3, 0x144(r1)
/* 801D96E4 001D6644  80 81 01 40 */	lwz r4, 0x140(r1)
/* 801D96E8 001D6648  81 83 00 00 */	lwz r12, 0(r3)
/* 801D96EC 001D664C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801D96F0 001D6650  7D 88 03 A6 */	mtlr r12
/* 801D96F4 001D6654  4E 80 00 21 */	blrl 
/* 801D96F8 001D6658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D96FC 001D665C  41 82 00 0C */	beq lbl_801D9708
/* 801D9700 001D6660  38 00 00 01 */	li r0, 1
/* 801D9704 001D6664  48 00 00 30 */	b lbl_801D9734
lbl_801D9708:
/* 801D9708 001D6668  80 61 01 44 */	lwz r3, 0x144(r1)
/* 801D970C 001D666C  80 81 01 40 */	lwz r4, 0x140(r1)
/* 801D9710 001D6670  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9714 001D6674  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D9718 001D6678  7D 88 03 A6 */	mtlr r12
/* 801D971C 001D667C  4E 80 00 21 */	blrl 
/* 801D9720 001D6680  28 03 00 00 */	cmplwi r3, 0
/* 801D9724 001D6684  40 82 00 0C */	bne lbl_801D9730
/* 801D9728 001D6688  38 00 00 01 */	li r0, 1
/* 801D972C 001D668C  48 00 00 08 */	b lbl_801D9734
lbl_801D9730:
/* 801D9730 001D6690  38 00 00 00 */	li r0, 0
lbl_801D9734:
/* 801D9734 001D6694  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801D9738 001D6698  41 82 FE 8C */	beq lbl_801D95C4
/* 801D973C 001D669C  80 6D 30 68 */	lwz r3, pikiMgr@sda21(r13)
/* 801D9740 001D66A0  38 00 00 00 */	li r0, 0
/* 801D9744 001D66A4  90 61 01 60 */	stw r3, 0x160(r1)
/* 801D9748 001D66A8  38 61 01 5C */	addi r3, r1, 0x15c

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.global lbl_802AE7E0
lbl_802AE7E0:
	.4byte 0x6B657943
	.4byte 0x6F6E6669
	.4byte 0x672E6370
	.4byte 0x70000000
	.4byte 0x6B657943
	.4byte 0x6F6E6669
	.4byte 0x67000000
	.4byte 0x8F578D87
	.4byte 0x834A815B
	.4byte 0x835C838B
	.4byte 0x00000000
	.4byte 0x8341835E
	.4byte 0x8362834E
	.4byte 0x00000000
	.4byte 0x8381836A
	.4byte 0x8385815B
	.4byte 0x00000000
	.4byte 0x4B657943
	.4byte 0x6F6E6669
	.4byte 0x673A3A4B
	.4byte 0x65790000
	.4byte 0x436F7265
	.4byte 0x4E6F6465
	.4byte 0x00000000
	.4byte 0x803DEDD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x803DEDD8
	.4byte 0x00000000
	.4byte 0x803DEDE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x803DEDD8
	.4byte 0x00000000
	.4byte 0x803DEDE0
	.4byte 0x00000000
	.4byte 0x803DEDF0
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q29KeyConfig3Key
__vt__Q29KeyConfig3Key:
	.4byte __RTTI__Q29KeyConfig3Key
	.4byte 0
	.4byte getAgeNodeType__5ANodeFv
	.4byte read__Q29KeyConfig3KeyFR18RandomAccessStream
	.4byte update__4NodeFv
	.4byte draw__4NodeFR8Graphics
	.4byte render__4NodeFR8Graphics
	.4byte concat__4NodeFv
	.4byte concat__4NodeFR3VQS
	.4byte concat__4NodeFR3SRT
	.4byte concat__4NodeFR8Matrix4f
	.4byte getModelMatrix__4NodeFv
	.4byte 0x4b657943
	.4byte 0x6f6e6669
	.4byte 0x67000000
	.4byte 0x803dedd8
	.4byte 0
	.4byte 0x803dede0
	.4byte 0
	.4byte 0x803dedf0
	.4byte 0
	.4byte 0
.global __vt__9KeyConfig
__vt__9KeyConfig:
	.4byte __RTTI__9KeyConfig
	.4byte 0
	.4byte getAgeNodeType__5ANodeFv
	.4byte read__9KeyConfigFR18RandomAccessStream
	.4byte update__4NodeFv
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
	.4byte 0x802ae778
	.4byte 0
.global lbl_803DED90
lbl_803DED90:
	.4byte 0x6B696F2E
	.4byte 0x63707000
.global kontMode__3KIO
kontMode__3KIO:
	.4byte 0x00000002
	.4byte 0x00000000
.global lbl_803DEDA0
lbl_803DEDA0:
	.4byte 0x3C4E6F64
	.4byte 0x653E0000
.global lbl_803DEDA8
lbl_803DEDA8:
	.4byte 0x938A82B0
	.4byte 0x00000000
.global lbl_803DEDB0
lbl_803DEDB0:
	.4byte 0x94B282AB
	.4byte 0x00000000
.global lbl_803DEDB8
lbl_803DEDB8:
	.4byte 0x89F08E55
	.4byte 0x00000000
.global lbl_803DEDC0
lbl_803DEDC0:
	.4byte 0x7061726D
	.4byte 0x732F0000
.global lbl_803DEDC8
lbl_803DEDC8:
	.4byte 0x6B65792E
	.4byte 0x62696E00
	.4byte 0x414E6F64
	.4byte 0x65000000
	.4byte 0x803DEDD0
	.4byte 0x00000000
	.4byte 0x802AE834
	.4byte 0x802AE840
	.4byte 0x4E6F6465
	.4byte 0x00000000
