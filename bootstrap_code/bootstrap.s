@ file: bootstrap.s
@ description: etc

@ Define Platform
	.cpu	cortex-a53
	.fpu	neon-fp-armv8
	.syntax	unified

@ Program code
	.text
	.align	2
	.global main
	.type	main, %function

main:
	@ main code

end:
	bx	lr
