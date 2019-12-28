@ Program 2: Factorial calculation
@ Use: display/x $r2, $r3 and $cpsr, for watch registers

	.global _start

_start:

	mov	r2, #10		@ i=10
	mov	r3, #1		@ j=1

loop:

	cmp	r2, #0		@ i > 0
	mulgt	r3, r2, r3	@ j = i*j
	subgt	r2, r2, #1	@ i--
	bgt	loop

	mov	r7, #1
	svc	0
