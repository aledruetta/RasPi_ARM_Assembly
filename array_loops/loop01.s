/* file: loop01.s */

	.text
	.global main
main:
	mov	r1, #0		@ i <- 0
	ldr	r2, =array	@ r2 <- &array

loop1:
	lsl	r3, r1, #2	@ r3 <- r1 * 2^2
	str	r1, [r2, r3]	@ array[r1] <- r1

	add	r1, r1, #1	@ r1++
	cmp	r1, #10		@ compare by (r1 - 10)
	blt	loop1		@ r1 - 10 == 0?

end:
	bx	lr

	.data
array:	.skip	10 * 4		@ 10 words array
