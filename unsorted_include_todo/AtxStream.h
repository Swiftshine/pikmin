#ifndef _ATXSTREAM_H
#define _ATXSTREAM_H

/**
 * .obj __vt__9AtxStream, global
 * .4byte __RTTI__9AtxStream
 * .4byte 0
 * .4byte readInt__6StreamFv
 * .4byte readByte__6StreamFv
 * .4byte readShort__6StreamFv
 * .4byte readFloat__6StreamFv
 * .4byte readString__6StreamFPci
 * .4byte readString__6StreamFR6String
 * .4byte readString__6StreamFv
 * .4byte writeInt__6StreamFi
 * .4byte writeByte__6StreamFUc
 * .4byte writeShort__6StreamFs
 * .4byte writeFloat__6StreamFf
 * .4byte writeString__6StreamFPc
 * .4byte writeString__6StreamFR6String
 * .4byte read__9AtxStreamFPvi
 * .4byte write__9AtxStreamFPvi
 * .4byte getPending__9AtxStreamFv
 * .4byte getAvailable__6StreamFv
 * .4byte close__9AtxStreamFv
 * .4byte getClosing__6StreamFv
 * .4byte flush__9AtxStreamFv
 */

struct Stream {
	virtual void readInt();              // _08
	virtual void readByte();             // _0C
	virtual void readShort();            // _10
	virtual void readFloat();            // _14
	virtual void readString(char*, int); // _18
	virtual void readString(String&);    // _1C
	virtual void readString();           // _20
	virtual void writeInt(int);          // _24
	virtual void writeByte(u8);          // _28
	virtual void writeShort(s16);        // _2C
	virtual void writeFloat(f32);        // _30
	virtual void writeString(char*);     // _34
	virtual void writeString(String&);   // _38
	virtual void read(void*, int);       // _3C
	virtual void write(void*, int);      // _40
	virtual void getPending();           // _44
	virtual void getAvailable();         // _48
	virtual void close();                // _4C
	virtual void getClosing();           // _50 (weak)
};

/**
 * @brief TODO
 */
struct AtxStream : public Stream {
	virtual void read(void*, int);  // _3C
	virtual void write(void*, int); // _40
	virtual void getPending();      // _44
	virtual void close();           // _4C
	virtual void flush();           // _54
};

#endif