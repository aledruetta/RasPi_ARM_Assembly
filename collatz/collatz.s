/* file: collatz.s */

.global	main
.text

main:
	mov	r3, #22		@ n <- 22

loop:
	cmp	r3, #1
	beq	end_loop	@ if r3 == 1: end_while

	and	r4, r3, #1	@ r4 <- mask LSB
	cmp	r4, #0
	bne	odd		@ if r4 != 0: else_odd
	lsr	r3, #1		@ r3 <- r3 / 2
	b	loop

odd:
	add	r4, r3, #1	@ temp r4 <- r3
	lsl	r3, #1		@ r3 <- r3 * 2
	add	r3, r3, r4	@ r3 <- r3 + (r3 * 2)
	b	loop

end_loop:
	mov r0, r3
	bx	lr
