	.global _start

_start:
	mov	r4, #0		@ reg = 0

loop:
	cmp	r4, #10		@ compares
	bge	loopdone	@ branch if greatest or equal
	add	r4, #1		@ reg++
	b	loop		@ loop

loopdone:
	mov	r7, #1
	svc	0
