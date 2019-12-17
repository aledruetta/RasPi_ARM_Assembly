	.global _start

_start:
	mov	r2, #1		@ i = 1

loop1:
	add	r2, #1		@ i++
	cmp	r2, #10		@ compares
	ble	loop1		@ branch if less or equal

	mov	r2, #10		@ i = 10
loop2:
	subs	r2, #1		@ i-- and activate status
	bne	loop2		@ branch if not equal

	mov	r7, #1
	svc	0
