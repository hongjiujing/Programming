	.file	"lower.c"
	.text
.Ltext0:
	.type	run_test, @function
run_test:
.LFB64:
	.file 1 "lower.c"
	.loc 1 93 0
	.cfi_startproc
.LVL0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	movq	%rsi, 8(%rsp)
	.loc 1 97 0
	movl	$0, %edi
.LVL1:
	call	set_fcyc_compensate
.LVL2:
	.loc 1 98 0
	leaq	8(%rsp), %rsi
.LVL3:
	movq	%rbx, %rdi
	call	fcyc
.LVL4:
	.loc 1 99 0
	vmovsd	.LC0(%rip), %xmm1
	vmulsd	clock_rate(%rip), %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
.LVL5:
	.loc 1 101 0
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL6:
	ret
	.cfi_endproc
.LFE64:
	.size	run_test, .-run_test
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB61:
	.loc 1 65 0
	.cfi_startproc
.LVL7:
	.loc 1 67 0
	cmpb	$0, (%rdi)
	je	.L6
	.loc 1 66 0
	movl	$0, %eax
.LVL8:
.L5:
	.loc 1 69 0
	addq	$1, %rax
.LVL9:
	.loc 1 67 0
	cmpb	$0, (%rdi,%rax)
	jne	.L5
	rep; ret
.LVL10:
.L6:
	.loc 1 66 0
	movl	$0, %eax
	.loc 1 72 0
	ret
	.cfi_endproc
.LFE61:
	.size	strlen, .-strlen
	.globl	lower1
	.type	lower1, @function
lower1:
.LFB59:
	.loc 1 43 0
	.cfi_startproc
.LVL11:
	movq	%rdi, %rsi
.LVL12:
	.loc 1 46 0
	movl	$0, %edx
	movq	$-1, %r10
	movl	$0, %eax
	jmp	.L8
.LVL13:
.L10:
	.loc 1 47 0
	movzbl	(%rsi,%rdx), %edi
	leal	-65(%rdi), %r8d
	cmpb	$25, %r8b
	ja	.L9
	.loc 1 48 0
	addl	$32, %edi
	movb	%dil, (%rsi,%r9)
.L9:
	.loc 1 46 0
	addq	$1, %rdx
.LVL14:
.L8:
	.loc 1 46 0 is_stmt 0 discriminator 1
	movq	%rdx, %r9
	movq	%rsi, %rdi
	movq	%r10, %rcx
	repnz; scasb
	notq	%rcx
	movq	%rcx, %r8
	subq	$1, %r8
	cmpq	%r8, %rdx
	jb	.L10
	.loc 1 49 0 is_stmt 1
	rep; ret
	.cfi_endproc
.LFE59:
	.size	lower1, .-lower1
	.globl	test_lower1
	.type	test_lower1, @function
test_lower1:
.LFB62:
	.loc 1 76 0
	.cfi_startproc
.LVL15:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 77 0
	movq	(%rdi), %rbx
.LVL16:
.LBB26:
.LBB27:
	.loc 1 32 0
	movb	$0, data(%rbx)
.LBE27:
.LBE26:
	.loc 1 79 0
	movl	$data, %edi
.LVL17:
	call	lower1
.LVL18:
.LBB28:
.LBB29:
	.loc 1 37 0
	movabsq	$5675921253449092805, %rdx
	movq	%rbx, %rax
	imulq	%rdx
	sarq	$3, %rdx
	movq	%rbx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %rax
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addl	$97, %eax
	movb	%al, data(%rbx)
.LBE29:
.LBE28:
	.loc 1 81 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL19:
	ret
	.cfi_endproc
.LFE62:
	.size	test_lower1, .-test_lower1
	.globl	lower2
	.type	lower2, @function
lower2:
.LFB60:
	.loc 1 53 0
	.cfi_startproc
.LVL20:
	movq	%rdi, %rsi
	.loc 1 55 0
	movl	$0, %eax
	movq	$-1, %rcx
	repnz; scasb
.LVL21:
	notq	%rcx
	subq	$1, %rcx
	movq	%rcx, %rdi
.LVL22:
	.loc 1 57 0
	testq	%rcx, %rcx
	jle	.L13
	movl	$0, %eax
.LVL23:
.L16:
	.loc 1 58 0
	movzbl	(%rsi,%rax), %edx
	leal	-65(%rdx), %ecx
	cmpb	$25, %cl
	ja	.L15
	.loc 1 59 0
	addl	$32, %edx
	movb	%dl, (%rsi,%rax)
.L15:
	.loc 1 57 0
	addq	$1, %rax
.LVL24:
	cmpq	%rax, %rdi
	jne	.L16
.LVL25:
.L13:
	rep; ret
	.cfi_endproc
.LFE60:
	.size	lower2, .-lower2
	.globl	test_lower2
	.type	test_lower2, @function
test_lower2:
.LFB63:
	.loc 1 84 0
	.cfi_startproc
.LVL26:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 85 0
	movq	(%rdi), %rbx
.LVL27:
.LBB34:
.LBB35:
	.loc 1 32 0
	movb	$0, data(%rbx)
.LBE35:
.LBE34:
	.loc 1 87 0
	movl	$data, %edi
.LVL28:
	call	lower2
.LVL29:
.LBB36:
.LBB37:
	.loc 1 37 0
	movabsq	$5675921253449092805, %rdx
	movq	%rbx, %rax
	imulq	%rdx
	sarq	$3, %rdx
	movq	%rbx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %rax
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addl	$97, %eax
	movb	%al, data(%rbx)
.LBE37:
.LBE36:
	.loc 1 89 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL30:
	ret
	.cfi_endproc
.LFE63:
	.size	test_lower2, .-test_lower2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Length\tlower1\tlower2"
.LC2:
	.string	"%ld"
.LC3:
	.string	"\t%f"
.LC4:
	.string	"\t%f\n"
	.text
	.globl	linear
	.type	linear, @function
linear:
.LFB65:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LVL31:
.LBB38:
.LBB39:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movl	$.LC1, %edi
	call	puts
.LVL32:
.LBE39:
.LBE38:
	.loc 1 109 0
	movl	$20000, %ebx
.LVL33:
.L21:
.LBB40:
.LBB41:
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL34:
.LBE41:
.LBE40:
	.loc 1 111 0
	movq	%rbx, %rsi
	movl	$test_lower1, %edi
	call	run_test
.LVL35:
.LBB42:
.LBB43:
	.loc 2 105 0
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL36:
.LBE43:
.LBE42:
	.loc 1 112 0
	movq	%rbx, %rsi
	movl	$test_lower2, %edi
	call	run_test
.LVL37:
.LBB44:
.LBB45:
	.loc 2 105 0
	movl	$.LC4, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL38:
.LBE45:
.LBE44:
	.loc 1 109 0
	addq	$20000, %rbx
.LVL39:
	cmpq	$520000, %rbx
	jne	.L21
	.loc 1 114 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL40:
	ret
	.cfi_endproc
.LFE65:
	.size	linear, .-linear
	.section	.rodata.str1.1
.LC5:
	.string	"& %ld "
.LC6:
	.string	" \\\\"
.LC7:
	.string	"& %.2f "
.LC8:
	.string	"& %.4f "
	.text
	.globl	expo
	.type	expo, @function
expo:
.LFB66:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.LVL41:
	.loc 1 119 0
	movl	$16384, %ebx
.LVL42:
.L25:
.LBB46:
.LBB47:
	.loc 2 105 0
	movq	%rbx, %rdx
	movl	$.LC5, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL43:
.LBE47:
.LBE46:
	.loc 1 119 0
	addq	%rbx, %rbx
.LVL44:
	cmpq	$1048576, %rbx
	jle	.L25
.LVL45:
.LBB48:
.LBB49:
	.loc 2 105 0
	movl	$.LC6, %edi
	call	puts
.LVL46:
.LBE49:
.LBE48:
	.loc 1 122 0
	movl	$16384, %ebx
.LVL47:
.L27:
	.loc 1 123 0 discriminator 2
	movq	%rbx, %rsi
	movl	$test_lower1, %edi
	call	run_test
.LVL48:
.LBB50:
.LBB51:
	.loc 2 105 0 discriminator 2
	movl	$.LC7, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL49:
.LBE51:
.LBE50:
	.loc 1 122 0 discriminator 2
	addq	%rbx, %rbx
.LVL50:
	cmpq	$1048576, %rbx
	jle	.L27
.LVL51:
.LBB52:
.LBB53:
	.loc 2 105 0
	movl	$.LC6, %edi
	call	puts
.LVL52:
.LBE53:
.LBE52:
	.loc 1 125 0
	movl	$16384, %ebx
.LVL53:
.L29:
	.loc 1 126 0 discriminator 2
	movq	%rbx, %rsi
	movl	$test_lower2, %edi
	call	run_test
.LVL54:
.LBB54:
.LBB55:
	.loc 2 105 0 discriminator 2
	movl	$.LC8, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL55:
.LBE55:
.LBE54:
	.loc 1 125 0 discriminator 2
	addq	%rbx, %rbx
.LVL56:
	cmpq	$1048576, %rbx
	jle	.L29
.LVL57:
.LBB56:
.LBB57:
	.loc 2 105 0
	movl	$.LC6, %edi
	call	puts
.LVL58:
.LBE57:
.LBE56:
	.loc 1 128 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL59:
	ret
	.cfi_endproc
.LFE66:
	.size	expo, .-expo
	.globl	main
	.type	main, @function
main:
.LFB67:
	.loc 1 131 0
	.cfi_startproc
.LVL60:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
.LVL61:
.LBB60:
.LBB61:
	.loc 1 26 0
	movl	$0, %ecx
	.loc 1 27 0
	movabsq	$5675921253449092805, %rsi
.LVL62:
.L33:
	movq	%rcx, %rax
	imulq	%rsi
	sarq	$3, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rdx,%rax,4), %rax
	addq	%rax, %rax
	movq	%rcx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addl	$97, %eax
	movb	%al, data(%rcx)
	.loc 1 26 0
	addq	$1, %rcx
.LVL63:
	cmpq	$1048576, %rcx
	jne	.L33
.LBE61:
.LBE60:
	.loc 1 133 0
	movl	$1, %edi
	call	mhz
.LVL64:
	vmovsd	%xmm0, clock_rate(%rip)
	.loc 1 134 0
	cmpl	$1, %ebx
	jle	.L34
	.loc 1 135 0
	movl	$0, %eax
	call	expo
.LVL65:
	jmp	.L35
.L34:
	.loc 1 137 0
	movl	$0, %eax
	call	linear
.LVL66:
.L35:
	.loc 1 139 0
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL67:
	ret
	.cfi_endproc
.LFE67:
	.size	main, .-main
	.local	clock_rate
	.comm	clock_rate,8,8
	.local	data
	.comm	data,1048576,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "../include/fcyc.h"
	.file 7 "/usr/include/string.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "<built-in>"
	.file 10 "../include/clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xad9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF77
	.byte	0x1
	.long	.LASF78
	.long	.LASF79
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0xd4
	.long	0x3f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0x8d
	.long	0x70
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x8e
	.long	0x70
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
	.byte	0x5
	.value	0x111
	.long	0x22a
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.value	0x112
	.long	0x69
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.value	0x117
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.value	0x118
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.value	0x119
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.value	0x11a
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.value	0x11b
	.long	0x96
	.byte	0x28
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.value	0x11c
	.long	0x96
	.byte	0x30
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.value	0x11d
	.long	0x96
	.byte	0x38
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.value	0x11e
	.long	0x96
	.byte	0x40
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.value	0x120
	.long	0x96
	.byte	0x48
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.value	0x121
	.long	0x96
	.byte	0x50
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.value	0x122
	.long	0x96
	.byte	0x58
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.value	0x124
	.long	0x262
	.byte	0x60
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.value	0x126
	.long	0x268
	.byte	0x68
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.value	0x128
	.long	0x69
	.byte	0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.value	0x12c
	.long	0x69
	.byte	0x74
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.value	0x12e
	.long	0x77
	.byte	0x78
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.value	0x132
	.long	0x4d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.value	0x133
	.long	0x5b
	.byte	0x82
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.value	0x134
	.long	0x26e
	.byte	0x83
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.value	0x138
	.long	0x27e
	.byte	0x88
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.value	0x141
	.long	0x82
	.byte	0x90
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.value	0x14a
	.long	0x94
	.byte	0x98
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.value	0x14b
	.long	0x94
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.value	0x14c
	.long	0x94
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.value	0x14d
	.long	0x94
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.value	0x14e
	.long	0x34
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.value	0x150
	.long	0x69
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5
	.value	0x152
	.long	0x284
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF80
	.byte	0x5
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xbc
	.long	0x262
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0xbd
	.long	0x262
	.byte	0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xbe
	.long	0x268
	.byte	0x8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xc2
	.long	0x69
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
	.uleb128 0x3
	.long	.LASF49
	.byte	0x6
	.byte	0x7
	.long	0x2b8
	.uleb128 0x6
	.byte	0x8
	.long	0x2be
	.uleb128 0xf
	.long	0x2c9
	.uleb128 0x10
	.long	0x2c9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x70
	.uleb128 0x11
	.long	.LASF61
	.byte	0x2
	.byte	0x67
	.long	0x69
	.byte	0x3
	.long	0x2ec
	.uleb128 0x12
	.long	.LASF53
	.byte	0x2
	.byte	0x67
	.long	0x294
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x5c
	.long	0x2d
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b
	.uleb128 0x15
	.string	"fun"
	.byte	0x1
	.byte	0x5c
	.long	0x2ad
	.long	.LLST0
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0x5c
	.long	0x70
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.byte	0x5e
	.long	0x2d
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x5f
	.long	0x2d
	.long	.LLST3
	.uleb128 0x17
	.quad	.LVL2
	.long	0xa6c
	.long	0x360
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.quad	.LVL4
	.long	0xa7d
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x7
	.value	0x18f
	.long	0x34
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ba
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x40
	.long	0x294
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0x42
	.long	0x70
	.long	.LLST5
	.byte	0
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x1
	.byte	0x2a
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f2
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x2a
	.long	0x96
	.long	.LLST6
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.long	0x70
	.long	.LLST7
	.byte	0
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	0x40a
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.long	0x70
	.byte	0
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	0x422
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x23
	.long	0x70
	.byte	0
	.uleb128 0x1b
	.long	.LASF57
	.byte	0x1
	.byte	0x4b
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c3
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.byte	0x4b
	.long	0x2c9
	.long	.LLST8
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0x4d
	.long	0x70
	.long	.LLST9
	.uleb128 0x20
	.long	0x3f2
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x4e
	.long	0x482
	.uleb128 0x21
	.long	0x3fe
	.long	.LLST9
	.byte	0
	.uleb128 0x20
	.long	0x40a
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x50
	.long	0x4a7
	.uleb128 0x21
	.long	0x416
	.long	.LLST11
	.byte	0
	.uleb128 0x19
	.quad	.LVL18
	.long	0x3ba
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF59
	.byte	0x1
	.byte	0x34
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x50a
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0x34
	.long	0x96
	.long	.LLST12
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x36
	.long	0x70
	.long	.LLST13
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0x37
	.long	0x70
	.long	.LLST14
	.byte	0
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x1
	.byte	0x53
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ab
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.byte	0x53
	.long	0x2c9
	.long	.LLST15
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.byte	0x55
	.long	0x70
	.long	.LLST16
	.uleb128 0x20
	.long	0x3f2
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x1
	.byte	0x56
	.long	0x56a
	.uleb128 0x21
	.long	0x3fe
	.long	.LLST16
	.byte	0
	.uleb128 0x20
	.long	0x40a
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.byte	0x1
	.byte	0x58
	.long	0x58f
	.uleb128 0x21
	.long	0x416
	.long	.LLST18
	.byte	0
	.uleb128 0x19
	.quad	.LVL29
	.long	0x4c3
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF62
	.byte	0x1
	.byte	0x69
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x744
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x6b
	.long	0x70
	.long	.LLST19
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x1
	.byte	0x6c
	.long	0x613
	.uleb128 0x23
	.long	0x2df
	.uleb128 0x19
	.quad	.LVL32
	.long	0xa97
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x1
	.byte	0x6e
	.long	0x665
	.uleb128 0x24
	.long	0x2df
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL34
	.long	0xab0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.byte	0x6f
	.long	0x6b1
	.uleb128 0x24
	.long	0x2df
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL36
	.long	0xab0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x1
	.byte	0x70
	.long	0x6fd
	.uleb128 0x24
	.long	0x2df
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL38
	.long	0xab0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LVL35
	.long	0x2ec
	.long	0x722
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test_lower1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.quad	.LVL37
	.long	0x2ec
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test_lower2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF64
	.byte	0x1
	.byte	0x74
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x955
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x76
	.long	0x70
	.long	.LLST20
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x1
	.byte	0x78
	.long	0x7c2
	.uleb128 0x24
	.long	0x2df
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL43
	.long	0xab0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x1
	.byte	0x79
	.long	0x7fe
	.uleb128 0x23
	.long	0x2df
	.uleb128 0x19
	.quad	.LVL46
	.long	0xa97
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x7b
	.long	0x84a
	.uleb128 0x24
	.long	0x2df
	.uleb128 0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL49
	.long	0xab0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x1
	.byte	0x7c
	.long	0x886
	.uleb128 0x23
	.long	0x2df
	.uleb128 0x19
	.quad	.LVL52
	.long	0xa97
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.byte	0x1
	.byte	0x7e
	.long	0x8d2
	.uleb128 0x24
	.long	0x2df
	.uleb128 0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL55
	.long	0xab0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2cf
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.byte	0x7f
	.long	0x90e
	.uleb128 0x23
	.long	0x2df
	.uleb128 0x19
	.quad	.LVL58
	.long	0xa97
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LVL48
	.long	0x2ec
	.long	0x933
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test_lower1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.quad	.LVL54
	.long	0x2ec
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test_lower2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF82
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	0x96b
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x19
	.long	0x70
	.byte	0
	.uleb128 0x27
	.long	.LASF66
	.byte	0x1
	.byte	0x82
	.long	0x69
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xa13
	.uleb128 0x1f
	.long	.LASF67
	.byte	0x1
	.byte	0x82
	.long	0x69
	.long	.LLST21
	.uleb128 0x1f
	.long	.LASF68
	.byte	0x1
	.byte	0x82
	.long	0xa13
	.long	.LLST22
	.uleb128 0x20
	.long	0x955
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.byte	0x1
	.byte	0x84
	.long	0x9e1
	.uleb128 0x28
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x29
	.long	0x961
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x17
	.quad	.LVL64
	.long	0xacb
	.long	0x9f8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.quad	.LVL65
	.long	0x744
	.uleb128 0x2a
	.quad	.LVL66
	.long	0x5ab
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0xc
	.long	0x9c
	.long	0xa2c
	.uleb128 0x2b
	.long	0x8d
	.long	0xfffff
	.byte	0
	.uleb128 0x2c
	.long	.LASF69
	.byte	0x1
	.byte	0x13
	.long	0xa19
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x2c
	.long	.LASF70
	.byte	0x1
	.byte	0x15
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	clock_rate
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x8
	.byte	0xa9
	.long	0x268
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x8
	.byte	0xaa
	.long	0x268
	.uleb128 0x2e
	.long	.LASF76
	.byte	0x6
	.byte	0x22
	.long	0xa7d
	.uleb128 0x10
	.long	0x70
	.byte	0
	.uleb128 0x2f
	.long	.LASF74
	.byte	0x6
	.byte	0xa
	.long	0x2d
	.long	0xa97
	.uleb128 0x10
	.long	0x2ad
	.uleb128 0x10
	.long	0x2c9
	.byte	0
	.uleb128 0x30
	.long	.LASF73
	.byte	0x9
	.byte	0
	.long	.LASF83
	.long	0x69
	.long	0xab0
	.uleb128 0x10
	.long	0x294
	.byte	0
	.uleb128 0x2f
	.long	.LASF75
	.byte	0x2
	.byte	0x58
	.long	0x69
	.long	0xacb
	.uleb128 0x10
	.long	0x69
	.uleb128 0x10
	.long	0x294
	.uleb128 0x13
	.byte	0
	.uleb128 0x31
	.string	"mhz"
	.byte	0xa
	.byte	0xa
	.long	0x2d
	.uleb128 0x10
	.long	0x69
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x31
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL6-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL2-1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	.LVL4-1-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x3
	.quad	clock_rate
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x412e8480
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL10-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LFE59-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL23-.Ltext0
	.quad	.LFE60-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL26-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL28-.Ltext0
	.quad	.LFE63-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL27-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4e20
	.byte	0x9f
	.quad	.LVL33-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL62-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL67-.Ltext0
	.quad	.LFE67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL62-.Ltext0
	.quad	.LFE67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LVL64-1-.Ltext0
	.value	0x1
	.byte	0x52
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
.LASF61:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF58:
	.string	"lenp"
.LASF8:
	.string	"size_t"
.LASF56:
	.string	"lower1"
.LASF32:
	.string	"_shortbuf"
.LASF59:
	.string	"lower2"
.LASF55:
	.string	"unset_len"
.LASF82:
	.string	"init"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF70:
	.string	"clock_rate"
.LASF47:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF62:
	.string	"linear"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF0:
	.string	"double"
.LASF75:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF76:
	.string	"set_fcyc_compensate"
.LASF43:
	.string	"_IO_marker"
.LASF71:
	.string	"stdin"
.LASF4:
	.string	"unsigned int"
.LASF65:
	.string	"strlen"
.LASF1:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF69:
	.string	"data"
.LASF63:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF77:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF73:
	.string	"__builtin_puts"
.LASF72:
	.string	"stdout"
.LASF74:
	.string	"fcyc"
.LASF83:
	.string	"puts"
.LASF49:
	.string	"test_funct"
.LASF11:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF79:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF54:
	.string	"set_len"
.LASF80:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF51:
	.string	"time"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF64:
	.string	"expo"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF52:
	.string	"length"
.LASF12:
	.string	"char"
.LASF57:
	.string	"test_lower1"
.LASF60:
	.string	"test_lower2"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF53:
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
.LASF68:
	.string	"argv"
.LASF81:
	.string	"run_test"
.LASF23:
	.string	"_IO_backup_base"
.LASF67:
	.string	"argc"
.LASF78:
	.string	"lower.c"
.LASF50:
	.string	"cycs"
.LASF66:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
