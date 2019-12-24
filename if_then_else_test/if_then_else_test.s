	.global _start

_start:
	mov	r4, #7

	cmp	r4, #10
	bge	elseclause

	mov	r5, #1
	b	endif

elseclause:

	mov	r5, #0

endif:

	mov	r7, #1
	svc	0
