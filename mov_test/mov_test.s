	.global _start

_start:

	mov	r2, #0x6e3a	@ movimenta a constante para 2 bytes menos significativos
	movt	r2, #0x4f5d	@ movimenta a constante para 2 bytes mais significativos
				@ o resultado vai ser 4f5d6e3a

	mov	r3, r2		@ movimenta o conteudo de r2 para r3

	mov	r2, #8
	mov	r3, r2, LSL #1	@ Logical shift left
	mov	r3, r2, LSR #1	@ Logical shift right
	mov	r3, r2, ASR #1	@ Arithmetic shift right
	mov	r3, r2, ROR #1	@ Rotate right
	mov	r3, r2, RRX	@ Rotate extended right

	mvn	r3, #45		@ Move and NOT

	mov	r0, #0
	mov	r7, #1
	svc 0

