.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __ct__13P2DPerspGraphFiiiifff
__ct__13P2DPerspGraphFiiiifff:
/* 801B0190 001AD0F0  7C 08 02 A6 */	mflr r0
/* 801B0194 001AD0F4  90 01 00 04 */	stw r0, 4(r1)
/* 801B0198 001AD0F8  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 801B019C 001AD0FC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801B01A0 001AD100  FF E0 18 90 */	fmr f31, f3
/* 801B01A4 001AD104  DB C1 00 38 */	stfd f30, 0x38(r1)
/* 801B01A8 001AD108  FF C0 10 90 */	fmr f30, f2
/* 801B01AC 001AD10C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 801B01B0 001AD110  FF A0 08 90 */	fmr f29, f1
/* 801B01B4 001AD114  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B01B8 001AD118  90 61 00 08 */	stw r3, 8(r1)
/* 801B01BC 001AD11C  80 61 00 08 */	lwz r3, 8(r1)
/* 801B01C0 001AD120  4B FF F5 ED */	bl __ct__14P2DGrafContextFiiii
/* 801B01C4 001AD124  83 E1 00 08 */	lwz r31, 8(r1)
/* 801B01C8 001AD128  3C 60 80 2E */	lis r3, __vt__13P2DPerspGraph@ha
/* 801B01CC 001AD12C  38 03 06 98 */	addi r0, r3, __vt__13P2DPerspGraph@l
/* 801B01D0 001AD130  FC 20 E8 90 */	fmr f1, f29
/* 801B01D4 001AD134  FC 40 F0 90 */	fmr f2, f30
/* 801B01D8 001AD138  FC 60 F8 90 */	fmr f3, f31
/* 801B01DC 001AD13C  90 1F 00 00 */	stw r0, 0(r31)
/* 801B01E0 001AD140  7F E3 FB 78 */	mr r3, r31
/* 801B01E4 001AD144  48 00 00 31 */	bl set__13P2DPerspGraphFfff
/* 801B01E8 001AD148  38 00 00 02 */	li r0, 2
/* 801B01EC 001AD14C  90 1F 00 04 */	stw r0, 4(r31)
/* 801B01F0 001AD150  7F E3 FB 78 */	mr r3, r31
/* 801B01F4 001AD154  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801B01F8 001AD158  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801B01FC 001AD15C  CB C1 00 38 */	lfd f30, 0x38(r1)
/* 801B0200 001AD160  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 801B0204 001AD164  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B0208 001AD168  38 21 00 48 */	addi r1, r1, 0x48
/* 801B020C 001AD16C  7C 08 03 A6 */	mtlr r0
/* 801B0210 001AD170  4E 80 00 20 */	blr 

.global set__13P2DPerspGraphFfff
set__13P2DPerspGraphFfff:
/* 801B0214 001AD174  7C 08 02 A6 */	mflr r0
/* 801B0218 001AD178  90 01 00 04 */	stw r0, 4(r1)
/* 801B021C 001AD17C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B0220 001AD180  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801B0224 001AD184  FF E0 18 90 */	fmr f31, f3
/* 801B0228 001AD188  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801B022C 001AD18C  FF C0 10 90 */	fmr f30, f2
/* 801B0230 001AD190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B0234 001AD194  7C 7F 1B 78 */	mr r31, r3
/* 801B0238 001AD198  48 00 00 3D */	bl setFovy__13P2DPerspGraphFf
/* 801B023C 001AD19C  D3 DF 00 D8 */	stfs f30, 0xd8(r31)
/* 801B0240 001AD1A0  7F E3 FB 78 */	mr r3, r31
/* 801B0244 001AD1A4  D3 FF 00 DC */	stfs f31, 0xdc(r31)
/* 801B0248 001AD1A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801B024C 001AD1AC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B0250 001AD1B0  7D 88 03 A6 */	mtlr r12
/* 801B0254 001AD1B4  4E 80 00 21 */	blrl 
/* 801B0258 001AD1B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B025C 001AD1BC  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801B0260 001AD1C0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801B0264 001AD1C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B0268 001AD1C8  38 21 00 30 */	addi r1, r1, 0x30
/* 801B026C 001AD1CC  7C 08 03 A6 */	mtlr r0
/* 801B0270 001AD1D0  4E 80 00 20 */	blr 

.global setFovy__13P2DPerspGraphFf
setFovy__13P2DPerspGraphFf:
/* 801B0274 001AD1D4  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 801B0278 001AD1D8  C0 02 B6 80 */	lfs f0, lbl_803EB880@sda21(r2)
/* 801B027C 001AD1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B0280 001AD1E0  40 80 00 0C */	bge .L_801B028C
/* 801B0284 001AD1E4  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801B0288 001AD1E8  4E 80 00 20 */	blr 
.L_801B028C:
/* 801B028C 001AD1EC  C0 02 B6 84 */	lfs f0, lbl_803EB884@sda21(r2)
/* 801B0290 001AD1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B0294 001AD1F4  4C 81 00 20 */	blelr 
/* 801B0298 001AD1F8  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801B029C 001AD1FC  4E 80 00 20 */	blr 

.global setPort__13P2DPerspGraphFv
setPort__13P2DPerspGraphFv:
/* 801B02A0 001AD200  7C 08 02 A6 */	mflr r0
/* 801B02A4 001AD204  90 01 00 04 */	stw r0, 4(r1)
/* 801B02A8 001AD208  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 801B02AC 001AD20C  93 E1 00 74 */	stw r31, 0x74(r1)
/* 801B02B0 001AD210  7C 7F 1B 78 */	mr r31, r3
/* 801B02B4 001AD214  4B FF F5 AD */	bl setPort__14P2DGrafContextFv
/* 801B02B8 001AD218  A8 FF 00 08 */	lha r7, 8(r31)
/* 801B02BC 001AD21C  3C A0 43 30 */	lis r5, 0x4330
/* 801B02C0 001AD220  A8 DF 00 0C */	lha r6, 0xc(r31)
/* 801B02C4 001AD224  38 61 00 20 */	addi r3, r1, 0x20
/* 801B02C8 001AD228  A8 9F 00 0A */	lha r4, 0xa(r31)
/* 801B02CC 001AD22C  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 801B02D0 001AD230  7C C7 30 50 */	subf r6, r7, r6
/* 801B02D4 001AD234  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 801B02D8 001AD238  C8 A2 B6 88 */	lfd f5, lbl_803EB888@sda21(r2)
/* 801B02DC 001AD23C  7C 04 00 50 */	subf r0, r4, r0
/* 801B02E0 001AD240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B02E4 001AD244  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 801B02E8 001AD248  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 801B02EC 001AD24C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B02F0 001AD250  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 801B02F4 001AD254  90 A1 00 68 */	stw r5, 0x68(r1)
/* 801B02F8 001AD258  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 801B02FC 001AD25C  90 A1 00 60 */	stw r5, 0x60(r1)
/* 801B0300 001AD260  C8 41 00 68 */	lfd f2, 0x68(r1)
/* 801B0304 001AD264  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801B0308 001AD268  EC 42 28 28 */	fsubs f2, f2, f5
/* 801B030C 001AD26C  EC 00 28 28 */	fsubs f0, f0, f5
/* 801B0310 001AD270  EC 42 00 24 */	fdivs f2, f2, f0
/* 801B0314 001AD274  48 04 DC 0D */	bl MTXPerspective
/* 801B0318 001AD278  38 61 00 20 */	addi r3, r1, 0x20
/* 801B031C 001AD27C  38 80 00 00 */	li r4, 0
/* 801B0320 001AD280  48 06 3F D5 */	bl GXSetProjection
/* 801B0324 001AD284  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801B0328 001AD288  38 60 00 00 */	li r3, 0
/* 801B032C 001AD28C  38 80 00 07 */	li r4, 7
/* 801B0330 001AD290  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 801B0334 001AD294  38 A0 00 00 */	li r5, 0
/* 801B0338 001AD298  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801B033C 001AD29C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 801B0340 001AD2A0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801B0344 001AD2A4  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 801B0348 001AD2A8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801B034C 001AD2AC  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 801B0350 001AD2B0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801B0354 001AD2B4  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 801B0358 001AD2B8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801B035C 001AD2BC  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 801B0360 001AD2C0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801B0364 001AD2C4  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 801B0368 001AD2C8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801B036C 001AD2CC  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 801B0370 001AD2D0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801B0374 001AD2D4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 801B0378 001AD2D8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801B037C 001AD2DC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 801B0380 001AD2E0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801B0384 001AD2E4  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 801B0388 001AD2E8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801B038C 001AD2EC  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 801B0390 001AD2F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801B0394 001AD2F4  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 801B0398 001AD2F8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801B039C 001AD2FC  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 801B03A0 001AD300  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801B03A4 001AD304  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 801B03A8 001AD308  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801B03AC 001AD30C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 801B03B0 001AD310  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 801B03B4 001AD314  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 801B03B8 001AD318  C0 42 B6 80 */	lfs f2, lbl_803EB880@sda21(r2)
/* 801B03BC 001AD31C  EC 23 00 28 */	fsubs f1, f3, f0
/* 801B03C0 001AD320  EC 03 00 2A */	fadds f0, f3, f0
/* 801B03C4 001AD324  EC 62 08 24 */	fdivs f3, f2, f1
/* 801B03C8 001AD328  FC 00 00 50 */	fneg f0, f0
/* 801B03CC 001AD32C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801B03D0 001AD330  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 801B03D4 001AD334  C0 42 B6 90 */	lfs f2, lbl_803EB890@sda21(r2)
/* 801B03D8 001AD338  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 801B03DC 001AD33C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 801B03E0 001AD340  EC 22 00 72 */	fmuls f1, f2, f1
/* 801B03E4 001AD344  EC 01 00 32 */	fmuls f0, f1, f0
/* 801B03E8 001AD348  FC 00 00 50 */	fneg f0, f0
/* 801B03EC 001AD34C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801B03F0 001AD350  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 801B03F4 001AD354  48 06 39 DD */	bl GXSetZMode
/* 801B03F8 001AD358  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 801B03FC 001AD35C  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 801B0400 001AD360  38 21 00 78 */	addi r1, r1, 0x78
/* 801B0404 001AD364  7C 08 03 A6 */	mtlr r0
/* 801B0408 001AD368  4E 80 00 20 */	blr 

.global setLookat__13P2DPerspGraphFv
setLookat__13P2DPerspGraphFv:
/* 801B040C 001AD36C  7C 08 02 A6 */	mflr r0
/* 801B0410 001AD370  90 01 00 04 */	stw r0, 4(r1)
/* 801B0414 001AD374  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801B0418 001AD378  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801B041C 001AD37C  7C 7F 1B 78 */	mr r31, r3
/* 801B0420 001AD380  C0 42 B6 98 */	lfs f2, lbl_803EB898@sda21(r2)
/* 801B0424 001AD384  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 801B0428 001AD388  C0 02 B6 9C */	lfs f0, lbl_803EB89C@sda21(r2)
/* 801B042C 001AD38C  EC 22 00 72 */	fmuls f1, f2, f1
/* 801B0430 001AD390  EC 21 00 24 */	fdivs f1, f1, f0
/* 801B0434 001AD394  48 06 B6 9D */	bl tanf
/* 801B0438 001AD398  A8 BF 00 0E */	lha r5, 0xe(r31)
/* 801B043C 001AD39C  3C 80 43 30 */	lis r4, 0x4330
/* 801B0440 001AD3A0  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 801B0444 001AD3A4  38 7F 00 00 */	addi r3, r31, 0
/* 801B0448 001AD3A8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 801B044C 001AD3AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B0450 001AD3B0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801B0454 001AD3B4  C8 82 B6 88 */	lfd f4, lbl_803EB888@sda21(r2)
/* 801B0458 001AD3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B045C 001AD3BC  C0 02 B6 94 */	lfs f0, lbl_803EB894@sda21(r2)
/* 801B0460 001AD3C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 801B0464 001AD3C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 801B0468 001AD3C8  C8 61 00 18 */	lfd f3, 0x18(r1)
/* 801B046C 001AD3CC  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 801B0470 001AD3D0  EC 63 20 28 */	fsubs f3, f3, f4
/* 801B0474 001AD3D4  EC 42 20 28 */	fsubs f2, f2, f4
/* 801B0478 001AD3D8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801B047C 001AD3DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801B0480 001AD3E0  EC 00 08 24 */	fdivs f0, f0, f1
/* 801B0484 001AD3E4  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 801B0488 001AD3E8  48 00 00 19 */	bl makeLookat__13P2DPerspGraphFv
/* 801B048C 001AD3EC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801B0490 001AD3F0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801B0494 001AD3F4  38 21 00 28 */	addi r1, r1, 0x28
/* 801B0498 001AD3F8  7C 08 03 A6 */	mtlr r0
/* 801B049C 001AD3FC  4E 80 00 20 */	blr 

.global makeLookat__13P2DPerspGraphFv
makeLookat__13P2DPerspGraphFv:
/* 801B04A0 001AD400  7C 08 02 A6 */	mflr r0
/* 801B04A4 001AD404  3C C0 43 30 */	lis r6, 0x4330
/* 801B04A8 001AD408  90 01 00 04 */	stw r0, 4(r1)
/* 801B04AC 001AD40C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801B04B0 001AD410  DB E1 00 B8 */	stfd f31, 0xb8(r1)
/* 801B04B4 001AD414  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 801B04B8 001AD418  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801B04BC 001AD41C  7C 7F 1B 78 */	mr r31, r3
/* 801B04C0 001AD420  A8 63 00 0C */	lha r3, 0xc(r3)
/* 801B04C4 001AD424  A8 1F 00 08 */	lha r0, 8(r31)
/* 801B04C8 001AD428  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 801B04CC 001AD42C  A8 7F 00 0E */	lha r3, 0xe(r31)
/* 801B04D0 001AD430  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801B04D4 001AD434  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 801B04D8 001AD438  A8 1F 00 0A */	lha r0, 0xa(r31)
/* 801B04DC 001AD43C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801B04E0 001AD440  90 81 00 9C */	stw r4, 0x9c(r1)
/* 801B04E4 001AD444  38 81 00 78 */	addi r4, r1, 0x78
/* 801B04E8 001AD448  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B04EC 001AD44C  90 C1 00 A0 */	stw r6, 0xa0(r1)
/* 801B04F0 001AD450  38 A1 00 6C */	addi r5, r1, 0x6c
/* 801B04F4 001AD454  C8 A2 B6 88 */	lfd f5, lbl_803EB888@sda21(r2)
/* 801B04F8 001AD458  90 61 00 94 */	stw r3, 0x94(r1)
/* 801B04FC 001AD45C  38 7F 00 70 */	addi r3, r31, 0x70
/* 801B0500 001AD460  C8 41 00 A0 */	lfd f2, 0xa0(r1)
/* 801B0504 001AD464  90 C1 00 98 */	stw r6, 0x98(r1)
/* 801B0508 001AD468  C0 62 B6 94 */	lfs f3, lbl_803EB894@sda21(r2)
/* 801B050C 001AD46C  EC 82 28 28 */	fsubs f4, f2, f5
/* 801B0510 001AD470  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 801B0514 001AD474  90 01 00 8C */	stw r0, 0x8c(r1)
/* 801B0518 001AD478  C0 22 B6 A0 */	lfs f1, lbl_803EB8A0@sda21(r2)
/* 801B051C 001AD47C  EC 00 28 28 */	fsubs f0, f0, f5
/* 801B0520 001AD480  90 C1 00 90 */	stw r6, 0x90(r1)
/* 801B0524 001AD484  90 C1 00 88 */	stw r6, 0x88(r1)
/* 801B0528 001AD488  EC 84 00 28 */	fsubs f4, f4, f0
/* 801B052C 001AD48C  C8 41 00 90 */	lfd f2, 0x90(r1)
/* 801B0530 001AD490  38 C1 00 60 */	addi r6, r1, 0x60
/* 801B0534 001AD494  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801B0538 001AD498  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 801B053C 001AD49C  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801B0540 001AD4A0  EC 42 28 28 */	fsubs f2, f2, f5
/* 801B0544 001AD4A4  EC 00 28 28 */	fsubs f0, f0, f5
/* 801B0548 001AD4A8  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 801B054C 001AD4AC  EF E4 00 F2 */	fmuls f31, f4, f3
/* 801B0550 001AD4B0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801B0554 001AD4B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801B0558 001AD4B8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801B055C 001AD4BC  EF C0 00 F2 */	fmuls f30, f0, f3
/* 801B0560 001AD4C0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801B0564 001AD4C4  D3 E1 00 78 */	stfs f31, 0x78(r1)
/* 801B0568 001AD4C8  D3 C1 00 7C */	stfs f30, 0x7c(r1)
/* 801B056C 001AD4CC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 801B0570 001AD4D0  FC 00 00 50 */	fneg f0, f0
/* 801B0574 001AD4D4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801B0578 001AD4D8  D3 E1 00 6C */	stfs f31, 0x6c(r1)
/* 801B057C 001AD4DC  D3 C1 00 70 */	stfs f30, 0x70(r1)
/* 801B0580 001AD4E0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801B0584 001AD4E4  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801B0588 001AD4E8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801B058C 001AD4EC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801B0590 001AD4F0  C0 02 B6 A4 */	lfs f0, lbl_803EB8A4@sda21(r2)
/* 801B0594 001AD4F4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801B0598 001AD4F8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801B059C 001AD4FC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801B05A0 001AD500  4B E8 E2 E1 */	bl makeLookat__8Matrix4fFR8Vector3fR8Vector3fP8Vector3f
/* 801B05A4 001AD504  C0 4D 18 90 */	lfs f2, lbl_803E65B0@sda21(r13)
/* 801B05A8 001AD508  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801B05AC 001AD50C  C0 2D 18 84 */	lfs f1, lbl_803E65A4@sda21(r13)
/* 801B05B0 001AD510  38 A1 00 48 */	addi r5, r1, 0x48
/* 801B05B4 001AD514  C0 0D 18 78 */	lfs f0, lbl_803E6598@sda21(r13)
/* 801B05B8 001AD518  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801B05BC 001AD51C  38 81 00 54 */	addi r4, r1, 0x54
/* 801B05C0 001AD520  C0 4D 18 94 */	lfs f2, lbl_803E65B4@sda21(r13)
/* 801B05C4 001AD524  38 7F 00 70 */	addi r3, r31, 0x70
/* 801B05C8 001AD528  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801B05CC 001AD52C  C0 2D 18 88 */	lfs f1, lbl_803E65A8@sda21(r13)
/* 801B05D0 001AD530  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801B05D4 001AD534  C0 0D 18 7C */	lfs f0, lbl_803E659C@sda21(r13)
/* 801B05D8 001AD538  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801B05DC 001AD53C  C0 4D 18 98 */	lfs f2, lbl_803E65B8@sda21(r13)
/* 801B05E0 001AD540  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801B05E4 001AD544  C0 2D 18 8C */	lfs f1, lbl_803E65AC@sda21(r13)
/* 801B05E8 001AD548  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801B05EC 001AD54C  C0 0D 18 80 */	lfs f0, lbl_803E65A0@sda21(r13)
/* 801B05F0 001AD550  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801B05F4 001AD554  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801B05F8 001AD558  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801B05FC 001AD55C  4B E8 E2 85 */	bl makeLookat__8Matrix4fFR8Vector3fR8Vector3fP8Vector3f
/* 801B0600 001AD560  C0 4D 18 B4 */	lfs f2, lbl_803E65D4@sda21(r13)
/* 801B0604 001AD564  38 E1 00 0C */	addi r7, r1, 0xc
/* 801B0608 001AD568  C0 2D 18 A8 */	lfs f1, lbl_803E65C8@sda21(r13)
/* 801B060C 001AD56C  38 C1 00 18 */	addi r6, r1, 0x18
/* 801B0610 001AD570  C0 0D 18 9C */	lfs f0, lbl_803E65BC@sda21(r13)
/* 801B0614 001AD574  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801B0618 001AD578  38 A1 00 24 */	addi r5, r1, 0x24
/* 801B061C 001AD57C  C0 4D 18 B8 */	lfs f2, lbl_803E65D8@sda21(r13)
/* 801B0620 001AD580  38 81 00 30 */	addi r4, r1, 0x30
/* 801B0624 001AD584  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801B0628 001AD588  C0 2D 18 AC */	lfs f1, lbl_803E65CC@sda21(r13)
/* 801B062C 001AD58C  38 7F 00 70 */	addi r3, r31, 0x70
/* 801B0630 001AD590  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801B0634 001AD594  C0 0D 18 A0 */	lfs f0, lbl_803E65C0@sda21(r13)
/* 801B0638 001AD598  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801B063C 001AD59C  C0 4D 18 BC */	lfs f2, lbl_803E65DC@sda21(r13)
/* 801B0640 001AD5A0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801B0644 001AD5A4  C0 2D 18 B0 */	lfs f1, lbl_803E65D0@sda21(r13)
/* 801B0648 001AD5A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801B064C 001AD5AC  C0 0D 18 A4 */	lfs f0, lbl_803E65C4@sda21(r13)
/* 801B0650 001AD5B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801B0654 001AD5B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801B0658 001AD5B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801B065C 001AD5BC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 801B0660 001AD5C0  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 801B0664 001AD5C4  FC 00 00 50 */	fneg f0, f0
/* 801B0668 001AD5C8  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 801B066C 001AD5CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801B0670 001AD5D0  4B E8 E5 11 */	bl makeLookat__8Matrix4fFR8Vector3fR8Vector3fR8Vector3fR8Vector3f
/* 801B0674 001AD5D4  38 7F 00 70 */	addi r3, r31, 0x70
/* 801B0678 001AD5D8  38 80 00 00 */	li r4, 0
/* 801B067C 001AD5DC  48 06 3D D9 */	bl GXLoadPosMtxImm
/* 801B0680 001AD5E0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801B0684 001AD5E4  CB E1 00 B8 */	lfd f31, 0xb8(r1)
/* 801B0688 001AD5E8  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 801B068C 001AD5EC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801B0690 001AD5F0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801B0694 001AD5F4  7C 08 03 A6 */	mtlr r0
/* 801B0698 001AD5F8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802E0648:
	.asciz "P2DPerspGraph.cpp"
.balign 4
lbl_802E065C:
	.asciz "P2DPersGraph"
.balign 4
lbl_802E066C:
	.asciz "P2DPerspGraph"
.balign 4
lbl_802E067C:
	.asciz "P2DGrafContext"
.balign 4
lbl_802E068C:
	.4byte __RTTI__14P2DGrafContext
	.4byte 0
	.4byte 0
.global __vt__13P2DPerspGraph
__vt__13P2DPerspGraph:
	.4byte __RTTI__13P2DPerspGraph
	.4byte 0
	.4byte __dt__13P2DPerspGraphFv
	.4byte place__14P2DGrafContextFRC7PUTRect
	.4byte place__14P2DGrafContextFiiii
	.4byte setPort__13P2DPerspGraphFv
	.4byte setup2D__14P2DGrafContextFv
	.4byte setScissor__14P2DGrafContextFv
	.4byte setLookat__13P2DPerspGraphFv
	.4byte 0

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
lbl_803E6598:
	.4byte 0x00000000
lbl_803E659C:
	.4byte 0x00000000
lbl_803E65A0:
	.4byte 0x437A0000
lbl_803E65A4:
	.4byte 0x00000000
lbl_803E65A8:
	.4byte 0x00000000
lbl_803E65AC:
	.4byte 0x00000000
lbl_803E65B0:
	.4byte 0x00000000
lbl_803E65B4:
	.4byte 0x3F800000
lbl_803E65B8:
	.4byte 0x00000000
lbl_803E65BC:
	.4byte 0x3F800000
lbl_803E65C0:
	.4byte 0x00000000
lbl_803E65C4:
	.4byte 0x00000000
lbl_803E65C8:
	.4byte 0x00000000
lbl_803E65CC:
	.4byte 0xBF800000
lbl_803E65D0:
	.4byte 0x00000000
lbl_803E65D4:
	.4byte 0x00000000
lbl_803E65D8:
	.4byte 0x00000000
lbl_803E65DC:
	.4byte 0xBF800000
__RTTI__14P2DGrafContext:
	.4byte lbl_802E067C
	.4byte 0
__RTTI__13P2DPerspGraph:
	.4byte lbl_802E066C
	.4byte lbl_802E068C

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB880:
	.4byte 0x3F800000
lbl_803EB884:
	.4byte 0x43330000
lbl_803EB888:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB890:
	.4byte 0x40000000
lbl_803EB894:
	.4byte 0x3F000000
lbl_803EB898:
	.4byte 0x40490FDB
lbl_803EB89C:
	.4byte 0x43B40000
lbl_803EB8A0:
	.4byte 0x00000000
lbl_803EB8A4:
	.4byte 0xBF800000
