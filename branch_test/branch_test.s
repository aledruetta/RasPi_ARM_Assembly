	.global _start

_start:
	mov	r4, #22
	cmp	r4, #45		@ compare by substraction
	beq	_start		@ if result iquals zero then jump

	mov	r7, #1
	svc	0
