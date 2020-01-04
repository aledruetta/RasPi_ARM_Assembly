/* file: first.s */

	.global	main		@ entry point must be global
	.func	main		@ main is a function

main:
	mov	r0, #2		@ put 2 into r0
	bx	lr		@ return from main
