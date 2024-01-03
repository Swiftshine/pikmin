#ifndef _NAVIDEMOWAITSTATE_H
#define _NAVIDEMOWAITSTATE_H

/**
 * .obj __vt__17NaviDemoWaitState, global
 * .4byte __RTTI__17NaviDemoWaitState
 * .4byte 0
 * .4byte "procMsg__15Receiver<4Navi>FP4NaviP3Msg"
 * .4byte "procBounceMsg__15Receiver<4Navi>FP4NaviP9MsgBounce"
 * .4byte "procStickMsg__15Receiver<4Navi>FP4NaviP8MsgStick"
 * .4byte "procHangMsg__15Receiver<4Navi>FP4NaviP7MsgHang"
 * .4byte "procTargetMsg__15Receiver<4Navi>FP4NaviP9MsgTarget"
 * .4byte "procCollideMsg__15Receiver<4Navi>FP4NaviP10MsgCollide"
 * .4byte "procAnimMsg__15Receiver<4Navi>FP4NaviP7MsgAnim"
 * .4byte "procDamageMsg__15Receiver<4Navi>FP4NaviP9MsgDamage"
 * .4byte "procWallMsg__15Receiver<4Navi>FP4NaviP7MsgWall"
 * .4byte "procOffWallMsg__15Receiver<4Navi>FP4NaviP10MsgOffWall"
 * .4byte "procUserMsg__15Receiver<4Navi>FP4NaviP7MsgUser"
 * .4byte "procGroundMsg__15Receiver<4Navi>FP4NaviP9MsgGround"
 * .4byte init__17NaviDemoWaitStateFP4Navi
 * .4byte exec__17NaviDemoWaitStateFP4Navi
 * .4byte cleanup__17NaviDemoWaitStateFP4Navi
 * .4byte "resume__13AState<4Navi>FP4Navi"
 * .4byte "restart__13AState<4Navi>FP4Navi"
 * .4byte "transit__13AState<4Navi>FP4Navii"
 * .4byte invincible__17NaviDemoWaitStateFP4Navi
*/

struct Receiver<Navi> {
	virtual void procMsg(Navi *, Msg *);                // _08 (weak)
	virtual void procBounceMsg(Navi *, MsgBounce *);    // _0C (weak)
	virtual void procStickMsg(Navi *, MsgStick *);      // _10 (weak)
	virtual void procHangMsg(Navi *, MsgHang *);        // _14 (weak)
	virtual void procTargetMsg(Navi *, MsgTarget *);    // _18 (weak)
	virtual void procCollideMsg(Navi *, MsgCollide *);  // _1C (weak)
	virtual void procAnimMsg(Navi *, MsgAnim *);        // _20 (weak)
	virtual void procDamageMsg(Navi *, MsgDamage *);    // _24 (weak)
	virtual void procWallMsg(Navi *, MsgWall *);        // _28 (weak)
	virtual void procOffWallMsg(Navi *, MsgOffWall *);  // _2C (weak)
	virtual void procUserMsg(Navi *, MsgUser *);        // _30 (weak)
	virtual void procGroundMsg(Navi *, MsgGround *);    // _34 (weak)
};

struct AState<Navi> {
	virtual void _08() = 0;             // _08
	virtual void _0C() = 0;             // _0C
	virtual void _10() = 0;             // _10
	virtual void _14() = 0;             // _14
	virtual void _18() = 0;             // _18
	virtual void _1C() = 0;             // _1C
	virtual void _20() = 0;             // _20
	virtual void _24() = 0;             // _24
	virtual void _28() = 0;             // _28
	virtual void _2C() = 0;             // _2C
	virtual void _30() = 0;             // _30
	virtual void _34() = 0;             // _34
	virtual void init(Navi *);          // _38
	virtual void exec(Navi *);          // _3C
	virtual void cleanup(Navi *);       // _40
	virtual void resume(Navi *);        // _44 (weak)
	virtual void restart(Navi *);       // _48 (weak)
	virtual void transit(Navi *, int);  // _4C
};

/**
 * @brief TODO
 */
struct NaviDemoWaitState : public Receiver<Navi>, public AState<Navi> {
	virtual void init(Navi *);        // _38
	virtual void exec(Navi *);        // _3C
	virtual void cleanup(Navi *);     // _40
	virtual void invincible(Navi *);  // _50

};

#endif