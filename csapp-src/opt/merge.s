	.file	"merge.c"
	.text
.Ltext0:
	.globl	merge
	.type	merge, @function
merge:
.LFB34:
	.file 1 "merge.c"
	.loc 1 8 0
	.cfi_startproc
.LVL0:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
.LVL1:
	.loc 1 12 0
	movl	$1, %eax
	.loc 1 10 0
	movl	$0, %r8d
	.loc 1 9 0
	movl	$0, %r9d
	.loc 1 12 0
	jmp	.L2
.LVL2:
.L5:
	.loc 1 13 0
	movq	(%rdi,%r9,8), %r11
	movq	(%rsi,%r8,8), %r10
.LVL3:
	cmpq	%r10, %r11
	jge	.L3
.LVL4:
	.loc 1 14 0
	addq	$1, %r9
.LVL5:
	movq	%r11, -8(%rdx,%rax,8)
	jmp	.L4
.LVL6:
.L3:
	.loc 1 16 0
	addq	$1, %r8
.LVL7:
	movq	%r10, -8(%rdx,%rax,8)
.LVL8:
.L4:
	addq	$1, %rax
.LVL9:
.L2:
	leaq	-1(%rax), %r10
.LVL10:
	.loc 1 12 0 discriminator 1
	cmpq	%rcx, %r8
	jge	.L12
	cmpq	%rcx, %r9
	jl	.L5
.L12:
	.loc 1 18 0 discriminator 1
	cmpq	%r9, %rcx
	jle	.L7
	movq	%r9, %rbp
	movq	%rcx, %rbx
	subq	%r9, %rbx
	leaq	(%rdi,%r9,8), %r11
	movq	%r10, %r12
	leaq	(%rdx,%r10,8), %r9
	.loc 1 18 0 is_stmt 0
	movl	$0, %eax
.LVL11:
.L9:
	.loc 1 19 0 is_stmt 1
	movq	(%r11,%rax,8), %rdi
	movq	%rdi, (%r9,%rax,8)
	addq	$1, %rax
.LVL12:
	.loc 1 18 0
	cmpq	%rbx, %rax
	jne	.L9
	leaq	(%r12,%rcx), %r10
.LVL13:
	subq	%rbp, %r10
.LVL14:
.L7:
	.loc 1 20 0 discriminator 1
	cmpq	%r8, %rcx
	jle	.L1
	subq	%r8, %rcx
.LVL15:
	leaq	(%rsi,%r8,8), %rdi
	leaq	(%rdx,%r10,8), %rsi
.LVL16:
	.loc 1 20 0 is_stmt 0
	movl	$0, %eax
.LVL17:
.L11:
	.loc 1 21 0 is_stmt 1
	movq	(%rdi,%rax,8), %rdx
	movq	%rdx, (%rsi,%rax,8)
	addq	$1, %rax
.LVL18:
	.loc 1 20 0
	cmpq	%rcx, %rax
	jne	.L11
.LVL19:
.L1:
	.loc 1 22 0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	merge, .-merge
	.globl	merge2
	.type	merge2, @function
merge2:
.LFB35:
	.loc 1 25 0
	.cfi_startproc
	.loc 1 30 0
	testq	%rcx, %rcx
	jle	.L26
	.loc 1 25 0
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 28 0
	movl	$0, %r10d
	.loc 1 27 0
	movl	$0, %r8d
	.loc 1 26 0
	movl	$0, %eax
.LBB16:
	.loc 1 36 0
	movl	$1, %ebp
.L18:
	.loc 1 31 0
	movq	(%rdi,%rax,8), %r11
	.loc 1 32 0
	movq	(%rsi,%r8,8), %rbx
	.loc 1 33 0
	cmpq	%rbx, %r11
	setl	%r9b
	movzbl	%r9b, %r9d
	.loc 1 34 0
	addq	$1, %r10
	testq	%r9, %r9
	cmove	%rbx, %r11
	movq	%r11, -8(%rdx,%r10,8)
	.loc 1 35 0
	addq	%r9, %rax
	.loc 1 36 0
	movq	%rbp, %rbx
	subq	%r9, %rbx
	addq	%rbx, %r8
.LBE16:
	.loc 1 30 0
	cmpq	%r8, %rcx
	jle	.L17
	.loc 1 30 0 is_stmt 0 discriminator 3
	cmpq	%rax, %rcx
	jg	.L18
.L17:
	.loc 1 39 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rcx
	jle	.L19
	movq	%rax, %rbp
	movq	%rcx, %rbx
	subq	%rax, %rbx
	leaq	(%rdi,%rax,8), %r11
	movq	%r10, %r12
	leaq	(%rdx,%r10,8), %r9
	.loc 1 39 0 is_stmt 0
	movl	$0, %eax
.L21:
	.loc 1 40 0 is_stmt 1
	movq	(%r11,%rax,8), %rdi
	movq	%rdi, (%r9,%rax,8)
	addq	$1, %rax
	.loc 1 39 0
	cmpq	%rbx, %rax
	jne	.L21
	leaq	(%r12,%rcx), %r10
	subq	%rbp, %r10
.L19:
	.loc 1 41 0 discriminator 1
	cmpq	%rcx, %r8
	jge	.L14
	subq	%r8, %rcx
	leaq	(%rsi,%r8,8), %rdi
	leaq	(%rdx,%r10,8), %rsi
	.loc 1 41 0 is_stmt 0
	movl	$0, %eax
.L22:
	.loc 1 42 0 is_stmt 1
	movq	(%rdi,%rax,8), %rdx
	movq	%rdx, (%rsi,%rax,8)
	addq	$1, %rax
	.loc 1 41 0
	cmpq	%rcx, %rax
	jne	.L22
.L14:
	.loc 1 43 0
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L26:
	rep; ret
	.cfi_endproc
.LFE35:
	.size	merge2, .-merge2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s: "
.LC1:
	.string	"%ld "
	.text
	.globl	show
	.type	show, @function
show:
.LFB36:
	.loc 1 49 0
	.cfi_startproc
.LVL20:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %r12
	movq	%rdx, %rbp
.LVL21:
.LBB17:
.LBB18:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movq	%rdi, %rdx
.LVL22:
	movl	$.LC0, %esi
.LVL23:
	movl	$1, %edi
.LVL24:
	movl	$0, %eax
	call	__printf_chk
.LVL25:
.LBE18:
.LBE17:
	.loc 1 52 0
	testq	%rbp, %rbp
	jle	.L28
	movl	$0, %ebx
.LVL26:
.L29:
.LBB19:
.LBB20:
	.loc 2 105 0 discriminator 2
	movq	(%r12,%rbx,8), %rdx
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL27:
.LBE20:
.LBE19:
	.loc 1 52 0 discriminator 2
	addq	$1, %rbx
.LVL28:
	cmpq	%rbp, %rbx
	jne	.L29
.LVL29:
.L28:
.LBB21:
.LBB22:
	.loc 2 105 0
	movl	$10, %edi
	call	putchar
.LVL30:
.LBE22:
.LBE21:
	.loc 1 55 0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL31:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL32:
	ret
	.cfi_endproc
.LFE36:
	.size	show, .-show
	.globl	init
	.type	init, @function
init:
.LFB37:
	.loc 1 56 0
	.cfi_startproc
.LVL33:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%edi, %r13d
	.loc 1 59 0
	call	srandom
.LVL34:
	.loc 1 60 0
	movl	$0, %eax
.LVL35:
.L33:
	.loc 1 61 0 discriminator 2
	movq	%rax, d(,%rax,8)
	.loc 1 60 0 discriminator 2
	addq	$1, %rax
.LVL36:
	cmpq	$16384, %rax
	jne	.L33
	.loc 1 60 0 is_stmt 0
	movl	$1, %r12d
	movw	$0, %ax
.LVL37:
	movl	$0, %ebp
	movl	$0, %ebx
	.loc 1 66 0 is_stmt 1
	movl	$1, %r14d
.L39:
.LVL38:
	.loc 1 65 0
	testl	%r13d, %r13d
	jne	.L34
	.loc 1 66 0
	movq	%r14, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
.LVL39:
	jmp	.L35
.L34:
	.loc 1 68 0
	call	random
.LVL40:
	andl	$1, %eax
.LVL41:
.L35:
	.loc 1 69 0
	testq	%rax, %rax
	je	.L36
	.loc 1 70 0
	movq	%r12, %rdx
.LVL42:
	movq	d-8(,%r12,8), %rcx
	movq	%rcx, b1(,%rbx,8)
	movq	%rcx, a1(,%rbx,8)
	.loc 1 71 0
	addq	$1, %rbx
.LVL43:
	jmp	.L37
.LVL44:
.L36:
	.loc 1 73 0
	movq	%r12, %rdx
.LVL45:
	movq	d-8(,%r12,8), %rcx
	movq	%rcx, b2(,%rbp,8)
	movq	%rcx, a2(,%rbp,8)
	.loc 1 74 0
	addq	$1, %rbp
.LVL46:
.L37:
	addq	$1, %r12
	.loc 1 64 0 discriminator 1
	cmpq	$8191, %rbp
	jg	.L38
	cmpq	$8191, %rbx
	jle	.L39
.L38:
	movq	%rbp, %rcx
	.loc 1 77 0 discriminator 1
	cmpq	$8191, %rbx
	jg	.L40
.LVL47:
	movq	%rbx, %rsi
	movq	%rdx, %rdi
	subq	%rbx, %rdx
.LVL48:
	salq	$3, %rdx
.LVL49:
.L42:
	.loc 1 78 0
	movq	d(%rdx,%rbx,8), %rax
	movq	%rax, b1(,%rbx,8)
	movq	%rax, a1(,%rbx,8)
	.loc 1 79 0
	addq	$1, %rbx
.LVL50:
	.loc 1 77 0
	cmpq	$8192, %rbx
	jne	.L42
	leaq	8192(%rdi), %rdx
	subq	%rsi, %rdx
.LVL51:
.L40:
	.loc 1 81 0 discriminator 1
	cmpq	$8191, %rcx
	jg	.L31
	subq	%rcx, %rdx
.LVL52:
	salq	$3, %rdx
.LVL53:
.L44:
	.loc 1 82 0
	movq	d(%rdx,%rbp,8), %rax
	movq	%rax, b2(,%rbp,8)
	movq	%rax, a2(,%rbp,8)
	.loc 1 83 0
	addq	$1, %rbp
.LVL54:
	.loc 1 81 0
	cmpq	$8192, %rbp
	jne	.L44
.LVL55:
.L31:
	.loc 1 85 0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
.LVL56:
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	init, .-init
	.section	.rodata.str1.1
.LC2:
	.string	"a1"
.LC3:
	.string	"a2"
.LC4:
	.string	"d1"
.LC5:
	.string	"d2"
.LC6:
	.string	"%ld\t%.2f\t%.2f\n"
	.text
	.globl	run
	.type	run, @function
run:
.LFB38:
	.loc 1 87 0
	.cfi_startproc
.LVL57:
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, %r12
.LVL58:
	.loc 1 90 0
	testq	%rsi, %rsi
	jle	.L46
	movq	%rdi, %rbp
	movl	%edx, %r13d
	.loc 1 101 0
	leaq	(%rdi,%rdi), %r14
	.loc 1 90 0
	movl	$0, %ebx
.LVL59:
.L49:
	.loc 1 91 0
	movl	%r13d, %edi
	call	init
.LVL60:
	.loc 1 92 0
	testq	%rbx, %rbx
	jne	.L48
.LVL61:
	.loc 1 93 0
	cmpq	$10, %rbp
	jg	.L48
	.loc 1 94 0
	movq	%rbp, %rdx
	movl	$a1, %esi
	movl	$.LC2, %edi
	call	show
.LVL62:
	.loc 1 95 0
	movq	%rbp, %rdx
	movl	$a2, %esi
	movl	$.LC3, %edi
	call	show
.LVL63:
	.loc 1 98 0
	movl	$0, %eax
	call	start_counter
.LVL64:
	.loc 1 99 0
	movq	%rbp, %rcx
	movl	$d, %edx
	movl	$a2, %esi
	movl	$a1, %edi
	call	merge
.LVL65:
	.loc 1 101 0
	movq	%r14, %rdx
	movl	$d, %esi
	movl	$.LC4, %edi
	call	show
.LVL66:
	.loc 1 102 0
	movl	$0, %eax
	call	get_counter
.LVL67:
	vmovsd	%xmm0, (%rsp)
.LVL68:
	.loc 1 103 0
	movl	$0, %eax
	call	start_counter
.LVL69:
	.loc 1 104 0
	movq	%rbp, %rcx
	movl	$d, %edx
	movl	$b2, %esi
	movl	$b1, %edi
	call	merge2
.LVL70:
	.loc 1 105 0
	movl	$0, %eax
	call	get_counter
.LVL71:
	vmovsd	%xmm0, 8(%rsp)
.LVL72:
	.loc 1 107 0
	movq	%r14, %rdx
	movl	$d, %esi
	movl	$.LC5, %edi
	call	show
.LVL73:
.L50:
	.loc 1 109 0
	vcvtsi2sdq	%r14, %xmm1, %xmm1
.LVL74:
	vmovsd	(%rsp), %xmm2
	vdivsd	%xmm1, %xmm2, %xmm0
.LBB23:
.LBB24:
	.loc 2 105 0
	vmovsd	8(%rsp), %xmm3
	vdivsd	%xmm1, %xmm3, %xmm1
	movq	%rbp, %rdx
	movl	$.LC6, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
.LVL75:
.LBE24:
.LBE23:
	.loc 1 90 0
	addq	$1, %rbx
.LVL76:
	cmpq	%r12, %rbx
	jne	.L49
	jmp	.L46
.LVL77:
.L48:
	.loc 1 98 0
	movl	$0, %eax
	call	start_counter
.LVL78:
	.loc 1 99 0
	movq	%rbp, %rcx
	movl	$d, %edx
	movl	$a2, %esi
	movl	$a1, %edi
	call	merge
.LVL79:
	.loc 1 102 0
	movl	$0, %eax
	call	get_counter
.LVL80:
	vmovsd	%xmm0, (%rsp)
.LVL81:
	.loc 1 103 0
	movl	$0, %eax
	call	start_counter
.LVL82:
	.loc 1 104 0
	movq	%rbp, %rcx
	movl	$d, %edx
	movl	$b2, %esi
	movl	$b1, %edi
	call	merge2
.LVL83:
	.loc 1 105 0
	movl	$0, %eax
	call	get_counter
.LVL84:
	vmovsd	%xmm0, 8(%rsp)
.LVL85:
	jmp	.L50
.LVL86:
.L46:
	.loc 1 111 0
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
.LVL87:
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	run, .-run
	.globl	main
	.type	main, @function
main:
.LFB39:
	.loc 1 113 0
	.cfi_startproc
.LVL88:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, %ebx
	movq	%rsi, %r13
.LVL89:
	.loc 1 114 0
	movl	$8192, %ebp
	.loc 1 117 0
	cmpl	$1, %edi
	jle	.L53
.LVL90:
.LBB25:
.LBB26:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movq	8(%rsi), %rdi
.LVL91:
	movl	$10, %edx
	movl	$0, %esi
.LVL92:
	call	strtol
.LVL93:
	movl	%eax, %ebp
.LVL94:
.L53:
.LBE26:
.LBE25:
	.loc 1 115 0
	movl	$5, %r12d
	.loc 1 119 0
	cmpl	$2, %ebx
	jle	.L54
.LVL95:
.LBB27:
.LBB28:
	.loc 3 286 0
	movq	16(%r13), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
.LVL96:
	movl	%eax, %r12d
.LVL97:
.L54:
.LBE28:
.LBE27:
	.loc 1 116 0
	movl	$1, %edx
	.loc 1 121 0
	cmpl	$3, %ebx
	jle	.L55
.LVL98:
.LBB29:
.LBB30:
	.loc 3 286 0
	movq	24(%r13), %rdi
	movb	$10, %dl
	movl	$0, %esi
	call	strtol
.LVL99:
.LBE30:
.LBE29:
	.loc 1 122 0
	movl	%eax, %edx
.LVL100:
.L55:
	.loc 1 123 0
	movslq	%r12d, %rsi
	movslq	%ebp, %rdi
	call	run
.LVL101:
	.loc 1 125 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL102:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL103:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL104:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL105:
	ret
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.comm	b2,65536,32
	.comm	b1,65536,32
	.comm	d,131072,32
	.comm	a2,65536,32
	.comm	a1,65536,32
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.file 9 "../include/clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb51
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF73
	.byte	0x1
	.long	.LASF74
	.long	.LASF75
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
	.byte	0xd4
	.long	0x46
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF9
	.byte	0x5
	.byte	0x8d
	.long	0x34
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x8e
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.value	0x111
	.long	0x22a
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x112
	.long	0x70
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x117
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x118
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x119
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x11a
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x11b
	.long	0x96
	.byte	0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11c
	.long	0x96
	.byte	0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11d
	.long	0x96
	.byte	0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x11e
	.long	0x96
	.byte	0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x120
	.long	0x96
	.byte	0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x121
	.long	0x96
	.byte	0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x122
	.long	0x96
	.byte	0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x124
	.long	0x262
	.byte	0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x126
	.long	0x268
	.byte	0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x128
	.long	0x70
	.byte	0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12c
	.long	0x70
	.byte	0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x12e
	.long	0x77
	.byte	0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x132
	.long	0x54
	.byte	0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x133
	.long	0x62
	.byte	0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x134
	.long	0x26e
	.byte	0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x138
	.long	0x27e
	.byte	0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x141
	.long	0x82
	.byte	0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x14a
	.long	0x94
	.byte	0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x14b
	.long	0x94
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14c
	.long	0x94
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14d
	.long	0x94
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x14e
	.long	0x3b
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x150
	.long	0x70
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x152
	.long	0x284
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xbc
	.long	0x262
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.byte	0xbd
	.long	0x262
	.byte	0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xbe
	.long	0x268
	.byte	0x8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xc2
	.long	0x70
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x231
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xc
	.long	0x9c
	.long	0x27e
	.uleb128 0xd
	.long	0x8d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0xc
	.long	0x9c
	.long	0x294
	.uleb128 0xd
	.long	0x8d
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29a
	.uleb128 0xe
	.long	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0xf
	.long	.LASF68
	.byte	0x2
	.byte	0x67
	.long	0x70
	.byte	0x3
	.long	0x2ca
	.uleb128 0x10
	.long	.LASF49
	.byte	0x2
	.byte	0x67
	.long	0x294
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF66
	.byte	0x3
	.value	0x11c
	.long	0x70
	.byte	0x3
	.long	0x2e8
	.uleb128 0x13
	.long	.LASF50
	.byte	0x3
	.value	0x11c
	.long	0x294
	.byte	0
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x8
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a
	.uleb128 0x15
	.long	.LASF51
	.byte	0x1
	.byte	0x8
	.long	0x36a
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF52
	.byte	0x1
	.byte	0x8
	.long	0x36a
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0x8
	.long	0x36a
	.long	.LLST2
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x8
	.long	0x34
	.long	.LLST3
	.uleb128 0x17
	.string	"i1"
	.byte	0x1
	.byte	0x9
	.long	0x34
	.long	.LLST4
	.uleb128 0x17
	.string	"i2"
	.byte	0x1
	.byte	0xa
	.long	0x34
	.long	.LLST5
	.uleb128 0x17
	.string	"id"
	.byte	0x1
	.byte	0xb
	.long	0x34
	.long	.LLST6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.byte	0x19
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x419
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.byte	0x19
	.long	0x36a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.byte	0x19
	.long	0x36a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0x19
	.long	0x36a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0x19
	.long	0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.string	"i1"
	.byte	0x1
	.byte	0x1a
	.long	0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.string	"i2"
	.byte	0x1
	.byte	0x1b
	.long	0x34
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1b
	.string	"id"
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x1c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x1a
	.string	"v1"
	.byte	0x1
	.byte	0x1f
	.long	0x34
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1a
	.string	"v2"
	.byte	0x1
	.byte	0x20
	.long	0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.byte	0x21
	.long	0x34
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x31
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x535
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0x31
	.long	0x96
	.long	.LLST7
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x31
	.long	0x36a
	.long	.LLST8
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x31
	.long	0x34
	.long	.LLST9
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x32
	.long	0x34
	.long	.LLST10
	.uleb128 0x1e
	.long	0x2ad
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.byte	0x1
	.byte	0x33
	.long	0x4bf
	.uleb128 0x1f
	.long	0x2bd
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL25
	.long	0xac9
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
	.quad	.LC0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2ad
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0x1
	.byte	0x35
	.long	0x504
	.uleb128 0x22
	.long	0x2bd
	.long	.LLST11
	.uleb128 0x20
	.quad	.LVL27
	.long	0xac9
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
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x2ad
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0x1
	.byte	0x36
	.uleb128 0x24
	.long	0x2bd
	.uleb128 0x20
	.quad	.LVL30
	.long	0xae4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF59
	.byte	0x1
	.byte	0x38
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c0
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x38
	.long	0x5b
	.long	.LLST12
	.uleb128 0x17
	.string	"id"
	.byte	0x1
	.byte	0x3a
	.long	0x34
	.long	.LLST13
	.uleb128 0x17
	.string	"i1"
	.byte	0x1
	.byte	0x3a
	.long	0x34
	.long	.LLST14
	.uleb128 0x17
	.string	"i2"
	.byte	0x1
	.byte	0x3a
	.long	0x34
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF56
	.byte	0x1
	.byte	0x3f
	.long	0x34
	.long	.LLST16
	.uleb128 0x26
	.quad	.LVL34
	.long	0xafd
	.long	0x5b2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL40
	.long	0xb0f
	.byte	0
	.uleb128 0x28
	.string	"run"
	.byte	0x1
	.byte	0x57
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e3
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x57
	.long	0x34
	.long	.LLST17
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.byte	0x57
	.long	0x34
	.long	.LLST18
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0x57
	.long	0x5b
	.long	.LLST19
	.uleb128 0x17
	.string	"t1"
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.long	.LLST20
	.uleb128 0x17
	.string	"t2"
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.long	.LLST21
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x59
	.long	0x34
	.long	.LLST22
	.uleb128 0x1e
	.long	0x2ad
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x1
	.byte	0x6d
	.long	0x69e
	.uleb128 0x22
	.long	0x2bd
	.long	.LLST23
	.uleb128 0x20
	.quad	.LVL75
	.long	0xac9
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xc
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x1b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xc
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x7e
	.sleb128 0
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL60
	.long	0x535
	.long	0x6b6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL62
	.long	0x419
	.long	0x6e8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	a1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL63
	.long	0x419
	.long	0x71a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	a2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL64
	.long	0xb1b
	.uleb128 0x26
	.quad	.LVL65
	.long	0x2e8
	.long	0x766
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	a2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL66
	.long	0x419
	.long	0x798
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL67
	.long	0xb28
	.uleb128 0x27
	.quad	.LVL69
	.long	0xb1b
	.uleb128 0x26
	.quad	.LVL70
	.long	0x370
	.long	0x7f1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	b1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	b2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL71
	.long	0xb28
	.uleb128 0x26
	.quad	.LVL73
	.long	0x419
	.long	0x830
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL78
	.long	0xb1b
	.uleb128 0x26
	.quad	.LVL79
	.long	0x2e8
	.long	0x87c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	a2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL80
	.long	0xb28
	.uleb128 0x27
	.quad	.LVL82
	.long	0xb1b
	.uleb128 0x26
	.quad	.LVL83
	.long	0x370
	.long	0x8d5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	b1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	b2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL84
	.long	0xb28
	.byte	0
	.uleb128 0x29
	.long	.LASF77
	.byte	0x1
	.byte	0x71
	.long	0x70
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xa28
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.byte	0x71
	.long	0x70
	.long	.LLST24
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0x71
	.long	0xa28
	.long	.LLST25
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x72
	.long	0x70
	.long	.LLST26
	.uleb128 0x25
	.long	.LASF61
	.byte	0x1
	.byte	0x73
	.long	0x70
	.long	.LLST27
	.uleb128 0x25
	.long	.LASF60
	.byte	0x1
	.byte	0x74
	.long	0x5b
	.long	.LLST28
	.uleb128 0x1e
	.long	0x2ca
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0x1
	.byte	0x76
	.long	0x98c
	.uleb128 0x22
	.long	0x2db
	.long	.LLST29
	.uleb128 0x20
	.quad	.LVL93
	.long	0xb39
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2ca
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0x1
	.byte	0x78
	.long	0x9c9
	.uleb128 0x22
	.long	0x2db
	.long	.LLST30
	.uleb128 0x20
	.quad	.LVL96
	.long	0xb39
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x2ca
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0x1
	.byte	0x7a
	.long	0xa01
	.uleb128 0x22
	.long	0x2db
	.long	.LLST31
	.uleb128 0x20
	.quad	.LVL99
	.long	0xb39
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL101
	.long	0x5c0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0x2a
	.long	.LASF64
	.byte	0x7
	.byte	0xa9
	.long	0x268
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x7
	.byte	0xaa
	.long	0x268
	.uleb128 0xc
	.long	0x34
	.long	0xa55
	.uleb128 0x2b
	.long	0x8d
	.value	0x1fff
	.byte	0
	.uleb128 0x2c
	.string	"a1"
	.byte	0x1
	.byte	0x2e
	.long	0xa44
	.uleb128 0x9
	.byte	0x3
	.quad	a1
	.uleb128 0x2c
	.string	"a2"
	.byte	0x1
	.byte	0x2e
	.long	0xa44
	.uleb128 0x9
	.byte	0x3
	.quad	a2
	.uleb128 0xc
	.long	0x34
	.long	0xa8e
	.uleb128 0x2b
	.long	0x8d
	.value	0x3fff
	.byte	0
	.uleb128 0x2c
	.string	"d"
	.byte	0x1
	.byte	0x2e
	.long	0xa7d
	.uleb128 0x9
	.byte	0x3
	.quad	d
	.uleb128 0x2c
	.string	"b1"
	.byte	0x1
	.byte	0x2f
	.long	0xa44
	.uleb128 0x9
	.byte	0x3
	.quad	b1
	.uleb128 0x2c
	.string	"b2"
	.byte	0x1
	.byte	0x2f
	.long	0xa44
	.uleb128 0x9
	.byte	0x3
	.quad	b2
	.uleb128 0x2d
	.long	.LASF67
	.byte	0x2
	.byte	0x58
	.long	0x70
	.long	0xae4
	.uleb128 0x2e
	.long	0x70
	.uleb128 0x2e
	.long	0x294
	.uleb128 0x11
	.byte	0
	.uleb128 0x2f
	.long	.LASF69
	.byte	0x8
	.byte	0
	.long	.LASF78
	.long	0x70
	.long	0xafd
	.uleb128 0x2e
	.long	0x70
	.byte	0
	.uleb128 0x30
	.long	.LASF70
	.byte	0x3
	.value	0x14a
	.long	0xb0f
	.uleb128 0x2e
	.long	0x5b
	.byte	0
	.uleb128 0x31
	.long	.LASF79
	.byte	0x3
	.value	0x147
	.long	0x34
	.uleb128 0x32
	.long	.LASF80
	.byte	0x9
	.byte	0x4
	.long	0xb28
	.uleb128 0x11
	.byte	0
	.uleb128 0x33
	.long	.LASF71
	.byte	0x9
	.byte	0x7
	.long	0x2d
	.long	0xb39
	.uleb128 0x11
	.byte	0
	.uleb128 0x34
	.long	.LASF72
	.byte	0x3
	.byte	0xb8
	.long	0x34
	.uleb128 0x2e
	.long	0x294
	.uleb128 0x2e
	.long	0xa28
	.uleb128 0x2e
	.long	0x70
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL11-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL16-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL17-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL15-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x5a
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL20-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL25-1-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL23-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL32-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL20-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL22-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL31-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL26-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL34-1-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL56-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL38-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL38-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL38-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL47-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL53-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL38-.Ltext0
	.quad	.LVL40-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL41-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL59-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL86-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL59-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL87-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL59-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL86-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL81-.Ltext0
	.quad	.LVL82-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL82-1-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL72-.Ltext0
	.quad	.LVL73-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL73-1-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL61-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL76-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL74-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL88-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL91-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL102-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL88-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL92-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL105-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL89-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.quad	.LVL94-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL89-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.quad	.LVL97-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL89-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL101-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL90-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.quad	.LVL92-.Ltext0
	.quad	.LVL93-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL95-.Ltext0
	.quad	.LVL96-1-.Ltext0
	.value	0x2
	.byte	0x7d
	.sleb128 16
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-1-.Ltext0
	.value	0x2
	.byte	0x7d
	.sleb128 24
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF74:
	.string	"merge.c"
.LASF56:
	.string	"take1"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF59:
	.string	"init"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF61:
	.string	"trials"
.LASF47:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF57:
	.string	"show"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF1:
	.string	"long int"
.LASF72:
	.string	"strtol"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF78:
	.string	"putchar"
.LASF0:
	.string	"double"
.LASF67:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF43:
	.string	"_IO_marker"
.LASF64:
	.string	"stdin"
.LASF5:
	.string	"unsigned int"
.LASF60:
	.string	"seed"
.LASF2:
	.string	"long unsigned int"
.LASF55:
	.string	"merge2"
.LASF18:
	.string	"_IO_write_ptr"
.LASF69:
	.string	"__builtin_putchar"
.LASF45:
	.string	"_sbuf"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF58:
	.string	"label"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF65:
	.string	"stdout"
.LASF79:
	.string	"random"
.LASF70:
	.string	"srandom"
.LASF11:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF75:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF76:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF53:
	.string	"dest"
.LASF50:
	.string	"__nptr"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF51:
	.string	"src1"
.LASF52:
	.string	"src2"
.LASF66:
	.string	"atoi"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF73:
	.string	"GNU C 4.8.1 -mavx2 -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF12:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF71:
	.string	"get_counter"
.LASF49:
	.string	"__fmt"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF63:
	.string	"argv"
.LASF80:
	.string	"start_counter"
.LASF23:
	.string	"_IO_backup_base"
.LASF62:
	.string	"argc"
.LASF77:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF54:
	.string	"merge"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
