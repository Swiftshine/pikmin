.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global drawLifeCircle__Q23zen14DrawLifeCircleFf
drawLifeCircle__Q23zen14DrawLifeCircleFf:
/* 801BA13C 001B709C  7C 08 02 A6 */	mflr r0
/* 801BA140 001B70A0  90 01 00 04 */	stw r0, 4(r1)
/* 801BA144 001B70A4  94 21 FF 38 */	stwu r1, -0xc8(r1)
/* 801BA148 001B70A8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 801BA14C 001B70AC  DB C1 00 B8 */	stfd f30, 0xb8(r1)
/* 801BA150 001B70B0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 801BA154 001B70B4  DB 81 00 A8 */	stfd f28, 0xa8(r1)
/* 801BA158 001B70B8  FF 80 08 90 */	fmr f28, f1
/* 801BA15C 001B70BC  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 801BA160 001B70C0  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 801BA164 001B70C4  7C 7F 1B 78 */	mr r31, r3
/* 801BA168 001B70C8  38 60 00 01 */	li r3, 1
/* 801BA16C 001B70CC  C0 02 B7 F0 */	lfs f0, lbl_803EB9F0@sda21(r2)
/* 801BA170 001B70D0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801BA174 001B70D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801BA178 001B70D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801BA17C 001B70DC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801BA180 001B70E0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801BA184 001B70E4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801BA188 001B70E8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801BA18C 001B70EC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801BA190 001B70F0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801BA194 001B70F4  48 05 97 D1 */	bl GXSetNumTevStages
/* 801BA198 001B70F8  38 60 00 00 */	li r3, 0
/* 801BA19C 001B70FC  38 80 00 04 */	li r4, 4
/* 801BA1A0 001B7100  48 05 8D FD */	bl GXSetTevOp
/* 801BA1A4 001B7104  38 60 00 00 */	li r3, 0
/* 801BA1A8 001B7108  38 80 00 FF */	li r4, 0xff
/* 801BA1AC 001B710C  38 A0 00 FF */	li r5, 0xff
/* 801BA1B0 001B7110  38 C0 00 04 */	li r6, 4
/* 801BA1B4 001B7114  48 05 96 11 */	bl GXSetTevOrder
/* 801BA1B8 001B7118  38 60 00 04 */	li r3, 4
/* 801BA1BC 001B711C  38 80 00 00 */	li r4, 0
/* 801BA1C0 001B7120  38 A0 00 00 */	li r5, 0
/* 801BA1C4 001B7124  38 C0 00 01 */	li r6, 1
/* 801BA1C8 001B7128  38 E0 00 00 */	li r7, 0
/* 801BA1CC 001B712C  39 00 00 00 */	li r8, 0
/* 801BA1D0 001B7130  39 20 00 02 */	li r9, 2
/* 801BA1D4 001B7134  48 05 7D 4D */	bl GXSetChanCtrl
/* 801BA1D8 001B7138  48 05 5A 25 */	bl GXClearVtxDesc
/* 801BA1DC 001B713C  38 60 00 09 */	li r3, 9
/* 801BA1E0 001B7140  38 80 00 01 */	li r4, 1
/* 801BA1E4 001B7144  48 05 52 1D */	bl GXSetVtxDesc
/* 801BA1E8 001B7148  38 60 00 0B */	li r3, 0xb
/* 801BA1EC 001B714C  38 80 00 01 */	li r4, 1
/* 801BA1F0 001B7150  48 05 52 11 */	bl GXSetVtxDesc
/* 801BA1F4 001B7154  38 60 00 0D */	li r3, 0xd
/* 801BA1F8 001B7158  38 80 00 00 */	li r4, 0
/* 801BA1FC 001B715C  48 05 52 05 */	bl GXSetVtxDesc
/* 801BA200 001B7160  38 60 00 00 */	li r3, 0
/* 801BA204 001B7164  38 80 00 09 */	li r4, 9
/* 801BA208 001B7168  38 A0 00 01 */	li r5, 1
/* 801BA20C 001B716C  38 C0 00 04 */	li r6, 4
/* 801BA210 001B7170  38 E0 00 00 */	li r7, 0
/* 801BA214 001B7174  48 05 5A 35 */	bl GXSetVtxAttrFmt
/* 801BA218 001B7178  38 60 00 00 */	li r3, 0
/* 801BA21C 001B717C  38 80 00 0B */	li r4, 0xb
/* 801BA220 001B7180  38 A0 00 01 */	li r5, 1
/* 801BA224 001B7184  38 C0 00 05 */	li r6, 5
/* 801BA228 001B7188  38 E0 00 00 */	li r7, 0
/* 801BA22C 001B718C  48 05 5A 1D */	bl GXSetVtxAttrFmt
/* 801BA230 001B7190  38 60 00 01 */	li r3, 1
/* 801BA234 001B7194  38 80 00 04 */	li r4, 4
/* 801BA238 001B7198  38 A0 00 05 */	li r5, 5
/* 801BA23C 001B719C  38 C0 00 0F */	li r6, 0xf
/* 801BA240 001B71A0  48 05 9A 0D */	bl GXSetBlendMode
/* 801BA244 001B71A4  C0 22 B7 F4 */	lfs f1, lbl_803EB9F4@sda21(r2)
/* 801BA248 001B71A8  C0 02 B7 F0 */	lfs f0, lbl_803EB9F0@sda21(r2)
/* 801BA24C 001B71AC  EC 21 07 32 */	fmuls f1, f1, f28
/* 801BA250 001B71B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801BA254 001B71B4  4C 41 13 82 */	cror 2, 1, 2
/* 801BA258 001B71B8  40 82 00 10 */	bne lbl_801BA268
/* 801BA25C 001B71BC  C0 02 B7 F8 */	lfs f0, lbl_803EB9F8@sda21(r2)
/* 801BA260 001B71C0  EC 00 08 2A */	fadds f0, f0, f1
/* 801BA264 001B71C4  48 00 00 0C */	b lbl_801BA270
lbl_801BA268:
/* 801BA268 001B71C8  C0 02 B7 F8 */	lfs f0, lbl_803EB9F8@sda21(r2)
/* 801BA26C 001B71CC  EC 01 00 28 */	fsubs f0, f1, f0
lbl_801BA270:
/* 801BA270 001B71D0  FC 00 00 1E */	fctiwz f0, f0
/* 801BA274 001B71D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 801BA278 001B71D8  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 801BA27C 001B71DC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 801BA280 001B71E0  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 801BA284 001B71E4  7C 03 00 00 */	cmpw r3, r0
/* 801BA288 001B71E8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801BA28C 001B71EC  41 82 01 00 */	beq lbl_801BA38C
/* 801BA290 001B71F0  7C 00 18 00 */	cmpw r0, r3
/* 801BA294 001B71F4  40 80 00 0C */	bge lbl_801BA2A0
/* 801BA298 001B71F8  C0 62 B7 FC */	lfs f3, lbl_803EB9FC@sda21(r2)
/* 801BA29C 001B71FC  48 00 00 08 */	b lbl_801BA2A4
lbl_801BA2A0:
/* 801BA2A0 001B7200  C0 62 B8 00 */	lfs f3, lbl_803EBA00@sda21(r2)
lbl_801BA2A4:
/* 801BA2A4 001B7204  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801BA2A8 001B7208  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801BA2AC 001B720C  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 801BA2B0 001B7210  EC 01 00 2A */	fadds f0, f1, f0
/* 801BA2B4 001B7214  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801BA2B8 001B7218  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801BA2BC 001B721C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801BA2C0 001B7220  40 81 00 CC */	ble lbl_801BA38C
/* 801BA2C4 001B7224  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801BA2C8 001B7228  C0 42 B8 04 */	lfs f2, lbl_803EBA04@sda21(r2)
/* 801BA2CC 001B722C  C0 23 02 8C */	lfs f1, 0x28c(r3)
/* 801BA2D0 001B7230  C0 02 B7 F0 */	lfs f0, lbl_803EB9F0@sda21(r2)
/* 801BA2D4 001B7234  EC 22 00 72 */	fmuls f1, f2, f1
/* 801BA2D8 001B7238  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801BA2DC 001B723C  4C 41 13 82 */	cror 2, 1, 2
/* 801BA2E0 001B7240  40 82 00 10 */	bne lbl_801BA2F0
/* 801BA2E4 001B7244  C0 02 B7 F8 */	lfs f0, lbl_803EB9F8@sda21(r2)
/* 801BA2E8 001B7248  EC 00 08 2A */	fadds f0, f0, f1
/* 801BA2EC 001B724C  48 00 00 0C */	b lbl_801BA2F8
lbl_801BA2F0:
/* 801BA2F0 001B7250  C0 02 B7 F8 */	lfs f0, lbl_803EB9F8@sda21(r2)
/* 801BA2F4 001B7254  EC 01 00 28 */	fsubs f0, f1, f0
lbl_801BA2F8:
/* 801BA2F8 001B7258  FC 00 00 1E */	fctiwz f0, f0
/* 801BA2FC 001B725C  80 BF 00 00 */	lwz r5, 0(r31)
/* 801BA300 001B7260  7C 05 00 00 */	cmpw r5, r0
/* 801BA304 001B7264  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 801BA308 001B7268  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 801BA30C 001B726C  40 80 00 0C */	bge lbl_801BA318
/* 801BA310 001B7270  38 80 00 01 */	li r4, 1
/* 801BA314 001B7274  48 00 00 08 */	b lbl_801BA31C
lbl_801BA318:
/* 801BA318 001B7278  38 80 FF FF */	li r4, -1
lbl_801BA31C:
/* 801BA31C 001B727C  7C 64 19 D7 */	mullw. r3, r4, r3
/* 801BA320 001B7280  38 E3 00 00 */	addi r7, r3, 0
/* 801BA324 001B7284  40 80 00 0C */	bge lbl_801BA330
/* 801BA328 001B7288  7C 67 00 D0 */	neg r3, r7
/* 801BA32C 001B728C  48 00 00 08 */	b lbl_801BA334
lbl_801BA330:
/* 801BA330 001B7290  7C E3 3B 78 */	mr r3, r7
lbl_801BA334:
/* 801BA334 001B7294  7C C0 28 51 */	subf. r6, r0, r5
/* 801BA338 001B7298  40 80 00 0C */	bge lbl_801BA344
/* 801BA33C 001B729C  7C 86 00 D0 */	neg r4, r6
/* 801BA340 001B72A0  48 00 00 08 */	b lbl_801BA348
lbl_801BA344:
/* 801BA344 001B72A4  7C C4 33 78 */	mr r4, r6
lbl_801BA348:
/* 801BA348 001B72A8  7C 04 18 00 */	cmpw r4, r3
/* 801BA34C 001B72AC  40 80 00 28 */	bge lbl_801BA374
/* 801BA350 001B72B0  2C 06 00 00 */	cmpwi r6, 0
/* 801BA354 001B72B4  40 80 00 08 */	bge lbl_801BA35C
/* 801BA358 001B72B8  7C C6 00 D0 */	neg r6, r6
lbl_801BA35C:
/* 801BA35C 001B72BC  7C 05 00 00 */	cmpw r5, r0
/* 801BA360 001B72C0  40 80 00 0C */	bge lbl_801BA36C
/* 801BA364 001B72C4  38 00 00 01 */	li r0, 1
/* 801BA368 001B72C8  48 00 00 08 */	b lbl_801BA370
lbl_801BA36C:
/* 801BA36C 001B72CC  38 00 FF FF */	li r0, -1
lbl_801BA370:
/* 801BA370 001B72D0  7C E0 31 D6 */	mullw r7, r0, r6
lbl_801BA374:
/* 801BA374 001B72D4  80 1F 00 00 */	lwz r0, 0(r31)
/* 801BA378 001B72D8  7C 00 3A 14 */	add r0, r0, r7
/* 801BA37C 001B72DC  90 1F 00 00 */	stw r0, 0(r31)
/* 801BA380 001B72E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801BA384 001B72E4  EC 00 18 28 */	fsubs f0, f0, f3
/* 801BA388 001B72E8  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_801BA38C:
/* 801BA38C 001B72EC  C0 02 B8 08 */	lfs f0, lbl_803EBA08@sda21(r2)
/* 801BA390 001B72F0  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 801BA394 001B72F4  40 80 00 20 */	bge lbl_801BA3B4
/* 801BA398 001B72F8  38 60 00 FF */	li r3, 0xff
/* 801BA39C 001B72FC  98 61 00 50 */	stb r3, 0x50(r1)
/* 801BA3A0 001B7300  38 00 00 00 */	li r0, 0
/* 801BA3A4 001B7304  98 01 00 51 */	stb r0, 0x51(r1)
/* 801BA3A8 001B7308  98 01 00 52 */	stb r0, 0x52(r1)
/* 801BA3AC 001B730C  98 61 00 53 */	stb r3, 0x53(r1)
/* 801BA3B0 001B7310  48 00 00 44 */	b lbl_801BA3F4
lbl_801BA3B4:
/* 801BA3B4 001B7314  C0 02 B7 F8 */	lfs f0, lbl_803EB9F8@sda21(r2)
/* 801BA3B8 001B7318  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 801BA3BC 001B731C  40 80 00 20 */	bge lbl_801BA3DC
/* 801BA3C0 001B7320  38 60 00 FF */	li r3, 0xff
/* 801BA3C4 001B7324  98 61 00 50 */	stb r3, 0x50(r1)
/* 801BA3C8 001B7328  38 00 00 00 */	li r0, 0
/* 801BA3CC 001B732C  98 61 00 51 */	stb r3, 0x51(r1)
/* 801BA3D0 001B7330  98 01 00 52 */	stb r0, 0x52(r1)
/* 801BA3D4 001B7334  98 61 00 53 */	stb r3, 0x53(r1)
/* 801BA3D8 001B7338  48 00 00 1C */	b lbl_801BA3F4
lbl_801BA3DC:
/* 801BA3DC 001B733C  38 60 00 00 */	li r3, 0
/* 801BA3E0 001B7340  98 61 00 50 */	stb r3, 0x50(r1)
/* 801BA3E4 001B7344  38 00 00 FF */	li r0, 0xff
/* 801BA3E8 001B7348  98 01 00 51 */	stb r0, 0x51(r1)
/* 801BA3EC 001B734C  98 61 00 52 */	stb r3, 0x52(r1)
/* 801BA3F0 001B7350  98 01 00 53 */	stb r0, 0x53(r1)
lbl_801BA3F4:
/* 801BA3F4 001B7354  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801BA3F8 001B7358  3B 60 00 00 */	li r27, 0
/* 801BA3FC 001B735C  3F C0 CC 01 */	lis r30, 0xcc01
/* 801BA400 001B7360  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801BA404 001B7364  3F A0 43 30 */	lis r29, 0x4330
/* 801BA408 001B7368  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801BA40C 001B736C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801BA410 001B7370  C0 02 B7 F0 */	lfs f0, lbl_803EB9F0@sda21(r2)
/* 801BA414 001B7374  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801BA418 001B7378  C3 82 B8 0C */	lfs f28, lbl_803EBA0C@sda21(r2)
/* 801BA41C 001B737C  C3 A2 B8 10 */	lfs f29, lbl_803EBA10@sda21(r2)
/* 801BA420 001B7380  C3 C2 B8 14 */	lfs f30, lbl_803EBA14@sda21(r2)
/* 801BA424 001B7384  CB E2 B8 18 */	lfd f31, lbl_803EBA18@sda21(r2)
/* 801BA428 001B7388  48 00 01 38 */	b lbl_801BA560
lbl_801BA42C:
/* 801BA42C 001B738C  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 801BA430 001B7390  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801BA434 001B7394  93 A1 00 78 */	stw r29, 0x78(r1)
/* 801BA438 001B7398  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 801BA43C 001B739C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801BA440 001B73A0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801BA444 001B73A4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801BA448 001B73A8  EF 7C 00 28 */	fsubs f27, f28, f0
/* 801BA44C 001B73AC  FC 20 D8 90 */	fmr f1, f27
/* 801BA450 001B73B0  48 06 17 05 */	bl cosf
/* 801BA454 001B73B4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801BA458 001B73B8  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801BA45C 001B73BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BA460 001B73C0  FC 20 D8 90 */	fmr f1, f27
/* 801BA464 001B73C4  EC 02 00 2A */	fadds f0, f2, f0
/* 801BA468 001B73C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801BA46C 001B73CC  48 06 18 7D */	bl sinf
/* 801BA470 001B73D0  38 1B 00 01 */	addi r0, r27, 1
/* 801BA474 001B73D4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801BA478 001B73D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BA47C 001B73DC  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801BA480 001B73E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 801BA484 001B73E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BA488 001B73E8  93 A1 00 80 */	stw r29, 0x80(r1)
/* 801BA48C 001B73EC  EC 22 00 2A */	fadds f1, f2, f0
/* 801BA490 001B73F0  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 801BA494 001B73F4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801BA498 001B73F8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801BA49C 001B73FC  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801BA4A0 001B7400  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801BA4A4 001B7404  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801BA4A8 001B7408  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801BA4AC 001B740C  EF 7C 00 28 */	fsubs f27, f28, f0
/* 801BA4B0 001B7410  FC 20 D8 90 */	fmr f1, f27
/* 801BA4B4 001B7414  48 06 16 A1 */	bl cosf
/* 801BA4B8 001B7418  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801BA4BC 001B741C  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801BA4C0 001B7420  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BA4C4 001B7424  FC 20 D8 90 */	fmr f1, f27
/* 801BA4C8 001B7428  EC 02 00 2A */	fadds f0, f2, f0
/* 801BA4CC 001B742C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801BA4D0 001B7430  48 06 18 19 */	bl sinf
/* 801BA4D4 001B7434  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801BA4D8 001B7438  3B 81 00 54 */	addi r28, r1, 0x54
/* 801BA4DC 001B743C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801BA4E0 001B7440  38 60 00 A0 */	li r3, 0xa0
/* 801BA4E4 001B7444  EC 00 00 72 */	fmuls f0, f0, f1
/* 801BA4E8 001B7448  38 80 00 00 */	li r4, 0
/* 801BA4EC 001B744C  38 A0 00 03 */	li r5, 3
/* 801BA4F0 001B7450  EC 02 00 2A */	fadds f0, f2, f0
/* 801BA4F4 001B7454  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801BA4F8 001B7458  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801BA4FC 001B745C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801BA500 001B7460  48 05 66 D5 */	bl GXBegin
/* 801BA504 001B7464  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801BA508 001B7468  3B 7B 00 01 */	addi r27, r27, 1
/* 801BA50C 001B746C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801BA510 001B7470  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801BA514 001B7474  80 01 00 50 */	lwz r0, 0x50(r1)
/* 801BA518 001B7478  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 801BA51C 001B747C  D0 3E 80 00 */	stfs f1, -0x8000(r30)
/* 801BA520 001B7480  D0 5E 80 00 */	stfs f2, -0x8000(r30)
/* 801BA524 001B7484  90 1E 80 00 */	stw r0, -0x8000(r30)
/* 801BA528 001B7488  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 801BA52C 001B748C  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 801BA530 001B7490  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 801BA534 001B7494  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 801BA538 001B7498  D0 3E 80 00 */	stfs f1, -0x8000(r30)
/* 801BA53C 001B749C  D0 5E 80 00 */	stfs f2, -0x8000(r30)
/* 801BA540 001B74A0  90 1E 80 00 */	stw r0, -0x8000(r30)
/* 801BA544 001B74A4  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 801BA548 001B74A8  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 801BA54C 001B74AC  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 801BA550 001B74B0  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 801BA554 001B74B4  D0 3E 80 00 */	stfs f1, -0x8000(r30)
/* 801BA558 001B74B8  D0 5E 80 00 */	stfs f2, -0x8000(r30)
/* 801BA55C 001B74BC  90 1E 80 00 */	stw r0, -0x8000(r30)
lbl_801BA560:
/* 801BA560 001B74C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 801BA564 001B74C4  7C 1B 00 00 */	cmpw r27, r0
/* 801BA568 001B74C8  41 80 FE C4 */	blt lbl_801BA42C
/* 801BA56C 001B74CC  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 801BA570 001B74D0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 801BA574 001B74D4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801BA578 001B74D8  CB C1 00 B8 */	lfd f30, 0xb8(r1)
/* 801BA57C 001B74DC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 801BA580 001B74E0  CB 81 00 A8 */	lfd f28, 0xa8(r1)
/* 801BA584 001B74E4  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 801BA588 001B74E8  38 21 00 C8 */	addi r1, r1, 0xc8
/* 801BA58C 001B74EC  7C 08 03 A6 */	mtlr r0
/* 801BA590 001B74F0  4E 80 00 20 */	blr 

.global drawLifeCircle__Q23zen18DrawNaviLifeCircleFv
drawLifeCircle__Q23zen18DrawNaviLifeCircleFv:
/* 801BA594 001B74F4  7C 08 02 A6 */	mflr r0
/* 801BA598 001B74F8  90 01 00 04 */	stw r0, 4(r1)
/* 801BA59C 001B74FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BA5A0 001B7500  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BA5A4 001B7504  3B E3 00 00 */	addi r31, r3, 0
/* 801BA5A8 001B7508  80 0D 31 20 */	lwz r0, naviMgr@sda21(r13)
/* 801BA5AC 001B750C  28 00 00 00 */	cmplwi r0, 0
/* 801BA5B0 001B7510  41 82 00 30 */	beq lbl_801BA5E0
/* 801BA5B4 001B7514  7C 03 03 78 */	mr r3, r0
/* 801BA5B8 001B7518  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801BA5BC 001B751C  4B F5 CE 7D */	bl getNavi__7NaviMgrFi
/* 801BA5C0 001B7520  80 83 02 24 */	lwz r4, 0x224(r3)
/* 801BA5C4 001B7524  7C 65 1B 78 */	mr r5, r3
/* 801BA5C8 001B7528  C0 25 00 58 */	lfs f1, 0x58(r5)
/* 801BA5CC 001B752C  7F E3 FB 78 */	mr r3, r31
/* 801BA5D0 001B7530  C0 04 03 C8 */	lfs f0, 0x3c8(r4)
/* 801BA5D4 001B7534  EC 21 00 24 */	fdivs f1, f1, f0
/* 801BA5D8 001B7538  4B FF FB 65 */	bl drawLifeCircle__Q23zen14DrawLifeCircleFf
/* 801BA5DC 001B753C  48 00 00 10 */	b lbl_801BA5EC
lbl_801BA5E0:
/* 801BA5E0 001B7540  7F E3 FB 78 */	mr r3, r31
/* 801BA5E4 001B7544  C0 22 B8 20 */	lfs f1, lbl_803EBA20@sda21(r2)
/* 801BA5E8 001B7548  4B FF FB 55 */	bl drawLifeCircle__Q23zen14DrawLifeCircleFf
lbl_801BA5EC:
/* 801BA5EC 001B754C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BA5F0 001B7550  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BA5F4 001B7554  38 21 00 20 */	addi r1, r1, 0x20
/* 801BA5F8 001B7558  7C 08 03 A6 */	mtlr r0
/* 801BA5FC 001B755C  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 0x8
.global TRI_NUM__Q23zen14DrawLifeCircle
TRI_NUM__Q23zen14DrawLifeCircle:
	.float 128.0

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 0x8
lbl_803EB9F0:
	.4byte 0x00000000
lbl_803EB9F4:
	.4byte 0x43000000
lbl_803EB9F8:
	.4byte 0x3F000000
lbl_803EB9FC:
	.4byte 0x3CA3D70A
lbl_803EBA00:
	.4byte 0x3D4CCCCD
lbl_803EBA04:
	.4byte 0x41F00000
lbl_803EBA08:
	.4byte 0x3E4CCCCD
lbl_803EBA0C:
	.4byte 0xBFC90FDB
lbl_803EBA10:
	.4byte 0x40C90FDB
lbl_803EBA14:
	.4byte 0x3C000000
lbl_803EBA18:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EBA20:
	.4byte 0x3F800000
