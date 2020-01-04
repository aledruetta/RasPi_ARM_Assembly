/* file: sum01.s
 * use `./a.out ; echo $?` for visualize the return value
 */

.global	main
.func	main

main:
	mov	r1, #3
	mov	r2, #4
	add	r0, r1, r2
	bx	lr
