#ifndef _GEOMETRY_H
#define _GEOMETRY_H

#include "types.h"
#include "Vector.h"

struct Sphere;

/**
 * @brief A representation of a cylinder in 3D space.
 */
struct Cylinder {
	Cylinder(Vector3f& startPoint, Vector3f& endPoint, f32 radius = 1.0f)
	    : mStartPoint(startPoint)
	    , mEndPoint(endPoint)
	    , mRadius(radius)
	{
	}

	f32 get2dDist(Vector3f& point);
	bool collide(const Sphere& sphere, Vector3f& pushVector, f32& depth);
	f32 getPosRatio(const Vector3f& point); // 0-1 along the cylinder axis

	Vector3f mStartPoint; // _00
	Vector3f mEndPoint;   // _0C
	f32 mRadius;          // _18
};

/**
 * @brief TODO
 */
struct RectArea {
	inline RectArea(int x0, int y0, int x1, int y1)
	{
		mMinX = x0;
		mMinY = y0;
		mMaxX = x1;
		mMaxY = y1;
	}

	inline RectArea()
	{
		mMinX = 0;
		mMinY = 0;
		mMaxX = 0;
		mMaxY = 0;
	}

	int mMinX; // _00
	int mMinY; // _04
	int mMaxX; // _08
	int mMaxY; // _0C
};

/**
 * @brief TODO
 */
struct Sphere {
	Sphere(Vector3f& centre, f32 radius)
	    : mCentre(centre)
	    , mRadius(radius)
	{
	}

	Vector3f mCentre; // _00
	f32 mRadius;      // _04
};

/**
 * @brief TODO
 */
struct Tube {
	// DLL inlines to do:
	Tube(Vector3f& start, Vector3f& end, f32 startRad, f32 endRad)
	    : mStartPoint(start)
	    , mEndPoint(end)
	    , mStartRadius(startRad)
	    , mEndRadius(endRad)
	{
	}

	Tube() { } // TODO: check this

	f32 getYRatio(f32 heightToCheck);
	bool collide(const Sphere&, Vector3f&, f32&);
	f32 getPosRatio(const Vector3f&);
	void getPosGradient(Vector3f&, f32, Vector3f&, Vector3f&);
	Vector3f setPos(f32);

	// unused/inlined:
	f32 getRatioRadius(f32);

	// TODO: members
	Vector3f mStartPoint; // _00
	Vector3f mEndPoint;   // _0C
	f32 mStartRadius;     // _18
	f32 mEndRadius;       // _1C
};

#endif
