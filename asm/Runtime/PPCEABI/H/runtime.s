.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global __cvt_fp2unsigned
__cvt_fp2unsigned:
/* 80214DC8 00211D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80214DCC 00211D2C  3C 80 80 22 */	lis r4, __constants@h
/* 80214DD0 00211D30  60 84 27 68 */	ori r4, r4, __constants@l
/* 80214DD4 00211D34  38 60 00 00 */	li r3, 0
/* 80214DD8 00211D38  C8 04 00 00 */	lfd f0, 0(r4)
/* 80214DDC 00211D3C  C8 64 00 08 */	lfd f3, 8(r4)
/* 80214DE0 00211D40  C8 84 00 10 */	lfd f4, 0x10(r4)
/* 80214DE4 00211D44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80214DE8 00211D48  FF 01 18 00 */	fcmpu cr6, f1, f3
/* 80214DEC 00211D4C  41 80 00 30 */	blt lbl_80214E1C
/* 80214DF0 00211D50  38 63 FF FF */	addi r3, r3, -1
/* 80214DF4 00211D54  40 98 00 28 */	bge cr6, lbl_80214E1C
/* 80214DF8 00211D58  FF 81 20 00 */	fcmpu cr7, f1, f4
/* 80214DFC 00211D5C  FC 40 08 90 */	fmr f2, f1
/* 80214E00 00211D60  41 9C 00 08 */	blt cr7, lbl_80214E08
/* 80214E04 00211D64  FC 41 20 28 */	fsub f2, f1, f4
lbl_80214E08:
/* 80214E08 00211D68  FC 40 10 1E */	fctiwz f2, f2
/* 80214E0C 00211D6C  D8 41 00 08 */	stfd f2, 8(r1)
/* 80214E10 00211D70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80214E14 00211D74  41 9C 00 08 */	blt cr7, lbl_80214E1C
/* 80214E18 00211D78  3C 63 80 00 */	addis r3, r3, 0x8000
lbl_80214E1C:
/* 80214E1C 00211D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80214E20 00211D80  4E 80 00 20 */	blr 

.global __save_fpr
__save_fpr:
/* 80214E24 00211D84  D9 CB FF 70 */	stfd f14, -0x90(r11)
/* 80214E28 00211D88  D9 EB FF 78 */	stfd f15, -0x88(r11)
/* 80214E2C 00211D8C  DA 0B FF 80 */	stfd f16, -0x80(r11)
/* 80214E30 00211D90  DA 2B FF 88 */	stfd f17, -0x78(r11)
/* 80214E34 00211D94  DA 4B FF 90 */	stfd f18, -0x70(r11)
/* 80214E38 00211D98  DA 6B FF 98 */	stfd f19, -0x68(r11)

.global func_80214E3C
func_80214E3C:
/* 80214E3C 00211D9C  DA 8B FF A0 */	stfd f20, -0x60(r11)
/* 80214E40 00211DA0  DA AB FF A8 */	stfd f21, -0x58(r11)
/* 80214E44 00211DA4  DA CB FF B0 */	stfd f22, -0x50(r11)
/* 80214E48 00211DA8  DA EB FF B8 */	stfd f23, -0x48(r11)

.global func_80214E4C
func_80214E4C:
/* 80214E4C 00211DAC  DB 0B FF C0 */	stfd f24, -0x40(r11)
/* 80214E50 00211DB0  DB 2B FF C8 */	stfd f25, -0x38(r11)

.global func_80214E54
func_80214E54:
/* 80214E54 00211DB4  DB 4B FF D0 */	stfd f26, -0x30(r11)
/* 80214E58 00211DB8  DB 6B FF D8 */	stfd f27, -0x28(r11)
/* 80214E5C 00211DBC  DB 8B FF E0 */	stfd f28, -0x20(r11)

.global func_80214E60
func_80214E60:
/* 80214E60 00211DC0  DB AB FF E8 */	stfd f29, -0x18(r11)

.global func_80214E64
func_80214E64:
/* 80214E64 00211DC4  DB CB FF F0 */	stfd f30, -0x10(r11)
/* 80214E68 00211DC8  DB EB FF F8 */	stfd f31, -8(r11)
/* 80214E6C 00211DCC  4E 80 00 20 */	blr 

.global __restore_fpr
__restore_fpr:
/* 80214E70 00211DD0  C9 CB FF 70 */	lfd f14, -0x90(r11)
/* 80214E74 00211DD4  C9 EB FF 78 */	lfd f15, -0x88(r11)
/* 80214E78 00211DD8  CA 0B FF 80 */	lfd f16, -0x80(r11)
/* 80214E7C 00211DDC  CA 2B FF 88 */	lfd f17, -0x78(r11)
/* 80214E80 00211DE0  CA 4B FF 90 */	lfd f18, -0x70(r11)
/* 80214E84 00211DE4  CA 6B FF 98 */	lfd f19, -0x68(r11)

.global func_80214E88
func_80214E88:
/* 80214E88 00211DE8  CA 8B FF A0 */	lfd f20, -0x60(r11)
/* 80214E8C 00211DEC  CA AB FF A8 */	lfd f21, -0x58(r11)
/* 80214E90 00211DF0  CA CB FF B0 */	lfd f22, -0x50(r11)
/* 80214E94 00211DF4  CA EB FF B8 */	lfd f23, -0x48(r11)

.global func_80214E98
func_80214E98:
/* 80214E98 00211DF8  CB 0B FF C0 */	lfd f24, -0x40(r11)
/* 80214E9C 00211DFC  CB 2B FF C8 */	lfd f25, -0x38(r11)

.global func_80214EA0
func_80214EA0:
/* 80214EA0 00211E00  CB 4B FF D0 */	lfd f26, -0x30(r11)
/* 80214EA4 00211E04  CB 6B FF D8 */	lfd f27, -0x28(r11)
/* 80214EA8 00211E08  CB 8B FF E0 */	lfd f28, -0x20(r11)

.global func_80214EAC
func_80214EAC:
/* 80214EAC 00211E0C  CB AB FF E8 */	lfd f29, -0x18(r11)

.global func_80214EB0
func_80214EB0:
/* 80214EB0 00211E10  CB CB FF F0 */	lfd f30, -0x10(r11)
/* 80214EB4 00211E14  CB EB FF F8 */	lfd f31, -8(r11)
/* 80214EB8 00211E18  4E 80 00 20 */	blr 

.global __div2u
__div2u:
/* 80214EBC 00211E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80214EC0 00211E20  7C 60 00 34 */	cntlzw r0, r3
/* 80214EC4 00211E24  7C 89 00 34 */	cntlzw r9, r4
/* 80214EC8 00211E28  40 82 00 08 */	bne lbl_80214ED0
/* 80214ECC 00211E2C  38 09 00 20 */	addi r0, r9, 0x20
lbl_80214ED0:
/* 80214ED0 00211E30  2C 05 00 00 */	cmpwi r5, 0
/* 80214ED4 00211E34  7C A9 00 34 */	cntlzw r9, r5
/* 80214ED8 00211E38  7C CA 00 34 */	cntlzw r10, r6
/* 80214EDC 00211E3C  40 82 00 08 */	bne lbl_80214EE4
/* 80214EE0 00211E40  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80214EE4:
/* 80214EE4 00211E44  7C 00 48 00 */	cmpw r0, r9
/* 80214EE8 00211E48  21 40 00 40 */	subfic r10, r0, 0x40
/* 80214EEC 00211E4C  41 81 00 B0 */	bgt lbl_80214F9C
/* 80214EF0 00211E50  39 29 00 01 */	addi r9, r9, 1
/* 80214EF4 00211E54  21 29 00 40 */	subfic r9, r9, 0x40
/* 80214EF8 00211E58  7C 00 4A 14 */	add r0, r0, r9
/* 80214EFC 00211E5C  7D 29 50 50 */	subf r9, r9, r10
/* 80214F00 00211E60  7D 29 03 A6 */	mtctr r9
/* 80214F04 00211E64  2C 09 00 20 */	cmpwi r9, 0x20
/* 80214F08 00211E68  38 E9 FF E0 */	addi r7, r9, -32
/* 80214F0C 00211E6C  41 80 00 10 */	blt lbl_80214F1C
/* 80214F10 00211E70  7C 68 3C 30 */	srw r8, r3, r7
/* 80214F14 00211E74  38 E0 00 00 */	li r7, 0
/* 80214F18 00211E78  48 00 00 18 */	b lbl_80214F30
lbl_80214F1C:
/* 80214F1C 00211E7C  7C 88 4C 30 */	srw r8, r4, r9
/* 80214F20 00211E80  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80214F24 00211E84  7C 67 38 30 */	slw r7, r3, r7
/* 80214F28 00211E88  7D 08 3B 78 */	or r8, r8, r7
/* 80214F2C 00211E8C  7C 67 4C 30 */	srw r7, r3, r9
lbl_80214F30:
/* 80214F30 00211E90  2C 00 00 20 */	cmpwi r0, 0x20
/* 80214F34 00211E94  31 20 FF E0 */	addic r9, r0, -32
/* 80214F38 00211E98  41 80 00 10 */	blt lbl_80214F48
/* 80214F3C 00211E9C  7C 83 48 30 */	slw r3, r4, r9
/* 80214F40 00211EA0  38 80 00 00 */	li r4, 0
/* 80214F44 00211EA4  48 00 00 18 */	b lbl_80214F5C
lbl_80214F48:
/* 80214F48 00211EA8  7C 63 00 30 */	slw r3, r3, r0
/* 80214F4C 00211EAC  21 20 00 20 */	subfic r9, r0, 0x20
/* 80214F50 00211EB0  7C 89 4C 30 */	srw r9, r4, r9
/* 80214F54 00211EB4  7C 63 4B 78 */	or r3, r3, r9
/* 80214F58 00211EB8  7C 84 00 30 */	slw r4, r4, r0
lbl_80214F5C:
/* 80214F5C 00211EBC  39 40 FF FF */	li r10, -1
/* 80214F60 00211EC0  30 E7 00 00 */	addic r7, r7, 0
lbl_80214F64:
/* 80214F64 00211EC4  7C 84 21 14 */	adde r4, r4, r4
/* 80214F68 00211EC8  7C 63 19 14 */	adde r3, r3, r3
/* 80214F6C 00211ECC  7D 08 41 14 */	adde r8, r8, r8
/* 80214F70 00211ED0  7C E7 39 14 */	adde r7, r7, r7
/* 80214F74 00211ED4  7C 06 40 10 */	subfc r0, r6, r8
/* 80214F78 00211ED8  7D 25 39 11 */	subfe. r9, r5, r7
/* 80214F7C 00211EDC  41 80 00 10 */	blt lbl_80214F8C
/* 80214F80 00211EE0  7C 08 03 78 */	mr r8, r0
/* 80214F84 00211EE4  7D 27 4B 78 */	mr r7, r9
/* 80214F88 00211EE8  30 0A 00 01 */	addic r0, r10, 1
lbl_80214F8C:
/* 80214F8C 00211EEC  42 00 FF D8 */	bdnz lbl_80214F64
/* 80214F90 00211EF0  7C 84 21 14 */	adde r4, r4, r4
/* 80214F94 00211EF4  7C 63 19 14 */	adde r3, r3, r3
/* 80214F98 00211EF8  4E 80 00 20 */	blr 
lbl_80214F9C:
/* 80214F9C 00211EFC  38 80 00 00 */	li r4, 0
/* 80214FA0 00211F00  38 60 00 00 */	li r3, 0
/* 80214FA4 00211F04  4E 80 00 20 */	blr 

.global __div2i
__div2i:
/* 80214FA8 00211F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80214FAC 00211F0C  54 69 00 01 */	rlwinm. r9, r3, 0, 0, 0
/* 80214FB0 00211F10  41 82 00 0C */	beq lbl_80214FBC
/* 80214FB4 00211F14  20 84 00 00 */	subfic r4, r4, 0
/* 80214FB8 00211F18  7C 63 01 90 */	subfze r3, r3
lbl_80214FBC:
/* 80214FBC 00211F1C  91 21 00 08 */	stw r9, 8(r1)
/* 80214FC0 00211F20  54 A9 00 01 */	rlwinm. r9, r5, 0, 0, 0
/* 80214FC4 00211F24  41 82 00 0C */	beq lbl_80214FD0
/* 80214FC8 00211F28  20 C6 00 00 */	subfic r6, r6, 0
/* 80214FCC 00211F2C  7C A5 01 90 */	subfze r5, r5
lbl_80214FD0:
/* 80214FD0 00211F30  91 21 00 0C */	stw r9, 0xc(r1)
/* 80214FD4 00211F34  2C 03 00 00 */	cmpwi r3, 0
/* 80214FD8 00211F38  7C 60 00 34 */	cntlzw r0, r3
/* 80214FDC 00211F3C  7C 89 00 34 */	cntlzw r9, r4
/* 80214FE0 00211F40  40 82 00 08 */	bne lbl_80214FE8
/* 80214FE4 00211F44  38 09 00 20 */	addi r0, r9, 0x20
lbl_80214FE8:
/* 80214FE8 00211F48  2C 05 00 00 */	cmpwi r5, 0
/* 80214FEC 00211F4C  7C A9 00 34 */	cntlzw r9, r5
/* 80214FF0 00211F50  7C CA 00 34 */	cntlzw r10, r6
/* 80214FF4 00211F54  40 82 00 08 */	bne lbl_80214FFC
/* 80214FF8 00211F58  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80214FFC:
/* 80214FFC 00211F5C  7C 00 48 00 */	cmpw r0, r9
/* 80215000 00211F60  21 40 00 40 */	subfic r10, r0, 0x40
/* 80215004 00211F64  41 81 00 CC */	bgt lbl_802150D0
/* 80215008 00211F68  39 29 00 01 */	addi r9, r9, 1
/* 8021500C 00211F6C  21 29 00 40 */	subfic r9, r9, 0x40
/* 80215010 00211F70  7C 00 4A 14 */	add r0, r0, r9
/* 80215014 00211F74  7D 29 50 50 */	subf r9, r9, r10
/* 80215018 00211F78  7D 29 03 A6 */	mtctr r9
/* 8021501C 00211F7C  2C 09 00 20 */	cmpwi r9, 0x20
/* 80215020 00211F80  38 E9 FF E0 */	addi r7, r9, -32
/* 80215024 00211F84  41 80 00 10 */	blt lbl_80215034
/* 80215028 00211F88  7C 68 3C 30 */	srw r8, r3, r7
/* 8021502C 00211F8C  38 E0 00 00 */	li r7, 0
/* 80215030 00211F90  48 00 00 18 */	b lbl_80215048
lbl_80215034:
/* 80215034 00211F94  7C 88 4C 30 */	srw r8, r4, r9
/* 80215038 00211F98  20 E9 00 20 */	subfic r7, r9, 0x20
/* 8021503C 00211F9C  7C 67 38 30 */	slw r7, r3, r7
/* 80215040 00211FA0  7D 08 3B 78 */	or r8, r8, r7
/* 80215044 00211FA4  7C 67 4C 30 */	srw r7, r3, r9
lbl_80215048:
/* 80215048 00211FA8  2C 00 00 20 */	cmpwi r0, 0x20
/* 8021504C 00211FAC  31 20 FF E0 */	addic r9, r0, -32
/* 80215050 00211FB0  41 80 00 10 */	blt lbl_80215060
/* 80215054 00211FB4  7C 83 48 30 */	slw r3, r4, r9
/* 80215058 00211FB8  38 80 00 00 */	li r4, 0
/* 8021505C 00211FBC  48 00 00 18 */	b lbl_80215074
lbl_80215060:
/* 80215060 00211FC0  7C 63 00 30 */	slw r3, r3, r0
/* 80215064 00211FC4  21 20 00 20 */	subfic r9, r0, 0x20
/* 80215068 00211FC8  7C 89 4C 30 */	srw r9, r4, r9
/* 8021506C 00211FCC  7C 63 4B 78 */	or r3, r3, r9
/* 80215070 00211FD0  7C 84 00 30 */	slw r4, r4, r0
lbl_80215074:
/* 80215074 00211FD4  39 40 FF FF */	li r10, -1
/* 80215078 00211FD8  30 E7 00 00 */	addic r7, r7, 0
lbl_8021507C:
/* 8021507C 00211FDC  7C 84 21 14 */	adde r4, r4, r4
/* 80215080 00211FE0  7C 63 19 14 */	adde r3, r3, r3
/* 80215084 00211FE4  7D 08 41 14 */	adde r8, r8, r8
/* 80215088 00211FE8  7C E7 39 14 */	adde r7, r7, r7
/* 8021508C 00211FEC  7C 06 40 10 */	subfc r0, r6, r8
/* 80215090 00211FF0  7D 25 39 11 */	subfe. r9, r5, r7
/* 80215094 00211FF4  41 80 00 10 */	blt lbl_802150A4
/* 80215098 00211FF8  7C 08 03 78 */	mr r8, r0
/* 8021509C 00211FFC  7D 27 4B 78 */	mr r7, r9
/* 802150A0 00212000  30 0A 00 01 */	addic r0, r10, 1
lbl_802150A4:
/* 802150A4 00212004  42 00 FF D8 */	bdnz lbl_8021507C
/* 802150A8 00212008  7C 84 21 14 */	adde r4, r4, r4
/* 802150AC 0021200C  7C 63 19 14 */	adde r3, r3, r3
/* 802150B0 00212010  81 21 00 08 */	lwz r9, 8(r1)
/* 802150B4 00212014  81 41 00 0C */	lwz r10, 0xc(r1)
/* 802150B8 00212018  7D 27 52 79 */	xor. r7, r9, r10
/* 802150BC 0021201C  41 82 00 10 */	beq lbl_802150CC
/* 802150C0 00212020  2C 09 00 00 */	cmpwi r9, 0
/* 802150C4 00212024  20 84 00 00 */	subfic r4, r4, 0
/* 802150C8 00212028  7C 63 01 90 */	subfze r3, r3
lbl_802150CC:
/* 802150CC 0021202C  48 00 00 0C */	b lbl_802150D8
lbl_802150D0:
/* 802150D0 00212030  38 80 00 00 */	li r4, 0
/* 802150D4 00212034  38 60 00 00 */	li r3, 0
lbl_802150D8:
/* 802150D8 00212038  38 21 00 10 */	addi r1, r1, 0x10
/* 802150DC 0021203C  4E 80 00 20 */	blr 

.global __mod2u
__mod2u:
/* 802150E0 00212040  2C 03 00 00 */	cmpwi r3, 0
/* 802150E4 00212044  7C 60 00 34 */	cntlzw r0, r3
/* 802150E8 00212048  7C 89 00 34 */	cntlzw r9, r4
/* 802150EC 0021204C  40 82 00 08 */	bne lbl_802150F4
/* 802150F0 00212050  38 09 00 20 */	addi r0, r9, 0x20
lbl_802150F4:
/* 802150F4 00212054  2C 05 00 00 */	cmpwi r5, 0
/* 802150F8 00212058  7C A9 00 34 */	cntlzw r9, r5
/* 802150FC 0021205C  7C CA 00 34 */	cntlzw r10, r6
/* 80215100 00212060  40 82 00 08 */	bne lbl_80215108
/* 80215104 00212064  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80215108:
/* 80215108 00212068  7C 00 48 00 */	cmpw r0, r9
/* 8021510C 0021206C  21 40 00 40 */	subfic r10, r0, 0x40
/* 80215110 00212070  41 81 00 B0 */	bgt lbl_802151C0
/* 80215114 00212074  39 29 00 01 */	addi r9, r9, 1
/* 80215118 00212078  21 29 00 40 */	subfic r9, r9, 0x40
/* 8021511C 0021207C  7C 00 4A 14 */	add r0, r0, r9
/* 80215120 00212080  7D 29 50 50 */	subf r9, r9, r10
/* 80215124 00212084  7D 29 03 A6 */	mtctr r9
/* 80215128 00212088  2C 09 00 20 */	cmpwi r9, 0x20
/* 8021512C 0021208C  38 E9 FF E0 */	addi r7, r9, -32
/* 80215130 00212090  41 80 00 10 */	blt lbl_80215140
/* 80215134 00212094  7C 68 3C 30 */	srw r8, r3, r7
/* 80215138 00212098  38 E0 00 00 */	li r7, 0
/* 8021513C 0021209C  48 00 00 18 */	b lbl_80215154
lbl_80215140:
/* 80215140 002120A0  7C 88 4C 30 */	srw r8, r4, r9
/* 80215144 002120A4  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80215148 002120A8  7C 67 38 30 */	slw r7, r3, r7
/* 8021514C 002120AC  7D 08 3B 78 */	or r8, r8, r7
/* 80215150 002120B0  7C 67 4C 30 */	srw r7, r3, r9
lbl_80215154:
/* 80215154 002120B4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80215158 002120B8  31 20 FF E0 */	addic r9, r0, -32
/* 8021515C 002120BC  41 80 00 10 */	blt lbl_8021516C
/* 80215160 002120C0  7C 83 48 30 */	slw r3, r4, r9
/* 80215164 002120C4  38 80 00 00 */	li r4, 0
/* 80215168 002120C8  48 00 00 18 */	b lbl_80215180
lbl_8021516C:
/* 8021516C 002120CC  7C 63 00 30 */	slw r3, r3, r0
/* 80215170 002120D0  21 20 00 20 */	subfic r9, r0, 0x20
/* 80215174 002120D4  7C 89 4C 30 */	srw r9, r4, r9
/* 80215178 002120D8  7C 63 4B 78 */	or r3, r3, r9
/* 8021517C 002120DC  7C 84 00 30 */	slw r4, r4, r0
lbl_80215180:
/* 80215180 002120E0  39 40 FF FF */	li r10, -1
/* 80215184 002120E4  30 E7 00 00 */	addic r7, r7, 0
lbl_80215188:
/* 80215188 002120E8  7C 84 21 14 */	adde r4, r4, r4
/* 8021518C 002120EC  7C 63 19 14 */	adde r3, r3, r3
/* 80215190 002120F0  7D 08 41 14 */	adde r8, r8, r8
/* 80215194 002120F4  7C E7 39 14 */	adde r7, r7, r7
/* 80215198 002120F8  7C 06 40 10 */	subfc r0, r6, r8
/* 8021519C 002120FC  7D 25 39 11 */	subfe. r9, r5, r7
/* 802151A0 00212100  41 80 00 10 */	blt lbl_802151B0
/* 802151A4 00212104  7C 08 03 78 */	mr r8, r0
/* 802151A8 00212108  7D 27 4B 78 */	mr r7, r9
/* 802151AC 0021210C  30 0A 00 01 */	addic r0, r10, 1
lbl_802151B0:
/* 802151B0 00212110  42 00 FF D8 */	bdnz lbl_80215188
/* 802151B4 00212114  7D 04 43 78 */	mr r4, r8
/* 802151B8 00212118  7C E3 3B 78 */	mr r3, r7
/* 802151BC 0021211C  4E 80 00 20 */	blr 
lbl_802151C0:
/* 802151C0 00212120  4E 80 00 20 */	blr 

.global __mod2i
__mod2i:
/* 802151C4 00212124  2F 83 00 00 */	cmpwi cr7, r3, 0
/* 802151C8 00212128  40 9C 00 0C */	bge cr7, lbl_802151D4
/* 802151CC 0021212C  20 84 00 00 */	subfic r4, r4, 0
/* 802151D0 00212130  7C 63 01 90 */	subfze r3, r3
lbl_802151D4:
/* 802151D4 00212134  2C 05 00 00 */	cmpwi r5, 0
/* 802151D8 00212138  40 80 00 0C */	bge lbl_802151E4
/* 802151DC 0021213C  20 C6 00 00 */	subfic r6, r6, 0
/* 802151E0 00212140  7C A5 01 90 */	subfze r5, r5
lbl_802151E4:
/* 802151E4 00212144  2C 03 00 00 */	cmpwi r3, 0
/* 802151E8 00212148  7C 60 00 34 */	cntlzw r0, r3
/* 802151EC 0021214C  7C 89 00 34 */	cntlzw r9, r4
/* 802151F0 00212150  40 82 00 08 */	bne lbl_802151F8
/* 802151F4 00212154  38 09 00 20 */	addi r0, r9, 0x20
lbl_802151F8:
/* 802151F8 00212158  2C 05 00 00 */	cmpwi r5, 0
/* 802151FC 0021215C  7C A9 00 34 */	cntlzw r9, r5
/* 80215200 00212160  7C CA 00 34 */	cntlzw r10, r6
/* 80215204 00212164  40 82 00 08 */	bne lbl_8021520C
/* 80215208 00212168  39 2A 00 20 */	addi r9, r10, 0x20
lbl_8021520C:
/* 8021520C 0021216C  7C 00 48 00 */	cmpw r0, r9
/* 80215210 00212170  21 40 00 40 */	subfic r10, r0, 0x40
/* 80215214 00212174  41 81 00 AC */	bgt lbl_802152C0
/* 80215218 00212178  39 29 00 01 */	addi r9, r9, 1
/* 8021521C 0021217C  21 29 00 40 */	subfic r9, r9, 0x40
/* 80215220 00212180  7C 00 4A 14 */	add r0, r0, r9
/* 80215224 00212184  7D 29 50 50 */	subf r9, r9, r10
/* 80215228 00212188  7D 29 03 A6 */	mtctr r9
/* 8021522C 0021218C  2C 09 00 20 */	cmpwi r9, 0x20
/* 80215230 00212190  38 E9 FF E0 */	addi r7, r9, -32
/* 80215234 00212194  41 80 00 10 */	blt lbl_80215244
/* 80215238 00212198  7C 68 3C 30 */	srw r8, r3, r7
/* 8021523C 0021219C  38 E0 00 00 */	li r7, 0
/* 80215240 002121A0  48 00 00 18 */	b lbl_80215258
lbl_80215244:
/* 80215244 002121A4  7C 88 4C 30 */	srw r8, r4, r9
/* 80215248 002121A8  20 E9 00 20 */	subfic r7, r9, 0x20
/* 8021524C 002121AC  7C 67 38 30 */	slw r7, r3, r7
/* 80215250 002121B0  7D 08 3B 78 */	or r8, r8, r7
/* 80215254 002121B4  7C 67 4C 30 */	srw r7, r3, r9
lbl_80215258:
/* 80215258 002121B8  2C 00 00 20 */	cmpwi r0, 0x20
/* 8021525C 002121BC  31 20 FF E0 */	addic r9, r0, -32
/* 80215260 002121C0  41 80 00 10 */	blt lbl_80215270
/* 80215264 002121C4  7C 83 48 30 */	slw r3, r4, r9
/* 80215268 002121C8  38 80 00 00 */	li r4, 0
/* 8021526C 002121CC  48 00 00 18 */	b lbl_80215284
lbl_80215270:
/* 80215270 002121D0  7C 63 00 30 */	slw r3, r3, r0
/* 80215274 002121D4  21 20 00 20 */	subfic r9, r0, 0x20
/* 80215278 002121D8  7C 89 4C 30 */	srw r9, r4, r9
/* 8021527C 002121DC  7C 63 4B 78 */	or r3, r3, r9
/* 80215280 002121E0  7C 84 00 30 */	slw r4, r4, r0
lbl_80215284:
/* 80215284 002121E4  39 40 FF FF */	li r10, -1
/* 80215288 002121E8  30 E7 00 00 */	addic r7, r7, 0
lbl_8021528C:
/* 8021528C 002121EC  7C 84 21 14 */	adde r4, r4, r4
/* 80215290 002121F0  7C 63 19 14 */	adde r3, r3, r3
/* 80215294 002121F4  7D 08 41 14 */	adde r8, r8, r8
/* 80215298 002121F8  7C E7 39 14 */	adde r7, r7, r7
/* 8021529C 002121FC  7C 06 40 10 */	subfc r0, r6, r8
/* 802152A0 00212200  7D 25 39 11 */	subfe. r9, r5, r7
/* 802152A4 00212204  41 80 00 10 */	blt lbl_802152B4
/* 802152A8 00212208  7C 08 03 78 */	mr r8, r0
/* 802152AC 0021220C  7D 27 4B 78 */	mr r7, r9
/* 802152B0 00212210  30 0A 00 01 */	addic r0, r10, 1
lbl_802152B4:
/* 802152B4 00212214  42 00 FF D8 */	bdnz lbl_8021528C
/* 802152B8 00212218  7D 04 43 78 */	mr r4, r8
/* 802152BC 0021221C  7C E3 3B 78 */	mr r3, r7
lbl_802152C0:
/* 802152C0 00212220  40 9C 00 0C */	bge cr7, lbl_802152CC
/* 802152C4 00212224  20 84 00 00 */	subfic r4, r4, 0
/* 802152C8 00212228  7C 63 01 90 */	subfze r3, r3
lbl_802152CC:
/* 802152CC 0021222C  4E 80 00 20 */	blr 

.global __shl2i
__shl2i:
/* 802152D0 00212230  21 05 00 20 */	subfic r8, r5, 0x20
/* 802152D4 00212234  31 25 FF E0 */	addic r9, r5, -32
/* 802152D8 00212238  7C 63 28 30 */	slw r3, r3, r5
/* 802152DC 0021223C  7C 8A 44 30 */	srw r10, r4, r8
/* 802152E0 00212240  7C 63 53 78 */	or r3, r3, r10
/* 802152E4 00212244  7C 8A 48 30 */	slw r10, r4, r9
/* 802152E8 00212248  7C 63 53 78 */	or r3, r3, r10
/* 802152EC 0021224C  7C 84 28 30 */	slw r4, r4, r5
/* 802152F0 00212250  4E 80 00 20 */	blr 

.global __shr2u
__shr2u:
/* 802152F4 00212254  21 05 00 20 */	subfic r8, r5, 0x20
/* 802152F8 00212258  31 25 FF E0 */	addic r9, r5, -32
/* 802152FC 0021225C  7C 84 2C 30 */	srw r4, r4, r5
/* 80215300 00212260  7C 6A 40 30 */	slw r10, r3, r8
/* 80215304 00212264  7C 84 53 78 */	or r4, r4, r10
/* 80215308 00212268  7C 6A 4C 30 */	srw r10, r3, r9
/* 8021530C 0021226C  7C 84 53 78 */	or r4, r4, r10
/* 80215310 00212270  7C 63 2C 30 */	srw r3, r3, r5
/* 80215314 00212274  4E 80 00 20 */	blr 

.global __shr2i
__shr2i:
/* 80215318 00212278  21 05 00 20 */	subfic r8, r5, 0x20
/* 8021531C 0021227C  35 25 FF E0 */	addic. r9, r5, -32
/* 80215320 00212280  7C 84 2C 30 */	srw r4, r4, r5
/* 80215324 00212284  7C 6A 40 30 */	slw r10, r3, r8
/* 80215328 00212288  7C 84 53 78 */	or r4, r4, r10
/* 8021532C 0021228C  7C 6A 4E 30 */	sraw r10, r3, r9
/* 80215330 00212290  40 81 00 08 */	ble lbl_80215338
/* 80215334 00212294  7C 84 53 78 */	or r4, r4, r10
lbl_80215338:
/* 80215338 00212298  7C 63 2E 30 */	sraw r3, r3, r5
/* 8021533C 0021229C  4E 80 00 20 */	blr 

.global __cvt_sll_flt
__cvt_sll_flt:
/* 80215340 002122A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80215344 002122A4  54 65 00 01 */	rlwinm. r5, r3, 0, 0, 0
/* 80215348 002122A8  41 82 00 0C */	beq lbl_80215354
/* 8021534C 002122AC  20 84 00 00 */	subfic r4, r4, 0
/* 80215350 002122B0  7C 63 01 90 */	subfze r3, r3
lbl_80215354:
/* 80215354 002122B4  7C 67 23 79 */	or. r7, r3, r4
/* 80215358 002122B8  38 C0 00 00 */	li r6, 0
/* 8021535C 002122BC  41 82 00 80 */	beq lbl_802153DC
/* 80215360 002122C0  7C 67 00 34 */	cntlzw r7, r3
/* 80215364 002122C4  7C 88 00 34 */	cntlzw r8, r4
/* 80215368 002122C8  54 E9 D0 08 */	rlwinm r9, r7, 0x1a, 0, 4
/* 8021536C 002122CC  7D 29 FE 70 */	srawi r9, r9, 0x1f
/* 80215370 002122D0  7D 29 40 38 */	and r9, r9, r8
/* 80215374 002122D4  7C E7 4A 14 */	add r7, r7, r9
/* 80215378 002122D8  21 07 00 20 */	subfic r8, r7, 0x20
/* 8021537C 002122DC  31 27 FF E0 */	addic r9, r7, -32
/* 80215380 002122E0  7C 63 38 30 */	slw r3, r3, r7
/* 80215384 002122E4  7C 8A 44 30 */	srw r10, r4, r8
/* 80215388 002122E8  7C 63 53 78 */	or r3, r3, r10
/* 8021538C 002122EC  7C 8A 48 30 */	slw r10, r4, r9
/* 80215390 002122F0  7C 63 53 78 */	or r3, r3, r10
/* 80215394 002122F4  7C 84 38 30 */	slw r4, r4, r7
/* 80215398 002122F8  7C C7 30 50 */	subf r6, r7, r6
/* 8021539C 002122FC  54 87 05 7E */	clrlwi r7, r4, 0x15
/* 802153A0 00212300  2C 07 04 00 */	cmpwi r7, 0x400
/* 802153A4 00212304  38 C6 04 3E */	addi r6, r6, 0x43e
/* 802153A8 00212308  41 80 00 1C */	blt lbl_802153C4
/* 802153AC 0021230C  41 81 00 0C */	bgt lbl_802153B8
/* 802153B0 00212310  54 87 05 29 */	rlwinm. r7, r4, 0, 0x14, 0x14
/* 802153B4 00212314  41 82 00 10 */	beq lbl_802153C4
lbl_802153B8:
/* 802153B8 00212318  30 84 08 00 */	addic r4, r4, 0x800
/* 802153BC 0021231C  7C 63 01 94 */	addze r3, r3
/* 802153C0 00212320  7C C6 01 94 */	addze r6, r6
lbl_802153C4:
/* 802153C4 00212324  54 84 A8 3E */	rotlwi r4, r4, 0x15
/* 802153C8 00212328  50 64 A8 14 */	rlwimi r4, r3, 0x15, 0, 0xa
/* 802153CC 0021232C  54 63 AB 3E */	rlwinm r3, r3, 0x15, 0xc, 0x1f
/* 802153D0 00212330  54 C6 A0 16 */	slwi r6, r6, 0x14
/* 802153D4 00212334  7C C3 1B 78 */	or r3, r6, r3
/* 802153D8 00212338  7C A3 1B 78 */	or r3, r5, r3
lbl_802153DC:
/* 802153DC 0021233C  90 61 00 08 */	stw r3, 8(r1)
/* 802153E0 00212340  90 81 00 0C */	stw r4, 0xc(r1)
/* 802153E4 00212344  C8 21 00 08 */	lfd f1, 8(r1)
/* 802153E8 00212348  FC 20 08 18 */	frsp f1, f1
/* 802153EC 0021234C  38 21 00 10 */	addi r1, r1, 0x10
/* 802153F0 00212350  4E 80 00 20 */	blr 

.global __cvt_dbl_usll
__cvt_dbl_usll:
/* 802153F4 00212354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802153F8 00212358  D8 21 00 08 */	stfd f1, 8(r1)
/* 802153FC 0021235C  80 61 00 08 */	lwz r3, 8(r1)
/* 80215400 00212360  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80215404 00212364  54 65 65 7E */	rlwinm r5, r3, 0xc, 0x15, 0x1f
/* 80215408 00212368  28 05 03 FF */	cmplwi r5, 0x3ff
/* 8021540C 0021236C  40 80 00 10 */	bge lbl_8021541C
/* 80215410 00212370  38 60 00 00 */	li r3, 0
/* 80215414 00212374  38 80 00 00 */	li r4, 0
/* 80215418 00212378  48 00 00 A0 */	b lbl_802154B8
lbl_8021541C:
/* 8021541C 0021237C  7C 66 1B 78 */	mr r6, r3
/* 80215420 00212380  54 63 03 3E */	clrlwi r3, r3, 0xc
/* 80215424 00212384  64 63 00 10 */	oris r3, r3, 0x10
/* 80215428 00212388  38 A5 FB CD */	addi r5, r5, -1075
/* 8021542C 0021238C  2C 05 00 00 */	cmpwi r5, 0
/* 80215430 00212390  40 80 00 2C */	bge lbl_8021545C
/* 80215434 00212394  7C A5 00 D0 */	neg r5, r5
/* 80215438 00212398  21 05 00 20 */	subfic r8, r5, 0x20
/* 8021543C 0021239C  31 25 FF E0 */	addic r9, r5, -32
/* 80215440 002123A0  7C 84 2C 30 */	srw r4, r4, r5
/* 80215444 002123A4  7C 6A 40 30 */	slw r10, r3, r8
/* 80215448 002123A8  7C 84 53 78 */	or r4, r4, r10
/* 8021544C 002123AC  7C 6A 4C 30 */	srw r10, r3, r9
/* 80215450 002123B0  7C 84 53 78 */	or r4, r4, r10
/* 80215454 002123B4  7C 63 2C 30 */	srw r3, r3, r5
/* 80215458 002123B8  48 00 00 50 */	b lbl_802154A8
lbl_8021545C:
/* 8021545C 002123BC  2C 05 00 0A */	cmpwi r5, 0xa
/* 80215460 002123C0  40 A1 00 28 */	ble+ lbl_80215488
/* 80215464 002123C4  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 80215468 002123C8  41 82 00 10 */	beq lbl_80215478
/* 8021546C 002123CC  3C 60 80 00 */	lis r3, 0x8000
/* 80215470 002123D0  38 80 00 00 */	li r4, 0
/* 80215474 002123D4  48 00 00 44 */	b lbl_802154B8
lbl_80215478:
/* 80215478 002123D8  3C 60 7F FF */	lis r3, 0x7FFFFFFF@h
/* 8021547C 002123DC  60 63 FF FF */	ori r3, r3, 0x7FFFFFFF@l
/* 80215480 002123E0  38 80 FF FF */	li r4, -1
/* 80215484 002123E4  48 00 00 34 */	b lbl_802154B8
lbl_80215488:
/* 80215488 002123E8  21 05 00 20 */	subfic r8, r5, 0x20
/* 8021548C 002123EC  31 25 FF E0 */	addic r9, r5, -32
/* 80215490 002123F0  7C 63 28 30 */	slw r3, r3, r5
/* 80215494 002123F4  7C 8A 44 30 */	srw r10, r4, r8
/* 80215498 002123F8  7C 63 53 78 */	or r3, r3, r10
/* 8021549C 002123FC  7C 8A 48 30 */	slw r10, r4, r9
/* 802154A0 00212400  7C 63 53 78 */	or r3, r3, r10
/* 802154A4 00212404  7C 84 28 30 */	slw r4, r4, r5
lbl_802154A8:
/* 802154A8 00212408  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 802154AC 0021240C  41 82 00 0C */	beq lbl_802154B8
/* 802154B0 00212410  20 84 00 00 */	subfic r4, r4, 0
/* 802154B4 00212414  7C 63 01 90 */	subfze r3, r3
lbl_802154B8:
/* 802154B8 00212418  38 21 00 10 */	addi r1, r1, 0x10
/* 802154BC 0021241C  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x80221FE0 - 0x80222DC0
.balign 0x8
.global __constants
__constants:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000