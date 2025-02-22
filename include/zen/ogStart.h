#ifndef _ZEN_OGSTART_H
#define _ZEN_OGSTART_H

#include "types.h"

struct Controller;
struct Graphics;
struct P2DPane;
struct P2DScreen;

namespace zen {

/**
 * @brief TODO
 */
enum ogScrStartState {
	START_NULL      = -1,
	START_Oscillate = 0,
	START_FadeIn    = 1,
	START_FadeOut   = 2,
	START_Exit      = 3,
};

/**
 * @brief TODO
 *
 * @note Size: 0x14.
 */
struct ogScrStartMgr {
	ogScrStartMgr();

	void start();
	void stop();
	int update(Controller*);
	void draw(Graphics&);

	int mState;                   // _00, see ogScrStartState enum
	int mExitState;               // _04, see ogScrStartState enum
	P2DScreen* mPressStartScreen; // _08
	P2DPane* mRootPane;           // _0C, pane 'root'
	f32 mFadeTimer;               // _10, controls oscillating alpha level + fade in/out
};

} // namespace zen

#endif
