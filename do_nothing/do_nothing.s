@ file: do_nothing.s

	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

	.text
	.align	2
	.global main
	.type	main, %function

main:
	str	fp, [sp, -4]!
	add	fp, sp, 0
	mov	r3, 0
	mov	r0, r3
	sub	sp, fp, 0
	ldr	fp, [sp], 4
	bx	lr
