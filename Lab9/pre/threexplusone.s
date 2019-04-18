; threexplusone.s
;
; Purpose : This file contains the implementation of the Collatz conjecture
;
; Parameter 1 (in rdi) is the number that you are inputting into the conjecture
;
; Optimization : 
;	- Used the lea instruction to quickly apply the odd function
;	- Instead of divide, used bit shift right 
;	- Instead of 3*rdi, used [2*rdi + rdi], as the later can use a shift
;	- Avoided the use of push and pop
;

	global threexplusone

	section .text

threexplusone:
	xor rax, rax			; zero out the return register
start:
	cmp rdi, 1				; check if parameter is equal to one
	je done					; jump to end if condition is met
	test rdi, 1				; check if parameter is even
	jz even					; if one, jump to even
	jmp odd					; jump to odd
even:
	shr rdi, 1				; bit shift right to devide by two
	call threexplusone 		; recursive
	inc rax 				; increment counter
	ret 					; end call
odd:
	lea rdi, [2*rdi + rdi]	; multiply by two and add itself
	inc rdi					; increment by one
	call threexplusone 		; recursive
	inc rax					; increment counter
	ret 					; end call
done:
	ret 					; return