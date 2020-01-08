/* file: loop01.s */

	.text
	.global main
	ix .req r1
main:
	ldr	r2, =array	@ r2 <- &array
	mov	ix, #0		@ i <- 0


loop1:	@ store numbers
	lsl	r3, ix, #2	@ r3 <- r1 * 2^2
	str	ix, [r2, r3]	@ array[i] <- r1

	add	ix, ix, #1	@ r1++
	cmp	ix, #10		@ compare by (r1 - 10)
	blt	loop1		@ r1 - 10 == 0?


	mov	ix, #0		@ i <- 0
	mov	r0, #0		@ return_value <- 0
loop2:	@ load numbers
	lsl	r3, ix, #2	@ r3 <- r1 * 2^2
	ldr	r4, [r2, r3]	@ r4 <- array[i]
	add	r0, r0, r4	@ accumulate

	add	ix, ix, #1	@ r1++
	cmp	ix, #10		@ compare by (r1 - 10)
	blt	loop2		@ r1 - 10 == 0?

end:
	bx	lr

	.data
array:	.skip	10 * 4		@ 10 words array
