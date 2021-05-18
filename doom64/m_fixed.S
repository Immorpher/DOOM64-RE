//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2014-2021 Jason Martin (jnmartin84)
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	Fixed point implementation.
//
#include "mips.h"
#define	FRACBITS	16

//
// FixedDiv
//
// 16.16 Fixed-point divide.
//
/*fixed_t FixedDiv(fixed_t a, fixed_t b)*/
	.global FixedDiv2
	.global	FixedDiv
	.ent	FixedDiv2
	.ent	FixedDiv
	.type	FixedDiv2, @function
	.type	FixedDiv, @function
	.set	noreorder
	.set	nomacro
	.align 3
FixedDiv2:
FixedDiv:
// this is all of the argument test code that 
// is in the C version but it is pretty much 
// unnecessary from experience with 64Doom port
// and here
/*	xor	t5,	a0,	a1
	sra	t0,	a0,	31
	sra	t2,	a1,	31
	xor	t1,	a0,	t0
	xor	t3,	a1,	t2
	subu	t1,	t1,	t0
	subu	t3,	t3,	t2
	sra	t1,	t1,	14
	slt	t4,	t3,	t1
	bne	t4,	zero,	_FixedDiv_test
	*/
	dsll	a0,	a0,	FRACBITS
/*_FixedDiv_work:*/
	ddiv	zero,	a0,	a1
//	teq	a1,zero,0x7
	jr	ra
	mflo	v0
/*_FixedDiv_test:
	bltz	t5,	_FixedDiv_return_INT_MIN
	lui	v0,	0x7FFF
	jr	ra
	ori	v0,	v0,	0xFFFF
_FixedDiv_return_INT_MIN:
	jr	ra
	lui	v0,	0x8000
*/
	.set	macro
	.set	reorder
	.end	FixedDiv
	.size   FixedDiv, .-FixedDiv

/*fixed_t FixedMul(fixed_t a, fixed_t b)*/
	.global	FixedMul
	.ent	FixedMul
	.type	FixedMul, @function
	.set	noreorder
	.set	nomacro
	.align 3
FixedMul:
	dmultu	a1,	a0
	mflo	v0
	jr	ra
	dsra	 v0, 16

	.set	macro
	.set	reorder
	.end	FixedMul
	.size   FixedMul, .-FixedMul