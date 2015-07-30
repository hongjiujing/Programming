	.file	"cond-eg.c"
	.text
.Ltext0:
	.globl	minmax1
	.type	minmax1, @function
minmax1:
.LFB34:
	.file 1 "cond-eg.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
	.loc 1 15 0
	testq	%rdx, %rdx
	jle	.L1
	movl	$0, %eax
.LVL1:
.L4:
	.loc 1 16 0
	movq	(%rdi,%rax,8), %rcx
	movq	(%rsi,%rax,8), %r8
	cmpq	%r8, %rcx
	jle	.L3
.LVL2:
.LBB10:
	.loc 1 18 0
	movq	%r8, (%rdi,%rax,8)
	.loc 1 19 0
	movq	%rcx, (%rsi,%rax,8)
.LVL3:
.L3:
.LBE10:
	.loc 1 15 0
	addq	$1, %rax
.LVL4:
	cmpq	%rdx, %rax
	jne	.L4
.LVL5:
.L1:
	rep; ret
	.cfi_endproc
.LFE34:
	.size	minmax1, .-minmax1
	.globl	minmax2
	.type	minmax2, @function
minmax2:
.LFB35:
	.loc 1 28 0
	.cfi_startproc
.LVL6:
	.loc 1 30 0
	testq	%rdx, %rdx
	jle	.L5
	movl	$0, %eax
.LVL7:
.L7:
.LBB11:
	.loc 1 31 0 discriminator 2
	movq	(%rsi,%rax,8), %rcx
	movq	(%rdi,%rax,8), %r8
.LVL8:
	cmpq	%rcx, %r8
	movq	%rcx, %r9
	cmovle	%r8, %r9
	.loc 1 33 0 discriminator 2
	movq	%r9, (%rdi,%rax,8)
	.loc 1 32 0 discriminator 2
	cmovge	%r8, %rcx
.LVL9:
	.loc 1 34 0 discriminator 2
	movq	%rcx, (%rsi,%rax,8)
.LBE11:
	.loc 1 30 0 discriminator 2
	addq	$1, %rax
.LVL10:
	cmpq	%rdx, %rax
	jne	.L7
.LVL11:
.L5:
	rep; ret
	.cfi_endproc
.LFE35:
	.size	minmax2, .-minmax2
	.globl	init
	.type	init, @function
init:
.LFB36:
	.loc 1 44 0
	.cfi_startproc
	.loc 1 46 0
	cmpl	$1, %edi
	ja	.L9
	.loc 1 46 0
	movl	$0, %eax
	.loc 1 48 0
	movl	%edi, %ecx
	.loc 1 49 0
	movl	$1, %edx
	subl	%edi, %edx
.L11:
	.loc 1 48 0 discriminator 2
	movq	%rcx, a2(,%rax,8)
	movq	%rcx, a1(,%rax,8)
	.loc 1 49 0 discriminator 2
	movq	%rdx, b2(,%rax,8)
	movq	%rdx, b1(,%rax,8)
	.loc 1 47 0 discriminator 2
	addq	$1, %rax
	cmpq	$65536, %rax
	jne	.L11
	rep; ret
.L9:
	.loc 1 51 0
	cmpl	$2, %edi
	jne	.L12
	movl	$0, %eax
.LBB12:
	.loc 1 55 0
	movl	$1, %ecx
.L13:
	.loc 1 53 0 discriminator 2
	movq	%rax, %rdx
	andl	$1, %edx
	.loc 1 54 0 discriminator 2
	movq	%rdx, a2(,%rax,8)
	movq	%rdx, a1(,%rax,8)
	.loc 1 55 0 discriminator 2
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movq	%rsi, b2(,%rax,8)
	movq	%rsi, b1(,%rax,8)
.LBE12:
	.loc 1 52 0 discriminator 2
	addq	$1, %rax
	cmpq	$65536, %rax
	jne	.L13
	rep; ret
.L12:
	.loc 1 44 0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 58 0
	call	srandom
	.loc 1 59 0
	movl	$0, %ebx
.L14:
.LBB13:
	.loc 1 60 0 discriminator 2
	call	random
	movq	%rax, %rbp
	.loc 1 61 0 discriminator 2
	call	random
	.loc 1 62 0 discriminator 2
	movq	%rbp, a2(,%rbx,8)
	movq	%rbp, a1(,%rbx,8)
	.loc 1 63 0 discriminator 2
	movq	%rax, b2(,%rbx,8)
	movq	%rax, b1(,%rbx,8)
.LBE13:
	.loc 1 59 0 discriminator 2
	addq	$1, %rbx
	cmpq	$65536, %rbx
	jne	.L14
	.loc 1 66 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	init, .-init
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%ld\t%.2f\t%.2f\n"
	.text
	.globl	run
	.type	run, @function
run:
.LFB37:
	.loc 1 68 0
	.cfi_startproc
.LVL12:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, %r12
.LVL13:
	.loc 1 71 0
	testq	%rsi, %rsi
	jle	.L17
	movq	%rdi, %rbx
	movl	%edx, %r13d
	movl	$0, %ebp
.LVL14:
.L19:
	.loc 1 72 0 discriminator 2
	movl	%r13d, %edi
	call	init
.LVL15:
	.loc 1 73 0 discriminator 2
	movl	$0, %eax
	call	start_counter
.LVL16:
	.loc 1 74 0 discriminator 2
	movq	%rbx, %rdx
	movl	$b1, %esi
	movl	$a1, %edi
	call	minmax1
.LVL17:
	.loc 1 75 0 discriminator 2
	movl	$0, %eax
	call	get_counter
.LVL18:
	vmovsd	%xmm0, 8(%rsp)
.LVL19:
	.loc 1 76 0 discriminator 2
	movl	$0, %eax
	call	start_counter
.LVL20:
	.loc 1 77 0 discriminator 2
	movq	%rbx, %rdx
	movl	$b2, %esi
	movl	$a2, %edi
	call	minmax2
.LVL21:
	.loc 1 78 0 discriminator 2
	movl	$0, %eax
	call	get_counter
.LVL22:
	.loc 1 79 0 discriminator 2
	vcvtsi2sdq	%rbx, %xmm1, %xmm1
.LVL23:
	vmovsd	8(%rsp), %xmm3
	vdivsd	%xmm1, %xmm3, %xmm2
.LBB14:
.LBB15:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0 discriminator 2
	vdivsd	%xmm1, %xmm0, %xmm1
	vmovapd	%xmm2, %xmm0
.LVL24:
	movq	%rbx, %rdx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
.LVL25:
.LBE15:
.LBE14:
	.loc 1 71 0 discriminator 2
	addq	$1, %rbp
.LVL26:
	cmpq	%r12, %rbp
	jne	.L19
.LVL27:
.L17:
	.loc 1 81 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL28:
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	run, .-run
	.globl	main
	.type	main, @function
main:
.LFB38:
	.loc 1 84 0
	.cfi_startproc
.LVL29:
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
.LVL30:
	.loc 1 85 0
	movl	$65536, %ebp
	.loc 1 88 0
	cmpl	$1, %edi
	jle	.L22
.LVL31:
.LBB16:
.LBB17:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movq	8(%rsi), %rdi
.LVL32:
	movl	$10, %edx
	movl	$0, %esi
.LVL33:
	call	strtol
.LVL34:
	movl	%eax, %ebp
.LVL35:
.L22:
.LBE17:
.LBE16:
	.loc 1 86 0
	movl	$3, %r12d
	.loc 1 90 0
	cmpl	$2, %ebx
	jle	.L23
.LVL36:
.LBB18:
.LBB19:
	.loc 3 286 0
	movq	16(%r13), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
.LVL37:
	movl	%eax, %r12d
.LVL38:
.L23:
.LBE19:
.LBE18:
	.loc 1 87 0
	movl	$1, %edx
	.loc 1 92 0
	cmpl	$3, %ebx
	jle	.L24
.LVL39:
.LBB20:
.LBB21:
	.loc 3 286 0
	movq	24(%r13), %rdi
	movb	$10, %dl
	movl	$0, %esi
	call	strtol
.LVL40:
.LBE21:
.LBE20:
	.loc 1 93 0
	movl	%eax, %edx
.LVL41:
.L24:
	.loc 1 94 0
	movslq	%r12d, %rsi
	movslq	%ebp, %rdi
	call	run
.LVL42:
	.loc 1 96 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL43:
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL44:
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL45:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL46:
	ret
	.cfi_endproc
.LFE38:
	.size	main, .-main
	.comm	b2,524288,32
	.comm	a2,524288,32
	.comm	b1,524288,32
	.comm	a1,524288,32
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "../include/clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7e6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
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
	.long	.LASF68
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
	.long	.LASF69
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
	.long	.LASF61
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
	.long	.LASF51
	.byte	0x1
	.byte	0xd
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x353
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0xd
	.long	0x353
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.byte	0xd
	.long	0x353
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xd
	.long	0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xe
	.long	0x34
	.long	.LLST0
	.uleb128 0x17
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.byte	0x11
	.long	0x34
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x1c
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d5
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x1c
	.long	0x353
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.byte	0x1c
	.long	0x353
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.long	0x34
	.long	.LLST2
	.uleb128 0x17
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x16
	.string	"min"
	.byte	0x1
	.byte	0x1f
	.long	0x34
	.long	.LLST3
	.uleb128 0x16
	.string	"max"
	.byte	0x1
	.byte	0x20
	.long	0x34
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0x2c
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x454
	.uleb128 0x19
	.long	.LASF54
	.byte	0x1
	.byte	0x2c
	.long	0x5b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x1b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x42b
	.uleb128 0x1c
	.long	.LASF55
	.byte	0x1
	.byte	0x35
	.long	0x34
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x17
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x1d
	.string	"a"
	.byte	0x1
	.byte	0x3c
	.long	0x34
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.long	0x34
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"run"
	.byte	0x1
	.byte	0x44
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d3
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x44
	.long	0x34
	.long	.LLST5
	.uleb128 0x20
	.long	.LASF56
	.byte	0x1
	.byte	0x44
	.long	0x34
	.long	.LLST6
	.uleb128 0x20
	.long	.LASF54
	.byte	0x1
	.byte	0x44
	.long	0x5b
	.long	.LLST7
	.uleb128 0x16
	.string	"t1"
	.byte	0x1
	.byte	0x45
	.long	0x2d
	.long	.LLST8
	.uleb128 0x16
	.string	"t2"
	.byte	0x1
	.byte	0x45
	.long	0x2d
	.long	.LLST9
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.byte	0x46
	.long	0x34
	.long	.LLST10
	.uleb128 0x21
	.long	0x2ad
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x4f
	.long	0x522
	.uleb128 0x22
	.long	0x2bd
	.long	.LLST11
	.uleb128 0x23
	.quad	.LVL25
	.long	0x795
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xc
	.byte	0x91
	.sleb128 -56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL15
	.long	0x3d5
	.long	0x53a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL16
	.long	0x7b0
	.uleb128 0x25
	.quad	.LVL17
	.long	0x2e8
	.long	0x579
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	b1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL18
	.long	0x7bd
	.uleb128 0x26
	.quad	.LVL20
	.long	0x7b0
	.uleb128 0x25
	.quad	.LVL21
	.long	0x359
	.long	0x5c5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	b2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL22
	.long	0x7bd
	.byte	0
	.uleb128 0x27
	.long	.LASF70
	.byte	0x1
	.byte	0x54
	.long	0x70
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x718
	.uleb128 0x20
	.long	.LASF57
	.byte	0x1
	.byte	0x54
	.long	0x70
	.long	.LLST12
	.uleb128 0x20
	.long	.LASF58
	.byte	0x1
	.byte	0x54
	.long	0x718
	.long	.LLST13
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x55
	.long	0x70
	.long	.LLST14
	.uleb128 0x28
	.long	.LASF56
	.byte	0x1
	.byte	0x56
	.long	0x70
	.long	.LLST15
	.uleb128 0x28
	.long	.LASF54
	.byte	0x1
	.byte	0x57
	.long	0x5b
	.long	.LLST16
	.uleb128 0x21
	.long	0x2ca
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x59
	.long	0x67c
	.uleb128 0x22
	.long	0x2db
	.long	.LLST17
	.uleb128 0x23
	.quad	.LVL34
	.long	0x7ce
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x2ca
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x5b
	.long	0x6b9
	.uleb128 0x22
	.long	0x2db
	.long	.LLST18
	.uleb128 0x23
	.quad	.LVL37
	.long	0x7ce
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x2ca
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x5d
	.long	0x6f1
	.uleb128 0x22
	.long	0x2db
	.long	.LLST19
	.uleb128 0x23
	.quad	.LVL40
	.long	0x7ce
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL42
	.long	0x454
	.uleb128 0x24
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
	.uleb128 0x24
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
	.uleb128 0x29
	.long	.LASF59
	.byte	0x7
	.byte	0xa9
	.long	0x268
	.uleb128 0x29
	.long	.LASF60
	.byte	0x7
	.byte	0xaa
	.long	0x268
	.uleb128 0xc
	.long	0x34
	.long	0x745
	.uleb128 0x2a
	.long	0x8d
	.value	0xffff
	.byte	0
	.uleb128 0x2b
	.string	"a1"
	.byte	0x1
	.byte	0x29
	.long	0x734
	.uleb128 0x9
	.byte	0x3
	.quad	a1
	.uleb128 0x2b
	.string	"b1"
	.byte	0x1
	.byte	0x29
	.long	0x734
	.uleb128 0x9
	.byte	0x3
	.quad	b1
	.uleb128 0x2b
	.string	"a2"
	.byte	0x1
	.byte	0x2a
	.long	0x734
	.uleb128 0x9
	.byte	0x3
	.quad	a2
	.uleb128 0x2b
	.string	"b2"
	.byte	0x1
	.byte	0x2a
	.long	0x734
	.uleb128 0x9
	.byte	0x3
	.quad	b2
	.uleb128 0x2c
	.long	.LASF62
	.byte	0x2
	.byte	0x58
	.long	0x70
	.long	0x7b0
	.uleb128 0x2d
	.long	0x70
	.uleb128 0x2d
	.long	0x294
	.uleb128 0x11
	.byte	0
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x8
	.byte	0x4
	.long	0x7bd
	.uleb128 0x11
	.byte	0
	.uleb128 0x2f
	.long	.LASF63
	.byte	0x8
	.byte	0x7
	.long	0x2d
	.long	0x7ce
	.uleb128 0x11
	.byte	0
	.uleb128 0x30
	.long	.LASF64
	.byte	0x3
	.byte	0xb8
	.long	0x34
	.uleb128 0x2d
	.long	0x294
	.uleb128 0x2d
	.long	0x718
	.uleb128 0x2d
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL14-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL27-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL14-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL28-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL14-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL27-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL20-1-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL23-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL29-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL32-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL43-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL29-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL33-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL46-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL30-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL30-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL30-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL31-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-1-.Ltext0
	.value	0x2
	.byte	0x7d
	.sleb128 16
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-1-.Ltext0
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
.LASF69:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF53:
	.string	"init"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF56:
	.string	"trials"
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
.LASF64:
	.string	"strtol"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF0:
	.string	"double"
.LASF62:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF51:
	.string	"minmax1"
.LASF52:
	.string	"minmax2"
.LASF43:
	.string	"_IO_marker"
.LASF59:
	.string	"stdin"
.LASF5:
	.string	"unsigned int"
.LASF54:
	.string	"seed"
.LASF2:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF45:
	.string	"_sbuf"
.LASF4:
	.string	"short unsigned int"
.LASF66:
	.string	"cond-eg.c"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF60:
	.string	"stdout"
.LASF11:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF67:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF68:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF50:
	.string	"__nptr"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF61:
	.string	"atoi"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"_vtable_offset"
.LASF65:
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
.LASF63:
	.string	"get_counter"
.LASF49:
	.string	"__fmt"
.LASF55:
	.string	"residue"
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
.LASF58:
	.string	"argv"
.LASF71:
	.string	"start_counter"
.LASF23:
	.string	"_IO_backup_base"
.LASF57:
	.string	"argc"
.LASF70:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
