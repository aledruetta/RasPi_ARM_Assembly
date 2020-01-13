.text
.global main

main:
	mov	r3, #0xef12
	movt	r3, #0xabcd
	mov	r0, #0

end:
	bx	lr
