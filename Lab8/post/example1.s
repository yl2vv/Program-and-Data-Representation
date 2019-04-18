	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	__Z7plusOnei            ## -- Begin function _Z7plusOnei
	.p2align	4, 0x90
__Z7plusOnei:                           ## @_Z7plusOnei
	.cfi_startproc
## %bb.0:
	mov	dword ptr [rsp - 4], edi
	mov	edi, dword ptr [rsp - 4]
	mov	eax, edi
	add	eax, 1
	mov	dword ptr [rsp - 4], eax
	mov	eax, edi
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z9characterc          ## -- Begin function _Z9characterc
	.p2align	4, 0x90
__Z9characterc:                         ## @_Z9characterc
	.cfi_startproc
## %bb.0:
	mov	al, dil
	mov	byte ptr [rsp - 1], al
	movsx	eax, byte ptr [rsp - 1]
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z6float_f             ## -- Begin function _Z6float_f
	.p2align	4, 0x90
__Z6float_f:                            ## @_Z6float_f
	.cfi_startproc
## %bb.0:
	movss	dword ptr [rsp - 4], xmm0
	movss	xmm0, dword ptr [rsp - 4] ## xmm0 = mem[0],zero,zero,zero
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7double_d            ## -- Begin function _Z7double_d
	.p2align	4, 0x90
__Z7double_d:                           ## @_Z7double_d
	.cfi_startproc
## %bb.0:
	movsd	qword ptr [rsp - 8], xmm0
	movsd	xmm0, qword ptr [rsp - 8] ## xmm0 = mem[0],zero
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z12characterRefRc     ## -- Begin function _Z12characterRefRc
	.p2align	4, 0x90
__Z12characterRefRc:                    ## @_Z12characterRefRc
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	movsx	eax, byte ptr [rdi]
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z8floatRefRf          ## -- Begin function _Z8floatRefRf
	.p2align	4, 0x90
__Z8floatRefRf:                         ## @_Z8floatRefRf
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	movss	xmm0, dword ptr [rdi]   ## xmm0 = mem[0],zero,zero,zero
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z9doubleRefRd         ## -- Begin function _Z9doubleRefRd
	.p2align	4, 0x90
__Z9doubleRefRd:                        ## @_Z9doubleRefRd
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	movsd	xmm0, qword ptr [rdi]   ## xmm0 = mem[0],zero
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z6retRefRi            ## -- Begin function _Z6retRefRi
	.p2align	4, 0x90
__Z6retRefRi:                           ## @_Z6retRefRi
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	eax, dword ptr [rdi]
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z6retPoiPi            ## -- Begin function _Z6retPoiPi
	.p2align	4, 0x90
__Z6retPoiPi:                           ## @_Z6retPoiPi
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	eax, dword ptr [rdi]
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7plusTwoi            ## -- Begin function _Z7plusTwoi
	.p2align	4, 0x90
__Z7plusTwoi:                           ## @_Z7plusTwoi
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	dword ptr [rsp + 4], edi
	mov	edi, dword ptr [rsp + 4]
	call	__Z7plusOnei
	add	eax, 1
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3add6Object          ## -- Begin function _Z3add6Object
	.p2align	4, 0x90
__Z3add6Object:                         ## @_Z3add6Object
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	rax, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	mov	qword ptr [rsp + 16], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 16] ## 8-byte Reload
	call	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	mov	qword ptr [rsp + 8], rax ## 8-byte Spill
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ## -- Begin function _ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	4, 0x90
__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
## %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	rdi, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 16], rdi ## 8-byte Spill
	mov	rdi, rsi
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	mov	rdi, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 8], rax ## 8-byte Spill
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	mov	rdi, qword ptr [rsp + 16] ## 8-byte Reload
	mov	rsi, qword ptr [rsp + 8] ## 8-byte Reload
	mov	rdx, rax
	call	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	rsp, 40
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z1aPi                 ## -- Begin function _Z1aPi
	.p2align	4, 0x90
__Z1aPi:                                ## @_Z1aPi
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	dword ptr [rdi], 1
	mov	rdi, qword ptr [rsp - 8]
	mov	dword ptr [rdi + 4], 2
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	sub	rsp, 168
	.cfi_def_cfa_offset 176
	mov	qword ptr [rsp + 160], rdi
	mov	qword ptr [rsp + 152], rsi
	mov	qword ptr [rsp + 144], rdx
	mov	rsi, qword ptr [rsp + 160]
Ltmp0:
	lea	rdi, [rsp + 128]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp1:
	jmp	LBB13_1
LBB13_1:
Ltmp2:
	lea	rdi, [rsp + 128]
	call	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
Ltmp3:
	mov	byte ptr [rsp + 95], al ## 1-byte Spill
	jmp	LBB13_2
LBB13_2:
	mov	al, byte ptr [rsp + 95] ## 1-byte Reload
	test	al, 1
	jne	LBB13_3
	jmp	LBB13_15
LBB13_3:
	mov	rsi, qword ptr [rsp + 160]
	lea	rdi, [rsp + 96]
	call	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	mov	rsi, qword ptr [rsp + 152]
	mov	rdi, qword ptr [rsp + 160]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax - 24]
	add	rdi, rax
Ltmp4:
	mov	qword ptr [rsp + 80], rsi ## 8-byte Spill
	call	__ZNKSt3__18ios_base5flagsEv
Ltmp5:
	mov	dword ptr [rsp + 76], eax ## 4-byte Spill
	jmp	LBB13_4
LBB13_4:
	mov	eax, dword ptr [rsp + 76] ## 4-byte Reload
	and	eax, 176
	cmp	eax, 32
	jne	LBB13_6
## %bb.5:
	mov	rax, qword ptr [rsp + 152]
	add	rax, qword ptr [rsp + 144]
	mov	qword ptr [rsp + 64], rax ## 8-byte Spill
	jmp	LBB13_7
LBB13_6:
	mov	rax, qword ptr [rsp + 152]
	mov	qword ptr [rsp + 64], rax ## 8-byte Spill
LBB13_7:
	mov	rax, qword ptr [rsp + 64] ## 8-byte Reload
	mov	rcx, qword ptr [rsp + 152]
	mov	rdx, qword ptr [rsp + 144]
	add	rcx, rdx
	mov	rdx, qword ptr [rsp + 160]
	mov	rsi, qword ptr [rdx]
	mov	rsi, qword ptr [rsi - 24]
	add	rdx, rsi
Ltmp6:
	mov	rdi, rdx
	mov	qword ptr [rsp + 56], rax ## 8-byte Spill
	mov	qword ptr [rsp + 48], rcx ## 8-byte Spill
	mov	qword ptr [rsp + 40], rdx ## 8-byte Spill
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
Ltmp7:
	mov	byte ptr [rsp + 39], al ## 1-byte Spill
	jmp	LBB13_8
LBB13_8:
	mov	rdi, qword ptr [rsp + 96]
Ltmp8:
	mov	al, byte ptr [rsp + 39] ## 1-byte Reload
	movsx	r9d, al
	mov	rsi, qword ptr [rsp + 80] ## 8-byte Reload
	mov	rdx, qword ptr [rsp + 56] ## 8-byte Reload
	mov	rcx, qword ptr [rsp + 48] ## 8-byte Reload
	mov	r8, qword ptr [rsp + 40] ## 8-byte Reload
	call	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp9:
	mov	qword ptr [rsp + 24], rax ## 8-byte Spill
	jmp	LBB13_9
LBB13_9:
	mov	rax, qword ptr [rsp + 24] ## 8-byte Reload
	mov	qword ptr [rsp + 104], rax
	lea	rdi, [rsp + 104]
	call	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	test	al, 1
	jne	LBB13_10
	jmp	LBB13_14
LBB13_10:
	mov	rax, qword ptr [rsp + 160]
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	add	rax, rcx
Ltmp10:
	mov	esi, 5
	mov	rdi, rax
	call	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp11:
	jmp	LBB13_11
LBB13_11:
	jmp	LBB13_14
LBB13_12:
Ltmp17:
	mov	ecx, edx
	mov	qword ptr [rsp + 120], rax
	mov	dword ptr [rsp + 116], ecx
	jmp	LBB13_18
LBB13_13:
Ltmp12:
	mov	ecx, edx
	mov	qword ptr [rsp + 120], rax
	mov	dword ptr [rsp + 116], ecx
Ltmp13:
	lea	rdi, [rsp + 128]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp14:
	jmp	LBB13_17
LBB13_14:
	jmp	LBB13_15
LBB13_15:
Ltmp15:
	lea	rdi, [rsp + 128]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp16:
	jmp	LBB13_16
LBB13_16:
	jmp	LBB13_20
LBB13_17:
	jmp	LBB13_18
LBB13_18:
	mov	rdi, qword ptr [rsp + 120]
	call	___cxa_begin_catch
	mov	rdi, qword ptr [rsp + 160]
	mov	rcx, qword ptr [rdi]
	mov	rcx, qword ptr [rcx - 24]
	add	rdi, rcx
Ltmp18:
	mov	qword ptr [rsp + 16], rax ## 8-byte Spill
	call	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp19:
	jmp	LBB13_19
LBB13_19:
	call	___cxa_end_catch
LBB13_20:
	mov	rax, qword ptr [rsp + 160]
	add	rsp, 168
	ret
LBB13_21:
Ltmp20:
	mov	ecx, edx
	mov	qword ptr [rsp + 120], rax
	mov	dword ptr [rsp + 116], ecx
Ltmp21:
	call	___cxa_end_catch
Ltmp22:
	jmp	LBB13_22
LBB13_22:
	jmp	LBB13_23
LBB13_23:
	mov	rdi, qword ptr [rsp + 120]
	call	__Unwind_Resume
	ud2
LBB13_24:
Ltmp23:
	mov	rdi, rax
	mov	qword ptr [rsp + 8], rdx ## 8-byte Spill
	call	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table13:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp17-Lfunc_begin0    ##     jumps to Ltmp17
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp2-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp11-Ltmp2           ##   Call between Ltmp2 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0    ##     jumps to Ltmp12
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp13-Lfunc_begin0    ## >> Call Site 3 <<
	.uleb128 Ltmp14-Ltmp13          ##   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp23-Lfunc_begin0    ##     jumps to Ltmp23
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp15-Lfunc_begin0    ## >> Call Site 4 <<
	.uleb128 Ltmp16-Ltmp15          ##   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0    ##     jumps to Ltmp17
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp16-Lfunc_begin0    ## >> Call Site 5 <<
	.uleb128 Ltmp18-Ltmp16          ##   Call between Ltmp16 and Ltmp18
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0    ## >> Call Site 6 <<
	.uleb128 Ltmp19-Ltmp18          ##   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0    ##     jumps to Ltmp20
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0    ## >> Call Site 7 <<
	.uleb128 Ltmp21-Ltmp19          ##   Call between Ltmp19 and Ltmp21
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0    ## >> Call Site 8 <<
	.uleb128 Ltmp22-Ltmp21          ##   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0    ##     jumps to Ltmp23
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp22-Lfunc_begin0    ## >> Call Site 9 <<
	.uleb128 Lfunc_end0-Ltmp22      ##   Call between Ltmp22 and Lfunc_end0
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
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	mov	rdi, rax
	call	__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi ## 8-byte Spill
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	test	al, 1
	jne	LBB15_1
	jmp	LBB15_2
LBB15_1:
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	mov	qword ptr [rsp], rax    ## 8-byte Spill
	jmp	LBB15_3
LBB15_2:
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	mov	qword ptr [rsp], rax    ## 8-byte Spill
LBB15_3:
	mov	rax, qword ptr [rsp]    ## 8-byte Reload
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ## @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	al, byte ptr [rdi]
	and	al, 1
	movzx	eax, al
	ret
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	sub	rsp, 232
	.cfi_def_cfa_offset 240
	mov	al, r9b
	mov	qword ptr [rsp + 216], rdi
	mov	qword ptr [rsp + 208], rsi
	mov	qword ptr [rsp + 200], rdx
	mov	qword ptr [rsp + 192], rcx
	mov	qword ptr [rsp + 184], r8
	mov	byte ptr [rsp + 183], al
	mov	rcx, qword ptr [rsp + 216]
	mov	qword ptr [rsp + 64], rcx ## 8-byte Spill
	call	__ZNSt3__1L15__get_nullptr_tEv
	mov	qword ptr [rsp + 168], rax
	lea	rdi, [rsp + 168]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	mov	rcx, qword ptr [rsp + 64] ## 8-byte Reload
	cmp	rcx, rax
	jne	LBB17_2
## %bb.1:
	mov	rax, qword ptr [rsp + 216]
	mov	qword ptr [rsp + 224], rax
	jmp	LBB17_25
LBB17_2:
	mov	rax, qword ptr [rsp + 192]
	mov	rcx, qword ptr [rsp + 208]
	sub	rax, rcx
	mov	qword ptr [rsp + 160], rax
	mov	rdi, qword ptr [rsp + 184]
	call	__ZNKSt3__18ios_base5widthEv
	mov	qword ptr [rsp + 152], rax
	mov	rax, qword ptr [rsp + 152]
	cmp	rax, qword ptr [rsp + 160]
	jle	LBB17_4
## %bb.3:
	mov	rax, qword ptr [rsp + 160]
	mov	rcx, qword ptr [rsp + 152]
	sub	rcx, rax
	mov	qword ptr [rsp + 152], rcx
	jmp	LBB17_5
LBB17_4:
	mov	qword ptr [rsp + 152], 0
LBB17_5:
	mov	rax, qword ptr [rsp + 200]
	mov	rcx, qword ptr [rsp + 208]
	sub	rax, rcx
	mov	qword ptr [rsp + 144], rax
	cmp	qword ptr [rsp + 144], 0
	jle	LBB17_9
## %bb.6:
	mov	rdi, qword ptr [rsp + 216]
	mov	rsi, qword ptr [rsp + 208]
	mov	rdx, qword ptr [rsp + 144]
	call	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmp	rax, qword ptr [rsp + 144]
	je	LBB17_8
## %bb.7:
	call	__ZNSt3__1L15__get_nullptr_tEv
	mov	qword ptr [rsp + 136], rax
	lea	rdi, [rsp + 136]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	mov	qword ptr [rsp + 216], rax
	mov	rax, qword ptr [rsp + 216]
	mov	qword ptr [rsp + 224], rax
	jmp	LBB17_25
LBB17_8:
	jmp	LBB17_9
LBB17_9:
	cmp	qword ptr [rsp + 152], 0
	jle	LBB17_20
## %bb.10:
	mov	rsi, qword ptr [rsp + 152]
	movsx	edx, byte ptr [rsp + 183]
	lea	rax, [rsp + 112]
	mov	rdi, rax
	mov	qword ptr [rsp + 56], rax ## 8-byte Spill
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	mov	rdi, qword ptr [rsp + 216]
	mov	rax, qword ptr [rsp + 56] ## 8-byte Reload
	mov	qword ptr [rsp + 48], rdi ## 8-byte Spill
	mov	rdi, rax
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	mov	rdx, qword ptr [rsp + 152]
Ltmp24:
	mov	rdi, qword ptr [rsp + 48] ## 8-byte Reload
	mov	rsi, rax
	call	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
Ltmp25:
	mov	qword ptr [rsp + 40], rax ## 8-byte Spill
	jmp	LBB17_11
LBB17_11:
	mov	rax, qword ptr [rsp + 40] ## 8-byte Reload
	cmp	rax, qword ptr [rsp + 152]
	je	LBB17_16
## %bb.12:
Ltmp26:
	call	__ZNSt3__1L15__get_nullptr_tEv
Ltmp27:
	mov	qword ptr [rsp + 32], rax ## 8-byte Spill
	jmp	LBB17_13
LBB17_13:
	mov	rax, qword ptr [rsp + 32] ## 8-byte Reload
	mov	qword ptr [rsp + 88], rax
Ltmp28:
	lea	rdi, [rsp + 88]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
Ltmp29:
	mov	qword ptr [rsp + 24], rax ## 8-byte Spill
	jmp	LBB17_14
LBB17_14:
	mov	rax, qword ptr [rsp + 24] ## 8-byte Reload
	mov	qword ptr [rsp + 216], rax
	mov	rcx, qword ptr [rsp + 216]
	mov	qword ptr [rsp + 224], rcx
	mov	dword ptr [rsp + 84], 1
	jmp	LBB17_17
LBB17_15:
Ltmp30:
	mov	ecx, edx
	mov	qword ptr [rsp + 104], rax
	mov	dword ptr [rsp + 100], ecx
Ltmp31:
	lea	rdi, [rsp + 112]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp32:
	jmp	LBB17_19
LBB17_16:
	mov	dword ptr [rsp + 84], 0
LBB17_17:
	lea	rdi, [rsp + 112]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	eax, dword ptr [rsp + 84]
	test	eax, eax
	mov	dword ptr [rsp + 20], eax ## 4-byte Spill
	je	LBB17_18
	jmp	LBB17_29
LBB17_29:
	mov	eax, dword ptr [rsp + 20] ## 4-byte Reload
	sub	eax, 1
	mov	dword ptr [rsp + 16], eax ## 4-byte Spill
	je	LBB17_25
	jmp	LBB17_28
LBB17_18:
	jmp	LBB17_20
LBB17_19:
	jmp	LBB17_26
LBB17_20:
	mov	rax, qword ptr [rsp + 192]
	mov	rcx, qword ptr [rsp + 200]
	sub	rax, rcx
	mov	qword ptr [rsp + 144], rax
	cmp	qword ptr [rsp + 144], 0
	jle	LBB17_24
## %bb.21:
	mov	rdi, qword ptr [rsp + 216]
	mov	rsi, qword ptr [rsp + 200]
	mov	rdx, qword ptr [rsp + 144]
	call	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmp	rax, qword ptr [rsp + 144]
	je	LBB17_23
## %bb.22:
	call	__ZNSt3__1L15__get_nullptr_tEv
	mov	qword ptr [rsp + 72], rax
	lea	rdi, [rsp + 72]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	mov	qword ptr [rsp + 216], rax
	mov	rax, qword ptr [rsp + 216]
	mov	qword ptr [rsp + 224], rax
	jmp	LBB17_25
LBB17_23:
	jmp	LBB17_24
LBB17_24:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rsp + 184]
	call	__ZNSt3__18ios_base5widthEl
	mov	rsi, qword ptr [rsp + 216]
	mov	qword ptr [rsp + 224], rsi
	mov	qword ptr [rsp + 8], rax ## 8-byte Spill
LBB17_25:
	mov	rax, qword ptr [rsp + 224]
	add	rsp, 232
	ret
LBB17_26:
	mov	rdi, qword ptr [rsp + 104]
	call	__Unwind_Resume
	ud2
LBB17_27:
Ltmp33:
	mov	rdi, rax
	mov	qword ptr [rsp], rdx    ## 8-byte Spill
	call	___clang_call_terminate
LBB17_28:
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table17:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1 ## >> Call Site 1 <<
	.uleb128 Ltmp24-Lfunc_begin1    ##   Call between Lfunc_begin1 and Ltmp24
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1    ## >> Call Site 2 <<
	.uleb128 Ltmp29-Ltmp24          ##   Call between Ltmp24 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin1    ##     jumps to Ltmp30
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin1    ## >> Call Site 3 <<
	.uleb128 Ltmp32-Ltmp31          ##   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin1    ##     jumps to Ltmp33
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp32-Lfunc_begin1    ## >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp32      ##   Call between Ltmp32 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	call	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ## @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	eax, dword ptr [rdi + 8]
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi ## 8-byte Spill
	call	__ZNSt3__111char_traitsIcE3eofEv
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	mov	esi, dword ptr [rdi + 144]
	mov	edi, eax
	call	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	test	al, 1
	jne	LBB20_1
	jmp	LBB20_2
LBB20_1:
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	mov	esi, 32
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movsx	esi, al
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	mov	dword ptr [rdi + 144], esi
LBB20_2:
	mov	rax, qword ptr [rsp + 8] ## 8-byte Reload
	mov	ecx, dword ptr [rax + 144]
	mov	dl, cl
	movsx	eax, dl
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ## @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	cmp	qword ptr [rdi], 0
	sete	al
	and	al, 1
	movzx	eax, al
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	dword ptr [rsp + 12], esi
	mov	rdi, qword ptr [rsp + 16]
	mov	esi, dword ptr [rsp + 12]
	call	__ZNSt3__18ios_base8setstateEj
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	push	rax
	call	___cxa_begin_catch
	mov	qword ptr [rsp], rax    ## 8-byte Spill
	call	__ZSt9terminatev
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L15__get_nullptr_tEv
__ZNSt3__1L15__get_nullptr_tEv:         ## @_ZNSt3__1L15__get_nullptr_tEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rdi, rsp
	mov	rsi, -1
	call	__ZNSt3__19nullptr_tC1EMNS0_5__natEi
	mov	rax, qword ptr [rsp]
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv: ## @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	.cfi_startproc
## %bb.0:
	xor	eax, eax
                                        ## kill: def $rax killed $eax
	mov	qword ptr [rsp - 8], rdi
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ## @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, qword ptr [rdi + 24]
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
## %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 8], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rsp + 8] ## 8-byte Reload
	call	qword ptr [rax + 96]
	add	rsp, 40
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	al, dl
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	byte ptr [rsp + 7], al
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	movsx	edx, byte ptr [rsp + 7]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ## @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 8]
	mov	rdi, qword ptr [rsi + 24]
	mov	qword ptr [rsp - 24], rdi
	mov	rdi, qword ptr [rsp - 16]
	mov	qword ptr [rsi + 24], rdi
	mov	rax, qword ptr [rsp - 24]
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19nullptr_tC1EMNS0_5__natEi
__ZNSt3__19nullptr_tC1EMNS0_5__natEi:   ## @_ZNSt3__19nullptr_tC1EMNS0_5__natEi
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	call	__ZNSt3__19nullptr_tC2EMNS0_5__natEi
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19nullptr_tC2EMNS0_5__natEi
__ZNSt3__19nullptr_tC2EMNS0_5__natEi:   ## @_ZNSt3__19nullptr_tC2EMNS0_5__natEi
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 8]
	mov	qword ptr [rsi], 0
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
## %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	al, dl
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	byte ptr [rsp + 23], al
	mov	rsi, qword ptr [rsp + 32]
	mov	rdi, rsi
	mov	qword ptr [rsp + 8], rsi ## 8-byte Spill
	call	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	movsx	edx, byte ptr [rsp + 23]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	add	rsp, 40
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev
	pop	rax
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rdi ## 8-byte Spill
	mov	rdi, rax
	call	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	mov	rax, qword ptr [rsp + 8] ## 8-byte Reload
	mov	rdi, rax
	call	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	xor	esi, esi
	mov	eax, 24
	mov	edx, eax
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_memset
	pop	rax
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNSt3__19allocatorIcEC2Ev
	pop	rax
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorIcEC2Ev
__ZNSt3__19allocatorIcEC2Ev:            ## @_ZNSt3__19allocatorIcEC2Ev
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	sub	rsp, 56
	.cfi_def_cfa_offset 64
	mov	qword ptr [rsp + 48], rdi
	mov	qword ptr [rsp + 40], rsi
	mov	rsi, qword ptr [rsp + 48]
	mov	rdi, qword ptr [rsp + 40]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax - 24]
	add	rdi, rax
Ltmp34:
	mov	qword ptr [rsp + 16], rsi ## 8-byte Spill
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
Ltmp35:
	mov	qword ptr [rsp + 8], rax ## 8-byte Spill
	jmp	LBB38_1
LBB38_1:
	mov	rax, qword ptr [rsp + 16] ## 8-byte Reload
	mov	rcx, qword ptr [rsp + 8] ## 8-byte Reload
	mov	qword ptr [rax], rcx
	add	rsp, 56
	ret
LBB38_2:
Ltmp36:
	mov	ecx, edx
	mov	qword ptr [rsp + 32], rax
	mov	dword ptr [rsp + 28], ecx
## %bb.3:
	mov	rdi, qword ptr [rsp + 32]
	call	___cxa_call_unexpected
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table38:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp34-Lfunc_begin2    ## >> Call Site 1 <<
	.uleb128 Ltmp35-Ltmp34          ##   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin2    ##     jumps to Ltmp36
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp35-Lfunc_begin2    ## >> Call Site 2 <<
	.uleb128 Lfunc_end2-Ltmp35      ##   Call between Ltmp35 and Lfunc_end2
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end2:
	.byte	127                     ## >> Action Record 1 <<
                                        ##   Filter TypeInfo -1
	.byte	0                       ##   No further actions
	.p2align	2
Lttbase2:
                                        ## >> Filter TypeInfos <<
	.byte	0
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__18ios_base5rdbufEv
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ## @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, qword ptr [rdi + 40]
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## %bb.0:
	mov	dword ptr [rsp - 4], edi
	mov	dword ptr [rsp - 8], esi
	mov	esi, dword ptr [rsp - 4]
	cmp	esi, dword ptr [rsp - 8]
	sete	al
	and	al, 1
	movzx	eax, al
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## %bb.0:
	mov	eax, 4294967295
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	sub	rsp, 72
	.cfi_def_cfa_offset 80
	mov	al, sil
	mov	qword ptr [rsp + 64], rdi
	mov	byte ptr [rsp + 63], al
	mov	rsi, qword ptr [rsp + 64]
	lea	rdi, [rsp + 48]
	mov	qword ptr [rsp + 24], rdi ## 8-byte Spill
	call	__ZNKSt3__18ios_base6getlocEv
Ltmp37:
	mov	rdi, qword ptr [rsp + 24] ## 8-byte Reload
	call	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp38:
	mov	qword ptr [rsp + 16], rax ## 8-byte Spill
	jmp	LBB43_1
LBB43_1:
	movsx	esi, byte ptr [rsp + 63]
Ltmp39:
	mov	rdi, qword ptr [rsp + 16] ## 8-byte Reload
	call	__ZNKSt3__15ctypeIcE5widenEc
Ltmp40:
	mov	byte ptr [rsp + 15], al ## 1-byte Spill
	jmp	LBB43_2
LBB43_2:
	lea	rdi, [rsp + 48]
	call	__ZNSt3__16localeD1Ev
	mov	al, byte ptr [rsp + 15] ## 1-byte Reload
	movsx	eax, al
	add	rsp, 72
	ret
LBB43_3:
Ltmp41:
	mov	ecx, edx
	mov	qword ptr [rsp + 40], rax
	mov	dword ptr [rsp + 36], ecx
Ltmp42:
	lea	rdi, [rsp + 48]
	call	__ZNSt3__16localeD1Ev
Ltmp43:
	jmp	LBB43_4
LBB43_4:
	jmp	LBB43_5
LBB43_5:
	mov	rdi, qword ptr [rsp + 40]
	call	__Unwind_Resume
	ud2
LBB43_6:
Ltmp44:
	mov	rdi, rax
	mov	qword ptr [rsp], rdx    ## 8-byte Spill
	call	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table43:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3 ## >> Call Site 1 <<
	.uleb128 Ltmp37-Lfunc_begin3    ##   Call between Lfunc_begin3 and Ltmp37
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin3    ## >> Call Site 2 <<
	.uleb128 Ltmp40-Ltmp37          ##   Call between Ltmp37 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin3    ##     jumps to Ltmp41
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin3    ## >> Call Site 3 <<
	.uleb128 Ltmp42-Ltmp40          ##   Call between Ltmp40 and Ltmp42
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin3    ## >> Call Site 4 <<
	.uleb128 Ltmp43-Ltmp42          ##   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin3    ##     jumps to Ltmp44
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp43-Lfunc_begin3    ## >> Call Site 5 <<
	.uleb128 Lfunc_end3-Ltmp43      ##   Call between Ltmp43 and Lfunc_end3
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end3:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	al, sil
	mov	qword ptr [rsp + 16], rdi
	mov	byte ptr [rsp + 15], al
	mov	rdi, qword ptr [rsp + 16]
	mov	al, byte ptr [rsp + 15]
	mov	rcx, qword ptr [rdi]
	movsx	esi, al
	call	qword ptr [rcx + 56]
	movsx	eax, al
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ## @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	dword ptr [rsp + 12], esi
	mov	rdi, qword ptr [rsp + 16]
	mov	esi, dword ptr [rdi + 32]
	or	esi, dword ptr [rsp + 12]
	call	__ZNSt3__18ios_base5clearEj
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_: ## @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
## %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi ## 8-byte Spill
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	test	al, 1
	jne	LBB48_1
	jmp	LBB48_2
LBB48_1:
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	mov	qword ptr [rsp], rax    ## 8-byte Spill
	jmp	LBB48_3
LBB48_2:
	mov	rdi, qword ptr [rsp + 8] ## 8-byte Reload
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	mov	qword ptr [rsp], rax    ## 8-byte Spill
LBB48_3:
	mov	rax, qword ptr [rsp]    ## 8-byte Reload
	add	rsp, 24
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movzx	ecx, byte ptr [rax]
	mov	eax, ecx
	and	rax, 1
	cmp	rax, 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	mov	rax, qword ptr [rax + 16]
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	add	rax, 1
	mov	rdi, rax
	call	__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_: ## @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNSt3__1L9addressofIKcEEPT_RS2_
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9addressofIKcEEPT_RS2_
__ZNSt3__1L9addressofIKcEEPT_RS2_:      ## @_ZNSt3__1L9addressofIKcEEPT_RS2_
	.cfi_startproc
## %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	mov	rax, qword ptr [rax + 8]
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv
	.cfi_startproc
## %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movzx	ecx, byte ptr [rax]
	sar	ecx, 1
	movsxd	rax, ecx
	pop	rcx
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
