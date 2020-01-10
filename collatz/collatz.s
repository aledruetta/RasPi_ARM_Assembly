/* file: collatz.s */

.global	main
.text

main:
	mov	r3, #23		@ n <- some number
	mov	r0, #0		@ number of steps

loop:
	cmp	r3, #1
	beq	end		@ if r3 == 1: end_while

	and	r4, r3, #1	@ r4 <- mask LSB
	cmp	r4, #0
	bne	odd		@ if r4 != 0: else_odd
	lsr	r3, #1		@ r3 <- r3 / 2
	b	end_loop

odd:
	add	r4, r3, #1	@ temp r4 <- r3
	lsl	r3, #1		@ r3 <- r3 * 2
	add	r3, r3, r4	@ r3 <- r3 + (r3 * 2)

end_loop:
	add	r0, r0, #1	@ increment steps
	b	loop

end:
	bx	lr
