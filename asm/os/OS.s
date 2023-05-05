.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global OSGetConsoleType
OSGetConsoleType:
/* 801F59A8 001F2908  80 6D 31 C8 */	lwz r3, BootInfo@sda21(r13)
/* 801F59AC 001F290C  28 03 00 00 */	cmplwi r3, 0
/* 801F59B0 001F2910  41 82 00 10 */	beq .L_801F59C0
/* 801F59B4 001F2914  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 801F59B8 001F2918  28 03 00 00 */	cmplwi r3, 0
/* 801F59BC 001F291C  40 82 00 10 */	bne .L_801F59CC
.L_801F59C0:
/* 801F59C0 001F2920  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 801F59C4 001F2924  38 63 00 02 */	addi r3, r3, 0x10000002@l
/* 801F59C8 001F2928  48 00 00 04 */	b .L_801F59CC
.L_801F59CC:
/* 801F59CC 001F292C  4E 80 00 20 */	blr 

.global OSInit
OSInit:
/* 801F59D0 001F2930  7C 08 02 A6 */	mflr r0
/* 801F59D4 001F2934  90 01 00 04 */	stw r0, 4(r1)
/* 801F59D8 001F2938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F59DC 001F293C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F59E0 001F2940  93 C1 00 08 */	stw r30, 8(r1)
/* 801F59E4 001F2944  80 0D 31 D0 */	lwz r0, AreWeInitialized@sda21(r13)
/* 801F59E8 001F2948  3C 60 80 2E */	lis r3, lbl_802E72A8@ha
/* 801F59EC 001F294C  3B E3 72 A8 */	addi r31, r3, lbl_802E72A8@l
/* 801F59F0 001F2950  2C 00 00 00 */	cmpwi r0, 0
/* 801F59F4 001F2954  40 82 02 A0 */	bne .L_801F5C94
/* 801F59F8 001F2958  38 00 00 01 */	li r0, 1
/* 801F59FC 001F295C  90 0D 31 D0 */	stw r0, AreWeInitialized@sda21(r13)
/* 801F5A00 001F2960  48 00 35 7D */	bl OSDisableInterrupts
/* 801F5A04 001F2964  38 00 00 00 */	li r0, 0
/* 801F5A08 001F2968  3C 60 80 00 */	lis r3, 0x800000F4@ha
/* 801F5A0C 001F296C  90 0D 31 CC */	stw r0, BI2DebugFlag@sda21(r13)
/* 801F5A10 001F2970  90 6D 31 C8 */	stw r3, BootInfo@sda21(r13)
/* 801F5A14 001F2974  90 0D 32 AC */	stw r0, __DVDLongFileNameFlag@sda21(r13)
/* 801F5A18 001F2978  80 63 00 F4 */	lwz r3, 0x800000F4@l(r3)
/* 801F5A1C 001F297C  28 03 00 00 */	cmplwi r3, 0
/* 801F5A20 001F2980  41 82 00 1C */	beq .L_801F5A3C
/* 801F5A24 001F2984  38 03 00 0C */	addi r0, r3, 0xc
/* 801F5A28 001F2988  90 0D 31 CC */	stw r0, BI2DebugFlag@sda21(r13)
/* 801F5A2C 001F298C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801F5A30 001F2990  90 0D 32 AC */	stw r0, __DVDLongFileNameFlag@sda21(r13)
/* 801F5A34 001F2994  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801F5A38 001F2998  90 0D 33 7C */	stw r0, __PADSpec@sda21(r13)
.L_801F5A3C:
/* 801F5A3C 001F299C  3C 60 80 00 */	lis r3, 0x80000030@ha
/* 801F5A40 001F29A0  80 63 00 30 */	lwz r3, 0x80000030@l(r3)
/* 801F5A44 001F29A4  28 03 00 00 */	cmplwi r3, 0
/* 801F5A48 001F29A8  40 82 00 10 */	bne .L_801F5A58
/* 801F5A4C 001F29AC  3C 60 80 40 */	lis r3, _db_stack_addr@ha
/* 801F5A50 001F29B0  38 63 E8 40 */	addi r3, r3, _db_stack_addr@l
/* 801F5A54 001F29B4  48 00 00 04 */	b .L_801F5A58
.L_801F5A58:
/* 801F5A58 001F29B8  48 00 0E D9 */	bl OSSetArenaLo
/* 801F5A5C 001F29BC  80 6D 31 C8 */	lwz r3, BootInfo@sda21(r13)
/* 801F5A60 001F29C0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 801F5A64 001F29C4  28 00 00 00 */	cmplwi r0, 0
/* 801F5A68 001F29C8  40 82 00 30 */	bne .L_801F5A98
/* 801F5A6C 001F29CC  80 6D 31 CC */	lwz r3, BI2DebugFlag@sda21(r13)
/* 801F5A70 001F29D0  28 03 00 00 */	cmplwi r3, 0
/* 801F5A74 001F29D4  41 82 00 24 */	beq .L_801F5A98
/* 801F5A78 001F29D8  80 03 00 00 */	lwz r0, 0(r3)
/* 801F5A7C 001F29DC  28 00 00 02 */	cmplwi r0, 2
/* 801F5A80 001F29E0  40 80 00 18 */	bge .L_801F5A98
/* 801F5A84 001F29E4  3C 60 80 40 */	lis r3, _db_stack_end@ha
/* 801F5A88 001F29E8  38 63 C8 40 */	addi r3, r3, _db_stack_end@l
/* 801F5A8C 001F29EC  38 03 00 1F */	addi r0, r3, 0x1f
/* 801F5A90 001F29F0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 801F5A94 001F29F4  48 00 0E 9D */	bl OSSetArenaLo
.L_801F5A98:
/* 801F5A98 001F29F8  80 6D 31 C8 */	lwz r3, BootInfo@sda21(r13)
/* 801F5A9C 001F29FC  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F5AA0 001F2A00  28 03 00 00 */	cmplwi r3, 0
/* 801F5AA4 001F2A04  40 82 00 10 */	bne .L_801F5AB4
/* 801F5AA8 001F2A08  3C 60 81 70 */	lis r3, __ArenaHi@ha
/* 801F5AAC 001F2A0C  38 63 00 00 */	addi r3, r3, __ArenaHi@l
/* 801F5AB0 001F2A10  48 00 00 04 */	b .L_801F5AB4
.L_801F5AB4:
/* 801F5AB4 001F2A14  48 00 0E 75 */	bl OSSetArenaHi
/* 801F5AB8 001F2A18  48 00 01 F5 */	bl OSExceptionInit
/* 801F5ABC 001F2A1C  48 00 5E 8D */	bl __OSInitSystemCall
/* 801F5AC0 001F2A20  48 00 3C DD */	bl __OSModuleInit
/* 801F5AC4 001F2A24  48 00 35 35 */	bl __OSInterruptInit
/* 801F5AC8 001F2A28  3C 60 80 20 */	lis r3, __OSResetSWInterruptHandler@ha
/* 801F5ACC 001F2A2C  38 83 A3 B4 */	addi r4, r3, __OSResetSWInterruptHandler@l
/* 801F5AD0 001F2A30  38 60 00 16 */	li r3, 0x16
/* 801F5AD4 001F2A34  48 00 34 F5 */	bl __OSSetInterruptHandler
/* 801F5AD8 001F2A38  48 00 1D 71 */	bl __OSContextInit
/* 801F5ADC 001F2A3C  48 00 14 59 */	bl __OSCacheInit
/* 801F5AE0 001F2A40  48 00 31 59 */	bl EXIInit
/* 801F5AE4 001F2A44  48 00 58 41 */	bl SIInit
/* 801F5AE8 001F2A48  48 00 4D 2D */	bl __OSInitSram
/* 801F5AEC 001F2A4C  48 00 5E C1 */	bl __OSThreadInit
/* 801F5AF0 001F2A50  48 00 0E 49 */	bl __OSInitAudioSystem
/* 801F5AF4 001F2A54  80 6D 31 C8 */	lwz r3, BootInfo@sda21(r13)
/* 801F5AF8 001F2A58  38 83 00 2C */	addi r4, r3, 0x2c
/* 801F5AFC 001F2A5C  80 04 00 00 */	lwz r0, 0(r4)
/* 801F5B00 001F2A60  54 00 00 C6 */	rlwinm r0, r0, 0, 3, 3
/* 801F5B04 001F2A64  28 00 00 00 */	cmplwi r0, 0
/* 801F5B08 001F2A68  41 82 00 14 */	beq .L_801F5B1C
/* 801F5B0C 001F2A6C  3C 60 10 00 */	lis r3, 0x10000004@ha
/* 801F5B10 001F2A70  38 03 00 04 */	addi r0, r3, 0x10000004@l
/* 801F5B14 001F2A74  90 04 00 00 */	stw r0, 0(r4)
/* 801F5B18 001F2A78  48 00 00 0C */	b .L_801F5B24
.L_801F5B1C:
/* 801F5B1C 001F2A7C  38 00 00 01 */	li r0, 1
/* 801F5B20 001F2A80  90 04 00 00 */	stw r0, 0(r4)
.L_801F5B24:
/* 801F5B24 001F2A84  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 801F5B28 001F2A88  80 AD 31 C8 */	lwz r5, BootInfo@sda21(r13)
/* 801F5B2C 001F2A8C  38 63 30 00 */	addi r3, r3, 0xCC003000@l
/* 801F5B30 001F2A90  4C C6 31 82 */	crclr 6
/* 801F5B34 001F2A94  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 801F5B38 001F2A98  7F E3 FB 78 */	mr r3, r31
/* 801F5B3C 001F2A9C  80 85 00 2C */	lwz r4, 0x2c(r5)
/* 801F5B40 001F2AA0  54 00 00 06 */	rlwinm r0, r0, 0, 0, 3
/* 801F5B44 001F2AA4  54 00 27 3E */	srwi r0, r0, 0x1c
/* 801F5B48 001F2AA8  7C 04 02 14 */	add r0, r4, r0
/* 801F5B4C 001F2AAC  90 05 00 2C */	stw r0, 0x2c(r5)
/* 801F5B50 001F2AB0  48 00 1D 41 */	bl OSReport
/* 801F5B54 001F2AB4  38 7F 00 20 */	addi r3, r31, 0x20
/* 801F5B58 001F2AB8  4C C6 31 82 */	crclr 6
/* 801F5B5C 001F2ABC  38 9F 00 38 */	addi r4, r31, 0x38
/* 801F5B60 001F2AC0  38 BF 00 44 */	addi r5, r31, 0x44
/* 801F5B64 001F2AC4  48 00 1D 2D */	bl OSReport
/* 801F5B68 001F2AC8  38 7F 00 50 */	addi r3, r31, 0x50
/* 801F5B6C 001F2ACC  4C C6 31 82 */	crclr 6
/* 801F5B70 001F2AD0  48 00 1D 21 */	bl OSReport
/* 801F5B74 001F2AD4  80 6D 31 C8 */	lwz r3, BootInfo@sda21(r13)
/* 801F5B78 001F2AD8  28 03 00 00 */	cmplwi r3, 0
/* 801F5B7C 001F2ADC  41 82 00 10 */	beq .L_801F5B8C
/* 801F5B80 001F2AE0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801F5B84 001F2AE4  28 04 00 00 */	cmplwi r4, 0
/* 801F5B88 001F2AE8  40 82 00 10 */	bne .L_801F5B98
.L_801F5B8C:
/* 801F5B8C 001F2AEC  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 801F5B90 001F2AF0  38 83 00 02 */	addi r4, r3, 0x10000002@l
/* 801F5B94 001F2AF4  48 00 00 04 */	b .L_801F5B98
.L_801F5B98:
/* 801F5B98 001F2AF8  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 801F5B9C 001F2AFC  28 00 00 00 */	cmplwi r0, 0
/* 801F5BA0 001F2B00  40 82 00 14 */	bne .L_801F5BB4
/* 801F5BA4 001F2B04  4C C6 31 82 */	crclr 6
/* 801F5BA8 001F2B08  38 7F 00 60 */	addi r3, r31, 0x60
/* 801F5BAC 001F2B0C  48 00 1C E5 */	bl OSReport
/* 801F5BB0 001F2B10  48 00 00 8C */	b .L_801F5C3C
.L_801F5BB4:
/* 801F5BB4 001F2B14  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 801F5BB8 001F2B18  38 03 00 02 */	addi r0, r3, 0x10000002@l
/* 801F5BBC 001F2B1C  7C 04 00 00 */	cmpw r4, r0
/* 801F5BC0 001F2B20  41 82 00 48 */	beq .L_801F5C08
/* 801F5BC4 001F2B24  40 80 00 14 */	bge .L_801F5BD8
/* 801F5BC8 001F2B28  7C 04 18 00 */	cmpw r4, r3
/* 801F5BCC 001F2B2C  41 82 00 1C */	beq .L_801F5BE8
/* 801F5BD0 001F2B30  40 80 00 28 */	bge .L_801F5BF8
/* 801F5BD4 001F2B34  48 00 00 54 */	b .L_801F5C28
.L_801F5BD8:
/* 801F5BD8 001F2B38  38 03 00 04 */	addi r0, r3, 4
/* 801F5BDC 001F2B3C  7C 04 00 00 */	cmpw r4, r0
/* 801F5BE0 001F2B40  40 80 00 48 */	bge .L_801F5C28
/* 801F5BE4 001F2B44  48 00 00 34 */	b .L_801F5C18
.L_801F5BE8:
/* 801F5BE8 001F2B48  38 7F 00 6C */	addi r3, r31, 0x6c
/* 801F5BEC 001F2B4C  4C C6 31 82 */	crclr 6
/* 801F5BF0 001F2B50  48 00 1C A1 */	bl OSReport
/* 801F5BF4 001F2B54  48 00 00 48 */	b .L_801F5C3C
.L_801F5BF8:
/* 801F5BF8 001F2B58  38 7F 00 7C */	addi r3, r31, 0x7c
/* 801F5BFC 001F2B5C  4C C6 31 82 */	crclr 6
/* 801F5C00 001F2B60  48 00 1C 91 */	bl OSReport
/* 801F5C04 001F2B64  48 00 00 38 */	b .L_801F5C3C
.L_801F5C08:
/* 801F5C08 001F2B68  38 7F 00 8C */	addi r3, r31, 0x8c
/* 801F5C0C 001F2B6C  4C C6 31 82 */	crclr 6
/* 801F5C10 001F2B70  48 00 1C 81 */	bl OSReport
/* 801F5C14 001F2B74  48 00 00 28 */	b .L_801F5C3C
.L_801F5C18:
/* 801F5C18 001F2B78  38 7F 00 9C */	addi r3, r31, 0x9c
/* 801F5C1C 001F2B7C  4C C6 31 82 */	crclr 6
/* 801F5C20 001F2B80  48 00 1C 71 */	bl OSReport
/* 801F5C24 001F2B84  48 00 00 18 */	b .L_801F5C3C
.L_801F5C28:
/* 801F5C28 001F2B88  3C 84 F0 00 */	addis r4, r4, 0xf000
/* 801F5C2C 001F2B8C  4C C6 31 82 */	crclr 6
/* 801F5C30 001F2B90  38 7F 00 AC */	addi r3, r31, 0xac
/* 801F5C34 001F2B94  38 84 FF FD */	addi r4, r4, -3
/* 801F5C38 001F2B98  48 00 1C 59 */	bl OSReport
.L_801F5C3C:
/* 801F5C3C 001F2B9C  80 8D 31 C8 */	lwz r4, BootInfo@sda21(r13)
/* 801F5C40 001F2BA0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 801F5C44 001F2BA4  4C C6 31 82 */	crclr 6
/* 801F5C48 001F2BA8  80 04 00 28 */	lwz r0, 0x28(r4)
/* 801F5C4C 001F2BAC  54 04 65 3E */	srwi r4, r0, 0x14
/* 801F5C50 001F2BB0  48 00 1C 41 */	bl OSReport
/* 801F5C54 001F2BB4  48 00 0C C5 */	bl OSGetArenaHi
/* 801F5C58 001F2BB8  7C 7E 1B 78 */	mr r30, r3
/* 801F5C5C 001F2BBC  48 00 0C C5 */	bl OSGetArenaLo
/* 801F5C60 001F2BC0  7C 64 1B 78 */	mr r4, r3
/* 801F5C64 001F2BC4  4C C6 31 82 */	crclr 6
/* 801F5C68 001F2BC8  7F C5 F3 78 */	mr r5, r30
/* 801F5C6C 001F2BCC  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 801F5C70 001F2BD0  48 00 1C 21 */	bl OSReport
/* 801F5C74 001F2BD4  80 6D 31 CC */	lwz r3, BI2DebugFlag@sda21(r13)
/* 801F5C78 001F2BD8  28 03 00 00 */	cmplwi r3, 0
/* 801F5C7C 001F2BDC  41 82 00 14 */	beq .L_801F5C90
/* 801F5C80 001F2BE0  80 03 00 00 */	lwz r0, 0(r3)
/* 801F5C84 001F2BE4  28 00 00 02 */	cmplwi r0, 2
/* 801F5C88 001F2BE8  41 80 00 08 */	blt .L_801F5C90
/* 801F5C8C 001F2BEC  48 02 A2 69 */	bl EnableMetroTRKInterrupts
.L_801F5C90:
/* 801F5C90 001F2BF0  48 00 33 01 */	bl OSEnableInterrupts
.L_801F5C94:
/* 801F5C94 001F2BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5C98 001F2BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F5C9C 001F2BFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F5CA0 001F2C00  7C 08 03 A6 */	mtlr r0
/* 801F5CA4 001F2C04  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5CA8 001F2C08  4E 80 00 20 */	blr 

.global OSExceptionInit
OSExceptionInit:
/* 801F5CAC 001F2C0C  7C 08 02 A6 */	mflr r0
/* 801F5CB0 001F2C10  90 01 00 04 */	stw r0, 4(r1)
/* 801F5CB4 001F2C14  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801F5CB8 001F2C18  BE 81 00 08 */	stmw r20, 8(r1)
/* 801F5CBC 001F2C1C  3C 60 80 00 */	lis r3, 0x80000060@ha
/* 801F5CC0 001F2C20  80 03 00 60 */	lwz r0, 0x80000060@l(r3)
/* 801F5CC4 001F2C24  3C 80 80 1F */	lis r4, .L_801F5FEC@ha
/* 801F5CC8 001F2C28  3B C4 5F EC */	addi r30, r4, .L_801F5FEC@l
/* 801F5CCC 001F2C2C  3C A0 80 1F */	lis r5, OSExceptionVector@ha
/* 801F5CD0 001F2C30  83 3E 00 00 */	lwz r25, 0(r30)
/* 801F5CD4 001F2C34  3C 80 80 1F */	lis r4, .L_801F601C@ha
/* 801F5CD8 001F2C38  38 A5 5F 84 */	addi r5, r5, OSExceptionVector@l
/* 801F5CDC 001F2C3C  38 84 60 1C */	addi r4, r4, .L_801F601C@l
/* 801F5CE0 001F2C40  3C C0 80 2E */	lis r6, lbl_802E72A8@ha
/* 801F5CE4 001F2C44  28 00 00 00 */	cmplwi r0, 0
/* 801F5CE8 001F2C48  7C B8 2B 78 */	mr r24, r5
/* 801F5CEC 001F2C4C  3B A6 72 A8 */	addi r29, r6, lbl_802E72A8@l
/* 801F5CF0 001F2C50  7E E5 20 50 */	subf r23, r5, r4
/* 801F5CF4 001F2C54  3A 83 00 60 */	addi r20, r3, 0x60
/* 801F5CF8 001F2C58  40 82 00 4C */	bne .L_801F5D44
/* 801F5CFC 001F2C5C  38 7D 01 24 */	addi r3, r29, 0x124
/* 801F5D00 001F2C60  4C C6 31 82 */	crclr 6
/* 801F5D04 001F2C64  48 00 7E 41 */	bl DBPrintf
/* 801F5D08 001F2C68  3C 80 80 1F */	lis r4, __OSDBIntegrator@ha
/* 801F5D0C 001F2C6C  3C 60 80 1F */	lis r3, __OSDBJump@ha
/* 801F5D10 001F2C70  38 03 5F 50 */	addi r0, r3, __OSDBJump@l
/* 801F5D14 001F2C74  38 84 5F 2C */	addi r4, r4, __OSDBIntegrator@l
/* 801F5D18 001F2C78  7E A4 00 50 */	subf r21, r4, r0
/* 801F5D1C 001F2C7C  7E 83 A3 78 */	mr r3, r20
/* 801F5D20 001F2C80  7E A5 AB 78 */	mr r5, r21
/* 801F5D24 001F2C84  4B E0 D6 F1 */	bl memcpy
/* 801F5D28 001F2C88  7E 83 A3 78 */	mr r3, r20
/* 801F5D2C 001F2C8C  7E A4 AB 78 */	mr r4, r21
/* 801F5D30 001F2C90  48 00 0F 21 */	bl DCFlushRangeNoSync
/* 801F5D34 001F2C94  7C 00 04 AC */	sync 0
/* 801F5D38 001F2C98  7E 83 A3 78 */	mr r3, r20
/* 801F5D3C 001F2C9C  7E A4 AB 78 */	mr r4, r21
/* 801F5D40 001F2CA0  48 00 0F A1 */	bl ICInvalidateRange
.L_801F5D44:
/* 801F5D44 001F2CA4  3C 80 80 1F */	lis r4, __OSDBJump@ha
/* 801F5D48 001F2CA8  3C 60 80 1F */	lis r3, __OSSetExceptionHandler@ha
/* 801F5D4C 001F2CAC  3B E4 5F 50 */	addi r31, r4, __OSDBJump@l
/* 801F5D50 001F2CB0  38 03 5F 54 */	addi r0, r3, __OSSetExceptionHandler@l
/* 801F5D54 001F2CB4  3B 9D 00 E8 */	addi r28, r29, 0xe8
/* 801F5D58 001F2CB8  7F 7F 00 50 */	subf r27, r31, r0
/* 801F5D5C 001F2CBC  3B 40 00 00 */	li r26, 0
/* 801F5D60 001F2CC0  48 00 00 04 */	b .L_801F5D64
.L_801F5D64:
/* 801F5D64 001F2CC4  3C 60 80 1F */	lis r3, .L_801F5FDC@ha
/* 801F5D68 001F2CC8  3A A3 5F DC */	addi r21, r3, .L_801F5FDC@l
/* 801F5D6C 001F2CCC  3E C0 60 00 */	lis r22, 0x6000
/* 801F5D70 001F2CD0  48 00 00 04 */	b .L_801F5D74
.L_801F5D74:
/* 801F5D74 001F2CD4  48 00 01 48 */	b .L_801F5EBC
.L_801F5D78:
/* 801F5D78 001F2CD8  80 6D 31 CC */	lwz r3, BI2DebugFlag@sda21(r13)
/* 801F5D7C 001F2CDC  28 03 00 00 */	cmplwi r3, 0
/* 801F5D80 001F2CE0  41 82 00 34 */	beq .L_801F5DB4
/* 801F5D84 001F2CE4  80 03 00 00 */	lwz r0, 0(r3)
/* 801F5D88 001F2CE8  28 00 00 02 */	cmplwi r0, 2
/* 801F5D8C 001F2CEC  41 80 00 28 */	blt .L_801F5DB4
/* 801F5D90 001F2CF0  7F 43 D3 78 */	mr r3, r26
/* 801F5D94 001F2CF4  48 00 7D 95 */	bl __DBIsExceptionMarked
/* 801F5D98 001F2CF8  2C 03 00 00 */	cmpwi r3, 0
/* 801F5D9C 001F2CFC  41 82 00 18 */	beq .L_801F5DB4
/* 801F5DA0 001F2D00  38 7D 01 40 */	addi r3, r29, 0x140
/* 801F5DA4 001F2D04  4C C6 31 82 */	crclr 6
/* 801F5DA8 001F2D08  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 801F5DAC 001F2D0C  48 00 7D 99 */	bl DBPrintf
/* 801F5DB0 001F2D10  48 00 01 04 */	b .L_801F5EB4
.L_801F5DB4:
/* 801F5DB4 001F2D14  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 801F5DB8 001F2D18  7F 20 A3 78 */	or r0, r25, r20
/* 801F5DBC 001F2D1C  90 1E 00 00 */	stw r0, 0(r30)
/* 801F5DC0 001F2D20  7F 43 D3 78 */	mr r3, r26
/* 801F5DC4 001F2D24  48 00 7D 65 */	bl __DBIsExceptionMarked
/* 801F5DC8 001F2D28  2C 03 00 00 */	cmpwi r3, 0
/* 801F5DCC 001F2D2C  41 82 00 28 */	beq .L_801F5DF4
/* 801F5DD0 001F2D30  7E 84 A3 78 */	mr r4, r20
/* 801F5DD4 001F2D34  4C C6 31 82 */	crclr 6
/* 801F5DD8 001F2D38  38 7D 01 70 */	addi r3, r29, 0x170
/* 801F5DDC 001F2D3C  48 00 7D 69 */	bl DBPrintf
/* 801F5DE0 001F2D40  7E A3 AB 78 */	mr r3, r21
/* 801F5DE4 001F2D44  7F E4 FB 78 */	mr r4, r31
/* 801F5DE8 001F2D48  7F 65 DB 78 */	mr r5, r27
/* 801F5DEC 001F2D4C  4B E0 D6 29 */	bl memcpy
/* 801F5DF0 001F2D50  48 00 00 90 */	b .L_801F5E80
.L_801F5DF4:
/* 801F5DF4 001F2D54  7E A4 AB 78 */	mr r4, r21
/* 801F5DF8 001F2D58  48 00 00 04 */	b .L_801F5DFC
.L_801F5DFC:
/* 801F5DFC 001F2D5C  28 1B 00 00 */	cmplwi r27, 0
/* 801F5E00 001F2D60  38 7B 00 03 */	addi r3, r27, 3
/* 801F5E04 001F2D64  54 63 F0 BE */	srwi r3, r3, 2
/* 801F5E08 001F2D68  40 81 00 78 */	ble .L_801F5E80
/* 801F5E0C 001F2D6C  54 60 E8 FE */	srwi r0, r3, 3
/* 801F5E10 001F2D70  28 00 00 00 */	cmplwi r0, 0
/* 801F5E14 001F2D74  7C 09 03 A6 */	mtctr r0
/* 801F5E18 001F2D78  41 82 00 54 */	beq .L_801F5E6C
/* 801F5E1C 001F2D7C  48 00 00 04 */	b .L_801F5E20
.L_801F5E20:
/* 801F5E20 001F2D80  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E24 001F2D84  38 84 00 04 */	addi r4, r4, 4
/* 801F5E28 001F2D88  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E2C 001F2D8C  38 84 00 04 */	addi r4, r4, 4
/* 801F5E30 001F2D90  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E34 001F2D94  38 84 00 04 */	addi r4, r4, 4
/* 801F5E38 001F2D98  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E3C 001F2D9C  38 84 00 04 */	addi r4, r4, 4
/* 801F5E40 001F2DA0  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E44 001F2DA4  38 84 00 04 */	addi r4, r4, 4
/* 801F5E48 001F2DA8  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E4C 001F2DAC  38 84 00 04 */	addi r4, r4, 4
/* 801F5E50 001F2DB0  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E54 001F2DB4  38 84 00 04 */	addi r4, r4, 4
/* 801F5E58 001F2DB8  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E5C 001F2DBC  38 84 00 04 */	addi r4, r4, 4
/* 801F5E60 001F2DC0  42 00 FF C0 */	bdnz .L_801F5E20
/* 801F5E64 001F2DC4  70 63 00 07 */	andi. r3, r3, 7
/* 801F5E68 001F2DC8  41 82 00 18 */	beq .L_801F5E80
.L_801F5E6C:
/* 801F5E6C 001F2DCC  7C 69 03 A6 */	mtctr r3
/* 801F5E70 001F2DD0  48 00 00 04 */	b .L_801F5E74
.L_801F5E74:
/* 801F5E74 001F2DD4  92 C4 00 00 */	stw r22, 0(r4)
/* 801F5E78 001F2DD8  38 84 00 04 */	addi r4, r4, 4
/* 801F5E7C 001F2DDC  42 00 FF F8 */	bdnz .L_801F5E74
.L_801F5E80:
/* 801F5E80 001F2DE0  80 7C 00 00 */	lwz r3, 0(r28)
/* 801F5E84 001F2DE4  7F 04 C3 78 */	mr r4, r24
/* 801F5E88 001F2DE8  7E E5 BB 78 */	mr r5, r23
/* 801F5E8C 001F2DEC  3E 83 80 00 */	addis r20, r3, 0x8000
/* 801F5E90 001F2DF0  7E 83 A3 78 */	mr r3, r20
/* 801F5E94 001F2DF4  4B E0 D5 81 */	bl memcpy
/* 801F5E98 001F2DF8  7E 83 A3 78 */	mr r3, r20
/* 801F5E9C 001F2DFC  7E E4 BB 78 */	mr r4, r23
/* 801F5EA0 001F2E00  48 00 0D B1 */	bl DCFlushRangeNoSync
/* 801F5EA4 001F2E04  7C 00 04 AC */	sync 0
/* 801F5EA8 001F2E08  7E 83 A3 78 */	mr r3, r20
/* 801F5EAC 001F2E0C  7E E4 BB 78 */	mr r4, r23
/* 801F5EB0 001F2E10  48 00 0E 31 */	bl ICInvalidateRange
.L_801F5EB4:
/* 801F5EB4 001F2E14  3B 9C 00 04 */	addi r28, r28, 4
/* 801F5EB8 001F2E18  3B 5A 00 01 */	addi r26, r26, 1
.L_801F5EBC:
/* 801F5EBC 001F2E1C  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 801F5EC0 001F2E20  28 00 00 0F */	cmplwi r0, 0xf
/* 801F5EC4 001F2E24  41 80 FE B4 */	blt .L_801F5D78
/* 801F5EC8 001F2E28  3C 60 80 00 */	lis r3, 0x80003000@ha
/* 801F5ECC 001F2E2C  38 03 30 00 */	addi r0, r3, 0x80003000@l
/* 801F5ED0 001F2E30  90 0D 31 D4 */	stw r0, OSExceptionTable@sda21(r13)
/* 801F5ED4 001F2E34  3A 80 00 00 */	li r20, 0
/* 801F5ED8 001F2E38  48 00 00 04 */	b .L_801F5EDC
.L_801F5EDC:
/* 801F5EDC 001F2E3C  3C 60 80 1F */	lis r3, OSDefaultExceptionHandler@ha
/* 801F5EE0 001F2E40  3A E3 60 20 */	addi r23, r3, OSDefaultExceptionHandler@l
/* 801F5EE4 001F2E44  48 00 00 04 */	b .L_801F5EE8
.L_801F5EE8:
/* 801F5EE8 001F2E48  48 00 00 14 */	b .L_801F5EFC
.L_801F5EEC:
/* 801F5EEC 001F2E4C  7E 83 A3 78 */	mr r3, r20
/* 801F5EF0 001F2E50  7E E4 BB 78 */	mr r4, r23
/* 801F5EF4 001F2E54  48 00 00 61 */	bl __OSSetExceptionHandler
/* 801F5EF8 001F2E58  3A 94 00 01 */	addi r20, r20, 1
.L_801F5EFC:
/* 801F5EFC 001F2E5C  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 801F5F00 001F2E60  28 00 00 0F */	cmplwi r0, 0xf
/* 801F5F04 001F2E64  41 80 FF E8 */	blt .L_801F5EEC
/* 801F5F08 001F2E68  93 3E 00 00 */	stw r25, 0(r30)
/* 801F5F0C 001F2E6C  38 7D 01 A0 */	addi r3, r29, 0x1a0
/* 801F5F10 001F2E70  4C C6 31 82 */	crclr 6
/* 801F5F14 001F2E74  48 00 7C 31 */	bl DBPrintf
/* 801F5F18 001F2E78  BA 81 00 08 */	lmw r20, 8(r1)
/* 801F5F1C 001F2E7C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801F5F20 001F2E80  38 21 00 38 */	addi r1, r1, 0x38
/* 801F5F24 001F2E84  7C 08 03 A6 */	mtlr r0
/* 801F5F28 001F2E88  4E 80 00 20 */	blr 

.global __OSDBIntegrator
__OSDBIntegrator:
/* 801F5F2C 001F2E8C  38 A0 00 40 */	li r5, 0x40
/* 801F5F30 001F2E90  7C 68 02 A6 */	mflr r3
/* 801F5F34 001F2E94  90 65 00 0C */	stw r3, 0xc(r5)
/* 801F5F38 001F2E98  80 65 00 08 */	lwz r3, 8(r5)
/* 801F5F3C 001F2E9C  64 63 80 00 */	oris r3, r3, 0x8000
/* 801F5F40 001F2EA0  7C 68 03 A6 */	mtlr r3
/* 801F5F44 001F2EA4  38 60 00 30 */	li r3, 0x30
/* 801F5F48 001F2EA8  7C 60 01 24 */	mtmsr r3
/* 801F5F4C 001F2EAC  4E 80 00 20 */	blr 

.global __OSDBJump
__OSDBJump:
/* 801F5F50 001F2EB0  48 00 00 63 */	bla 0x60

.global __OSSetExceptionHandler
__OSSetExceptionHandler:
/* 801F5F54 001F2EB4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F5F58 001F2EB8  80 6D 31 D4 */	lwz r3, OSExceptionTable@sda21(r13)
/* 801F5F5C 001F2EBC  54 00 10 3A */	slwi r0, r0, 2
/* 801F5F60 001F2EC0  7C A3 02 14 */	add r5, r3, r0
/* 801F5F64 001F2EC4  80 65 00 00 */	lwz r3, 0(r5)
/* 801F5F68 001F2EC8  90 85 00 00 */	stw r4, 0(r5)
/* 801F5F6C 001F2ECC  4E 80 00 20 */	blr 

.global __OSGetExceptionHandler
__OSGetExceptionHandler:
/* 801F5F70 001F2ED0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F5F74 001F2ED4  80 6D 31 D4 */	lwz r3, OSExceptionTable@sda21(r13)
/* 801F5F78 001F2ED8  54 00 10 3A */	slwi r0, r0, 2
/* 801F5F7C 001F2EDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 801F5F80 001F2EE0  4E 80 00 20 */	blr 

.global OSExceptionVector
OSExceptionVector:
/* 801F5F84 001F2EE4  7C 90 43 A6 */	mtspr 0x110, r4
/* 801F5F88 001F2EE8  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 801F5F8C 001F2EEC  90 64 00 0C */	stw r3, 0xc(r4)
/* 801F5F90 001F2EF0  7C 70 42 A6 */	mfspr r3, 0x110
/* 801F5F94 001F2EF4  90 64 00 10 */	stw r3, 0x10(r4)
/* 801F5F98 001F2EF8  90 A4 00 14 */	stw r5, 0x14(r4)
/* 801F5F9C 001F2EFC  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 801F5FA0 001F2F00  60 63 00 02 */	ori r3, r3, 2
/* 801F5FA4 001F2F04  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 801F5FA8 001F2F08  7C 60 00 26 */	mfcr r3
/* 801F5FAC 001F2F0C  90 64 00 80 */	stw r3, 0x80(r4)
/* 801F5FB0 001F2F10  7C 68 02 A6 */	mflr r3
/* 801F5FB4 001F2F14  90 64 00 84 */	stw r3, 0x84(r4)
/* 801F5FB8 001F2F18  7C 69 02 A6 */	mfctr r3
/* 801F5FBC 001F2F1C  90 64 00 88 */	stw r3, 0x88(r4)
/* 801F5FC0 001F2F20  7C 61 02 A6 */	mfxer r3
/* 801F5FC4 001F2F24  90 64 00 8C */	stw r3, 0x8c(r4)
/* 801F5FC8 001F2F28  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 801F5FCC 001F2F2C  90 64 01 98 */	stw r3, 0x198(r4)
/* 801F5FD0 001F2F30  7C 7B 02 A6 */	mfspr r3, 0x1b
/* 801F5FD4 001F2F34  90 64 01 9C */	stw r3, 0x19c(r4)
/* 801F5FD8 001F2F38  7C 65 1B 78 */	mr r5, r3
.L_801F5FDC:
/* 801F5FDC 001F2F3C  60 00 00 00 */	nop 
/* 801F5FE0 001F2F40  7C 60 00 A6 */	mfmsr r3
/* 801F5FE4 001F2F44  60 63 00 30 */	ori r3, r3, 0x30
/* 801F5FE8 001F2F48  7C 7B 03 A6 */	mtspr 0x1b, r3
.L_801F5FEC:
/* 801F5FEC 001F2F4C  38 60 00 00 */	li r3, 0
/* 801F5FF0 001F2F50  80 80 00 D4 */	lwz r4, 0xd4(0)
/* 801F5FF4 001F2F54  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 801F5FF8 001F2F58  40 82 00 14 */	bne .L_801F600C
/* 801F5FFC 001F2F5C  3C A0 80 1F */	lis r5, OSDefaultExceptionHandler@ha
/* 801F6000 001F2F60  38 A5 60 20 */	addi r5, r5, OSDefaultExceptionHandler@l
/* 801F6004 001F2F64  7C BA 03 A6 */	mtspr 0x1a, r5
/* 801F6008 001F2F68  4C 00 00 64 */	rfi 
.L_801F600C:
/* 801F600C 001F2F6C  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 801F6010 001F2F70  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 801F6014 001F2F74  7C BA 03 A6 */	mtspr 0x1a, r5
/* 801F6018 001F2F78  4C 00 00 64 */	rfi 
.L_801F601C:
/* 801F601C 001F2F7C  60 00 00 00 */	nop 

.global OSDefaultExceptionHandler
OSDefaultExceptionHandler:
/* 801F6020 001F2F80  90 04 00 00 */	stw r0, 0(r4)
/* 801F6024 001F2F84  90 24 00 04 */	stw r1, 4(r4)
/* 801F6028 001F2F88  90 44 00 08 */	stw r2, 8(r4)
/* 801F602C 001F2F8C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 801F6030 001F2F90  7C 11 E2 A6 */	mfspr r0, 0x391
/* 801F6034 001F2F94  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 801F6038 001F2F98  7C 12 E2 A6 */	mfspr r0, 0x392
/* 801F603C 001F2F9C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 801F6040 001F2FA0  7C 13 E2 A6 */	mfspr r0, 0x393
/* 801F6044 001F2FA4  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 801F6048 001F2FA8  7C 14 E2 A6 */	mfspr r0, 0x394
/* 801F604C 001F2FAC  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 801F6050 001F2FB0  7C 15 E2 A6 */	mfspr r0, 0x395
/* 801F6054 001F2FB4  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 801F6058 001F2FB8  7C 16 E2 A6 */	mfspr r0, 0x396
/* 801F605C 001F2FBC  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 801F6060 001F2FC0  7C 17 E2 A6 */	mfspr r0, 0x397
/* 801F6064 001F2FC4  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 801F6068 001F2FC8  7C B2 02 A6 */	mfdsisr r5
/* 801F606C 001F2FCC  7C D3 02 A6 */	mfdar r6
/* 801F6070 001F2FD0  48 00 19 E8 */	b __OSUnhandledException

.global __OSPSInit
__OSPSInit:
/* 801F6074 001F2FD4  7C 08 02 A6 */	mflr r0
/* 801F6078 001F2FD8  90 01 00 04 */	stw r0, 4(r1)
/* 801F607C 001F2FDC  94 21 FF F8 */	stwu r1, -8(r1)
/* 801F6080 001F2FE0  4B FF F9 11 */	bl PPCMfhid2
/* 801F6084 001F2FE4  64 63 A0 00 */	oris r3, r3, 0xa000
/* 801F6088 001F2FE8  4B FF F9 11 */	bl PPCMthid2
/* 801F608C 001F2FEC  48 00 0C 8D */	bl ICFlashInvalidate
/* 801F6090 001F2FF0  7C 00 04 AC */	sync 0
/* 801F6094 001F2FF4  38 60 00 00 */	li r3, 0
/* 801F6098 001F2FF8  7C 70 E3 A6 */	mtspr 0x390, r3
/* 801F609C 001F2FFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F60A0 001F3000  38 21 00 08 */	addi r1, r1, 8
/* 801F60A4 001F3004  7C 08 03 A6 */	mtlr r0
/* 801F60A8 001F3008  4E 80 00 20 */	blr 

.global __OSGetDIConfig
__OSGetDIConfig:
/* 801F60AC 001F300C  3C 60 CC 00 */	lis r3, 0xCC006000@ha
/* 801F60B0 001F3010  38 63 60 00 */	addi r3, r3, 0xCC006000@l
/* 801F60B4 001F3014  80 03 00 24 */	lwz r0, 0x24(r3)
/* 801F60B8 001F3018  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801F60BC 001F301C  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 8
lbl_802E72A8:
	.asciz "\nDolphin OS $Revision: 37 $.\n"
.balign 4
lbl_802E72C8:
	.asciz "Kernel built : %s %s\n"
.balign 4
lbl_802E72E0:
	.asciz "Jul 19 2001"
.balign 4
lbl_802E72EC:
	.asciz "05:43:42"
.balign 4
lbl_802E72F8:
	.asciz "Console Type : "
.balign 4
lbl_802E7308:
	.asciz "Retail %d\n"
.balign 4
lbl_802E7314:
	.asciz "Mac Emulator\n"
.balign 4
lbl_802E7324:
	.asciz "PC Emulator\n"
.balign 4
lbl_802E7334:
	.asciz "EPPC Arthur\n"
.balign 4
lbl_802E7344:
	.asciz "EPPC Minnow\n"
.balign 4
lbl_802E7354:
	.asciz "Development HW%d\n"
.balign 4
lbl_802E7368:
	.asciz "Memory %d MB\n"
.balign 4
lbl_802E7378:
	.asciz "Arena : 0x%x - 0x%x\n"
.balign 4
__OSExceptionLocations:
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
lbl_802E73CC:
	.asciz "Installing OSDBIntegrator\n"
.balign 4
lbl_802E73E8:
	.asciz ">>> OSINIT: exception %d commandeered by TRK\n"
.balign 4
lbl_802E7418:
	.asciz ">>> OSINIT: exception %d vectored to debugger\n"
.balign 4
lbl_802E7448:
	.asciz "Exceptions initialized...\n"

.section .sbss, "wa"
.balign 8
.global BootInfo
BootInfo:
	.skip 4
.global BI2DebugFlag
BI2DebugFlag:
	.skip 4
.global AreWeInitialized
AreWeInitialized:
	.skip 4
.global OSExceptionTable
OSExceptionTable:
	.skip 4
