#ifndef _ZEN_DRAWACCOUNT_H
#define _ZEN_DRAWACCOUNT_H

#include "types.h"
#include "zen/DrawCommon.h"

struct Graphics;

namespace zen {

/**
 * @brief TODO
 */
struct AccountData {
	// TODO: members
};

/**
 * @brief TODO
 */
struct DrawAccount : public DrawScreen {

	DrawAccount();

	virtual void update(); // _08

	void start(AccountData&);
	void draw(Graphics&);

	// unused/inlined:

	// TODO: members
};

} // namespace zen

#endif