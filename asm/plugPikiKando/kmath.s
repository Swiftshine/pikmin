.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global isNan__Ff
isNan__Ff:
/* 801126C4 0010F624  7C 08 02 A6 */	mflr r0
/* 801126C8 0010F628  3C 60 80 2F */	lis r3, __float_nan@ha
/* 801126CC 0010F62C  90 01 00 04 */	stw r0, 4(r1)
/* 801126D0 0010F630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801126D4 0010F634  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801126D8 0010F638  FF E0 08 90 */	fmr f31, f1
/* 801126DC 0010F63C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801126E0 0010F640  C0 23 94 78 */	lfs f1, __float_nan@l(r3)
/* 801126E4 0010F644  48 10 26 E5 */	bl __cvt_fp2unsigned
/* 801126E8 0010F648  7C 7F 1B 78 */	mr r31, r3
/* 801126EC 0010F64C  FC 20 F8 90 */	fmr f1, f31
/* 801126F0 0010F650  48 10 26 D9 */	bl __cvt_fp2unsigned
/* 801126F4 0010F654  7C 03 F8 40 */	cmplw r3, r31
/* 801126F8 0010F658  40 82 00 0C */	bne .L_80112704
/* 801126FC 0010F65C  38 60 00 01 */	li r3, 1
/* 80112700 0010F660  48 00 00 08 */	b .L_80112708
.L_80112704:
/* 80112704 0010F664  38 60 00 00 */	li r3, 0
.L_80112708:
/* 80112708 0010F668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011270C 0010F66C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80112710 0010F670  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80112714 0010F674  38 21 00 20 */	addi r1, r1, 0x20
/* 80112718 0010F678  7C 08 03 A6 */	mtlr r0
/* 8011271C 0010F67C  4E 80 00 20 */	blr 

.global makePostureMatrix__FR8Vector3fR8Vector3fR8Vector3fR8Matrix4f
makePostureMatrix__FR8Vector3fR8Vector3fR8Vector3fR8Matrix4f:
/* 80112720 0010F680  7C 08 02 A6 */	mflr r0
/* 80112724 0010F684  90 01 00 04 */	stw r0, 4(r1)
/* 80112728 0010F688  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8011272C 0010F68C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80112730 0010F690  3B E6 00 00 */	addi r31, r6, 0
/* 80112734 0010F694  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80112738 0010F698  3B C5 00 00 */	addi r30, r5, 0
/* 8011273C 0010F69C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80112740 0010F6A0  3B A4 00 00 */	addi r29, r4, 0
/* 80112744 0010F6A4  93 81 00 18 */	stw r28, 0x18(r1)
/* 80112748 0010F6A8  3B 83 00 00 */	addi r28, r3, 0
/* 8011274C 0010F6AC  38 7F 00 00 */	addi r3, r31, 0
/* 80112750 0010F6B0  4B F2 B6 6D */	bl makeIdentity__8Matrix4fFv
/* 80112754 0010F6B4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80112758 0010F6B8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8011275C 0010F6BC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80112760 0010F6C0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80112764 0010F6C4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80112768 0010F6C8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8011276C 0010F6CC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80112770 0010F6D0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80112774 0010F6D4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80112778 0010F6D8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8011277C 0010F6DC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80112780 0010F6E0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80112784 0010F6E4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80112788 0010F6E8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8011278C 0010F6EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80112790 0010F6F0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80112794 0010F6F4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80112798 0010F6F8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8011279C 0010F6FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801127A0 0010F700  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801127A4 0010F704  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801127A8 0010F708  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801127AC 0010F70C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 801127B0 0010F710  38 21 00 28 */	addi r1, r1, 0x28
/* 801127B4 0010F714  7C 08 03 A6 */	mtlr r0
/* 801127B8 0010F718  4E 80 00 20 */	blr 

.global calcImpulse__FR8Vector3ffR8Vector3fR8Matrix4fR8Vector3fR8Vector3f
calcImpulse__FR8Vector3ffR8Vector3fR8Matrix4fR8Vector3fR8Vector3f:
/* 801127BC 0010F71C  7C 08 02 A6 */	mflr r0
/* 801127C0 0010F720  90 01 00 04 */	stw r0, 4(r1)
/* 801127C4 0010F724  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 801127C8 0010F728  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801127CC 0010F72C  DB C1 00 88 */	stfd f30, 0x88(r1)
/* 801127D0 0010F730  FF C0 08 90 */	fmr f30, f1
/* 801127D4 0010F734  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801127D8 0010F738  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801127DC 0010F73C  7C 9F 23 78 */	mr r31, r4
/* 801127E0 0010F740  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801127E4 0010F744  7C 7E 1B 78 */	mr r30, r3
/* 801127E8 0010F748  C0 46 00 08 */	lfs f2, 8(r6)
/* 801127EC 0010F74C  C0 84 00 08 */	lfs f4, 8(r4)
/* 801127F0 0010F750  C0 07 00 08 */	lfs f0, 8(r7)
/* 801127F4 0010F754  EC E4 00 B2 */	fmuls f7, f4, f2
/* 801127F8 0010F758  C1 24 00 00 */	lfs f9, 0(r4)
/* 801127FC 0010F75C  C0 C6 00 00 */	lfs f6, 0(r6)
/* 80112800 0010F760  EC 84 00 32 */	fmuls f4, f4, f0
/* 80112804 0010F764  C0 67 00 00 */	lfs f3, 0(r7)
/* 80112808 0010F768  C1 04 00 04 */	lfs f8, 4(r4)
/* 8011280C 0010F76C  EC C9 01 B2 */	fmuls f6, f9, f6
/* 80112810 0010F770  C0 A6 00 04 */	lfs f5, 4(r6)
/* 80112814 0010F774  EC 69 00 F2 */	fmuls f3, f9, f3
/* 80112818 0010F778  C0 47 00 04 */	lfs f2, 4(r7)
/* 8011281C 0010F77C  C0 02 9E F8 */	lfs f0, lbl_803EA0F8@sda21(r2)
/* 80112820 0010F780  EC A8 01 72 */	fmuls f5, f8, f5
/* 80112824 0010F784  7C A4 2B 78 */	mr r4, r5
/* 80112828 0010F788  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8011282C 0010F78C  EC 48 00 B2 */	fmuls f2, f8, f2
/* 80112830 0010F790  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80112834 0010F794  EC A6 28 2A */	fadds f5, f6, f5
/* 80112838 0010F798  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8011283C 0010F79C  EC 03 10 2A */	fadds f0, f3, f2
/* 80112840 0010F7A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80112844 0010F7A4  EF E7 28 2A */	fadds f31, f7, f5
/* 80112848 0010F7A8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8011284C 0010F7AC  EF A4 00 2A */	fadds f29, f4, f0
/* 80112850 0010F7B0  90 61 00 60 */	stw r3, 0x60(r1)
/* 80112854 0010F7B4  38 61 00 60 */	addi r3, r1, 0x60
/* 80112858 0010F7B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8011285C 0010F7BC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80112860 0010F7C0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80112864 0010F7C4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80112868 0010F7C8  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8011286C 0010F7CC  C0 BF 00 00 */	lfs f5, 0(r31)
/* 80112870 0010F7D0  C0 E1 00 64 */	lfs f7, 0x64(r1)
/* 80112874 0010F7D4  EC 01 01 B2 */	fmuls f0, f1, f6
/* 80112878 0010F7D8  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8011287C 0010F7DC  EC 81 01 72 */	fmuls f4, f1, f5
/* 80112880 0010F7E0  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80112884 0010F7E4  EC 27 00 F2 */	fmuls f1, f7, f3
/* 80112888 0010F7E8  EC 62 00 F2 */	fmuls f3, f2, f3
/* 8011288C 0010F7EC  EC 42 01 B2 */	fmuls f2, f2, f6
/* 80112890 0010F7F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80112894 0010F7F4  EC 27 01 72 */	fmuls f1, f7, f5
/* 80112898 0010F7F8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8011289C 0010F7FC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801128A0 0010F800  EC 02 08 28 */	fsubs f0, f2, f1
/* 801128A4 0010F804  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 801128A8 0010F808  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801128AC 0010F80C  4B F2 4E A1 */	bl multMatrix__8Vector3fFR8Matrix4f
/* 801128B0 0010F810  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 801128B4 0010F814  EC 1D F8 24 */	fdivs f0, f29, f31
/* 801128B8 0010F818  C0 FE 00 04 */	lfs f7, 4(r30)
/* 801128BC 0010F81C  C0 DE 00 00 */	lfs f6, 0(r30)
/* 801128C0 0010F820  C1 21 00 64 */	lfs f9, 0x64(r1)
/* 801128C4 0010F824  C1 1E 00 08 */	lfs f8, 8(r30)
/* 801128C8 0010F828  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 801128CC 0010F82C  EC 49 02 32 */	fmuls f2, f9, f8
/* 801128D0 0010F830  EC 24 01 F2 */	fmuls f1, f4, f7
/* 801128D4 0010F834  EC A4 01 B2 */	fmuls f5, f4, f6
/* 801128D8 0010F838  EC 83 02 32 */	fmuls f4, f3, f8
/* 801128DC 0010F83C  EC 22 08 28 */	fsubs f1, f2, f1
/* 801128E0 0010F840  EC 63 01 F2 */	fmuls f3, f3, f7
/* 801128E4 0010F844  EC 49 01 B2 */	fmuls f2, f9, f6
/* 801128E8 0010F848  EC A5 20 28 */	fsubs f5, f5, f4
/* 801128EC 0010F84C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801128F0 0010F850  FC 80 00 50 */	fneg f4, f0
/* 801128F4 0010F854  EC 03 10 28 */	fsubs f0, f3, f2
/* 801128F8 0010F858  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 801128FC 0010F85C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80112900 0010F860  C0 02 9F 00 */	lfs f0, lbl_803EA100@sda21(r2)
/* 80112904 0010F864  C0 A2 9E FC */	lfs f5, lbl_803EA0FC@sda21(r2)
/* 80112908 0010F868  EC C0 F0 24 */	fdivs f6, f0, f30
/* 8011290C 0010F86C  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80112910 0010F870  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80112914 0010F874  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80112918 0010F878  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8011291C 0010F87C  EC E5 20 28 */	fsubs f7, f5, f4
/* 80112920 0010F880  C0 A1 00 68 */	lfs f5, 0x68(r1)
/* 80112924 0010F884  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80112928 0010F888  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8011292C 0010F88C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80112930 0010F890  EC 25 01 32 */	fmuls f1, f5, f4
/* 80112934 0010F894  EC 02 00 2A */	fadds f0, f2, f0
/* 80112938 0010F898  EC 47 07 F2 */	fmuls f2, f7, f31
/* 8011293C 0010F89C  EC 01 00 2A */	fadds f0, f1, f0
/* 80112940 0010F8A0  EC 06 00 2A */	fadds f0, f6, f0
/* 80112944 0010F8A4  EC 22 00 24 */	fdivs f1, f2, f0
/* 80112948 0010F8A8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8011294C 0010F8AC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80112950 0010F8B0  CB C1 00 88 */	lfd f30, 0x88(r1)
/* 80112954 0010F8B4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80112958 0010F8B8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8011295C 0010F8BC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80112960 0010F8C0  38 21 00 98 */	addi r1, r1, 0x98
/* 80112964 0010F8C4  7C 08 03 A6 */	mtlr r0
/* 80112968 0010F8C8  4E 80 00 20 */	blr 

.global CRSpline__FfP8Vector3f
CRSpline__FfP8Vector3f:
/* 8011296C 0010F8CC  7C 08 02 A6 */	mflr r0
/* 80112970 0010F8D0  ED 21 00 72 */	fmuls f9, f1, f1
/* 80112974 0010F8D4  90 01 00 04 */	stw r0, 4(r1)
/* 80112978 0010F8D8  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8011297C 0010F8DC  ED 49 00 72 */	fmuls f10, f9, f1
/* 80112980 0010F8E0  DB E1 00 D8 */	stfd f31, 0xd8(r1)
/* 80112984 0010F8E4  38 C1 00 60 */	addi r6, r1, 0x60
/* 80112988 0010F8E8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8011298C 0010F8EC  93 E1 00 D4 */	stw r31, 0xd4(r1)
/* 80112990 0010F8F0  7C 9F 23 78 */	mr r31, r4
/* 80112994 0010F8F4  38 81 00 58 */	addi r4, r1, 0x58
/* 80112998 0010F8F8  93 C1 00 D0 */	stw r30, 0xd0(r1)
/* 8011299C 0010F8FC  7C 7E 1B 78 */	mr r30, r3
/* 801129A0 0010F900  38 61 00 74 */	addi r3, r1, 0x74
/* 801129A4 0010F904  C0 02 9F 10 */	lfs f0, lbl_803EA110@sda21(r2)
/* 801129A8 0010F908  C0 62 9F 04 */	lfs f3, lbl_803EA104@sda21(r2)
/* 801129AC 0010F90C  C0 82 9F 0C */	lfs f4, lbl_803EA10C@sda21(r2)
/* 801129B0 0010F910  EC 00 02 72 */	fmuls f0, f0, f9
/* 801129B4 0010F914  EC A3 02 B2 */	fmuls f5, f3, f10
/* 801129B8 0010F918  C0 E2 9F 08 */	lfs f7, lbl_803EA108@sda21(r2)
/* 801129BC 0010F91C  EC 84 02 B2 */	fmuls f4, f4, f10
/* 801129C0 0010F920  ED 07 00 72 */	fmuls f8, f7, f1
/* 801129C4 0010F924  EC C5 48 2A */	fadds f6, f5, f9
/* 801129C8 0010F928  EC 04 00 28 */	fsubs f0, f4, f0
/* 801129CC 0010F92C  C0 A2 9F 00 */	lfs f5, lbl_803EA100@sda21(r2)
/* 801129D0 0010F930  C0 62 9F 14 */	lfs f3, lbl_803EA114@sda21(r2)
/* 801129D4 0010F934  EC C6 40 28 */	fsubs f6, f6, f8
/* 801129D8 0010F938  EC 85 00 2A */	fadds f4, f5, f0
/* 801129DC 0010F93C  EC 27 02 B2 */	fmuls f1, f7, f10
/* 801129E0 0010F940  C0 42 9F 18 */	lfs f2, lbl_803EA118@sda21(r2)
/* 801129E4 0010F944  EC 07 02 72 */	fmuls f0, f7, f9
/* 801129E8 0010F948  D0 C1 00 CC */	stfs f6, 0xcc(r1)
/* 801129EC 0010F94C  EC 63 02 B2 */	fmuls f3, f3, f10
/* 801129F0 0010F950  EC A1 00 28 */	fsubs f5, f1, f0
/* 801129F4 0010F954  D0 81 00 C8 */	stfs f4, 0xc8(r1)
/* 801129F8 0010F958  EC 22 02 72 */	fmuls f1, f2, f9
/* 801129FC 0010F95C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80112A00 0010F960  EC 00 01 72 */	fmuls f0, f0, f5
/* 80112A04 0010F964  EC 23 08 2A */	fadds f1, f3, f1
/* 80112A08 0010F968  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80112A0C 0010F96C  EF E8 08 2A */	fadds f31, f8, f1
/* 80112A10 0010F970  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80112A14 0010F974  EC 00 01 72 */	fmuls f0, f0, f5
/* 80112A18 0010F978  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80112A1C 0010F97C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80112A20 0010F980  EC 00 01 72 */	fmuls f0, f0, f5
/* 80112A24 0010F984  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80112A28 0010F988  4B F2 46 F5 */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112A2C 0010F98C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80112A30 0010F990  38 C1 00 48 */	addi r6, r1, 0x48
/* 80112A34 0010F994  38 A1 00 44 */	addi r5, r1, 0x44
/* 80112A38 0010F998  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80112A3C 0010F99C  38 81 00 40 */	addi r4, r1, 0x40
/* 80112A40 0010F9A0  38 61 00 80 */	addi r3, r1, 0x80
/* 80112A44 0010F9A4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80112A48 0010F9A8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80112A4C 0010F9AC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80112A50 0010F9B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80112A54 0010F9B4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80112A58 0010F9B8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80112A5C 0010F9BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80112A60 0010F9C0  4B F2 46 BD */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112A64 0010F9C4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80112A68 0010F9C8  38 9F 00 0C */	addi r4, r31, 0xc
/* 80112A6C 0010F9CC  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80112A70 0010F9D0  4B F8 CA 65 */	bl __ml__FRC8Vector3fRCf
/* 80112A74 0010F9D4  38 9F 00 00 */	addi r4, r31, 0
/* 80112A78 0010F9D8  38 61 00 98 */	addi r3, r1, 0x98
/* 80112A7C 0010F9DC  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80112A80 0010F9E0  4B F8 CA 55 */	bl __ml__FRC8Vector3fRCf
/* 80112A84 0010F9E4  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80112A88 0010F9E8  38 C1 00 54 */	addi r6, r1, 0x54
/* 80112A8C 0010F9EC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80112A90 0010F9F0  38 A1 00 50 */	addi r5, r1, 0x50
/* 80112A94 0010F9F4  C0 61 00 9C */	lfs f3, 0x9c(r1)
/* 80112A98 0010F9F8  EC 81 00 2A */	fadds f4, f1, f0
/* 80112A9C 0010F9FC  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80112AA0 0010FA00  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80112AA4 0010FA04  38 81 00 4C */	addi r4, r1, 0x4c
/* 80112AA8 0010FA08  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80112AAC 0010FA0C  EC 43 10 2A */	fadds f2, f3, f2
/* 80112AB0 0010FA10  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80112AB4 0010FA14  EC 01 00 2A */	fadds f0, f1, f0
/* 80112AB8 0010FA18  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80112ABC 0010FA1C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80112AC0 0010FA20  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80112AC4 0010FA24  4B F2 46 59 */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112AC8 0010FA28  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80112ACC 0010FA2C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80112AD0 0010FA30  C0 61 00 A8 */	lfs f3, 0xa8(r1)
/* 80112AD4 0010FA34  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80112AD8 0010FA38  EC 21 00 2A */	fadds f1, f1, f0
/* 80112ADC 0010FA3C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80112AE0 0010FA40  EC 63 10 2A */	fadds f3, f3, f2
/* 80112AE4 0010FA44  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80112AE8 0010FA48  C0 A1 00 AC */	lfs f5, 0xac(r1)
/* 80112AEC 0010FA4C  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 80112AF0 0010FA50  EC 01 00 2A */	fadds f0, f1, f0
/* 80112AF4 0010FA54  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80112AF8 0010FA58  EC 85 20 2A */	fadds f4, f5, f4
/* 80112AFC 0010FA5C  EC 43 10 2A */	fadds f2, f3, f2
/* 80112B00 0010FA60  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80112B04 0010FA64  EC 04 08 2A */	fadds f0, f4, f1
/* 80112B08 0010FA68  D0 5E 00 04 */	stfs f2, 4(r30)
/* 80112B0C 0010FA6C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80112B10 0010FA70  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80112B14 0010FA74  CB E1 00 D8 */	lfd f31, 0xd8(r1)
/* 80112B18 0010FA78  83 E1 00 D4 */	lwz r31, 0xd4(r1)
/* 80112B1C 0010FA7C  83 C1 00 D0 */	lwz r30, 0xd0(r1)
/* 80112B20 0010FA80  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80112B24 0010FA84  7C 08 03 A6 */	mtlr r0
/* 80112B28 0010FA88  4E 80 00 20 */	blr 

.global CRSplineTangent__FfP8Vector3f
CRSplineTangent__FfP8Vector3f:
/* 80112B2C 0010FA8C  7C 08 02 A6 */	mflr r0
/* 80112B30 0010FA90  EC C1 00 72 */	fmuls f6, f1, f1
/* 80112B34 0010FA94  90 01 00 04 */	stw r0, 4(r1)
/* 80112B38 0010FA98  94 21 FF 18 */	stwu r1, -0xe8(r1)
/* 80112B3C 0010FA9C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80112B40 0010FAA0  38 C1 00 60 */	addi r6, r1, 0x60
/* 80112B44 0010FAA4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80112B48 0010FAA8  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80112B4C 0010FAAC  7C 9F 23 78 */	mr r31, r4
/* 80112B50 0010FAB0  38 81 00 58 */	addi r4, r1, 0x58
/* 80112B54 0010FAB4  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80112B58 0010FAB8  7C 7E 1B 78 */	mr r30, r3
/* 80112B5C 0010FABC  38 61 00 74 */	addi r3, r1, 0x74
/* 80112B60 0010FAC0  C0 82 9F 14 */	lfs f4, lbl_803EA114@sda21(r2)
/* 80112B64 0010FAC4  C0 02 9F 18 */	lfs f0, lbl_803EA118@sda21(r2)
/* 80112B68 0010FAC8  EC A4 01 B2 */	fmuls f5, f4, f6
/* 80112B6C 0010FACC  C0 62 9F 1C */	lfs f3, lbl_803EA11C@sda21(r2)
/* 80112B70 0010FAD0  EC 80 00 72 */	fmuls f4, f0, f1
/* 80112B74 0010FAD4  C0 42 9F 20 */	lfs f2, lbl_803EA120@sda21(r2)
/* 80112B78 0010FAD8  C0 02 9F 0C */	lfs f0, lbl_803EA10C@sda21(r2)
/* 80112B7C 0010FADC  EC 85 20 2A */	fadds f4, f5, f4
/* 80112B80 0010FAE0  C0 A2 9F 08 */	lfs f5, lbl_803EA108@sda21(r2)
/* 80112B84 0010FAE4  EC 63 01 B2 */	fmuls f3, f3, f6
/* 80112B88 0010FAE8  EC 42 00 72 */	fmuls f2, f2, f1
/* 80112B8C 0010FAEC  EC 84 28 28 */	fsubs f4, f4, f5
/* 80112B90 0010FAF0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80112B94 0010FAF4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80112B98 0010FAF8  C0 62 9F 24 */	lfs f3, lbl_803EA124@sda21(r2)
/* 80112B9C 0010FAFC  D0 81 00 CC */	stfs f4, 0xcc(r1)
/* 80112BA0 0010FB00  EC 80 08 28 */	fsubs f4, f0, f1
/* 80112BA4 0010FB04  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 80112BA8 0010FB08  C0 42 9F 28 */	lfs f2, lbl_803EA128@sda21(r2)
/* 80112BAC 0010FB0C  EC 63 01 B2 */	fmuls f3, f3, f6
/* 80112BB0 0010FB10  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80112BB4 0010FB14  EC 22 00 72 */	fmuls f1, f2, f1
/* 80112BB8 0010FB18  EC 00 01 32 */	fmuls f0, f0, f4
/* 80112BBC 0010FB1C  EC 23 08 2A */	fadds f1, f3, f1
/* 80112BC0 0010FB20  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80112BC4 0010FB24  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80112BC8 0010FB28  EF E5 08 2A */	fadds f31, f5, f1
/* 80112BCC 0010FB2C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80112BD0 0010FB30  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80112BD4 0010FB34  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80112BD8 0010FB38  EC 00 01 32 */	fmuls f0, f0, f4
/* 80112BDC 0010FB3C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80112BE0 0010FB40  4B F2 45 3D */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112BE4 0010FB44  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80112BE8 0010FB48  38 C1 00 48 */	addi r6, r1, 0x48
/* 80112BEC 0010FB4C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80112BF0 0010FB50  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80112BF4 0010FB54  38 81 00 40 */	addi r4, r1, 0x40
/* 80112BF8 0010FB58  38 61 00 80 */	addi r3, r1, 0x80
/* 80112BFC 0010FB5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80112C00 0010FB60  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80112C04 0010FB64  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80112C08 0010FB68  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80112C0C 0010FB6C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80112C10 0010FB70  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80112C14 0010FB74  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80112C18 0010FB78  4B F2 45 05 */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112C1C 0010FB7C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80112C20 0010FB80  38 9F 00 0C */	addi r4, r31, 0xc
/* 80112C24 0010FB84  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80112C28 0010FB88  4B F8 C8 AD */	bl __ml__FRC8Vector3fRCf
/* 80112C2C 0010FB8C  38 9F 00 00 */	addi r4, r31, 0
/* 80112C30 0010FB90  38 61 00 98 */	addi r3, r1, 0x98
/* 80112C34 0010FB94  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80112C38 0010FB98  4B F8 C8 9D */	bl __ml__FRC8Vector3fRCf
/* 80112C3C 0010FB9C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80112C40 0010FBA0  38 C1 00 54 */	addi r6, r1, 0x54
/* 80112C44 0010FBA4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80112C48 0010FBA8  38 A1 00 50 */	addi r5, r1, 0x50
/* 80112C4C 0010FBAC  C0 61 00 9C */	lfs f3, 0x9c(r1)
/* 80112C50 0010FBB0  EC 81 00 2A */	fadds f4, f1, f0
/* 80112C54 0010FBB4  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80112C58 0010FBB8  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80112C5C 0010FBBC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80112C60 0010FBC0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80112C64 0010FBC4  EC 43 10 2A */	fadds f2, f3, f2
/* 80112C68 0010FBC8  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80112C6C 0010FBCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80112C70 0010FBD0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80112C74 0010FBD4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80112C78 0010FBD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80112C7C 0010FBDC  4B F2 44 A1 */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112C80 0010FBE0  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80112C84 0010FBE4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80112C88 0010FBE8  C0 61 00 A8 */	lfs f3, 0xa8(r1)
/* 80112C8C 0010FBEC  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80112C90 0010FBF0  EC 21 00 2A */	fadds f1, f1, f0
/* 80112C94 0010FBF4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80112C98 0010FBF8  EC 63 10 2A */	fadds f3, f3, f2
/* 80112C9C 0010FBFC  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 80112CA0 0010FC00  C0 A1 00 AC */	lfs f5, 0xac(r1)
/* 80112CA4 0010FC04  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 80112CA8 0010FC08  EC 01 00 2A */	fadds f0, f1, f0
/* 80112CAC 0010FC0C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80112CB0 0010FC10  EC 85 20 2A */	fadds f4, f5, f4
/* 80112CB4 0010FC14  EC 43 10 2A */	fadds f2, f3, f2
/* 80112CB8 0010FC18  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80112CBC 0010FC1C  EC 04 08 2A */	fadds f0, f4, f1
/* 80112CC0 0010FC20  D0 5E 00 04 */	stfs f2, 4(r30)
/* 80112CC4 0010FC24  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80112CC8 0010FC28  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80112CCC 0010FC2C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80112CD0 0010FC30  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80112CD4 0010FC34  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80112CD8 0010FC38  38 21 00 E8 */	addi r1, r1, 0xe8
/* 80112CDC 0010FC3C  7C 08 03 A6 */	mtlr r0
/* 80112CE0 0010FC40  4E 80 00 20 */	blr 

.global getThrowVelocity__FR8Vector3ffR8Vector3fR8Vector3f
getThrowVelocity__FR8Vector3ffR8Vector3fR8Vector3f:
/* 80112CE4 0010FC44  7C 08 02 A6 */	mflr r0
/* 80112CE8 0010FC48  90 01 00 04 */	stw r0, 4(r1)
/* 80112CEC 0010FC4C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80112CF0 0010FC50  DB E1 01 28 */	stfd f31, 0x128(r1)
/* 80112CF4 0010FC54  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80112CF8 0010FC58  DB A1 01 18 */	stfd f29, 0x118(r1)
/* 80112CFC 0010FC5C  FF A0 08 90 */	fmr f29, f1
/* 80112D00 0010FC60  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 80112D04 0010FC64  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 80112D08 0010FC68  7C BF 2B 78 */	mr r31, r5
/* 80112D0C 0010FC6C  93 C1 01 08 */	stw r30, 0x108(r1)
/* 80112D10 0010FC70  7C 9E 23 78 */	mr r30, r4
/* 80112D14 0010FC74  93 A1 01 04 */	stw r29, 0x104(r1)
/* 80112D18 0010FC78  7C 7D 1B 78 */	mr r29, r3
/* 80112D1C 0010FC7C  C0 84 00 04 */	lfs f4, 4(r4)
/* 80112D20 0010FC80  C0 65 00 04 */	lfs f3, 4(r5)
/* 80112D24 0010FC84  C0 44 00 00 */	lfs f2, 0(r4)
/* 80112D28 0010FC88  C0 25 00 00 */	lfs f1, 0(r5)
/* 80112D2C 0010FC8C  EC 84 18 28 */	fsubs f4, f4, f3
/* 80112D30 0010FC90  C0 64 00 08 */	lfs f3, 8(r4)
/* 80112D34 0010FC94  EC A2 08 28 */	fsubs f5, f2, f1
/* 80112D38 0010FC98  C0 45 00 08 */	lfs f2, 8(r5)
/* 80112D3C 0010FC9C  EC 24 01 32 */	fmuls f1, f4, f4
/* 80112D40 0010FCA0  EC 63 10 28 */	fsubs f3, f3, f2
/* 80112D44 0010FCA4  C0 02 9E F8 */	lfs f0, lbl_803EA0F8@sda21(r2)
/* 80112D48 0010FCA8  EC 45 01 72 */	fmuls f2, f5, f5
/* 80112D4C 0010FCAC  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80112D50 0010FCB0  EC 22 08 2A */	fadds f1, f2, f1
/* 80112D54 0010FCB4  EC 83 08 2A */	fadds f4, f3, f1
/* 80112D58 0010FCB8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80112D5C 0010FCBC  40 81 00 5C */	ble .L_80112DB8
/* 80112D60 0010FCC0  FC 20 20 34 */	frsqrte f1, f4
/* 80112D64 0010FCC4  C8 62 9F 30 */	lfd f3, lbl_803EA130@sda21(r2)
/* 80112D68 0010FCC8  C8 42 9F 38 */	lfd f2, lbl_803EA138@sda21(r2)
/* 80112D6C 0010FCCC  FC 01 00 72 */	fmul f0, f1, f1
/* 80112D70 0010FCD0  FC 23 00 72 */	fmul f1, f3, f1
/* 80112D74 0010FCD4  FC 04 00 32 */	fmul f0, f4, f0
/* 80112D78 0010FCD8  FC 02 00 28 */	fsub f0, f2, f0
/* 80112D7C 0010FCDC  FC 21 00 32 */	fmul f1, f1, f0
/* 80112D80 0010FCE0  FC 01 00 72 */	fmul f0, f1, f1
/* 80112D84 0010FCE4  FC 23 00 72 */	fmul f1, f3, f1
/* 80112D88 0010FCE8  FC 04 00 32 */	fmul f0, f4, f0
/* 80112D8C 0010FCEC  FC 02 00 28 */	fsub f0, f2, f0
/* 80112D90 0010FCF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80112D94 0010FCF4  FC 01 00 72 */	fmul f0, f1, f1
/* 80112D98 0010FCF8  FC 23 00 72 */	fmul f1, f3, f1
/* 80112D9C 0010FCFC  FC 04 00 32 */	fmul f0, f4, f0
/* 80112DA0 0010FD00  FC 02 00 28 */	fsub f0, f2, f0
/* 80112DA4 0010FD04  FC 01 00 32 */	fmul f0, f1, f0
/* 80112DA8 0010FD08  FC 04 00 32 */	fmul f0, f4, f0
/* 80112DAC 0010FD0C  FC 00 00 18 */	frsp f0, f0
/* 80112DB0 0010FD10  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80112DB4 0010FD14  C0 81 00 8C */	lfs f4, 0x8c(r1)
.L_80112DB8:
/* 80112DB8 0010FD18  FC 20 EA 10 */	fabs f1, f29
/* 80112DBC 0010FD1C  C0 02 9E F8 */	lfs f0, lbl_803EA0F8@sda21(r2)
/* 80112DC0 0010FD20  38 01 00 6C */	addi r0, r1, 0x6c
/* 80112DC4 0010FD24  D0 06 00 04 */	stfs f0, 4(r6)
/* 80112DC8 0010FD28  38 A1 00 68 */	addi r5, r1, 0x68
/* 80112DCC 0010FD2C  EF C4 08 24 */	fdivs f30, f4, f1
/* 80112DD0 0010FD30  C0 06 00 08 */	lfs f0, 8(r6)
/* 80112DD4 0010FD34  38 81 00 64 */	addi r4, r1, 0x64
/* 80112DD8 0010FD38  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80112DDC 0010FD3C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80112DE0 0010FD40  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80112DE4 0010FD44  C0 06 00 04 */	lfs f0, 4(r6)
/* 80112DE8 0010FD48  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80112DEC 0010FD4C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80112DF0 0010FD50  C0 06 00 00 */	lfs f0, 0(r6)
/* 80112DF4 0010FD54  7C 06 03 78 */	mr r6, r0
/* 80112DF8 0010FD58  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80112DFC 0010FD5C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80112E00 0010FD60  4B F2 43 1D */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112E04 0010FD64  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80112E08 0010FD68  38 C1 00 78 */	addi r6, r1, 0x78
/* 80112E0C 0010FD6C  C0 6D DB 38 */	lfs f3, lbl_803E2858@sda21(r13)
/* 80112E10 0010FD70  38 A1 00 74 */	addi r5, r1, 0x74
/* 80112E14 0010FD74  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80112E18 0010FD78  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80112E1C 0010FD7C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80112E20 0010FD80  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80112E24 0010FD84  38 81 00 70 */	addi r4, r1, 0x70
/* 80112E28 0010FD88  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80112E2C 0010FD8C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80112E30 0010FD90  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80112E34 0010FD94  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80112E38 0010FD98  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80112E3C 0010FD9C  4B F2 42 E1 */	bl __ct__8Vector3fFRCfRCfRCf
/* 80112E40 0010FDA0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80112E44 0010FDA4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80112E48 0010FDA8  80 6D 2F 80 */	lwz r3, _instance__10AIConstant@sda21(r13)
/* 80112E4C 0010FDAC  EC 21 00 2A */	fadds f1, f1, f0
/* 80112E50 0010FDB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80112E54 0010FDB4  C0 82 9E F8 */	lfs f4, lbl_803EA0F8@sda21(r2)
/* 80112E58 0010FDB8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80112E5C 0010FDBC  EC 61 00 28 */	fsubs f3, f1, f0
/* 80112E60 0010FDC0  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80112E64 0010FDC4  EC 04 01 32 */	fmuls f0, f4, f4
/* 80112E68 0010FDC8  C0 9E 00 00 */	lfs f4, 0(r30)
/* 80112E6C 0010FDCC  FC C0 18 50 */	fneg f6, f3
/* 80112E70 0010FDD0  EC A2 08 2A */	fadds f5, f2, f1
/* 80112E74 0010FDD4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80112E78 0010FDD8  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80112E7C 0010FDDC  ED 06 F0 24 */	fdivs f8, f6, f30
/* 80112E80 0010FDE0  C0 E2 9F 08 */	lfs f7, lbl_803EA108@sda21(r2)
/* 80112E84 0010FDE4  C0 C3 00 30 */	lfs f6, 0x30(r3)
/* 80112E88 0010FDE8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80112E8C 0010FDEC  EF E5 20 28 */	fsubs f31, f5, f4
/* 80112E90 0010FDF0  EC 63 08 2A */	fadds f3, f3, f1
/* 80112E94 0010FDF4  EC 87 01 B2 */	fmuls f4, f7, f6
/* 80112E98 0010FDF8  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80112E9C 0010FDFC  EF 83 10 28 */	fsubs f28, f3, f2
/* 80112EA0 0010FE00  EC 5E 01 32 */	fmuls f2, f30, f4
/* 80112EA4 0010FE04  EC 01 00 2A */	fadds f0, f1, f0
/* 80112EA8 0010FE08  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80112EAC 0010FE0C  EF C8 10 28 */	fsubs f30, f8, f2
/* 80112EB0 0010FE10  EC 21 00 2A */	fadds f1, f1, f0
/* 80112EB4 0010FE14  4B EF AD 8D */	bl sqrtf__3stdFf
/* 80112EB8 0010FE18  C0 02 9E F8 */	lfs f0, lbl_803EA0F8@sda21(r2)
/* 80112EBC 0010FE1C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80112EC0 0010FE20  41 82 00 0C */	beq .L_80112ECC
/* 80112EC4 0010FE24  EF FF 08 24 */	fdivs f31, f31, f1
/* 80112EC8 0010FE28  EF 9C 08 24 */	fdivs f28, f28, f1
.L_80112ECC:
/* 80112ECC 0010FE2C  EF FF 07 72 */	fmuls f31, f31, f29
/* 80112ED0 0010FE30  FC 00 F0 50 */	fneg f0, f30
/* 80112ED4 0010FE34  EF 9C 07 72 */	fmuls f28, f28, f29
/* 80112ED8 0010FE38  D3 FD 00 00 */	stfs f31, 0(r29)
/* 80112EDC 0010FE3C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80112EE0 0010FE40  D3 9D 00 08 */	stfs f28, 8(r29)
/* 80112EE4 0010FE44  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80112EE8 0010FE48  CB E1 01 28 */	lfd f31, 0x128(r1)
/* 80112EEC 0010FE4C  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80112EF0 0010FE50  CB A1 01 18 */	lfd f29, 0x118(r1)
/* 80112EF4 0010FE54  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80112EF8 0010FE58  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 80112EFC 0010FE5C  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 80112F00 0010FE60  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 80112F04 0010FE64  38 21 01 30 */	addi r1, r1, 0x130
/* 80112F08 0010FE68  7C 08 03 A6 */	mtlr r0
/* 80112F0C 0010FE6C  4E 80 00 20 */	blr 

.global getCameraSafeAngle__FR8Vector3fff
getCameraSafeAngle__FR8Vector3fff:
/* 80112F10 0010FE70  7C 08 02 A6 */	mflr r0
/* 80112F14 0010FE74  90 01 00 04 */	stw r0, 4(r1)
/* 80112F18 0010FE78  38 00 00 00 */	li r0, 0
/* 80112F1C 0010FE7C  94 21 FE F8 */	stwu r1, -0x108(r1)
/* 80112F20 0010FE80  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80112F24 0010FE84  DB C1 00 F8 */	stfd f30, 0xf8(r1)
/* 80112F28 0010FE88  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80112F2C 0010FE8C  DB 81 00 E8 */	stfd f28, 0xe8(r1)
/* 80112F30 0010FE90  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 80112F34 0010FE94  DB 41 00 D8 */	stfd f26, 0xd8(r1)
/* 80112F38 0010FE98  FF 40 10 90 */	fmr f26, f2
/* 80112F3C 0010FE9C  DB 21 00 D0 */	stfd f25, 0xd0(r1)
/* 80112F40 0010FEA0  FF 20 08 90 */	fmr f25, f1
/* 80112F44 0010FEA4  DB 01 00 C8 */	stfd f24, 0xc8(r1)
/* 80112F48 0010FEA8  BF 41 00 B0 */	stmw r26, 0xb0(r1)
/* 80112F4C 0010FEAC  3B A1 00 7C */	addi r29, r1, 0x7c
/* 80112F50 0010FEB0  7C 7A 1B 78 */	mr r26, r3
/* 80112F54 0010FEB4  7F BE EB 78 */	mr r30, r29
/* 80112F58 0010FEB8  3B 80 00 00 */	li r28, 0
/* 80112F5C 0010FEBC  3F E0 43 30 */	lis r31, 0x4330
/* 80112F60 0010FEC0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80112F64 0010FEC4  C0 02 9F 44 */	lfs f0, lbl_803EA144@sda21(r2)
/* 80112F68 0010FEC8  90 01 00 80 */	stw r0, 0x80(r1)
/* 80112F6C 0010FECC  EF 79 00 24 */	fdivs f27, f25, f0
/* 80112F70 0010FED0  CB E2 9F 48 */	lfd f31, lbl_803EA148@sda21(r2)
/* 80112F74 0010FED4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80112F78 0010FED8  C3 82 9F 40 */	lfs f28, lbl_803EA140@sda21(r2)
/* 80112F7C 0010FEDC  90 01 00 88 */	stw r0, 0x88(r1)
/* 80112F80 0010FEE0  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80112F84 0010FEE4  90 01 00 90 */	stw r0, 0x90(r1)
/* 80112F88 0010FEE8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80112F8C 0010FEEC  90 01 00 98 */	stw r0, 0x98(r1)
.L_80112F90:
/* 80112F90 0010FEF0  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80112F94 0010FEF4  90 01 00 AC */	stw r0, 0xac(r1)
/* 80112F98 0010FEF8  93 E1 00 A8 */	stw r31, 0xa8(r1)
/* 80112F9C 0010FEFC  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80112FA0 0010FF00  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80112FA4 0010FF04  EF 1C 00 32 */	fmuls f24, f28, f0
/* 80112FA8 0010FF08  FC 20 C0 90 */	fmr f1, f24
/* 80112FAC 0010FF0C  48 10 8B A9 */	bl cosf
/* 80112FB0 0010FF10  FF A0 08 90 */	fmr f29, f1
/* 80112FB4 0010FF14  FC 20 C0 90 */	fmr f1, f24
/* 80112FB8 0010FF18  48 10 8D 31 */	bl sinf
/* 80112FBC 0010FF1C  FF C0 08 90 */	fmr f30, f1
/* 80112FC0 0010FF20  3B 60 00 00 */	li r27, 0
.L_80112FC4:
/* 80112FC4 0010FF24  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80112FC8 0010FF28  C0 7A 00 00 */	lfs f3, 0(r26)
/* 80112FCC 0010FF2C  90 01 00 AC */	stw r0, 0xac(r1)
/* 80112FD0 0010FF30  38 80 00 01 */	li r4, 1
/* 80112FD4 0010FF34  C0 5A 00 08 */	lfs f2, 8(r26)
/* 80112FD8 0010FF38  93 E1 00 A8 */	stw r31, 0xa8(r1)
/* 80112FDC 0010FF3C  80 6D 2F 00 */	lwz r3, mapMgr@sda21(r13)
/* 80112FE0 0010FF40  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80112FE4 0010FF44  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80112FE8 0010FF48  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80112FEC 0010FF4C  93 E1 00 A0 */	stw r31, 0xa0(r1)
/* 80112FF0 0010FF50  EC 3A 00 32 */	fmuls f1, f26, f0
/* 80112FF4 0010FF54  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80112FF8 0010FF58  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80112FFC 0010FF5C  EC 3B 00 72 */	fmuls f1, f27, f1
/* 80113000 0010FF60  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80113004 0010FF64  EF 01 C8 24 */	fdivs f24, f1, f25
/* 80113008 0010FF68  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8011300C 0010FF6C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80113010 0010FF70  EC 23 08 2A */	fadds f1, f3, f1
/* 80113014 0010FF74  EC 42 00 2A */	fadds f2, f2, f0
/* 80113018 0010FF78  4B F5 4E ED */	bl getMinY__6MapMgrFffb
/* 8011301C 0010FF7C  FC 01 C0 40 */	fcmpo cr0, f1, f24
/* 80113020 0010FF80  4C 41 13 82 */	cror 2, 1, 2
/* 80113024 0010FF84  40 82 00 20 */	bne .L_80113044
/* 80113028 0010FF88  EC 01 C0 28 */	fsubs f0, f1, f24
/* 8011302C 0010FF8C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80113030 0010FF90  FC 00 00 1E */	fctiwz f0, f0
/* 80113034 0010FF94  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80113038 0010FF98  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8011303C 0010FF9C  7C 03 02 14 */	add r0, r3, r0
/* 80113040 0010FFA0  90 1E 00 00 */	stw r0, 0(r30)
.L_80113044:
/* 80113044 0010FFA4  3B 7B 00 01 */	addi r27, r27, 1
/* 80113048 0010FFA8  2C 1B 00 14 */	cmpwi r27, 0x14
/* 8011304C 0010FFAC  41 80 FF 78 */	blt .L_80112FC4
/* 80113050 0010FFB0  3B 9C 00 01 */	addi r28, r28, 1
/* 80113054 0010FFB4  2C 1C 00 08 */	cmpwi r28, 8
/* 80113058 0010FFB8  3B DE 00 04 */	addi r30, r30, 4
/* 8011305C 0010FFBC  41 80 FF 34 */	blt .L_80112F90
/* 80113060 0010FFC0  3C 60 00 02 */	lis r3, 0x0001F400@ha
/* 80113064 0010FFC4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80113068 0010FFC8  38 83 F4 00 */	addi r4, r3, 0x0001F400@l
/* 8011306C 0010FFCC  7C 00 20 00 */	cmpw r0, r4
/* 80113070 0010FFD0  38 A0 FF FF */	li r5, -1
/* 80113074 0010FFD4  40 80 00 0C */	bge .L_80113080
/* 80113078 0010FFD8  38 A0 00 00 */	li r5, 0
/* 8011307C 0010FFDC  7C 04 03 78 */	mr r4, r0
.L_80113080:
/* 80113080 0010FFE0  38 7D 00 04 */	addi r3, r29, 4
/* 80113084 0010FFE4  80 1D 00 04 */	lwz r0, 4(r29)
/* 80113088 0010FFE8  7C 00 20 00 */	cmpw r0, r4
/* 8011308C 0010FFEC  40 80 00 0C */	bge .L_80113098
/* 80113090 0010FFF0  38 A0 00 01 */	li r5, 1
/* 80113094 0010FFF4  7C 04 03 78 */	mr r4, r0
.L_80113098:
/* 80113098 0010FFF8  84 03 00 04 */	lwzu r0, 4(r3)
/* 8011309C 0010FFFC  7C 00 20 00 */	cmpw r0, r4
/* 801130A0 00110000  40 80 00 0C */	bge .L_801130AC
/* 801130A4 00110004  38 A0 00 02 */	li r5, 2
/* 801130A8 00110008  7C 04 03 78 */	mr r4, r0
.L_801130AC:
/* 801130AC 0011000C  84 03 00 04 */	lwzu r0, 4(r3)
/* 801130B0 00110010  7C 00 20 00 */	cmpw r0, r4
/* 801130B4 00110014  40 80 00 0C */	bge .L_801130C0
/* 801130B8 00110018  38 A0 00 03 */	li r5, 3
/* 801130BC 0011001C  7C 04 03 78 */	mr r4, r0
.L_801130C0:
/* 801130C0 00110020  84 03 00 04 */	lwzu r0, 4(r3)
/* 801130C4 00110024  7C 00 20 00 */	cmpw r0, r4
/* 801130C8 00110028  40 80 00 0C */	bge .L_801130D4
/* 801130CC 0011002C  38 A0 00 04 */	li r5, 4
/* 801130D0 00110030  7C 04 03 78 */	mr r4, r0
.L_801130D4:
/* 801130D4 00110034  84 03 00 04 */	lwzu r0, 4(r3)
/* 801130D8 00110038  7C 00 20 00 */	cmpw r0, r4
/* 801130DC 0011003C  40 80 00 0C */	bge .L_801130E8
/* 801130E0 00110040  38 A0 00 05 */	li r5, 5
/* 801130E4 00110044  7C 04 03 78 */	mr r4, r0
.L_801130E8:
/* 801130E8 00110048  84 03 00 04 */	lwzu r0, 4(r3)
/* 801130EC 0011004C  7C 00 20 00 */	cmpw r0, r4
/* 801130F0 00110050  40 80 00 0C */	bge .L_801130FC
/* 801130F4 00110054  38 A0 00 06 */	li r5, 6
/* 801130F8 00110058  7C 04 03 78 */	mr r4, r0
.L_801130FC:
/* 801130FC 0011005C  80 03 00 04 */	lwz r0, 4(r3)
/* 80113100 00110060  7C 00 20 00 */	cmpw r0, r4
/* 80113104 00110064  40 80 00 08 */	bge .L_8011310C
/* 80113108 00110068  38 A0 00 07 */	li r5, 7
.L_8011310C:
/* 8011310C 0011006C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80113110 00110070  C8 42 9F 48 */	lfd f2, lbl_803EA148@sda21(r2)
/* 80113114 00110074  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80113118 00110078  3C 00 43 30 */	lis r0, 0x4330
/* 8011311C 0011007C  BB 41 00 B0 */	lmw r26, 0xb0(r1)
/* 80113120 00110080  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80113124 00110084  C0 02 9F 40 */	lfs f0, lbl_803EA140@sda21(r2)
/* 80113128 00110088  C8 21 00 A0 */	lfd f1, 0xa0(r1)
/* 8011312C 0011008C  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 80113130 00110090  EC 21 10 28 */	fsubs f1, f1, f2
/* 80113134 00110094  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80113138 00110098  CB C1 00 F8 */	lfd f30, 0xf8(r1)
/* 8011313C 0011009C  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80113140 001100A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80113144 001100A4  CB 81 00 E8 */	lfd f28, 0xe8(r1)
/* 80113148 001100A8  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 8011314C 001100AC  CB 41 00 D8 */	lfd f26, 0xd8(r1)
/* 80113150 001100B0  CB 21 00 D0 */	lfd f25, 0xd0(r1)
/* 80113154 001100B4  CB 01 00 C8 */	lfd f24, 0xc8(r1)
/* 80113158 001100B8  38 21 01 08 */	addi r1, r1, 0x108
/* 8011315C 001100BC  7C 08 03 A6 */	mtlr r0
/* 80113160 001100C0  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
lbl_803E2858:
	.float 0.0

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EA0F8:
	.float 0.0
lbl_803EA0FC:
	.float -1.0
lbl_803EA100:
	.float 1.0
lbl_803EA104:
	.float -0.5
lbl_803EA108:
	.float 0.5
lbl_803EA10C:
	.float 1.5
lbl_803EA110:
	.float 2.5
lbl_803EA114:
	.float -1.5
lbl_803EA118:
	.float 2.0
lbl_803EA11C:
	.float 4.5
lbl_803EA120:
	.float 5.0
lbl_803EA124:
	.float -4.5
lbl_803EA128:
	.float 4.0
.balign 8
lbl_803EA130:
	.double 0.5
lbl_803EA138:
	.double 3.0
lbl_803EA140:
	.4byte 0x3F490FDB # 45 degrees in radians (float)
lbl_803EA144:
	.float 20.0
lbl_803EA148:
	.4byte 0x43300000
	.4byte 0x80000000
