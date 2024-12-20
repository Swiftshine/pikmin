#include "jaudio/dummyrom.h"
#include "jaudio/memory.h"
#include "jaudio/audiocommon.h"
#include "Dolphin/ar.h"
#include "Dolphin/os.h"

ALHeap aram_hp;
u8* JAC_ARAM_DMA_BUFFER_TOP;

static u32 AUDIO_ARAM_TOP;
static u32 CARD_SECURITY_BUFFER;
static u32 SELECTED_ARAM_SIZE;

/*
 * --INFO--
 * Address:	........
 * Size:	000008
 */
void GetNeosRomTop()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000028
 */
void mesg_finishcall(u32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00005C
 */
void ARAMStartDMAmesg(u32, u32, u32, u32, s32, OSMesgQueue_s*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00004C
 */
void ARAMStartDMA(u32, u32, u32, u32, s32, u32*, void (*)())
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800061A0
 * Size:	000008
 */
void Jac_SetAudioARAMSize(u32 size) { SELECTED_ARAM_SIZE = size; }

/*
 * --INFO--
 * Address:	........
 * Size:	000038
 */
void ARAlloc2(u32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800061C0
 * Size:	000058
 */
void ARAllocFull(u32* outSize)
{
	u32 freeSize = aram_hp.length - ((int)aram_hp.current - (int)aram_hp.base);

	Nas_HeapAlloc(&aram_hp, freeSize - 32);
	*outSize = freeSize - 32;
	/*
	.loc_0x0:
	  mflr      r0
	  lis       r4, 0x803D
	  stw       r0, 0x4(r1)
	  addi      r6, r4, 0x6298
	  stwu      r1, -0x18(r1)
	  stmw      r30, 0x10(r1)
	  addi      r30, r3, 0
	  mr        r3, r6
	  lwz       r5, 0x0(r6)
	  lwz       r4, 0x4(r6)
	  lwz       r0, 0x8(r6)
	  sub       r4, r4, r5
	  sub       r31, r0, r4
	  subi      r4, r31, 0x20
	  bl        -0xBB8
	  subi      r0, r31, 0x20
	  stw       r0, 0x0(r30)
	  lmw       r30, 0x10(r1)
	  lwz       r0, 0x1C(r1)
	  addi      r1, r1, 0x18
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	80006220
 * Size:	000098
 */
void Jac_InitARAM(u32 loadAudiorom)
{
	u32 aram_size = AUDIO_ARAM_SIZE;
	volatile u32 audiorom_size;

	if (SELECTED_ARAM_SIZE != 0) {
		aram_size = SELECTED_ARAM_SIZE;
	}

	AUDIO_ARAM_TOP = ARGetBaseAddress();
	if (loadAudiorom) {
		// audiorom_size = Jac_CheckFile("/audiorom.img");
		if (audiorom_size != 0) {
			audiorom_size = ALIGN_NEXT(audiorom_size, 32);
			// (void)audiorom_size; /* leftover from some debug print? */
		}
	} else {
		audiorom_size = 0;
	}

	CARD_SECURITY_BUFFER = 0x40;
	audiorom_size += AUDIO_ARAM_TOP;
	JAC_ARAM_DMA_BUFFER_TOP = (u8*)audiorom_size;
	audiorom_size += AUDIO_ARAM_HEAP_SIZE;
	Nas_HeapInit(&aram_hp, (u8*)audiorom_size, aram_size - audiorom_size);

	/* Probably leftovers from some debug print statement */
	// (void)audiorom_size;
	// (void)audiorom_size;
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x30(r1)
	  stw       r31, 0x2C(r1)
	  lwz       r0, 0x2B3C(r13)
	  cmplwi    r0, 0
	  beq-      .loc_0x24
	  mr        r31, r0
	  b         .loc_0x28

	.loc_0x24:
	  lis       r31, 0x40

	.loc_0x28:
	  bl        0x2008EC
	  li        r0, 0
	  stw       r3, 0x2B34(r13)
	  li        r5, 0x40
	  lis       r3, 0x803D
	  stw       r0, 0x24(r1)
	  addi      r3, r3, 0x6298
	  lwz       r0, 0x2B34(r13)
	  lwz       r4, 0x24(r1)
	  stw       r5, 0x2B38(r13)
	  add       r0, r4, r0
	  stw       r0, 0x24(r1)
	  lwz       r0, 0x24(r1)
	  lwz       r4, 0x24(r1)
	  stw       r0, 0x2B30(r13)
	  addis     r4, r4, 0x1
	  subi      r0, r4, 0x4000
	  stw       r0, 0x24(r1)
	  lwz       r4, 0x24(r1)
	  lwz       r0, 0x24(r1)
	  sub       r5, r31, r0
	  bl        -0xBDC
	  lwz       r0, 0x24(r1)
	  lwz       r0, 0x34(r1)
	  lwz       r31, 0x2C(r1)
	  addi      r1, r1, 0x30
	  mtlr      r0
	  blr
	*/
}
