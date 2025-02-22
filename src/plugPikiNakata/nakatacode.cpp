#include "CodeInitializer.h"
#include "nlib/System.h"
#include "PaniPikiAnimator.h"
#include "system.h"
#include "Teki.h"

BOOL nakataDebugMode;

/*
 * --INFO--
 * Address:	........
 * Size:	00009C
 */
static void _Error(char*, ...)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000F4
 */
static void _Print(char*, ...)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8011B6AC
 * Size:	000038
 */
void NakataCodeInitializer::init()
{
	nakataDebugMode = TRUE;
	NSystem::initSystem(gsys);
	PaniPikiAnimMgr::motionTable = nullptr;
	TekiMgr::initTekiMgr();
}
