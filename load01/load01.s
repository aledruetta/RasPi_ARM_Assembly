/* file: load01.s */

	.data		@ data section
	.balign	4
myvar1:
	.word	3	@ 4 bytes, value = 3
	.balign 4
myvar2:
	.word	4	@ 4 bytes, value = 4

	.text		@ code section
	.balign 4
	.global	main
main:
	ldr	r1, addr_of_myvar1	@ load address
	ldr	r1, [r1]		@ load value at address
	ldr	r2, addr_of_myvar2
	ldr	r2, [r2]
	add	r0, r1, r2
	bx	lr			@ function return

addr_of_myvar1:	.word myvar1
addr_of_myvar2:	.word myvar2
