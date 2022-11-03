.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __copy_longs_rev_unaligned
__copy_longs_rev_unaligned:
/* 802162B8 00213218  7D 83 2A 14 */	add r12, r3, r5
/* 802162BC 0021321C  55 80 07 BF */	clrlwi. r0, r12, 0x1e
/* 802162C0 00213220  7D 64 2A 14 */	add r11, r4, r5
/* 802162C4 00213224  7C 03 03 78 */	mr r3, r0
/* 802162C8 00213228  41 82 00 18 */	beq .L_802162E0
/* 802162CC 0021322C  7C A3 28 50 */	subf r5, r3, r5
.L_802162D0:
/* 802162D0 00213230  8C 0B FF FF */	lbzu r0, -1(r11)
/* 802162D4 00213234  34 63 FF FF */	addic. r3, r3, -1
/* 802162D8 00213238  9C 0C FF FF */	stbu r0, -1(r12)
/* 802162DC 0021323C  40 82 FF F4 */	bne .L_802162D0
.L_802162E0:
/* 802162E0 00213240  55 64 1E F8 */	rlwinm r4, r11, 3, 0x1b, 0x1c
/* 802162E4 00213244  55 69 07 BE */	clrlwi r9, r11, 0x1e
/* 802162E8 00213248  21 44 00 20 */	subfic r10, r4, 0x20
/* 802162EC 0021324C  20 09 00 04 */	subfic r0, r9, 4
/* 802162F0 00213250  7D 6B 02 14 */	add r11, r11, r0
/* 802162F4 00213254  84 EB FF FC */	lwzu r7, -4(r11)
/* 802162F8 00213258  54 A6 E8 FE */	srwi r6, r5, 3
.L_802162FC:
/* 802162FC 0021325C  81 0B FF FC */	lwz r8, -4(r11)
/* 80216300 00213260  7C E0 54 30 */	srw r0, r7, r10
/* 80216304 00213264  34 C6 FF FF */	addic. r6, r6, -1
/* 80216308 00213268  7D 03 20 30 */	slw r3, r8, r4
/* 8021630C 0021326C  7C 60 03 78 */	or r0, r3, r0
/* 80216310 00213270  90 0C FF FC */	stw r0, -4(r12)
/* 80216314 00213274  7D 00 54 30 */	srw r0, r8, r10
/* 80216318 00213278  84 EB FF F8 */	lwzu r7, -8(r11)
/* 8021631C 0021327C  7C E3 20 30 */	slw r3, r7, r4
/* 80216320 00213280  7C 60 03 78 */	or r0, r3, r0
/* 80216324 00213284  94 0C FF F8 */	stwu r0, -8(r12)
/* 80216328 00213288  40 82 FF D4 */	bne .L_802162FC
/* 8021632C 0021328C  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 80216330 00213290  41 82 00 18 */	beq .L_80216348
/* 80216334 00213294  84 6B FF FC */	lwzu r3, -4(r11)
/* 80216338 00213298  7C E0 54 30 */	srw r0, r7, r10
/* 8021633C 0021329C  7C 63 20 30 */	slw r3, r3, r4
/* 80216340 002132A0  7C 60 03 78 */	or r0, r3, r0
/* 80216344 002132A4  94 0C FF FC */	stwu r0, -4(r12)
.L_80216348:
/* 80216348 002132A8  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 8021634C 002132AC  4D 82 00 20 */	beqlr 
/* 80216350 002132B0  7D 6B 4A 14 */	add r11, r11, r9
.L_80216354:
/* 80216354 002132B4  8C 0B FF FF */	lbzu r0, -1(r11)
/* 80216358 002132B8  34 A5 FF FF */	addic. r5, r5, -1
/* 8021635C 002132BC  9C 0C FF FF */	stbu r0, -1(r12)
/* 80216360 002132C0  40 82 FF F4 */	bne .L_80216354
/* 80216364 002132C4  4E 80 00 20 */	blr 

.global __copy_longs_unaligned
__copy_longs_unaligned:
/* 80216368 002132C8  7C 03 00 D0 */	neg r0, r3
/* 8021636C 002132CC  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 80216370 002132D0  38 84 FF FF */	addi r4, r4, -1
/* 80216374 002132D4  38 63 FF FF */	addi r3, r3, -1
/* 80216378 002132D8  41 82 00 18 */	beq .L_80216390
/* 8021637C 002132DC  7C A6 28 50 */	subf r5, r6, r5
.L_80216380:
/* 80216380 002132E0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80216384 002132E4  34 C6 FF FF */	addic. r6, r6, -1
/* 80216388 002132E8  9C 03 00 01 */	stbu r0, 1(r3)
/* 8021638C 002132EC  40 82 FF F4 */	bne .L_80216380
.L_80216390:
/* 80216390 002132F0  38 04 00 01 */	addi r0, r4, 1
/* 80216394 002132F4  54 0B 07 BE */	clrlwi r11, r0, 0x1e
/* 80216398 002132F8  7C 8B 20 50 */	subf r4, r11, r4
/* 8021639C 002132FC  39 04 FF FD */	addi r8, r4, -3
/* 802163A0 00213300  85 28 00 04 */	lwzu r9, 4(r8)
/* 802163A4 00213304  54 04 1E F8 */	rlwinm r4, r0, 3, 0x1b, 0x1c
/* 802163A8 00213308  21 84 00 20 */	subfic r12, r4, 0x20
/* 802163AC 0021330C  38 C3 FF FD */	addi r6, r3, -3
/* 802163B0 00213310  54 A7 E8 FE */	srwi r7, r5, 3
.L_802163B4:
/* 802163B4 00213314  81 48 00 04 */	lwz r10, 4(r8)
/* 802163B8 00213318  7D 23 20 30 */	slw r3, r9, r4
/* 802163BC 0021331C  34 E7 FF FF */	addic. r7, r7, -1
/* 802163C0 00213320  7D 40 64 30 */	srw r0, r10, r12
/* 802163C4 00213324  7C 60 03 78 */	or r0, r3, r0
/* 802163C8 00213328  90 06 00 04 */	stw r0, 4(r6)
/* 802163CC 0021332C  7D 43 20 30 */	slw r3, r10, r4
/* 802163D0 00213330  85 28 00 08 */	lwzu r9, 8(r8)
/* 802163D4 00213334  7D 20 64 30 */	srw r0, r9, r12
/* 802163D8 00213338  7C 60 03 78 */	or r0, r3, r0
/* 802163DC 0021333C  94 06 00 08 */	stwu r0, 8(r6)
/* 802163E0 00213340  40 82 FF D4 */	bne .L_802163B4
/* 802163E4 00213344  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 802163E8 00213348  41 82 00 18 */	beq .L_80216400
/* 802163EC 0021334C  84 08 00 04 */	lwzu r0, 4(r8)
/* 802163F0 00213350  7D 23 20 30 */	slw r3, r9, r4
/* 802163F4 00213354  7C 00 64 30 */	srw r0, r0, r12
/* 802163F8 00213358  7C 60 03 78 */	or r0, r3, r0
/* 802163FC 0021335C  94 06 00 04 */	stwu r0, 4(r6)
.L_80216400:
/* 80216400 00213360  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 80216404 00213364  38 88 00 03 */	addi r4, r8, 3
/* 80216408 00213368  38 66 00 03 */	addi r3, r6, 3
/* 8021640C 0021336C  4D 82 00 20 */	beqlr 
/* 80216410 00213370  20 0B 00 04 */	subfic r0, r11, 4
/* 80216414 00213374  7C 80 20 50 */	subf r4, r0, r4
.L_80216418:
/* 80216418 00213378  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8021641C 0021337C  34 A5 FF FF */	addic. r5, r5, -1
/* 80216420 00213380  9C 03 00 01 */	stbu r0, 1(r3)
/* 80216424 00213384  40 82 FF F4 */	bne .L_80216418
/* 80216428 00213388  4E 80 00 20 */	blr 

.global __copy_longs_rev_aligned
__copy_longs_rev_aligned:
/* 8021642C 0021338C  7C C3 2A 14 */	add r6, r3, r5
/* 80216430 00213390  54 C0 07 BF */	clrlwi. r0, r6, 0x1e
/* 80216434 00213394  7C 84 2A 14 */	add r4, r4, r5
/* 80216438 00213398  7C 03 03 78 */	mr r3, r0
/* 8021643C 0021339C  41 82 00 18 */	beq .L_80216454
/* 80216440 002133A0  7C A3 28 50 */	subf r5, r3, r5
.L_80216444:
/* 80216444 002133A4  8C 04 FF FF */	lbzu r0, -1(r4)
/* 80216448 002133A8  34 63 FF FF */	addic. r3, r3, -1
/* 8021644C 002133AC  9C 06 FF FF */	stbu r0, -1(r6)
/* 80216450 002133B0  40 82 FF F4 */	bne .L_80216444
.L_80216454:
/* 80216454 002133B4  54 A3 D9 7F */	rlwinm. r3, r5, 0x1b, 5, 0x1f
/* 80216458 002133B8  41 82 00 4C */	beq .L_802164A4
.L_8021645C:
/* 8021645C 002133BC  80 04 FF FC */	lwz r0, -4(r4)
/* 80216460 002133C0  34 63 FF FF */	addic. r3, r3, -1
/* 80216464 002133C4  90 06 FF FC */	stw r0, -4(r6)
/* 80216468 002133C8  80 04 FF F8 */	lwz r0, -8(r4)
/* 8021646C 002133CC  90 06 FF F8 */	stw r0, -8(r6)
/* 80216470 002133D0  80 04 FF F4 */	lwz r0, -0xc(r4)
/* 80216474 002133D4  90 06 FF F4 */	stw r0, -0xc(r6)
/* 80216478 002133D8  80 04 FF F0 */	lwz r0, -0x10(r4)
/* 8021647C 002133DC  90 06 FF F0 */	stw r0, -0x10(r6)
/* 80216480 002133E0  80 04 FF EC */	lwz r0, -0x14(r4)
/* 80216484 002133E4  90 06 FF EC */	stw r0, -0x14(r6)
/* 80216488 002133E8  80 04 FF E8 */	lwz r0, -0x18(r4)
/* 8021648C 002133EC  90 06 FF E8 */	stw r0, -0x18(r6)
/* 80216490 002133F0  80 04 FF E4 */	lwz r0, -0x1c(r4)
/* 80216494 002133F4  90 06 FF E4 */	stw r0, -0x1c(r6)
/* 80216498 002133F8  84 04 FF E0 */	lwzu r0, -0x20(r4)
/* 8021649C 002133FC  94 06 FF E0 */	stwu r0, -0x20(r6)
/* 802164A0 00213400  40 82 FF BC */	bne .L_8021645C
.L_802164A4:
/* 802164A4 00213404  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 802164A8 00213408  41 82 00 14 */	beq .L_802164BC
.L_802164AC:
/* 802164AC 0021340C  84 04 FF FC */	lwzu r0, -4(r4)
/* 802164B0 00213410  34 63 FF FF */	addic. r3, r3, -1
/* 802164B4 00213414  94 06 FF FC */	stwu r0, -4(r6)
/* 802164B8 00213418  40 82 FF F4 */	bne .L_802164AC
.L_802164BC:
/* 802164BC 0021341C  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 802164C0 00213420  4D 82 00 20 */	beqlr 
.L_802164C4:
/* 802164C4 00213424  8C 04 FF FF */	lbzu r0, -1(r4)
/* 802164C8 00213428  34 A5 FF FF */	addic. r5, r5, -1
/* 802164CC 0021342C  9C 06 FF FF */	stbu r0, -1(r6)
/* 802164D0 00213430  40 82 FF F4 */	bne .L_802164C4
/* 802164D4 00213434  4E 80 00 20 */	blr 

.global __copy_longs_aligned
__copy_longs_aligned:
/* 802164D8 00213438  7C 03 00 D0 */	neg r0, r3
/* 802164DC 0021343C  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 802164E0 00213440  38 E4 FF FF */	addi r7, r4, -1
/* 802164E4 00213444  38 63 FF FF */	addi r3, r3, -1
/* 802164E8 00213448  41 82 00 18 */	beq .L_80216500
/* 802164EC 0021344C  7C A6 28 50 */	subf r5, r6, r5
.L_802164F0:
/* 802164F0 00213450  8C 07 00 01 */	lbzu r0, 1(r7)
/* 802164F4 00213454  34 C6 FF FF */	addic. r6, r6, -1
/* 802164F8 00213458  9C 03 00 01 */	stbu r0, 1(r3)
/* 802164FC 0021345C  40 82 FF F4 */	bne .L_802164F0
.L_80216500:
/* 80216500 00213460  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 80216504 00213464  38 C7 FF FD */	addi r6, r7, -3
/* 80216508 00213468  38 63 FF FD */	addi r3, r3, -3
/* 8021650C 0021346C  41 82 00 4C */	beq .L_80216558
.L_80216510:
/* 80216510 00213470  80 06 00 04 */	lwz r0, 4(r6)
/* 80216514 00213474  34 84 FF FF */	addic. r4, r4, -1
/* 80216518 00213478  90 03 00 04 */	stw r0, 4(r3)
/* 8021651C 0021347C  80 06 00 08 */	lwz r0, 8(r6)
/* 80216520 00213480  90 03 00 08 */	stw r0, 8(r3)
/* 80216524 00213484  80 06 00 0C */	lwz r0, 0xc(r6)
/* 80216528 00213488  90 03 00 0C */	stw r0, 0xc(r3)
/* 8021652C 0021348C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80216530 00213490  90 03 00 10 */	stw r0, 0x10(r3)
/* 80216534 00213494  80 06 00 14 */	lwz r0, 0x14(r6)
/* 80216538 00213498  90 03 00 14 */	stw r0, 0x14(r3)
/* 8021653C 0021349C  80 06 00 18 */	lwz r0, 0x18(r6)
/* 80216540 002134A0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80216544 002134A4  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 80216548 002134A8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8021654C 002134AC  84 06 00 20 */	lwzu r0, 0x20(r6)
/* 80216550 002134B0  94 03 00 20 */	stwu r0, 0x20(r3)
/* 80216554 002134B4  40 82 FF BC */	bne .L_80216510
.L_80216558:
/* 80216558 002134B8  54 A4 F7 7F */	rlwinm. r4, r5, 0x1e, 0x1d, 0x1f
/* 8021655C 002134BC  41 82 00 14 */	beq .L_80216570
.L_80216560:
/* 80216560 002134C0  84 06 00 04 */	lwzu r0, 4(r6)
/* 80216564 002134C4  34 84 FF FF */	addic. r4, r4, -1
/* 80216568 002134C8  94 03 00 04 */	stwu r0, 4(r3)
/* 8021656C 002134CC  40 82 FF F4 */	bne .L_80216560
.L_80216570:
/* 80216570 002134D0  54 A5 07 BF */	clrlwi. r5, r5, 0x1e
/* 80216574 002134D4  38 86 00 03 */	addi r4, r6, 3
/* 80216578 002134D8  38 63 00 03 */	addi r3, r3, 3
/* 8021657C 002134DC  4D 82 00 20 */	beqlr 
.L_80216580:
/* 80216580 002134E0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80216584 002134E4  34 A5 FF FF */	addic. r5, r5, -1
/* 80216588 002134E8  9C 03 00 01 */	stbu r0, 1(r3)
/* 8021658C 002134EC  40 82 FF F4 */	bne .L_80216580
/* 80216590 002134F0  4E 80 00 20 */	blr 
