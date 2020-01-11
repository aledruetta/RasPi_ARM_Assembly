/* file: cond_codes.s */

.text
.global main

main:
	/* NZCV=0110 (6)
	   Z=1	-> EQ	equal
	   Z!=0 -> LS	lower or same
	   C=1	-> HS	higher or same */
	mov	r1, #1
	mov	r2, #1
	cmp	r1, r2	@ 1 - 1 = 0

	/* NZCV=0010 (2)
	   Z=0		-> NE	not equal
	   C=1		-> HS	higher or same
	   Z=0 & C=1	-> HI	higher */
	mov	r1, #2
	mov	r2, #1
	cmp	r1, r2	@ 2 - 1 = 1

	/* NZCV=1000 (8) signed number
	   N=1	-> result is a negative number
	   Z=0	-> NE	not equal
	   N!=V -> LT	less than
	 */
	mov	r1, #1
	mov	r2, #2
	cmp	r1, r2	@ 1 - 2 = -1

end:
	mov	r0, #0
	bx	lr
