@ Swap register contents

	.global _start

_start:
	.text

	ldr	r0, =0xf631024c		@ load
	ldr	r1, =0x17539abd
	eor	r0, r0, r1		@ exclusive or
	eor	r1, r0, r1
	eor	r0, r0, r1

	mov	r7, #1
	svc	0
