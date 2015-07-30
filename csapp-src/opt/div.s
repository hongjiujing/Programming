	.file	"div.c"
	.text
.Ltext0:
	.globl	itest
	.type	itest, @function
itest:
.LFB35:
	.file 1 "div.c"
	.loc 1 52 0
	.cfi_startproc
.LVL0:
	.loc 1 56 0
	movl	(%rdi), %r9d
	salq	$11, %r9
	addq	$ival, %r9
.LVL1:
	.loc 1 57 0
	movl	4(%rdi), %r8d
	salq	$11, %r8
	addq	$ival, %r8
.LVL2:
	.loc 1 60 0
	cmpl	$0, 8(%rdi)
	je	.L2
	movl	$0, %ecx
.L5:
	.loc 1 62 0
	movl	(%r8,%rcx), %esi
	movl	$1, %eax
	testl	%esi, %esi
	js	.L3
	.loc 1 62 0 is_stmt 0 discriminator 1
	movl	(%r9,%rcx), %eax
	cltd
	idivl	%esi
.L3:
	.loc 1 62 0 discriminator 3
	movl	%eax, -4(%rsp)
.LVL3:
	addq	$4, %rcx
	.loc 1 61 0 is_stmt 1 discriminator 3
	cmpq	$2048, %rcx
	jne	.L5
	rep; ret
.L2:
	.loc 1 60 0
	movl	$0, %ecx
.L6:
	.loc 1 65 0 discriminator 2
	movl	(%r9,%rcx), %eax
	cltd
	idivl	(%r8,%rcx)
	movl	%eax, -4(%rsp)
	addq	$4, %rcx
	.loc 1 64 0 discriminator 2
	cmpq	$2048, %rcx
	jne	.L6
	rep; ret
	.cfi_endproc
.LFE35:
	.size	itest, .-itest
	.globl	ltest
	.type	ltest, @function
ltest:
.LFB36:
	.loc 1 70 0
	.cfi_startproc
.LVL4:
	.loc 1 74 0
	movl	(%rdi), %r9d
	salq	$12, %r9
	addq	$lval, %r9
.LVL5:
	.loc 1 75 0
	movl	4(%rdi), %r8d
	salq	$12, %r8
	addq	$lval, %r8
.LVL6:
	.loc 1 78 0
	cmpl	$0, 8(%rdi)
	je	.L9
	movl	$0, %ecx
.L12:
	.loc 1 80 0
	movq	(%r8,%rcx), %rsi
	movl	$1, %eax
	testq	%rsi, %rsi
	js	.L10
	.loc 1 80 0 is_stmt 0 discriminator 1
	movq	(%r9,%rcx), %rax
	cqto
	idivq	%rsi
.L10:
	.loc 1 80 0 discriminator 3
	movq	%rax, -8(%rsp)
.LVL7:
	addq	$8, %rcx
	.loc 1 79 0 is_stmt 1 discriminator 3
	cmpq	$4096, %rcx
	jne	.L12
	rep; ret
.L9:
	.loc 1 78 0
	movl	$0, %ecx
.L13:
	.loc 1 83 0 discriminator 2
	movq	(%r9,%rcx), %rax
	cqto
	idivq	(%r8,%rcx)
	movq	%rax, -8(%rsp)
	addq	$8, %rcx
	.loc 1 82 0 discriminator 2
	cmpq	$4096, %rcx
	jne	.L13
	rep; ret
	.cfi_endproc
.LFE36:
	.size	ltest, .-ltest
	.globl	ftest
	.type	ftest, @function
ftest:
.LFB37:
	.loc 1 88 0
	.cfi_startproc
.LVL8:
	.loc 1 92 0
	movl	(%rdi), %ecx
	salq	$11, %rcx
	addq	$fval, %rcx
.LVL9:
	.loc 1 93 0
	movl	4(%rdi), %edx
	salq	$11, %rdx
	addq	$fval, %rdx
.LVL10:
	.loc 1 96 0
	cmpl	$0, 8(%rdi)
	je	.L16
	movl	$0, %eax
	.loc 1 98 0
	vxorps	%xmm2, %xmm2, %xmm2
	vmovss	.LC0(%rip), %xmm3
.L19:
	vmovss	(%rdx,%rax), %xmm0
	vmovaps	%xmm3, %xmm1
	vucomiss	%xmm0, %xmm2
	ja	.L17
	.loc 1 98 0 is_stmt 0 discriminator 2
	vmovss	(%rcx,%rax), %xmm1
	vdivss	%xmm0, %xmm1, %xmm1
.L17:
	.loc 1 98 0 discriminator 3
	vmovss	%xmm1, -4(%rsp)
.LVL11:
	addq	$4, %rax
	.loc 1 97 0 is_stmt 1 discriminator 3
	cmpq	$2048, %rax
	jne	.L19
	rep; ret
.L16:
	.loc 1 96 0
	movl	$0, %eax
.L20:
	.loc 1 101 0 discriminator 2
	vmovss	(%rcx,%rax), %xmm0
	vdivss	(%rdx,%rax), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rsp)
	addq	$4, %rax
	.loc 1 100 0 discriminator 2
	cmpq	$2048, %rax
	jne	.L20
	rep; ret
	.cfi_endproc
.LFE37:
	.size	ftest, .-ftest
	.globl	dtest
	.type	dtest, @function
dtest:
.LFB38:
	.loc 1 106 0
	.cfi_startproc
.LVL12:
	.loc 1 110 0
	movl	(%rdi), %ecx
	salq	$12, %rcx
	addq	$dval, %rcx
.LVL13:
	.loc 1 111 0
	movl	4(%rdi), %edx
	salq	$12, %rdx
	addq	$dval, %rdx
.LVL14:
	.loc 1 114 0
	cmpl	$0, 8(%rdi)
	je	.L23
	movl	$0, %eax
	.loc 1 116 0
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovsd	.LC2(%rip), %xmm3
.L26:
	vmovsd	(%rdx,%rax), %xmm0
	vmovapd	%xmm3, %xmm1
	vucomisd	%xmm0, %xmm2
	ja	.L24
	.loc 1 116 0 is_stmt 0 discriminator 2
	vmovsd	(%rcx,%rax), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
.L24:
	.loc 1 116 0 discriminator 3
	vmovsd	%xmm1, -8(%rsp)
.LVL15:
	addq	$8, %rax
	.loc 1 115 0 is_stmt 1 discriminator 3
	cmpq	$4096, %rax
	jne	.L26
	rep; ret
.L23:
	.loc 1 114 0
	movl	$0, %eax
.L27:
	.loc 1 119 0 discriminator 2
	vmovsd	(%rcx,%rax), %xmm0
	vdivsd	(%rdx,%rax), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rsp)
	addq	$8, %rax
	.loc 1 118 0 discriminator 2
	cmpq	$4096, %rax
	jne	.L27
	rep; ret
	.cfi_endproc
.LFE38:
	.size	dtest, .-dtest
	.globl	cpt
	.type	cpt, @function
cpt:
.LFB39:
	.loc 1 124 0
	.cfi_startproc
.LVL16:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 125 0
	movl	%esi, %eax
	movq	%rax, (%rsp)
	movl	%edx, %eax
	movq	%rax, 8(%rsp)
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)
	.loc 1 126 0
	movq	%rsp, %rsi
.LVL17:
	call	fcyc
.LVL18:
	.loc 1 127 0
	vmulsd	.LC4(%rip), %xmm0, %xmm0
.LVL19:
	.loc 1 128 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	cpt, .-cpt
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"Function: %s\t  div(+,   -)\tCPD = %.2f\n"
	.align 8
.LC6:
	.string	"Function: %s\t cdiv(+,   -)\tCPD = %.2f\n"
	.align 8
.LC7:
	.string	"Function: %s\t cdiv(-,   +)\tCPD = %.2f\n"
	.align 8
.LC8:
	.string	"Function: %s\t cdiv(+, a+-)\tCPD = %.2f\n"
	.align 8
.LC9:
	.string	"Function: %s\t cdiv(+, r+-)\tCPD = %.2f\n"
	.text
	.globl	run_tests
	.type	run_tests, @function
run_tests:
.LFB40:
	.loc 1 131 0
	.cfi_startproc
.LVL20:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	.loc 1 132 0
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
.LVL21:
	call	cpt
.LVL22:
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC5, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL23:
.LBE13:
.LBE12:
	.loc 1 134 0
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	cpt
.LVL24:
.LBB14:
.LBB15:
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC6, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL25:
.LBE15:
.LBE14:
	.loc 1 136 0
	movl	$1, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rbp, %rdi
	call	cpt
.LVL26:
.LBB16:
.LBB17:
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC7, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL27:
.LBE17:
.LBE16:
	.loc 1 138 0
	movl	$1, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	cpt
.LVL28:
.LBB18:
.LBB19:
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC8, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL29:
.LBE19:
.LBE18:
	.loc 1 140 0
	movl	$1, %ecx
	movl	$3, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	cpt
.LVL30:
.LBB20:
.LBB21:
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC9, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL31:
.LBE21:
.LBE20:
	.loc 1 142 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL32:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL33:
	ret
	.cfi_endproc
.LFE40:
	.size	run_tests, .-run_tests
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"int   "
.LC11:
	.string	"long  "
.LC12:
	.string	"float "
.LC13:
	.string	"double"
	.text
	.globl	main
	.type	main, @function
main:
.LFB41:
	.loc 1 145 0
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
.LVL34:
	movq	$ival, 8(%rsp)
	movq	$lval, 16(%rsp)
	movq	$fval, 24(%rsp)
	movq	$dval, 32(%rsp)
.LBB25:
.LBB26:
	.loc 1 19 0
	movl	$0, 40(%rsp)
	jmp	.L34
.LVL35:
.L46:
.LBB27:
	.loc 1 23 0
	call	random
.LVL36:
	movl	%eax, %ebx
.LVL37:
	.loc 1 22 0
	testl	%eax, %eax
	je	.L46
	sarl	$31, %eax
.LVL38:
	xorl	%eax, %ebx
.LVL39:
	subl	%eax, %ebx
.LVL40:
	.loc 1 26 0
	cmpl	$1, %ebp
	je	.L37
	cmpl	$1, %ebp
	jg	.L38
	testl	%ebp, %ebp
	je	.L39
	.p2align 4,,6
	jmp	.L36
.L38:
	cmpl	$2, %ebp
	.p2align 4,,6
	je	.L40
	cmpl	$3, %ebp
	.p2align 4,,5
	je	.L41
	.p2align 4,,5
	jmp	.L36
.L39:
	.loc 1 28 0
	negl	%ebx
.LVL41:
	movq	8(%rsp), %rax
	movl	%ebx, (%rax)
	jmp	.L42
.LVL42:
.L37:
	.loc 1 31 0
	movq	8(%rsp), %rax
	movl	%ebx, 2048(%rax)
	jmp	.L42
.L40:
	.loc 1 34 0
	movl	%ebx, %eax
	negl	%eax
	cmpl	$0, 44(%rsp)
	cmove	%eax, %ebx
.LVL43:
	movq	8(%rsp), %rax
.LVL44:
	movl	%ebx, 4096(%rax)
	jmp	.L42
.LVL45:
.L41:
	.loc 1 37 0
	call	random
.LVL46:
	andl	$1, %eax
	movl	%ebx, %edx
	negl	%edx
	testq	%rax, %rax
	cmove	%edx, %ebx
.LVL47:
	movq	8(%rsp), %rax
	movl	%ebx, 6144(%rax)
	.loc 1 40 0
	movslq	40(%rsp), %rax
	movslq	%ebp, %rbp
	salq	$9, %rbp
.LVL48:
	addq	%rbp, %rax
	movl	ival(,%rax,4), %edx
.LVL49:
	movslq	%edx, %rcx
	movq	%rcx, lval(,%rax,8)
	.loc 1 41 0
	vcvtsi2ss	%edx, %xmm0, %xmm0
	vmovss	%xmm0, fval(,%rax,4)
	.loc 1 42 0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovsd	%xmm0, dval(,%rax,8)
.LVL50:
	jmp	.L45
.LVL51:
.L36:
	.loc 1 40 0
	movl	0(%r13), %eax
	movslq	%eax, %rdx
	movq	(%rsp), %rdi
	movq	%rdx, (%rdi)
	.loc 1 41 0
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	%xmm0, (%r14)
	.loc 1 42 0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovsd	%xmm0, (%r15)
.LVL52:
.LBE27:
	.loc 1 20 0
	cmpl	$3, %r12d
	jg	.L45
.LVL53:
.L49:
	addl	$1, %r12d
	addq	$2048, %r13
	addq	$4096, (%rsp)
	addq	$2048, %r14
	addq	$4096, %r15
.L48:
	leal	-1(%r12), %ebp
.LVL54:
	jmp	.L46
.LVL55:
.L45:
	.loc 1 19 0
	addl	$1, 40(%rsp)
.LVL56:
	addq	$4, 8(%rsp)
	addq	$8, 16(%rsp)
	addq	$4, 24(%rsp)
	addq	$8, 32(%rsp)
	cmpl	$512, 40(%rsp)
	je	.L47
.LVL57:
.L34:
.LBB28:
	.loc 1 37 0
	movq	32(%rsp), %r15
	movq	24(%rsp), %r14
	movq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	8(%rsp), %r13
	movl	$1, %r12d
	.loc 1 34 0
	movl	40(%rsp), %eax
	andl	$1, %eax
	movl	%eax, 44(%rsp)
	jmp	.L48
.LVL58:
.L42:
	.loc 1 40 0
	movl	0(%r13), %eax
	movslq	%eax, %rdx
	movq	(%rsp), %rsi
	movq	%rdx, (%rsi)
	.loc 1 41 0
	vcvtsi2ss	%eax, %xmm0, %xmm0
	vmovss	%xmm0, (%r14)
	.loc 1 42 0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovsd	%xmm0, (%r15)
.LVL59:
	jmp	.L49
.LVL60:
.L47:
.LBE28:
.LBE26:
.LBE25:
	.loc 1 147 0
	movl	$.LC10, %esi
	movl	$itest, %edi
	call	run_tests
.LVL61:
	.loc 1 148 0
	movl	$.LC11, %esi
	movl	$ltest, %edi
	call	run_tests
.LVL62:
	.loc 1 149 0
	movl	$.LC12, %esi
	movl	$ftest, %edi
	call	run_tests
.LVL63:
	.loc 1 150 0
	movl	$.LC13, %esi
	movl	$dtest, %edi
	call	run_tests
.LVL64:
	.loc 1 152 0
	movl	$0, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.globl	use_cond
	.bss
	.align 4
	.type	use_cond, @object
	.size	use_cond, 4
use_cond:
	.zero	4
	.globl	den_type
	.align 4
	.type	den_type, @object
	.size	den_type, 4
den_type:
	.zero	4
	.globl	num_type
	.align 4
	.type	num_type, @object
	.size	num_type, 4
num_type:
	.zero	4
	.comm	dval,20480,32
	.comm	fval,10240,32
	.comm	lval,20480,32
	.comm	ival,10240,32
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1063256064
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "../include/fcyc.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb40
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF78
	.byte	0x1
	.long	.LASF79
	.long	.LASF80
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8e
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.value	0x111
	.long	0x223
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.value	0x112
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.value	0x117
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.value	0x118
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x119
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.value	0x11a
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x11b
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.value	0x11c
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.value	0x11d
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.value	0x11e
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.value	0x120
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.value	0x121
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.value	0x122
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.value	0x124
	.long	0x25b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.value	0x126
	.long	0x261
	.byte	0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.value	0x128
	.long	0x62
	.byte	0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.value	0x12c
	.long	0x62
	.byte	0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.value	0x12e
	.long	0x70
	.byte	0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.value	0x132
	.long	0x46
	.byte	0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.value	0x133
	.long	0x54
	.byte	0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.value	0x134
	.long	0x267
	.byte	0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.value	0x138
	.long	0x277
	.byte	0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.value	0x141
	.long	0x7b
	.byte	0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.value	0x14a
	.long	0x8d
	.byte	0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.value	0x14b
	.long	0x8d
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.value	0x14c
	.long	0x8d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.value	0x14d
	.long	0x8d
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.value	0x14e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.value	0x150
	.long	0x62
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.value	0x152
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF81
	.byte	0x5
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xbc
	.long	0x25b
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0xbd
	.long	0x25b
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0xbe
	.long	0x261
	.byte	0x8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xc2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xc
	.long	0x95
	.long	0x277
	.uleb128 0xd
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0xc
	.long	0x95
	.long	0x28d
	.uleb128 0xd
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x293
	.uleb128 0xe
	.long	0x95
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xf
	.long	0x62
	.uleb128 0x2
	.long	.LASF48
	.byte	0x6
	.byte	0x7
	.long	0x2bc
	.uleb128 0x6
	.byte	0x8
	.long	0x2c2
	.uleb128 0x10
	.long	0x2cd
	.uleb128 0x11
	.long	0x2cd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x12
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.long	0x2fa
	.uleb128 0x13
	.long	.LASF49
	.sleb128 0
	.uleb128 0x13
	.long	.LASF50
	.sleb128 1
	.uleb128 0x13
	.long	.LASF51
	.sleb128 2
	.uleb128 0x13
	.long	.LASF52
	.sleb128 3
	.uleb128 0x13
	.long	.LASF53
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x1
	.byte	0x8
	.long	0x2d3
	.uleb128 0x14
	.long	.LASF82
	.byte	0x2
	.byte	0x67
	.long	0x62
	.byte	0x3
	.long	0x322
	.uleb128 0x15
	.long	.LASF83
	.byte	0x2
	.byte	0x67
	.long	0x28d
	.uleb128 0x16
	.byte	0
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x33
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a8
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x33
	.long	0x298
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.byte	0x35
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.long	.LASF56
	.byte	0x1
	.byte	0x36
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0x37
	.long	0x62
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x1a
	.string	"num"
	.byte	0x1
	.byte	0x38
	.long	0x298
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1a
	.string	"den"
	.byte	0x1
	.byte	0x39
	.long	0x298
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x3a
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x3b
	.long	0x62
	.byte	0
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.byte	0x45
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x45
	.long	0x298
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.byte	0x47
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.long	.LASF56
	.byte	0x1
	.byte	0x48
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0x49
	.long	0x62
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x1a
	.string	"num"
	.byte	0x1
	.byte	0x4a
	.long	0x2cd
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1a
	.string	"den"
	.byte	0x1
	.byte	0x4b
	.long	0x2cd
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x4c
	.long	0x42e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.long	0x62
	.byte	0
	.uleb128 0xf
	.long	0x69
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x57
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b9
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x57
	.long	0x298
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.byte	0x59
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.long	.LASF56
	.byte	0x1
	.byte	0x5a
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x1a
	.string	"num"
	.byte	0x1
	.byte	0x5c
	.long	0x4b9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"den"
	.byte	0x1
	.byte	0x5d
	.long	0x4b9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x5e
	.long	0x4c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x62
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4bf
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF63
	.uleb128 0xf
	.long	0x4bf
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0x69
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x551
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x69
	.long	0x298
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.byte	0x6b
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x19
	.long	.LASF56
	.byte	0x1
	.byte	0x6c
	.long	0x2fa
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0x6d
	.long	0x62
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x1a
	.string	"num"
	.byte	0x1
	.byte	0x6e
	.long	0x551
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"den"
	.byte	0x1
	.byte	0x6f
	.long	0x551
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x70
	.long	0x55e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x71
	.long	0x62
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x557
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF65
	.uleb128 0xf
	.long	0x557
	.uleb128 0x1c
	.string	"cpt"
	.byte	0x1
	.byte	0x7b
	.long	0x557
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f6
	.uleb128 0x1d
	.string	"tf"
	.byte	0x1
	.byte	0x7b
	.long	0x2b1
	.long	.LLST0
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x1
	.byte	0x7b
	.long	0x2fa
	.long	.LLST1
	.uleb128 0x1e
	.long	.LASF56
	.byte	0x1
	.byte	0x7b
	.long	0x2fa
	.long	.LLST2
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x1
	.byte	0x7b
	.long	0x62
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.byte	0x7d
	.long	0x5f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"t"
	.byte	0x1
	.byte	0x7e
	.long	0x557
	.long	.LLST4
	.uleb128 0x20
	.quad	.LVL18
	.long	0xb02
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x69
	.long	0x606
	.uleb128 0xd
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x82
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x89a
	.uleb128 0x1d
	.string	"tf"
	.byte	0x1
	.byte	0x82
	.long	0x2b1
	.long	.LLST5
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x1
	.byte	0x82
	.long	0x8f
	.long	.LLST6
	.uleb128 0x22
	.long	0x305
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0x84
	.long	0x692
	.uleb128 0x23
	.long	0x315
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL23
	.long	0xb1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x305
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x86
	.long	0x6e4
	.uleb128 0x23
	.long	0x315
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL25
	.long	0xb1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x305
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x88
	.long	0x736
	.uleb128 0x23
	.long	0x315
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL27
	.long	0xb1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x305
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x8a
	.long	0x788
	.uleb128 0x23
	.long	0x315
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL29
	.long	0xb1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x305
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x8c
	.long	0x7da
	.uleb128 0x23
	.long	0x315
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL31
	.long	0xb1c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL22
	.long	0x563
	.long	0x801
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.quad	.LVL24
	.long	0x563
	.long	0x828
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL26
	.long	0x563
	.long	0x84f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.quad	.LVL28
	.long	0x563
	.long	0x876
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.quad	.LVL30
	.long	0x563
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF84
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	0x8c6
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x12
	.long	0x62
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0x12
	.long	0x62
	.uleb128 0x26
	.uleb128 0x1b
	.string	"val"
	.byte	0x1
	.byte	0x15
	.long	0x62
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.byte	0x90
	.long	0x62
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x9fd
	.uleb128 0x22
	.long	0x89a
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0x1
	.byte	0x92
	.long	0x950
	.uleb128 0x28
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x29
	.long	0x8a6
	.long	.LLST7
	.uleb128 0x29
	.long	0x8af
	.long	.LLST8
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0
	.uleb128 0x29
	.long	0x8b9
	.long	.LLST9
	.uleb128 0x2b
	.quad	.LVL36
	.long	0xb37
	.uleb128 0x2b
	.quad	.LVL46
	.long	0xb37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL61
	.long	0x606
	.long	0x97c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	itest
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x24
	.quad	.LVL62
	.long	0x606
	.long	0x9a8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	ltest
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.uleb128 0x24
	.quad	.LVL63
	.long	0x606
	.long	0x9d4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	ftest
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x20
	.quad	.LVL64
	.long	0x606
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	dtest
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF70
	.byte	0x7
	.byte	0xa9
	.long	0x261
	.uleb128 0x2c
	.long	.LASF71
	.byte	0x7
	.byte	0xaa
	.long	0x261
	.uleb128 0xc
	.long	0x62
	.long	0xa2a
	.uleb128 0xd
	.long	0x86
	.byte	0x4
	.uleb128 0x2d
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x1
	.byte	0xb
	.long	0xa13
	.uleb128 0x9
	.byte	0x3
	.quad	ival
	.uleb128 0xc
	.long	0x69
	.long	0xa56
	.uleb128 0xd
	.long	0x86
	.byte	0x4
	.uleb128 0x2d
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x2e
	.long	.LASF73
	.byte	0x1
	.byte	0xc
	.long	0xa3f
	.uleb128 0x9
	.byte	0x3
	.quad	lval
	.uleb128 0xc
	.long	0x4bf
	.long	0xa82
	.uleb128 0xd
	.long	0x86
	.byte	0x4
	.uleb128 0x2d
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x1
	.byte	0xd
	.long	0xa6b
	.uleb128 0x9
	.byte	0x3
	.quad	fval
	.uleb128 0xc
	.long	0x557
	.long	0xaae
	.uleb128 0xd
	.long	0x86
	.byte	0x4
	.uleb128 0x2d
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x2e
	.long	.LASF75
	.byte	0x1
	.byte	0xe
	.long	0xa97
	.uleb128 0x9
	.byte	0x3
	.quad	dval
	.uleb128 0x2e
	.long	.LASF55
	.byte	0x1
	.byte	0x2f
	.long	0x2fa
	.uleb128 0x9
	.byte	0x3
	.quad	num_type
	.uleb128 0x2e
	.long	.LASF56
	.byte	0x1
	.byte	0x30
	.long	0x2fa
	.uleb128 0x9
	.byte	0x3
	.quad	den_type
	.uleb128 0x2e
	.long	.LASF57
	.byte	0x1
	.byte	0x31
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	use_cond
	.uleb128 0x2f
	.long	.LASF76
	.byte	0x6
	.byte	0xa
	.long	0x557
	.long	0xb1c
	.uleb128 0x11
	.long	0x2b1
	.uleb128 0x11
	.long	0x2cd
	.byte	0
	.uleb128 0x2f
	.long	.LASF77
	.byte	0x2
	.byte	0x58
	.long	0x62
	.long	0xb37
	.uleb128 0x11
	.long	0x62
	.uleb128 0x11
	.long	0x28d
	.uleb128 0x16
	.byte	0
	.uleb128 0x30
	.long	.LASF85
	.byte	0x8
	.value	0x147
	.long	0x69
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL18-1-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	.LVL18-1-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL18-1-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL18-1-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL20-.Ltext0
	.quad	.LVL22-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL22-1-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL33-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL21-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL32-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL35-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x4
	.byte	0x73
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL47-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF84:
	.string	"init"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF75:
	.string	"dval"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF73:
	.string	"lval"
.LASF66:
	.string	"params"
.LASF65:
	.string	"double"
.LASF77:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF57:
	.string	"use_cond"
.LASF42:
	.string	"_IO_marker"
.LASF70:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF53:
	.string	"SINK_VAL"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF78:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF54:
	.string	"val_t"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF71:
	.string	"stdout"
.LASF76:
	.string	"fcyc"
.LASF85:
	.string	"random"
.LASF48:
	.string	"test_funct"
.LASF10:
	.string	"sizetype"
.LASF51:
	.string	"AMIX_VAL"
.LASF18:
	.string	"_IO_write_end"
.LASF80:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF49:
	.string	"NEG_VAL"
.LASF50:
	.string	"POS_VAL"
.LASF81:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF63:
	.string	"float"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF55:
	.string	"num_type"
.LASF67:
	.string	"run_tests"
.LASF64:
	.string	"dtest"
.LASF68:
	.string	"descr"
.LASF1:
	.string	"unsigned char"
.LASF61:
	.string	"argspec"
.LASF79:
	.string	"div.c"
.LASF60:
	.string	"ltest"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF11:
	.string	"char"
.LASF59:
	.string	"itest"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF58:
	.string	"sink"
.LASF23:
	.string	"_IO_save_end"
.LASF72:
	.string	"ival"
.LASF83:
	.string	"__fmt"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF74:
	.string	"fval"
.LASF62:
	.string	"ftest"
.LASF22:
	.string	"_IO_backup_base"
.LASF56:
	.string	"den_type"
.LASF69:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF52:
	.string	"RMIX_VAL"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
