#ifndef _PIKI_H
#define _PIKI_H

#include "types.h"
#include "Creature.h"
#include "PaniPikiAnimator.h"
#include "StateMachine.h"
#include "UtEffect.h"
#include "OdoMeter.h"
#include "Route.h"

#define PIKI_PROP()       static_cast<PikiProp*>(mProps)->mPikiParms
#define C_PIKI_PROP(piki) static_cast<PikiProp*>(piki->mProps)->mPikiParms
#define MAX_PIKI_ON_FIELD (100)

struct TopAction;
struct Navi;
struct PikiStateMachine;
struct PikiProp;
struct PikiState;

/**
 * @brief TODO
 */
enum PikiColor {
	Blue   = 0,
	Red    = 1,
	Yellow = 2,
	PikiColorCount, // 3

	PikiMinColor = Blue,
	PikiMaxColor = Yellow,
	PIKI_Kinoko  = 3,
};

/**
 * @brief TODO
 */
enum PikiHappa {
	Leaf   = 0,
	Bud    = 1,
	Flower = 2,
	PikiHappaCount, // 3

	PikiMinHappa = Leaf,
	PikiMaxHappa = Flower,
};

// clang-format off
DEFINE_ENUM_TYPE(
	PikiMode,

	FreeMode = 0,  // 0
	FormationMode, // 1
	AttackMode,    // 2
	NukuMode,      // 3
	GuardMode,     // 4
	PickMode,      // 5
	DecoyMode,     // 6
	ArrowMode,     // 7
	CarryMode,     // 8
	TransportMode, // 9
	RopeMode,      // 10
	EnterMode,     // 11
	ExitMode,      // 12
	BreakwallMode, // 13
	MineMode,      // 14
	KinokoMode,    // 15
	BridgeMode,    // 16
	PushstoneMode, // 17
	PutbombMode,   // 18
	RescueMode,    // 19
	WeedMode,      // 20
	PebbleMode,    // 21
	BomakeMode,    // 22
	BoMode,        // 23
	WarriorMode,   // 24
);
// clang-format on

/**
 * @brief TODO
 */
struct Piki : public Creature, public PaniAnimKeyListener {
	Piki(CreatureProp*);

	virtual void addCntCallback();                       // _08
	virtual void subCntCallback();                       // _0C
	virtual bool platAttachable();                       // _14
	virtual bool doDoAI();                               // _1C
	virtual void resetPosition(Vector3f&);               // _2C
	virtual f32 getiMass();                              // _38
	virtual f32 getSize();                               // _3C
	virtual Vector3f getShadowPos();                     // _68
	virtual bool isVisible();                            // _74
	virtual bool isBuried();                             // _80
	virtual bool isAtari();                              // _84
	virtual bool isAlive();                              // _88
	virtual bool isFixed();                              // _8C
	virtual bool needShadow();                           // _90
	virtual bool needFlick(Creature*);                   // _94
	virtual bool ignoreAtari(Creature*);                 // _98
	virtual bool stimulate(Interaction&);                // _A0
	virtual void sendMsg(Msg*);                          // _A4
	virtual void collisionCallback(CollEvent&);          // _A8
	virtual void bounceCallback();                       // _AC
	virtual void jumpCallback();                         // _B0
	virtual void wallCallback(Plane&, DynCollObject*);   // _B4
	virtual void offwallCallback(DynCollObject*);        // _B8
	virtual void stickToCallback(Creature*);             // _C4
	virtual void dump();                                 // _C8
	virtual bool isRopable();                            // _D4
	virtual bool mayIstick();                            // _D8
	virtual int getFormationPri();                       // _DC
	virtual Vector3f getCatchPos(Creature*);             // _100
	virtual void doAI();                                 // _104
	virtual void doAnimation();                          // _108
	virtual void doKill();                               // _10C
	virtual bool isKinoko() = 0;                         // _120
	virtual void animationKeyUpdated(PaniAnimKeyEvent&); // _124
	virtual void initBirth();                            // _128
	virtual void changeShape(int) { }                    // _12C
	virtual void setFlower(int) { }                      // _130
	virtual void setLeaves(int);                         // _134

	f32 getSpeed(f32);
	void setSpeed(f32, Vector3f&);
	void setSpeed(f32, f32);
	void init(Navi*);
	bool isFruit();
	void updateLookCreature();
	void updateWalkAnimation();
	void realAI();
	void changeMode(int, Navi*);
	void startHimaLook(Vector3f*);
	void finishLook();
	bool isLooking();
	void updateLook();
	void demoCheck();
	void startDemo();
	void finishDemo();
	bool appearDemo();
	int getUpperMotionIndex();
	f32 getAttackPower();
	int findRoute(int, int, bool, bool);
	int moveRouteTraceDynamic(f32);
	bool initRouteTrace(Vector3f&, bool);
	int moveRouteTrace(f32);
	Vector3f crGetPoint(int);
	bool crPointOpen(int);
	f32 crGetRadius(int);
	void crMakeRefs();
	bool hasBomb();
	void startFire();
	void endFire();
	bool isTeki(Piki*);
	void actOnSituaton(); // dev spelling
	int getState();
	int graspSituation(Creature**);
	void initColor(int);
	void startKinoko();
	void endKinoko();
	void setColor(int);
	void setPastel();
	void unsetPastel();
	void updateColor();
	void startDamage();
	void finishDamage();
	bool isThrowable();
	void startMotion(struct PaniMotionInfo&, PaniMotionInfo&);
	void enableMotionBlend();
	void checkBridgeWall(Creature*, Vector3f&);

	static bool isSafeMePos(Vector3f&);

	// unused/inlined:
	PikiState* getPikiState();
	bool initRouteTraceDynamic(Creature*);
	void updateFire();
	int getNaviID();
	int getLastState();
	void birthBuried();
	bool isGrowable();
	bool isTamable();
	void growup();
	bool doMotionBlend();
	void swapMotion(PaniMotionInfo&, PaniMotionInfo&);
	void setSpeed(f32);
	char* getCurrentMotionName();

	// NB: these are all the DLL inlines. No more.

	void setEraseKill() { mEraseKill = true; }
	void unsetEraseKill() { mEraseKill = false; }

	AState<Piki>* getCurrState() { return mCurrentState; }
	void setCurrState(AState<Piki>* state) { mCurrentState = state; }

	// 100AEBD0 in plugPiki
	void startLook(Vector3f* other)
	{
		_33C = other;

		_340 = 0;
		_330 = 0;

		_338.reset();
	}

	void forceFinishLook()
	{
		_33C = 0;
		_348 = 0.0f;
		_344 = 0.0f;
		_340 = 0;
		_330 = 0;

		_338.reset();
	}

	bool isFired() { return mIsOnFire; }

	static bool directDumpMode;
	static Colour* kinokoColors;
	static Colour* pikiColors;

	// _00      = VTBL
	// _00-_2B8 = Creature
	// _2B8     = PaniAnimKeyListener
	OdoMeter mOdometer;                // _2BC
	PathFinder::Buffer* mPathBuffers;  // _2CC
	u32 mRouteHandle;                  // _2D0
	bool mDoRouteASync;                // _2D4
	s16 mRouteStartWPIdx;              // _2D6
	s16 mRouteGoalWPIdx;               // _2D8
	bool _2DA;                         // _2DA
	s16 mCurrRoutePoint;               // _2DC
	Vector3f mRouteStartPos;           // _2E0
	Vector3f mRouteGoalPos;            // _2EC
	Vector3f mSplineControlPts[4];     // _2F8
	s16 mNumRoutePoints;               // _328
	Creature* mRouteTargetCreature;    // _32C
	u8 _330;                           // _330
	u32 _334;                          // _334
	SmartPtr<Creature> _338;           // _338
	Vector3f* _33C;                    // _33C
	u8 _340;                           // _340
	f32 _344;                          // _344
	f32 _348;                          // _348
	u32 _34C;                          // _34C
	u32 _350;                          // _350
	PaniPikiAnimMgr mPikiAnimMgr;      // _354
	u8 mEmotion;                       // _400
	u8 _401[0x408 - 0x401];            // _401
	u8 _408;                           // _408
	bool mIsCallable;                  // _409
	UpdateContext _40C;                // _40C
	UpdateContext _418;                // _418
	bool mIsOnFire;                    // _424
	u16 _426;                          // _426
	PermanentEffect* _428;             // _428
	BurnEffect* mBurnEffect;           // _42C
	RippleEffect* mRippleEffect;       // _430
	FreeLightEffect* mFreeLightEffect; // _434
	SlimeEffect* mSlimeEffect;         // _438
	u32 mPlayerId;                     // _43C
	Vector3f _440;                     // _440
	Vector3f _44C;                     // _44C
	Vector3f mCatchPos;                // _458
	Vector3f mEffectPos;               // _464
	u8 mWantToStick;                   // _470
	u8 _471[0x48C - 0x471];            // _471
	f32 _48C;                          // _48C
	PikiStateMachine* mFSM;            // _490
	u8 _494[0x4];                      // _494
	f32 mFlickIntensity;               // _498, knockback? impulse velocity magnitude?
	f32 mRotationAngle;                // _49C
	u8 _4A0;                           // _4A0
	CollPart* mSwallowMouthPart;       // _4A4
	Creature* mLeaderCreature;         // _4A8, maybe puffstool/kinoko leader?
	Vector3f mPluckVelocity;           // _4AC
	int _4B8;                          // _4B8
	Vector3f _4BC;                     // _4BC
	Vector3f _4C8;                     // _4C8
	u8 _4D4[0x8];                      // _4D4, unknown
	u32 _4DC;                          // _4DC, unknown
	u8 _4E0[0x4F8 - 0x4E0];            // _4E0, unknown
	TopAction* mActiveAction;          // _4F8, may be just Action*
	u16 mMode;                         // _4FC, use PikiMode enum
	SmartPtr<Creature> _500;           // _500
	Navi* mNavi;                       // _504
	u8 _508[0x4];                      // _508
	Colour _50C;                       // _50C
	u16 mColor;                        // _510, red/yellow/blue
	u8 _512[0x518 - 0x512];            // _4FC
	u8 _518;                           // _518
	u8 _519;                           // _519
	u8 _51A[0x520 - 0x51A];            // _51A
	int mHappa;                        // _520, leaf/bud/flower
	u16 _524;                          // _524, might be s16
	u8 _526[0x52C - 0x526];            // _524, unknown
	AState<Piki>* mCurrentState;       // _52C
	Colour _530;                       // _530
	Colour _534;                       // _534
	u8 _538[0x4];                      // _538, unknown
	SearchData mPikiSearchData[6];     // _53C
	bool mEraseKill;                   // _584
};

/**
 * @brief TODO
 */
struct PikiShapeObject {
	PikiShapeObject(Shape*);

	void exitCourse();

	static AnimMgr* getAnimMgr();
	static void init();
	static void initOnce();

	// unused/inlined:
	void create(int);

	static bool firstTime;
	static PikiShapeObject* _instances[4];

	Shape* mShape;          // _00
	AnimContext mAnimatorA; // _04
	AnimContext mAnimatorB; // _14
	AnimMgr* mAnimMgr;      // _24
};

#endif
