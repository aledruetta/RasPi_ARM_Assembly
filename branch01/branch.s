/* file: branch.s */

	.text
	.global main
main:
	mov	r1, #2		@ r1 <- 2
	mov	r2, #5		@ r2 <- 5

	cmp	r1, r2		@ compare by r1 - r2
	bne	else		@ if not equals

	mov	r0, #0		@ r0 <- 0
	b	end

else:
	mov	r0, #1		@ r0 <- 1
end:
	bx	lr
