#ifndef _BUILDINGITEM_H
#define _BUILDINGITEM_H

#include "types.h"
#include "ItemMgr.h"
#include "CreatureProp.h"
#include "UtEffect.h"
#include "SoundMgr.h"

struct ItemShapeObject;
struct SimpleAI;
struct WayPoint;

/**
 * @brief TODO
 *
 * @note Size: 0x58.
 */
struct BuildingItemProp : public CreatureProp {
	inline BuildingItemProp()
	{
		mCreatureProps.mFriction.mValue     = 0.1f;
		mCreatureProps.mBounceFactor.mValue = 0.8f;
	}

	// _54     = VTBL
	// _00-_58 = CreatureProp
};

/**
 * @brief TODO.
 *
 * @note Size: 0x8CC.
 */
struct BuildingItem : public ItemCreature {
	BuildingItem(int objType, CreatureProp* props, ItemShapeObject* shape, SimpleAI* ai);

	virtual bool insideSafeArea(Vector3f&);   // _10
	virtual void startAI(int);                // _34
	virtual f32 getiMass();                   // _38 (weak)
	virtual void doStore(CreatureInf*);       // _48
	virtual void doRestore(CreatureInf*);     // _4C
	virtual void doSave(RandomAccessStream&); // _50
	virtual void doLoad(RandomAccessStream&); // _54
	virtual f32 getBoundingSphereRadius();    // _64
	virtual bool isAlive()                    // _88
	{
		return _440 > _444;
	}
	virtual bool needShadow();         // _90 (weak)
	virtual void update();             // _E0
	virtual void refresh(Graphics&);   // _EC
	virtual void refresh2d(Graphics&); // _F0
	virtual void doKill();             // _10C
	virtual void playEffect(int);      // _12C
	virtual bool isCompleted()         // _15C
	{
		return _444 >= _440;
	}

	void startBreakEffect();
	void stopBreakEffect();

	// _00      = VTBL
	// _00-_3C8 = ItemCreature
	u32 _3C8;                 // _3C8, unknown
	u32 _3CC;                 // _3CC, unknown
	u32 _3D0;                 // _3D0, unknown
	u32 _3D4;                 // _3D4, unknown
	PermanentEffect _3D8;     // _3D8
	PermanentEffect _3E8;     // _3E8
	u8 _3F8[0x43C - 0x3F8];   // _3F8, unknown
	u32 _43C;                 // _43C, unknown
	int _440;                 // _440
	int _444;                 // _444
	Vector3f _448;            // _448
	WayPoint* mWayPoint;      // _454
	CollInfo mBuildCollision; // _458
	CollPart mBuildParts[10]; // _46C
	u8 _87C[0x8A4 - 0x87C];   // _87C, unknown
	SeContext mBuildSFX;      // _8A4
};

#endif
