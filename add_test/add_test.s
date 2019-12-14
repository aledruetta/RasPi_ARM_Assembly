	.global _start

_start:
	@ r0 is the return register (echo $?)
	@ two's complement
	mvn	r0, #2	@ one's complement
	add	r0, #1	@ add 1

	mov	r7, #1	@ service command code 1
	svc	0	@ call Linux to terminate
