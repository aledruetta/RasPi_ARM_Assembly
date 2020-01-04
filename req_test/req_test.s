	.global _start

num_a	.req r0		@ register aliases
num_b	.req r1

_start:	.text

	mov	num_a, #5	@ using aliases
	mov	num_b, #7
	add	num_a, num_a, num_b

	mov	r7, #1
	svc	0

