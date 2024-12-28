#ifndef _PVW_H
#define _PVW_H

#include "types.h"

struct Colour;
struct Matrix4f;
struct RandomAccessStream;
struct ShortColour;
struct Vector3f;

/**
 * @brief TODO
 */
struct PVWKeyInfoU8 {
	u8 _00;  // _00
	f32 _04; // _04
	f32 _08; // _08
};

/**
 * @brief TODO
 */
struct PVWKeyInfoS10 {
};

struct PVWKeyInfoF32 {
	f32 _00; // _00
	f32 _04; // _04
	f32 _08; // _08
};

/**
 * @brief TODO
 * @note Size: 0xC.
 */
struct PVWLightingInfo {
	PVWLightingInfo()
	{
		_04 = 1;
		_00 = 1;
		_08 = 50.0f;
	}

	void read(RandomAccessStream&);

	u32 _00; // _00
	u32 _04; // _04
	f32 _08; // _08
};

struct AKeyInfo {
	AKeyInfo(f32 pos, f32 val, f32 inTan, f32 outTan)
	    : mKeyframePosition(pos)
	    , mValue(val)
	    , mEndTangent(inTan)
	    , mStartTangent(outTan)
	{
	}

	f32 mKeyframePosition; // _00
	f32 mValue;            // _04
	f32 mEndTangent;       // _08
	f32 mStartTangent;     // _0C
};

template <typename T>
struct PVWAnimInfo1 {
	int mSize;     // _00
	T* mKeyframes; // _04

	void read(RandomAccessStream& stream)
	{
		mSize = stream.readInt();

		if (!mSize) {
			return;
		}

		mKeyframes = new T[mSize];
		for (int i = 0; i < mSize; i++) {
			mKeyframes[i].read(stream);
		}
	}
};

template <typename T>
struct PVWAnimInfo3 {
	int mSize;        // _00
	T* mKeyframes[3]; // _04

	void read(RandomAccessStream& stream)
	{
		mSize = stream.readInt();

		if (!mSize) {
			return;
		}

		mKeyframes = new T[mSize];
		for (int i = 0; i < mSize; i++) {
			for (int j = 0; j < mSize; ++j) {
				mKeyframes[i][j].read(stream);
			}
		}
	}
};

/**
 * @brief TODO
 * @note Size: 0x8.
 */
struct PVWColourAnimInfo {
	void extract(f32, Colour&);

	u32 mTotalFrameCount;                  // _00
	PVWAnimInfo3<PVWKeyInfoU8>* mAnimInfo; // _04
};

/**
 * @brief TODO
 *
 */
struct PVWAlphaAnimInfo {
	void extract(f32, Colour&);

	u32 mTotalFrameCount;                  // _00
	PVWAnimInfo1<PVWKeyInfoU8>* mAnimInfo; // _04
};

/**
 * @brief A class that contains information about a polygon's colour during animation.
 * @note Size: 0x20.
 */
struct PVWPolygonColourInfo : public Colour {
	PVWPolygonColourInfo() { mCurrentFrame = 0.0f; }

	void animate(f32*, Colour&);

	u32 mTotalFrameCount;          // _04
	f32 mSpeed;                    // _08
	PVWColourAnimInfo mColourInfo; // _0C
	PVWAlphaAnimInfo mAlphaInfo;   // _14
	f32 mCurrentFrame;             // _1C
};

/**
 * @brief TODO
 */
struct PVWColourShortAnimInfo {
	void extract(f32, ShortColour&);
};

/**
 * @brief TODO
 */
struct PVWAlphaShortAnimInfo {
	void extract(f32, ShortColour&);
};

/**
 * @brief TODO
 */
struct PVWTexAnimInfo {
	void extract(f32, Vector3f&);
};

struct PVWTextureData;
struct PVWTexGenData;

/**
 * @brief TODO
 * @note Size: 0x24.
 */
struct PVWTextureInfo {
	PVWTextureInfo()
	{
		mTevStageCount   = 0;
		mTexGenDataCount = 0;
	}

	void read(RandomAccessStream&);

	Vector3f _00;                 // _00
	u32 mTextureDataCount;        // _0C
	u32 mTexGenDataCount;         // _10
	u32 _14;                      // _14
	u32 mTevStageCount;           // _18
	PVWTextureData* mTextureData; // _1C
	PVWTexGenData* mTexGenData;   // _20
};

/**
 * @brief TODO
 */
struct PVWTevInfo {
};

/**
 * @brief TODO
 */
struct PVWTextureData {
	PVWTextureData();

	void animate(f32*, Matrix4f&);
	void read(RandomAccessStream&);
};

/**
 * @brief TODO
 */
struct PVWTexGenData {
	// unused/inlined:
	void read(RandomAccessStream&);
};

/**
 * @brief TODO
 */
struct PVWTevColReg {
	PVWTevColReg();

	void animate(f32*, ShortColour&);
};

/**
 * @brief TODO
 */
struct PVWTevStage {
	void read(RandomAccessStream&);
};

/**
 * @brief TODO
 * @note Size: 0x10.
 */
struct PVWPeInfo {
	void read(RandomAccessStream&);

	u32 _00;                // _00
	u32 mAlphaCompareFlags; // _04
	u32 mDepthTestFlags;    // _08
	u32 mBlendModeFlags;    // _0C
};

#endif
