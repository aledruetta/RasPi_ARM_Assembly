	.global _start

_start:
	mov	r2, #0x00000003
	mov	r3, #0xffffffff
	mov	r4, #0x00000005
	mov	r5, #0x00000001

	adds	r1, r3, r5	@ add with status flags
	adc	r0, r2, r4	@ add with carry

	mov	r7, #1
	svc	0
