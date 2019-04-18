; Yubin Lim yl2vv
; mathlib.s
; March 25, 2019
; CS2150 - 103

	global product
	global power

	section .text

product: 
	xor rax, rax
	xor r10, r10
start:
	cmp r10, rsi
	je done
	add rax, rdi
	inc r10
	jmp start
done:
	ret

power:
	xor rax, rax
begin:
	cmp rsi, 0
	je end
	push rdi
	dec rsi
	call power
	pop rdi
	mov rsi, rax
	call product
	ret
end:
	mov rax, 1
	ret
