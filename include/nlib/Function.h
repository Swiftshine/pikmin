#ifndef _NLIB_FUNCTION_H
#define _NLIB_FUNCTION_H

#include "types.h"

struct NVector3f;

/**
 * @brief TODO
 */
struct NFunction {
	virtual f32 getValue(f32) = 0; // _08

	// TODO: members
};

/**
 * @brief TODO
 */
struct NPolynomialFunction : public NFunction {
	NPolynomialFunction(f32*, int);                  // unused/inlined
	NPolynomialFunction(f32*, NPolynomialFunction&); // unused/inlined

	virtual f32 getValue(f32); // _08
	virtual void println();    // _0C

	void construct(f32*, int);

	// unused/inlined:
	void construct(f32*, NPolynomialFunction&);
	void mul2(NPolynomialFunction&, NPolynomialFunction&);
	void getCoefficient(int);

	// TODO: members
};

/**
 * @brief TODO
 */
struct NLinearFunction : public NPolynomialFunction {
	NLinearFunction(f32*); // unused/inlined

	// unused/inlined:
	void construct(f32*);
	void makeLinearFunction(f32, f32, f32, f32);

	// TODO: members
};

/**
 * @brief TODO
 */
struct NClampLinearFunction : public NLinearFunction {
	NClampLinearFunction(f32*);

	virtual f32 getValue(f32); // _08
	virtual void println();    // _0C

	void construct(f32*);
	void makeClampLinearFunction(f32, f32, f32, f32);

	// TODO: members
};

/**
 * @brief TODO
 */
struct NVibrationFunction : public NFunction {
	NVibrationFunction();

	virtual f32 getValue(f32); // _08

	void makeVibrationFunction(f32, f32, f32);

	// TODO: members
};

/**
 * @brief TODO
 */
struct NFunction3D {
	NFunction3D(); // unused/inlined

	void outputPosition(f32, NVector3f&);

	// unused/inlined:
	void construct(NFunction*, NFunction*, NFunction*);

	// TODO: members
};

#endif