extern printf

section .data
	out: db "%d",10,0

section .text 

	global main
	
	main:
	push ebp
	mov ebp, esp

	mov ebx,0
	L1:
	add ebx,1
	push ebx
	push out
	call printf
	cmp ebx,10
	jl L1
	
	leave
	ret
