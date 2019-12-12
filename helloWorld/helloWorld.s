.global _start

_start:
	mov r0, #1
	ldr r1, =helloworld
	mov r2, #14
	mov r7, #4
	svc 0

	mov r0, #0
	mov r7, #1
	svc 0

.data
	helloworld:	.ascii "Hello, World!\n"
