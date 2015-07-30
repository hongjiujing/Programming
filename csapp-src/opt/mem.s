	.file	"mem.c"
	.text
.Ltext0:
	.globl	sum_list
	.type	sum_list, @function
sum_list:
.LFB34:
	.file 1 "mem.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
	.loc 1 20 0
	testq	%rdi, %rdi
	je	.L4
	.loc 1 19 0
	movl	$0, %eax
.LVL1:
.L3:
	.loc 1 21 0
	addq	(%rdi), %rax
.LVL2:
	.loc 1 22 0
	movq	8(%rdi), %rdi
.LVL3:
	.loc 1 20 0
	testq	%rdi, %rdi
	jne	.L3
	rep; ret
.LVL4:
.L4:
	.loc 1 19 0
	movl	$0, %eax
	.loc 1 25 0
	ret
	.cfi_endproc
.LFE34:
	.size	sum_list, .-sum_list
	.globl	test_list
	.type	test_list, @function
test_list:
.LFB36:
	.loc 1 46 0
	.cfi_startproc
.LVL5:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
.LVL6:
	.loc 1 49 0
	cmpq	$0, 8(%rdi)
	movq	static_head(%rip), %rdi
.LVL7:
	cmove	dynamic_head(%rip), %rdi
.LVL8:
	.loc 1 50 0
	call	sum_list
.LVL9:
	movq	%rax, (%rbx)
	.loc 1 51 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL10:
	ret
	.cfi_endproc
.LFE36:
	.size	test_list, .-test_list
	.globl	init
	.type	init, @function
init:
.LFB35:
	.loc 1 30 0
	.cfi_startproc
.LVL11:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %r12
.LVL12:
	.loc 1 32 0
	testq	%rdi, %rdi
	jle	.L9
	movl	$block_alloc, %ebp
	movl	$0, %ebx
.LVL13:
.L11:
.LBB7:
	.loc 1 34 0 discriminator 2
	movl	$16, %edi
	call	malloc
.LVL14:
	.loc 1 35 0 discriminator 2
	movq	%rbx, (%rax)
	.loc 1 36 0 discriminator 2
	movq	dynamic_head(%rip), %rdx
	movq	%rdx, 8(%rax)
	.loc 1 37 0 discriminator 2
	movq	%rax, dynamic_head(%rip)
.LVL15:
	.loc 1 40 0 discriminator 2
	movq	%rbx, 0(%rbp)
	.loc 1 41 0 discriminator 2
	movq	static_head(%rip), %rax
	movq	%rax, 8(%rbp)
	.loc 1 42 0 discriminator 2
	movq	%rbp, static_head(%rip)
.LBE7:
	.loc 1 32 0 discriminator 2
	addq	$1, %rbx
.LVL16:
	addq	$16, %rbp
.LVL17:
	cmpq	%r12, %rbx
	jne	.L11
.LVL18:
.L9:
	.loc 1 44 0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL19:
	ret
	.cfi_endproc
.LFE35:
	.size	init, .-init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"dynamic"
.LC1:
	.string	"static"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"N = %ld, Allocation: %s, expected=%ld, got=%ld, tpe=%.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB37:
	.loc 1 53 0
	.cfi_startproc
.LVL20:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 57 0
	movq	$.LC0, 16(%rsp)
	movq	$.LC1, 24(%rsp)
.LVL21:
	.loc 1 59 0
	movl	$10000, %ebp
	.loc 1 60 0
	cmpl	$1, %edi
	jle	.L14
.LVL22:
.LBB8:
.LBB9:
	.file 2 "/usr/include/stdlib.h"
	.loc 2 286 0
	movq	8(%rsi), %rdi
.LVL23:
	movl	$10, %edx
	movl	$0, %esi
.LVL24:
	call	strtol
.LVL25:
.LBE9:
.LBE8:
	.loc 1 61 0
	movslq	%eax, %rbp
.LVL26:
.L14:
	.loc 1 62 0
	leaq	-1(%rbp), %r13
	imulq	%rbp, %r13
	movq	%r13, %rax
	shrq	$63, %rax
	addq	%rax, %r13
	sarq	%r13
.LVL27:
	.loc 1 63 0
	movq	%rbp, %rdi
	call	init
.LVL28:
	.loc 1 64 0
	movl	$0, %ebx
.LVL29:
.L16:
.LBB10:
	.loc 1 66 0 discriminator 2
	movq	$0, (%rsp)
	.loc 1 67 0 discriminator 2
	movq	%rbx, 8(%rsp)
	.loc 1 68 0 discriminator 2
	movq	%rsp, %rdi
	call	test_list
.LVL30:
	.loc 1 69 0 discriminator 2
	movq	(%rsp), %r12
.LVL31:
	.loc 1 70 0 discriminator 2
	movq	%rsp, %rsi
	movl	$test_list, %edi
	call	fcyc
.LVL32:
	.loc 1 71 0 discriminator 2
	vcvtsi2sdq	%rbp, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
.LVL33:
.LBB11:
.LBB12:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 105 0 discriminator 2
	movq	16(%rsp,%rbx,8), %rcx
	movq	%r12, %r9
	movq	%r13, %r8
	movq	%rbp, %rdx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL34:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 64 0 discriminator 2
	addq	$1, %rbx
.LVL35:
	cmpq	$2, %rbx
	jne	.L16
	.loc 1 76 0
	movl	$0, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL36:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL37:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL38:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL39:
	ret
	.cfi_endproc
.LFE37:
	.size	main, .-main
	.globl	static_head
	.bss
	.align 8
	.type	static_head, @object
	.size	static_head, 8
static_head:
	.zero	8
	.globl	dynamic_head
	.align 8
	.type	dynamic_head, @object
	.size	dynamic_head, 8
dynamic_head:
	.zero	8
	.comm	block_alloc,160000,32
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "../include/fcyc.h"
	.file 8 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x703
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF79
	.byte	0x1
	.long	.LASF80
	.long	.LASF81
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
	.long	.LASF82
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
	.uleb128 0x3
	.long	.LASF49
	.byte	0x7
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
	.long	0x34
	.uleb128 0x3
	.long	.LASF50
	.byte	0x1
	.byte	0x8
	.long	0x2da
	.uleb128 0x6
	.byte	0x8
	.long	0x2e0
	.uleb128 0x11
	.string	"ELE"
	.byte	0x10
	.byte	0x1
	.byte	0xa
	.long	0x305
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0xb
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x1
	.byte	0xc
	.long	0x2cf
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0x1
	.byte	0xd
	.long	0x2e0
	.uleb128 0x13
	.long	.LASF75
	.byte	0x2
	.value	0x11c
	.long	0x70
	.byte	0x3
	.long	0x32e
	.uleb128 0x14
	.long	.LASF53
	.byte	0x2
	.value	0x11c
	.long	0x294
	.byte	0
	.uleb128 0x15
	.long	.LASF83
	.byte	0x3
	.byte	0x67
	.long	0x70
	.byte	0x3
	.long	0x34b
	.uleb128 0x16
	.long	.LASF54
	.byte	0x3
	.byte	0x67
	.long	0x294
	.uleb128 0x17
	.byte	0
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x11
	.long	0x34
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a
	.uleb128 0x19
	.string	"ll"
	.byte	0x1
	.byte	0x11
	.long	0x2cf
	.long	.LLST0
	.uleb128 0x1a
	.string	"sum"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.long	.LLST1
	.byte	0
	.uleb128 0x1b
	.long	.LASF59
	.byte	0x1
	.byte	0x2e
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f1
	.uleb128 0x1c
	.long	.LASF55
	.byte	0x1
	.byte	0x2e
	.long	0x2c9
	.long	.LLST2
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.byte	0x2f
	.long	0x2c9
	.long	.LLST3
	.uleb128 0x1d
	.long	.LASF57
	.byte	0x1
	.byte	0x30
	.long	0x34
	.long	.LLST4
	.uleb128 0x1d
	.long	.LASF58
	.byte	0x1
	.byte	0x31
	.long	0x2cf
	.long	.LLST5
	.uleb128 0x1e
	.quad	.LVL9
	.long	0x34b
	.byte	0
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x1
	.byte	0x1e
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x45f
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0x1e
	.long	0x34
	.long	.LLST6
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.long	0x34
	.long	.LLST7
	.uleb128 0x1f
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1a
	.string	"ele"
	.byte	0x1
	.byte	0x22
	.long	0x2cf
	.long	.LLST8
	.uleb128 0x20
	.quad	.LVL14
	.long	0x6a0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x35
	.long	0x70
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x614
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0x35
	.long	0x70
	.long	.LLST9
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x1
	.byte	0x35
	.long	0x614
	.long	.LLST10
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.byte	0x36
	.long	0x61a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF66
	.byte	0x1
	.byte	0x37
	.long	0x34
	.long	.LLST11
	.uleb128 0x1d
	.long	.LASF67
	.byte	0x1
	.byte	0x38
	.long	0x34
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.byte	0x39
	.long	0x62a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF69
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.long	.LLST13
	.uleb128 0x1a
	.string	"tpe"
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.long	.LLST14
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x1
	.byte	0x3b
	.long	0x34
	.long	.LLST15
	.uleb128 0x23
	.long	0x310
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0x1
	.byte	0x3d
	.long	0x543
	.uleb128 0x24
	.long	0x321
	.long	.LLST16
	.uleb128 0x20
	.quad	.LVL25
	.long	0x6b6
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
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x5ff
	.uleb128 0x1a
	.string	"sum"
	.byte	0x1
	.byte	0x41
	.long	0x34
	.long	.LLST17
	.uleb128 0x23
	.long	0x32e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0x1
	.byte	0x48
	.long	0x5c5
	.uleb128 0x26
	.long	0x33e
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x20
	.quad	.LVL34
	.long	0x6d5
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
	.quad	.LC2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL30
	.long	0x38a
	.long	0x5dd
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.quad	.LVL32
	.long	0x6f0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test_list
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL28
	.long	0x3f1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0xc
	.long	0x34
	.long	0x62a
	.uleb128 0xd
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0x96
	.long	0x63a
	.uleb128 0xd
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.long	.LASF70
	.byte	0x8
	.byte	0xa9
	.long	0x268
	.uleb128 0x28
	.long	.LASF71
	.byte	0x8
	.byte	0xaa
	.long	0x268
	.uleb128 0xc
	.long	0x305
	.long	0x661
	.uleb128 0x29
	.long	0x8d
	.value	0x270f
	.byte	0
	.uleb128 0x2a
	.long	.LASF72
	.byte	0x1
	.byte	0xf
	.long	0x650
	.uleb128 0x9
	.byte	0x3
	.quad	block_alloc
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x1
	.byte	0x1b
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	dynamic_head
	.uleb128 0x2a
	.long	.LASF74
	.byte	0x1
	.byte	0x1c
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	static_head
	.uleb128 0x2b
	.long	.LASF76
	.byte	0x2
	.value	0x1d7
	.long	0x94
	.long	0x6b6
	.uleb128 0x10
	.long	0x3b
	.byte	0
	.uleb128 0x2c
	.long	.LASF77
	.byte	0x2
	.byte	0xb8
	.long	0x34
	.long	0x6d5
	.uleb128 0x10
	.long	0x294
	.uleb128 0x10
	.long	0x614
	.uleb128 0x10
	.long	0x70
	.byte	0
	.uleb128 0x2c
	.long	.LASF78
	.byte	0x3
	.byte	0x58
	.long	0x70
	.long	0x6f0
	.uleb128 0x10
	.long	0x70
	.uleb128 0x10
	.long	0x294
	.uleb128 0x17
	.byte	0
	.uleb128 0x2d
	.long	.LASF84
	.byte	0x7
	.byte	0xa
	.long	0x2d
	.uleb128 0x10
	.long	0x2ad
	.uleb128 0x10
	.long	0x2c9
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL3-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL4-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL10-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL7-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL10-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL19-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	static_head
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL23-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL20-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL24-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL27-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0xb
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL21-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x2710
	.byte	0x9f
	.quad	.LVL26-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL31-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x5c
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
.LASF83:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF76:
	.string	"malloc"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF57:
	.string	"use_static"
.LASF32:
	.string	"_shortbuf"
.LASF60:
	.string	"init"
.LASF20:
	.string	"_IO_buf_base"
.LASF72:
	.string	"block_alloc"
.LASF48:
	.string	"long long unsigned int"
.LASF59:
	.string	"test_list"
.LASF51:
	.string	"next"
.LASF47:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF1:
	.string	"long int"
.LASF77:
	.string	"strtol"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF73:
	.string	"dynamic_head"
.LASF0:
	.string	"double"
.LASF78:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF43:
	.string	"_IO_marker"
.LASF70:
	.string	"stdin"
.LASF5:
	.string	"unsigned int"
.LASF2:
	.string	"long unsigned int"
.LASF66:
	.string	"expected"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF80:
	.string	"mem.c"
.LASF4:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF52:
	.string	"list_rec"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF71:
	.string	"stdout"
.LASF84:
	.string	"fcyc"
.LASF67:
	.string	"version"
.LASF49:
	.string	"test_funct"
.LASF11:
	.string	"sizetype"
.LASF61:
	.string	"nele"
.LASF19:
	.string	"_IO_write_end"
.LASF81:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF82:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF69:
	.string	"time"
.LASF53:
	.string	"__nptr"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF62:
	.string	"sum_list"
.LASF75:
	.string	"atoi"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF55:
	.string	"info"
.LASF31:
	.string	"_vtable_offset"
.LASF79:
	.string	"GNU C 4.8.1 -mavx2 -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF58:
	.string	"head"
.LASF12:
	.string	"char"
.LASF50:
	.string	"list_ptr"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF68:
	.string	"vname"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF54:
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
.LASF65:
	.string	"argv"
.LASF23:
	.string	"_IO_backup_base"
.LASF64:
	.string	"argc"
.LASF56:
	.string	"resultp"
.LASF63:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF74:
	.string	"static_head"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
