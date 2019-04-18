	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	__Z8multiplyii          ## -- Begin function _Z8multiplyii
	.p2align	4, 0x90
__Z8multiplyii:                         ## @_Z8multiplyii
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	imul	edi, esi
	xor	eax, eax
	test	esi, esi
	cmovg	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	sub	rsp, 16
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	rdi, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	mov	esi, 6
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	mov	rbx, rax
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rax - 24]
	add	rsi, rbx
	lea	r14, [rbp - 24]
	mov	rdi, r14
	call	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	mov	rdi, r14
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
## %bb.1:
	mov	rcx, qword ptr [rax]
Ltmp2:
	mov	esi, 10
	mov	rdi, rax
	call	qword ptr [rcx + 56]
Ltmp3:
## %bb.2:
	mov	r14d, eax
	lea	rdi, [rbp - 24]
	call	__ZNSt3__16localeD1Ev
	movsx	esi, r14b
	mov	rdi, rbx
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	rdi, rbx
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	xor	eax, eax
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	rbp
	ret
LBB1_3:
Ltmp4:
	mov	rbx, rax
Ltmp5:
	lea	rdi, [rbp - 24]
	call	__ZNSt3__16localeD1Ev
Ltmp6:
## %bb.4:
	mov	rdi, rbx
	call	__Unwind_Resume
	ud2
LBB1_5:
Ltmp7:
	mov	rdi, rax
	call	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0            ##   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0     ##     jumps to Ltmp4
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Ltmp5-Ltmp3            ##   Call between Ltmp3 and Ltmp5
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0     ## >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp5            ##   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0     ##     jumps to Ltmp7
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp6-Lfunc_begin0     ## >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp6       ##   Call between Ltmp6 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	push	rax
	call	___cxa_begin_catch
	call	__ZSt9terminatev
                                        ## -- End function

.subsections_via_symbols
