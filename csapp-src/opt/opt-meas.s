	.file	"opt-meas.c"
	.text
.Ltext0:
	.globl	aprod
	.type	aprod, @function
aprod:
.LFB34:
	.file 1 "opt-meas.c"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	.loc 1 16 0
	leaq	-2(%rsi), %rdx
	testq	%rdx, %rdx
	jle	.L6
	.loc 1 15 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 16 0
	movl	$0, %eax
.LVL1:
.L3:
	.loc 1 18 0 discriminator 2
	vmulsd	(%rdi,%rax,8), %xmm0, %xmm0
.LVL2:
	vmulsd	8(%rdi,%rax,8), %xmm0, %xmm0
	vmulsd	16(%rdi,%rax,8), %xmm0, %xmm0
.LVL3:
	.loc 1 16 0 discriminator 2
	addq	$3, %rax
.LVL4:
	cmpq	%rdx, %rax
	jl	.L3
	jmp	.L2
.LVL5:
.L6:
	.loc 1 15 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 16 0
	movl	$0, %eax
.LVL6:
.L2:
	.loc 1 20 0 discriminator 1
	cmpq	%rax, %rsi
	jle	.L4
.L5:
	.loc 1 21 0 discriminator 2
	vmulsd	(%rdi,%rax,8), %xmm0, %xmm0
.LVL7:
	.loc 1 20 0 discriminator 2
	addq	$1, %rax
.LVL8:
	cmpq	%rsi, %rax
	jne	.L5
.L4:
	.loc 1 23 0
	rep; ret
	.cfi_endproc
.LFE34:
	.size	aprod, .-aprod
	.globl	aprod1
	.type	aprod1, @function
aprod1:
.LFB35:
	.loc 1 27 0
	.cfi_startproc
.LVL9:
	.loc 1 31 0
	testq	%rsi, %rsi
	jle	.L10
	.loc 1 30 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 31 0
	movl	$0, %eax
.LVL10:
.L9:
	.loc 1 34 0 discriminator 2
	vmulsd	(%rdi,%rax,8), %xmm0, %xmm0
.LVL11:
	vmulsd	8(%rdi,%rax,8), %xmm0, %xmm0
	vmulsd	16(%rdi,%rax,8), %xmm0, %xmm0
.LVL12:
	.loc 1 31 0 discriminator 2
	addq	$3, %rax
.LVL13:
	cmpq	%rax, %rsi
	jg	.L9
	rep; ret
.LVL14:
.L10:
	.loc 1 30 0
	vmovsd	.LC0(%rip), %xmm0
.LVL15:
	.loc 1 40 0
	ret
	.cfi_endproc
.LFE35:
	.size	aprod1, .-aprod1
	.globl	t1
	.type	t1, @function
t1:
.LFB40:
	.loc 1 112 0
	.cfi_startproc
.LVL16:
	movq	%rdi, %rsi
	.loc 1 113 0
	movl	$a, %edi
.LVL17:
	call	aprod1
.LVL18:
	vmovsd	%xmm0, sink(%rip)
	ret
	.cfi_endproc
.LFE40:
	.size	t1, .-t1
	.globl	aprod2
	.type	aprod2, @function
aprod2:
.LFB36:
	.loc 1 43 0
	.cfi_startproc
.LVL19:
	.loc 1 47 0
	testq	%rsi, %rsi
	jle	.L15
	.loc 1 46 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 47 0
	movl	$0, %eax
.LVL20:
.L14:
	.loc 1 50 0 discriminator 2
	vmovsd	(%rdi,%rax,8), %xmm1
	vmulsd	8(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
.LVL21:
	vmulsd	16(%rdi,%rax,8), %xmm0, %xmm0
.LVL22:
	.loc 1 47 0 discriminator 2
	addq	$3, %rax
.LVL23:
	cmpq	%rax, %rsi
	jg	.L14
	rep; ret
.LVL24:
.L15:
	.loc 1 46 0
	vmovsd	.LC0(%rip), %xmm0
.LVL25:
	.loc 1 56 0
	ret
	.cfi_endproc
.LFE36:
	.size	aprod2, .-aprod2
	.globl	t2
	.type	t2, @function
t2:
.LFB41:
	.loc 1 117 0
	.cfi_startproc
.LVL26:
	movq	%rdi, %rsi
	.loc 1 118 0
	movl	$a, %edi
.LVL27:
	call	aprod2
.LVL28:
	vmovsd	%xmm0, sink(%rip)
	ret
	.cfi_endproc
.LFE41:
	.size	t2, .-t2
	.globl	aprod3
	.type	aprod3, @function
aprod3:
.LFB37:
	.loc 1 59 0
	.cfi_startproc
.LVL29:
	.loc 1 63 0
	testq	%rsi, %rsi
	jle	.L20
	.loc 1 62 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 63 0
	movl	$0, %eax
.LVL30:
.L19:
	.loc 1 66 0 discriminator 2
	vmovsd	(%rdi,%rax,8), %xmm1
	vmulsd	8(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	16(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
.LVL31:
	.loc 1 63 0 discriminator 2
	addq	$3, %rax
.LVL32:
	cmpq	%rax, %rsi
	jg	.L19
	rep; ret
.LVL33:
.L20:
	.loc 1 62 0
	vmovsd	.LC0(%rip), %xmm0
.LVL34:
	.loc 1 72 0
	ret
	.cfi_endproc
.LFE37:
	.size	aprod3, .-aprod3
	.globl	t3
	.type	t3, @function
t3:
.LFB42:
	.loc 1 122 0
	.cfi_startproc
.LVL35:
	movq	%rdi, %rsi
	.loc 1 123 0
	movl	$a, %edi
.LVL36:
	call	aprod3
.LVL37:
	vmovsd	%xmm0, sink(%rip)
	ret
	.cfi_endproc
.LFE42:
	.size	t3, .-t3
	.globl	aprod4
	.type	aprod4, @function
aprod4:
.LFB38:
	.loc 1 75 0
	.cfi_startproc
.LVL38:
	.loc 1 79 0
	testq	%rsi, %rsi
	jle	.L25
	.loc 1 78 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 79 0
	movl	$0, %eax
.LVL39:
.L24:
	.loc 1 82 0 discriminator 2
	vmovsd	8(%rdi,%rax,8), %xmm1
	vmulsd	16(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
.LVL40:
	.loc 1 79 0 discriminator 2
	addq	$3, %rax
.LVL41:
	cmpq	%rax, %rsi
	jg	.L24
	rep; ret
.LVL42:
.L25:
	.loc 1 78 0
	vmovsd	.LC0(%rip), %xmm0
.LVL43:
	.loc 1 88 0
	ret
	.cfi_endproc
.LFE38:
	.size	aprod4, .-aprod4
	.globl	t4
	.type	t4, @function
t4:
.LFB43:
	.loc 1 127 0
	.cfi_startproc
.LVL44:
	movq	%rdi, %rsi
	.loc 1 128 0
	movl	$a, %edi
.LVL45:
	call	aprod4
.LVL46:
	vmovsd	%xmm0, sink(%rip)
	ret
	.cfi_endproc
.LFE43:
	.size	t4, .-t4
	.globl	aprod5
	.type	aprod5, @function
aprod5:
.LFB39:
	.loc 1 91 0
	.cfi_startproc
.LVL47:
	.loc 1 95 0
	testq	%rsi, %rsi
	jle	.L30
	.loc 1 94 0
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 95 0
	movl	$0, %eax
.LVL48:
.L29:
	.loc 1 98 0 discriminator 2
	vmulsd	(%rdi,%rax,8), %xmm0, %xmm0
.LVL49:
	vmovsd	8(%rdi,%rax,8), %xmm1
	vmulsd	16(%rdi,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
.LVL50:
	.loc 1 95 0 discriminator 2
	addq	$3, %rax
.LVL51:
	cmpq	%rax, %rsi
	jg	.L29
	rep; ret
.LVL52:
.L30:
	.loc 1 94 0
	vmovsd	.LC0(%rip), %xmm0
.LVL53:
	.loc 1 104 0
	ret
	.cfi_endproc
.LFE39:
	.size	aprod5, .-aprod5
	.globl	t5
	.type	t5, @function
t5:
.LFB44:
	.loc 1 132 0
	.cfi_startproc
.LVL54:
	movq	%rdi, %rsi
	.loc 1 133 0
	movl	$a, %edi
.LVL55:
	call	aprod5
.LVL56:
	vmovsd	%xmm0, sink(%rip)
	ret
	.cfi_endproc
.LFE44:
	.size	t5, .-t5
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"A1 CPE = %.2f\n"
.LC2:
	.string	"A2 CPE = %.2f\n"
.LC3:
	.string	"A3 CPE = %.2f\n"
.LC4:
	.string	"A4 CPE = %.2f\n"
.LC5:
	.string	"A5 CPE = %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB45:
	.loc 1 136 0
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 137 0
	movl	$1024, %esi
	movl	$t1, %edi
	call	find_cpe
.LVL57:
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL58:
.LBE13:
.LBE12:
	.loc 1 138 0
	movl	$1024, %esi
	movl	$t2, %edi
	call	find_cpe
.LVL59:
.LBB14:
.LBB15:
	.loc 2 105 0
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL60:
.LBE15:
.LBE14:
	.loc 1 139 0
	movl	$1024, %esi
	movl	$t3, %edi
	call	find_cpe
.LVL61:
.LBB16:
.LBB17:
	.loc 2 105 0
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL62:
.LBE17:
.LBE16:
	.loc 1 140 0
	movl	$1024, %esi
	movl	$t4, %edi
	call	find_cpe
.LVL63:
.LBB18:
.LBB19:
	.loc 2 105 0
	movl	$.LC4, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL64:
.LBE19:
.LBE18:
	.loc 1 141 0
	movl	$1024, %esi
	movl	$t5, %edi
	call	find_cpe
.LVL65:
.LBB20:
.LBB21:
	.loc 2 105 0
	movl	$.LC5, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL66:
.LBE21:
.LBE20:
	.loc 1 143 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.comm	a,8192,32
	.globl	sink
	.bss
	.align 8
	.type	sink, @object
	.size	sink, 8
sink:
	.zero	8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "../include/cpe.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa18
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF60
	.byte	0x1
	.long	.LASF61
	.long	.LASF62
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
	.long	.LASF63
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x2
	.long	.LASF48
	.byte	0x6
	.byte	0x4
	.long	0x2b1
	.uleb128 0x6
	.byte	0x8
	.long	0x2b7
	.uleb128 0xf
	.long	0x2c2
	.uleb128 0x10
	.long	0x69
	.byte	0
	.uleb128 0x11
	.long	.LASF64
	.byte	0x2
	.byte	0x67
	.long	0x62
	.byte	0x3
	.long	0x2df
	.uleb128 0x12
	.long	.LASF65
	.byte	0x2
	.byte	0x67
	.long	0x28d
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF50
	.byte	0x1
	.byte	0xb
	.long	0x358
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x358
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0xb
	.long	0x35f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xb
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xd
	.long	0x69
	.long	.LLST0
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0xe
	.long	0x358
	.long	.LLST1
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0xe
	.long	0x358
	.long	.LLST2
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0xe
	.long	0x358
	.long	.LLST3
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0xf
	.long	0x358
	.long	.LLST4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0x6
	.byte	0x8
	.long	0x358
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.byte	0x1a
	.long	0x358
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3de
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x1a
	.long	0x35f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x1a
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.long	0x69
	.long	.LLST5
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x1d
	.long	0x358
	.long	.LLST6
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x1d
	.long	0x358
	.long	.LLST7
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0x1d
	.long	0x358
	.long	.LLST8
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x1e
	.long	0x358
	.long	.LLST9
	.byte	0
	.uleb128 0x17
	.string	"t1"
	.byte	0x1
	.byte	0x6f
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x6f
	.long	0x69
	.long	.LLST10
	.uleb128 0x19
	.quad	.LVL18
	.long	0x365
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x2a
	.long	0x358
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a3
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x2a
	.long	0x35f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x2a
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.long	0x69
	.long	.LLST11
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x2d
	.long	0x358
	.long	.LLST12
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x2d
	.long	0x358
	.long	.LLST13
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0x2d
	.long	0x358
	.long	.LLST14
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x2e
	.long	0x358
	.long	.LLST15
	.byte	0
	.uleb128 0x17
	.string	"t2"
	.byte	0x1
	.byte	0x74
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x74
	.long	0x69
	.long	.LLST16
	.uleb128 0x19
	.quad	.LVL28
	.long	0x42a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0x3a
	.long	0x358
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x568
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x3a
	.long	0x35f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x3a
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x69
	.long	.LLST17
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x3d
	.long	0x358
	.long	.LLST18
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x3d
	.long	0x358
	.long	.LLST19
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0x3d
	.long	0x358
	.long	.LLST20
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x3e
	.long	0x358
	.long	.LLST21
	.byte	0
	.uleb128 0x17
	.string	"t3"
	.byte	0x1
	.byte	0x79
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b4
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x79
	.long	0x69
	.long	.LLST22
	.uleb128 0x19
	.quad	.LVL37
	.long	0x4ef
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x4a
	.long	0x358
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x62d
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x4a
	.long	0x35f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x4a
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST23
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x4d
	.long	0x358
	.long	.LLST24
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x4d
	.long	0x358
	.long	.LLST25
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0x4d
	.long	0x358
	.long	.LLST26
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x4e
	.long	0x358
	.long	.LLST27
	.byte	0
	.uleb128 0x17
	.string	"t4"
	.byte	0x1
	.byte	0x7e
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x679
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x7e
	.long	0x69
	.long	.LLST28
	.uleb128 0x19
	.quad	.LVL46
	.long	0x5b4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.byte	0x5a
	.long	0x358
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f2
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.byte	0x5a
	.long	0x35f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x5a
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.long	0x69
	.long	.LLST29
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x5d
	.long	0x358
	.long	.LLST30
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x5d
	.long	0x358
	.long	.LLST31
	.uleb128 0x16
	.string	"z"
	.byte	0x1
	.byte	0x5d
	.long	0x358
	.long	.LLST32
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x5e
	.long	0x358
	.long	.LLST33
	.byte	0
	.uleb128 0x17
	.string	"t5"
	.byte	0x1
	.byte	0x83
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x73e
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x83
	.long	0x69
	.long	.LLST34
	.uleb128 0x19
	.quad	.LVL56
	.long	0x679
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x1
	.byte	0x88
	.long	0x62
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x996
	.uleb128 0x1c
	.long	0x2c2
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0x89
	.long	0x7ab
	.uleb128 0x1d
	.long	0x2d2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL58
	.long	0x9ea
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2c2
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x8a
	.long	0x7f7
	.uleb128 0x1d
	.long	0x2d2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL60
	.long	0x9ea
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2c2
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x8b
	.long	0x843
	.uleb128 0x1d
	.long	0x2d2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL62
	.long	0x9ea
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2c2
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x8c
	.long	0x88f
	.uleb128 0x1d
	.long	0x2d2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL64
	.long	0x9ea
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2c2
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x8d
	.long	0x8db
	.uleb128 0x1d
	.long	0x2d2
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x19
	.quad	.LVL66
	.long	0x9ea
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL57
	.long	0xa05
	.long	0x901
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	t1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x1e
	.quad	.LVL59
	.long	0xa05
	.long	0x927
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	t2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x1e
	.quad	.LVL61
	.long	0xa05
	.long	0x94d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	t3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x1e
	.quad	.LVL63
	.long	0xa05
	.long	0x973
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	t4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x19
	.quad	.LVL65
	.long	0xa05
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	t5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF57
	.byte	0x7
	.byte	0xa9
	.long	0x261
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x7
	.byte	0xaa
	.long	0x261
	.uleb128 0x20
	.long	.LASF59
	.byte	0x1
	.byte	0x6a
	.long	0x9c1
	.uleb128 0x9
	.byte	0x3
	.quad	sink
	.uleb128 0x21
	.long	0x358
	.uleb128 0xc
	.long	0x358
	.long	0x9d7
	.uleb128 0x22
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.byte	0x6d
	.long	0x9c6
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x24
	.long	.LASF66
	.byte	0x2
	.byte	0x58
	.long	0x62
	.long	0xa05
	.uleb128 0x10
	.long	0x62
	.uleb128 0x10
	.long	0x28d
	.uleb128 0x13
	.byte	0
	.uleb128 0x25
	.long	.LASF67
	.byte	0x6
	.byte	0x11
	.long	0x358
	.uleb128 0x10
	.long	0x2a6
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
	.uleb128 0x18
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL4-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL3-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL6-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL12-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL15-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL18-1-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL20-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL20-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL25-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL28-1-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL30-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL30-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL30-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL30-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL34-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL37-1-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL39-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL43-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL46-1-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL48-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL48-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL48-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL50-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL53-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL56-1-.Ltext0
	.quad	.LFE44-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF25:
	.string	"_chain"
.LASF51:
	.string	"aprod1"
.LASF52:
	.string	"aprod2"
.LASF53:
	.string	"aprod3"
.LASF54:
	.string	"aprod4"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"_shortbuf"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF67:
	.string	"find_cpe"
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
.LASF49:
	.string	"double"
.LASF66:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF50:
	.string	"aprod"
.LASF48:
	.string	"elem_fun_t"
.LASF42:
	.string	"_IO_marker"
.LASF57:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF60:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF58:
	.string	"stdout"
.LASF10:
	.string	"sizetype"
.LASF18:
	.string	"_IO_write_end"
.LASF62:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF63:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"_vtable_offset"
.LASF11:
	.string	"char"
.LASF55:
	.string	"aprod5"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF59:
	.string	"sink"
.LASF23:
	.string	"_IO_save_end"
.LASF65:
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
.LASF22:
	.string	"_IO_backup_base"
.LASF61:
	.string	"opt-meas.c"
.LASF56:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
