.include "macros.inc"

.global DSPCheckMailToDSP
DSPCheckMailToDSP:
/* 80207E14 00204D74  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80207E18 00204D78  A0 03 50 00 */	lhz r0, 0xCC005000@l(r3)
/* 80207E1C 00204D7C  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 80207E20 00204D80  4E 80 00 20 */	blr 

.global DSPCheckMailFromDSP
DSPCheckMailFromDSP:
/* 80207E24 00204D84  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 80207E28 00204D88  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 80207E2C 00204D8C  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 80207E30 00204D90  4E 80 00 20 */	blr 

.global DSPReadMailFromDSP
DSPReadMailFromDSP:
/* 80207E34 00204D94  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 80207E38 00204D98  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 80207E3C 00204D9C  A0 03 00 04 */	lhz r0, 4(r3)
/* 80207E40 00204DA0  A0 63 00 06 */	lhz r3, 6(r3)
/* 80207E44 00204DA4  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 80207E48 00204DA8  4E 80 00 20 */	blr 

.global DSPSendMailToDSP
DSPSendMailToDSP:
/* 80207E4C 00204DAC  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 80207E50 00204DB0  54 60 84 3E */	srwi r0, r3, 0x10
/* 80207E54 00204DB4  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
/* 80207E58 00204DB8  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 80207E5C 00204DBC  4E 80 00 20 */	blr 