.global _start

_start:

	mov	r2, #0x6e3a	@ movimenta a constante para 2 bytes menos significativos
	movt	r2, #0x4f5d	@ movimenta a constante para 2 bytes mais significativos
				@ o resultado vai ser 4f5d6e3a

	mov	r7, #1
	svc 0

