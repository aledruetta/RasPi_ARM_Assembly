	.global _start

_start:
	@ logical shift left twice

	mov	r0, #0x11	@ 0x11
	lsl	r1, r0, #1	@ 0x22
	lsl	r2, r1, #1	@ 0x44

loop:	b	loop		@ infinite loop

	mov	r7, #1
	svc	0
