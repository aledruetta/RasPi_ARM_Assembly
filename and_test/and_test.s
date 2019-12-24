	.global _start

_start:

	mov	r6, #0x5678
	movt	r6, #0x1234
	and	r5, r6, #0xff000000
	lsr	r5, #24

	mov	r7, #1
	svc	0
