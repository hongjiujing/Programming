	.file	"copy.c"
	.text
.Ltext0:
	.globl	write_read
	.type	write_read, @function
write_read:
.LFB56:
	.file 1 "copy.c"
	.loc 1 15 0
	.cfi_startproc
.LVL0:
	.loc 1 19 0
	testq	%rdx, %rdx
	je	.L1
	.loc 1 17 0
	movl	$0, %eax
.LVL1:
.L3:
	.loc 1 20 0
	movq	%rax, (%rsi)
	.loc 1 21 0
	movq	(%rdi), %rax
.LVL2:
	addq	$1, %rax
.LVL3:
	.loc 1 19 0
	subq	$1, %rdx
.LVL4:
	jne	.L3
.LVL5:
.L1:
	rep; ret
	.cfi_endproc
.LFE56:
	.size	write_read, .-write_read
	.globl	array_copy
	.type	array_copy, @function
array_copy:
.LFB60:
	.loc 1 63 0
	.cfi_startproc
.LVL6:
	.loc 1 65 0
	testq	%rdx, %rdx
	jle	.L4
	movl	$0, %eax
.LVL7:
.L6:
	.loc 1 66 0 discriminator 2
	movq	(%rdi,%rax,8), %rcx
	movq	%rcx, (%rsi,%rax,8)
	.loc 1 65 0 discriminator 2
	addq	$1, %rax
.LVL8:
	cmpq	%rdx, %rax
	jne	.L6
.LVL9:
.L4:
	rep; ret
	.cfi_endproc
.LFE60:
	.size	array_copy, .-array_copy
	.globl	array_clear
	.type	array_clear, @function
array_clear:
.LFB61:
	.loc 1 71 0
	.cfi_startproc
.LVL10:
	.loc 1 74 0
	testq	%rdx, %rdx
	jle	.L7
	movq	%rsi, %rax
	leaq	(%rsi,%rdx,8), %rdx
.LVL11:
.L9:
	.loc 1 75 0 discriminator 2
	movq	$0, (%rax)
	addq	$8, %rax
	.loc 1 74 0 discriminator 2
	cmpq	%rdx, %rax
	jne	.L9
.L7:
	rep; ret
	.cfi_endproc
.LFE61:
	.size	array_clear, .-array_clear
	.type	array_copy_2, @function
array_copy_2:
.LFB63:
	.loc 1 85 0
	.cfi_startproc
.LVL12:
	.loc 1 87 0
	leaq	-1(%rdx), %r8
.LVL13:
	.loc 1 88 0
	testq	%r8, %r8
	jle	.L15
	movl	$0, %eax
.LVL14:
.L12:
	.loc 1 89 0 discriminator 2
	movq	(%rdi,%rax,8), %rcx
	movq	%rcx, (%rsi,%rax,8)
	.loc 1 90 0 discriminator 2
	movq	8(%rdi,%rax,8), %rcx
	movq	%rcx, 8(%rsi,%rax,8)
	.loc 1 88 0 discriminator 2
	addq	$2, %rax
.LVL15:
	cmpq	%rax, %r8
	jg	.L12
	jmp	.L11
.LVL16:
.L15:
	.loc 1 88 0 is_stmt 0
	movl	$0, %eax
.LVL17:
.L11:
	.loc 1 92 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rdx
	jle	.L10
.L14:
	.loc 1 93 0 discriminator 2
	movq	(%rdi,%rax,8), %rcx
	movq	%rcx, (%rsi,%rax,8)
	.loc 1 92 0 discriminator 2
	addq	$1, %rax
.LVL18:
	cmpq	%rdx, %rax
	jne	.L14
.L10:
	rep; ret
	.cfi_endproc
.LFE63:
	.size	array_copy_2, .-array_copy_2
	.type	array_clear_2, @function
array_clear_2:
.LFB64:
	.loc 1 97 0
	.cfi_startproc
.LVL19:
	.loc 1 99 0
	leaq	-1(%rdx), %rcx
.LVL20:
	.loc 1 100 0
	testq	%rcx, %rcx
	jle	.L21
	movl	$0, %eax
.LVL21:
.L18:
	.loc 1 101 0 discriminator 2
	movq	$0, (%rsi,%rax,8)
	.loc 1 102 0 discriminator 2
	movq	$0, 8(%rsi,%rax,8)
	.loc 1 100 0 discriminator 2
	addq	$2, %rax
.LVL22:
	cmpq	%rax, %rcx
	jg	.L18
	jmp	.L17
.LVL23:
.L21:
	.loc 1 100 0 is_stmt 0
	movl	$0, %eax
.LVL24:
.L17:
	.loc 1 104 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rdx
	jle	.L16
.L20:
	.loc 1 105 0 discriminator 2
	movq	$0, (%rsi,%rax,8)
	.loc 1 104 0 discriminator 2
	addq	$1, %rax
.LVL25:
	cmpq	%rdx, %rax
	jne	.L20
.L16:
	rep; ret
	.cfi_endproc
.LFE64:
	.size	array_clear_2, .-array_clear_2
	.type	array_copy_4, @function
array_copy_4:
.LFB65:
	.loc 1 109 0
	.cfi_startproc
.LVL26:
	.loc 1 111 0
	leaq	-3(%rdx), %r8
.LVL27:
	.loc 1 112 0
	testq	%r8, %r8
	jle	.L27
	movl	$0, %eax
.LVL28:
.L24:
	.loc 1 113 0 discriminator 2
	movq	(%rdi,%rax,8), %rcx
	movq	%rcx, (%rsi,%rax,8)
	.loc 1 114 0 discriminator 2
	movq	8(%rdi,%rax,8), %rcx
	movq	%rcx, 8(%rsi,%rax,8)
	.loc 1 115 0 discriminator 2
	movq	16(%rdi,%rax,8), %rcx
	movq	%rcx, 16(%rsi,%rax,8)
	.loc 1 116 0 discriminator 2
	movq	24(%rdi,%rax,8), %rcx
	movq	%rcx, 24(%rsi,%rax,8)
	.loc 1 112 0 discriminator 2
	addq	$4, %rax
.LVL29:
	cmpq	%rax, %r8
	jg	.L24
	jmp	.L23
.LVL30:
.L27:
	.loc 1 112 0 is_stmt 0
	movl	$0, %eax
.LVL31:
.L23:
	.loc 1 118 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rdx
	jle	.L22
.L26:
	.loc 1 119 0 discriminator 2
	movq	(%rdi,%rax,8), %rcx
	movq	%rcx, (%rsi,%rax,8)
	.loc 1 118 0 discriminator 2
	addq	$1, %rax
.LVL32:
	cmpq	%rdx, %rax
	jne	.L26
.L22:
	rep; ret
	.cfi_endproc
.LFE65:
	.size	array_copy_4, .-array_copy_4
	.type	array_clear_3, @function
array_clear_3:
.LFB66:
	.loc 1 123 0
	.cfi_startproc
.LVL33:
	.loc 1 125 0
	leaq	-2(%rdx), %rcx
.LVL34:
	.loc 1 126 0
	testq	%rcx, %rcx
	jle	.L33
	movl	$0, %eax
.LVL35:
.L30:
	.loc 1 127 0 discriminator 2
	movq	$0, (%rsi,%rax,8)
	.loc 1 128 0 discriminator 2
	movq	$0, 8(%rsi,%rax,8)
	.loc 1 129 0 discriminator 2
	movq	$0, 16(%rsi,%rax,8)
	.loc 1 126 0 discriminator 2
	addq	$3, %rax
.LVL36:
	cmpq	%rax, %rcx
	jg	.L30
	jmp	.L29
.LVL37:
.L33:
	.loc 1 126 0 is_stmt 0
	movl	$0, %eax
.LVL38:
.L29:
	.loc 1 131 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rdx
	jle	.L28
.L32:
	.loc 1 132 0 discriminator 2
	movq	$0, (%rsi,%rax,8)
	.loc 1 131 0 discriminator 2
	addq	$1, %rax
.LVL39:
	cmpq	%rdx, %rax
	jne	.L32
.L28:
	rep; ret
	.cfi_endproc
.LFE66:
	.size	array_clear_3, .-array_clear_3
	.type	array_clear_4, @function
array_clear_4:
.LFB67:
	.loc 1 136 0
	.cfi_startproc
.LVL40:
	.loc 1 138 0
	leaq	-3(%rdx), %rcx
.LVL41:
	.loc 1 139 0
	testq	%rcx, %rcx
	jle	.L39
	movl	$0, %eax
.LVL42:
.L36:
	.loc 1 140 0 discriminator 2
	movq	$0, (%rsi,%rax,8)
	.loc 1 141 0 discriminator 2
	movq	$0, 8(%rsi,%rax,8)
	.loc 1 142 0 discriminator 2
	movq	$0, 16(%rsi,%rax,8)
	.loc 1 143 0 discriminator 2
	movq	$0, 24(%rsi,%rax,8)
	.loc 1 139 0 discriminator 2
	addq	$4, %rax
.LVL43:
	cmpq	%rax, %rcx
	jg	.L36
	jmp	.L35
.LVL44:
.L39:
	.loc 1 139 0 is_stmt 0
	movl	$0, %eax
.LVL45:
.L35:
	.loc 1 145 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rdx
	jle	.L34
.L38:
	.loc 1 146 0 discriminator 2
	movq	$0, (%rsi,%rax,8)
	.loc 1 145 0 discriminator 2
	addq	$1, %rax
.LVL46:
	cmpq	%rdx, %rax
	jne	.L38
.L34:
	rep; ret
	.cfi_endproc
.LFE67:
	.size	array_clear_4, .-array_clear_4
	.type	test2a, @function
test2a:
.LFB68:
	.loc 1 180 0
	.cfi_startproc
.LVL47:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx
	.loc 1 181 0
	movl	$data, %esi
	movq	%rsi, %rdi
.LVL48:
	movq	idx(%rip), %rax
	call	*copier(,%rax,8)
.LVL49:
	.loc 1 182 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	test2a, .-test2a
	.type	test2b, @function
test2b:
.LFB69:
	.loc 1 185 0
	.cfi_startproc
.LVL50:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx
	.loc 1 186 0
	movl	$data+8, %esi
	movl	$data, %edi
.LVL51:
	movq	idx(%rip), %rax
	call	*copier(,%rax,8)
.LVL52:
	.loc 1 187 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	test2b, .-test2b
	.type	test2c, @function
test2c:
.LFB70:
	.loc 1 190 0
	.cfi_startproc
.LVL53:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx
	.loc 1 191 0
	movl	$data, %esi
	movl	$data+8, %edi
.LVL54:
	movq	idx(%rip), %rax
	call	*copier(,%rax,8)
.LVL55:
	.loc 1 192 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE70:
	.size	test2c, .-test2c
	.type	test2d, @function
test2d:
.LFB71:
	.loc 1 195 0
	.cfi_startproc
.LVL56:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx
	.loc 1 196 0
	movl	$data2, %esi
	movl	$data, %edi
.LVL57:
	movq	idx(%rip), %rax
	call	*copier(,%rax,8)
.LVL58:
	.loc 1 197 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	test2d, .-test2d
	.type	mem_clear, @function
mem_clear:
.LFB62:
	.loc 1 79 0
	.cfi_startproc
.LVL59:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
.LVL60:
	.loc 1 80 0
	salq	$3, %rdx
.LVL61:
.LBB8:
.LBB9:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string3.h"
	.loc 2 85 0
	movl	$0, %esi
.LVL62:
	call	memset
.LVL63:
.LBE9:
.LBE8:
	.loc 1 81 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.size	mem_clear, .-mem_clear
	.globl	copy_array
	.type	copy_array, @function
copy_array:
.LFB57:
	.loc 1 30 0
	.cfi_startproc
.LVL64:
	.loc 1 32 0
	testq	%rdx, %rdx
	jle	.L50
	movl	$0, %eax
.LVL65:
.L52:
	.loc 1 33 0 discriminator 2
	movq	(%rdi,%rax,8), %rcx
	movq	%rcx, (%rsi,%rax,8)
	.loc 1 32 0 discriminator 2
	addq	$1, %rax
.LVL66:
	cmpq	%rdx, %rax
	jne	.L52
.LVL67:
.L50:
	rep; ret
	.cfi_endproc
.LFE57:
	.size	copy_array, .-copy_array
	.globl	clear_array
	.type	clear_array, @function
clear_array:
.LFB58:
	.loc 1 39 0
	.cfi_startproc
.LVL68:
	.loc 1 41 0
	testq	%rsi, %rsi
	jle	.L53
	movq	%rdi, %rax
	leaq	(%rdi,%rsi,8), %rdx
.LVL69:
.L55:
	.loc 1 42 0 discriminator 2
	movq	$0, (%rax)
	addq	$8, %rax
	.loc 1 41 0 discriminator 2
	cmpq	%rdx, %rax
	jne	.L55
.L53:
	rep; ret
	.cfi_endproc
.LFE58:
	.size	clear_array, .-clear_array
	.globl	clear_array_4
	.type	clear_array_4, @function
clear_array_4:
.LFB59:
	.loc 1 48 0
	.cfi_startproc
.LVL70:
	.loc 1 50 0
	leaq	-3(%rsi), %rdx
.LVL71:
	.loc 1 51 0
	testq	%rdx, %rdx
	jle	.L61
	movl	$0, %eax
.LVL72:
.L58:
	.loc 1 52 0 discriminator 2
	movq	$0, (%rdi,%rax,8)
	.loc 1 53 0 discriminator 2
	movq	$0, 8(%rdi,%rax,8)
	.loc 1 54 0 discriminator 2
	movq	$0, 16(%rdi,%rax,8)
	.loc 1 55 0 discriminator 2
	movq	$0, 24(%rdi,%rax,8)
	.loc 1 51 0 discriminator 2
	addq	$4, %rax
.LVL73:
	cmpq	%rax, %rdx
	jg	.L58
	jmp	.L57
.LVL74:
.L61:
	.loc 1 51 0 is_stmt 0
	movl	$0, %eax
.LVL75:
.L57:
	.loc 1 57 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rsi
	jle	.L56
.L60:
	.loc 1 58 0 discriminator 2
	movq	$0, (%rdi,%rax,8)
	.loc 1 57 0 discriminator 2
	addq	$1, %rax
.LVL76:
	cmpq	%rsi, %rax
	jne	.L60
.L56:
	rep; ret
	.cfi_endproc
.LFE59:
	.size	clear_array_4, .-clear_array_4
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Description: %s, %s, "
.LC1:
	.string	"CPE = %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB73:
	.loc 1 232 0
	.cfi_startproc
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
	.loc 1 236 0
	movq	$0, idx(%rip)
	.loc 1 237 0
	movl	$1024, %esi
	movl	$test2a, %edi
	call	find_cpe
.LVL77:
	movl	$0, %ebp
.LBB16:
.LBB17:
	.loc 1 223 0
	movl	$test_descr, %r13d
	jmp	.L63
.LVL78:
.L66:
.LBB18:
.LBB19:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 105 0 discriminator 2
	movq	case_descr(%rbx), %rcx
	movq	%r12, %rdx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL79:
.LBE19:
.LBE18:
	.loc 1 225 0 discriminator 2
	movq	%rbp, idx(%rip)
	.loc 1 226 0 discriminator 2
	movq	case_fun(%rbx), %rdi
	movl	$1024, %esi
	call	find_cpe
.LVL80:
.LBB21:
.LBB22:
	.loc 3 105 0 discriminator 2
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL81:
	addq	$8, %rbx
.LBE22:
.LBE21:
.LBE17:
.LBE16:
	.loc 1 240 0 discriminator 2
	cmpq	$32, %rbx
	jne	.L66
.LVL82:
	addq	$1, %rbp
.LVL83:
	.loc 1 239 0
	cmpq	$9, %rbp
	je	.L65
.LVL84:
.L63:
	.loc 1 232 0 discriminator 1
	movl	$0, %ebx
.LBB25:
.LBB24:
.LBB23:
.LBB20:
	.loc 3 105 0 discriminator 1
	movq	0(%r13,%rbp,8), %r12
	jmp	.L66
.LVL85:
.L65:
.LBE20:
.LBE23:
.LBE24:
.LBE25:
	.loc 1 244 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
.LVL86:
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.size	main, .-main
	.section	.rodata.str1.1
.LC2:
	.string	"data --> data"
.LC3:
	.string	"data --> data+1"
.LC4:
	.string	"data+1 --> data"
.LC5:
	.string	"data1 --> data2"
	.section	.rodata
	.align 32
	.type	case_descr, @object
	.size	case_descr, 32
case_descr:
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.align 32
	.type	case_fun, @object
	.size	case_fun, 32
case_fun:
	.quad	test2a
	.quad	test2b
	.quad	test2c
	.quad	test2d
	.globl	idx
	.bss
	.align 8
	.type	idx, @object
	.size	idx, 8
idx:
	.zero	8
	.section	.rodata.str1.1
.LC6:
	.string	"Write-read"
.LC7:
	.string	"Array clear"
.LC8:
	.string	"Array clear  x2"
.LC9:
	.string	"Array clear  x3"
.LC10:
	.string	"Array clear  x4"
.LC11:
	.string	"Mem clear"
.LC12:
	.string	"Array copy"
.LC13:
	.string	"Array copy  x2"
.LC14:
	.string	"Array copy  x4"
	.section	.rodata
	.align 32
	.type	test_descr, @object
	.size	test_descr, 72
test_descr:
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.align 32
	.type	copier, @object
	.size	copier, 72
copier:
	.quad	write_read
	.quad	array_clear
	.quad	array_clear_2
	.quad	array_clear_3
	.quad	array_clear_4
	.quad	mem_clear
	.quad	array_copy
	.quad	array_copy_2
	.quad	array_copy_4
	.comm	data2,8200,32
	.comm	data,8200,32
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "../include/cpe.h"
	.file 8 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbd5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF86
	.byte	0x1
	.long	.LASF87
	.long	.LASF88
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
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
	.byte	0x5
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
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
	.byte	0x6
	.value	0x111
	.long	0x223
	.uleb128 0x8
	.long	.LASF12
	.byte	0x6
	.value	0x112
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x117
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.value	0x118
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.value	0x119
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.value	0x11a
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.value	0x11b
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.value	0x11c
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.value	0x11d
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.value	0x11e
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF21
	.byte	0x6
	.value	0x120
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF22
	.byte	0x6
	.value	0x121
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.value	0x122
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.value	0x124
	.long	0x25b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF25
	.byte	0x6
	.value	0x126
	.long	0x261
	.byte	0x68
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.value	0x128
	.long	0x62
	.byte	0x70
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.value	0x12c
	.long	0x62
	.byte	0x74
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12e
	.long	0x70
	.byte	0x78
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.value	0x132
	.long	0x46
	.byte	0x80
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.value	0x133
	.long	0x54
	.byte	0x82
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x134
	.long	0x267
	.byte	0x83
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.value	0x138
	.long	0x277
	.byte	0x88
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.value	0x141
	.long	0x7b
	.byte	0x90
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.value	0x14a
	.long	0x8d
	.byte	0x98
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.value	0x14b
	.long	0x8d
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.value	0x14c
	.long	0x8d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.value	0x14d
	.long	0x8d
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.value	0x14e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.value	0x150
	.long	0x62
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x152
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF89
	.byte	0x6
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF42
	.byte	0x18
	.byte	0x6
	.byte	0xbc
	.long	0x25b
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.byte	0xbd
	.long	0x25b
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.byte	0xbe
	.long	0x261
	.byte	0x8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
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
	.byte	0x7
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
	.uleb128 0x2
	.long	.LASF49
	.byte	0x1
	.byte	0x95
	.long	0x2cd
	.uleb128 0x6
	.byte	0x8
	.long	0x2d3
	.uleb128 0xf
	.long	0x2e8
	.uleb128 0x10
	.long	0x2e8
	.uleb128 0x10
	.long	0x2e8
	.uleb128 0x10
	.long	0x69
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0x2
	.long	.LASF50
	.byte	0x1
	.byte	0xca
	.long	0x2b1
	.uleb128 0x11
	.long	.LASF54
	.byte	0x2
	.byte	0x4d
	.long	0x8d
	.byte	0x3
	.long	0x32b
	.uleb128 0x12
	.long	.LASF51
	.byte	0x2
	.byte	0x4d
	.long	0x8d
	.uleb128 0x12
	.long	.LASF52
	.byte	0x2
	.byte	0x4d
	.long	0x62
	.uleb128 0x12
	.long	.LASF53
	.byte	0x2
	.byte	0x4d
	.long	0x2d
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x3
	.byte	0x67
	.long	0x62
	.byte	0x3
	.long	0x348
	.uleb128 0x12
	.long	.LASF56
	.byte	0x3
	.byte	0x67
	.long	0x28d
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0xe
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ab
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0xe
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"dst"
	.byte	0x1
	.byte	0xe
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xe
	.long	0x69
	.long	.LLST0
	.uleb128 0x17
	.string	"cnt"
	.byte	0x1
	.byte	0x10
	.long	0x69
	.long	.LLST1
	.uleb128 0x17
	.string	"val"
	.byte	0x1
	.byte	0x11
	.long	0x69
	.long	.LLST2
	.byte	0
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x3e
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fb
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x3e
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x3e
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x3e
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x69
	.long	.LLST3
	.byte	0
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x46
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x44d
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x46
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x46
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x46
	.long	0x69
	.long	.LLST4
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x48
	.long	0x69
	.long	.LLST5
	.byte	0
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.byte	0x54
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aa
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x54
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x54
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x54
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x56
	.long	0x69
	.long	.LLST6
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x57
	.long	0x69
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x60
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x507
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x60
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x60
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x60
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x62
	.long	0x69
	.long	.LLST7
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x63
	.long	0x69
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x19
	.long	.LASF64
	.byte	0x1
	.byte	0x6c
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x564
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x6c
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x6c
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x6c
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.long	0x69
	.long	.LLST8
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x6f
	.long	0x69
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.byte	0x7a
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c1
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x7a
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x7a
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x7a
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x7c
	.long	0x69
	.long	.LLST9
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x7d
	.long	0x69
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.byte	0x87
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x61e
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x87
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x87
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x87
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x89
	.long	0x69
	.long	.LLST10
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x8a
	.long	0x69
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.byte	0xb3
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x674
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xb3
	.long	0x69
	.long	.LLST11
	.uleb128 0x1b
	.quad	.LVL49
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF68
	.byte	0x1
	.byte	0xb8
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ca
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xb8
	.long	0x69
	.long	.LLST12
	.uleb128 0x1b
	.quad	.LVL52
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	data+8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.byte	0xbd
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x720
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xbd
	.long	0x69
	.long	.LLST13
	.uleb128 0x1b
	.quad	.LVL55
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	data+8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0xc2
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x776
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.long	0x69
	.long	.LLST14
	.uleb128 0x1b
	.quad	.LVL58
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	data2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0x4e
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x812
	.uleb128 0x16
	.string	"src"
	.byte	0x1
	.byte	0x4e
	.long	0x2e8
	.long	.LLST15
	.uleb128 0x1d
	.long	.LASF59
	.byte	0x1
	.byte	0x4e
	.long	0x2e8
	.long	.LLST16
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0x4e
	.long	0x69
	.long	.LLST17
	.uleb128 0x1e
	.long	0x2f9
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	0x31f
	.long	.LLST18
	.uleb128 0x20
	.long	0x314
	.byte	0
	.uleb128 0x1f
	.long	0x309
	.long	.LLST19
	.uleb128 0x21
	.quad	.LVL63
	.long	0xb8a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x1d
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x862
	.uleb128 0x15
	.string	"src"
	.byte	0x1
	.byte	0x1d
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x1d
	.long	0x2e8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST20
	.byte	0
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0x27
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a5
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x27
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x27
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x28
	.long	0x69
	.long	.LLST21
	.byte	0
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x30
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f5
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x30
	.long	0x2e8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0x30
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x31
	.long	0x69
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF61
	.byte	0x1
	.byte	0x32
	.long	0x69
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.long	.LASF90
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.long	0x91f
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xdc
	.long	0x69
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xdc
	.long	0x69
	.uleb128 0x24
	.string	"cpe"
	.byte	0x1
	.byte	0xde
	.long	0x91f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF75
	.uleb128 0x25
	.long	.LASF76
	.byte	0x1
	.byte	0xe7
	.long	0x62
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7c
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xe9
	.long	0x62
	.long	.LLST23
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0xe9
	.long	0x62
	.long	.LLST24
	.uleb128 0x26
	.long	0x8f5
	.quad	.LBB16
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf1
	.long	0xa59
	.uleb128 0x27
	.long	0x90a
	.uleb128 0x1f
	.long	0x901
	.long	.LLST25
	.uleb128 0x28
	.long	.Ldebug_ranges0+0
	.uleb128 0x29
	.long	0x913
	.long	.LLST26
	.uleb128 0x26
	.long	0x32b
	.quad	.LBB18
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xdf
	.long	0x9ec
	.uleb128 0x1f
	.long	0x33b
	.long	.LLST27
	.uleb128 0x21
	.quad	.LVL79
	.long	0xba7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	case_descr
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x32b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0x1
	.byte	0xe4
	.long	0xa31
	.uleb128 0x1f
	.long	0x33b
	.long	.LLST28
	.uleb128 0x21
	.quad	.LVL81
	.long	0xba7
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL80
	.long	0xbc2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	case_fun
	.byte	0x22
	.byte	0x6
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LVL77
	.long	0xbc2
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test2a
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x2c2
	.long	0xa8c
	.uleb128 0xd
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.byte	0x9a
	.long	0xaa1
	.uleb128 0x9
	.byte	0x3
	.quad	copier
	.uleb128 0xe
	.long	0xa7c
	.uleb128 0xc
	.long	0x8f
	.long	0xab6
	.uleb128 0xd
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0xa2
	.long	0xacb
	.uleb128 0x9
	.byte	0x3
	.quad	test_descr
	.uleb128 0xe
	.long	0xaa6
	.uleb128 0xc
	.long	0x2ee
	.long	0xae0
	.uleb128 0xd
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.byte	0xcc
	.long	0xaf5
	.uleb128 0x9
	.byte	0x3
	.quad	case_fun
	.uleb128 0xe
	.long	0xad0
	.uleb128 0xc
	.long	0x8f
	.long	0xb0a
	.uleb128 0xd
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.byte	0xd3
	.long	0xb1f
	.uleb128 0x9
	.byte	0x3
	.quad	case_descr
	.uleb128 0xe
	.long	0xafa
	.uleb128 0x2b
	.long	.LASF81
	.byte	0x8
	.byte	0xa9
	.long	0x261
	.uleb128 0x2b
	.long	.LASF82
	.byte	0x8
	.byte	0xaa
	.long	0x261
	.uleb128 0xc
	.long	0x69
	.long	0xb4b
	.uleb128 0x2c
	.long	0x86
	.value	0x400
	.byte	0
	.uleb128 0x2d
	.long	.LASF83
	.byte	0x1
	.byte	0x9
	.long	0xb3a
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x2d
	.long	.LASF84
	.byte	0x1
	.byte	0xa
	.long	0xb3a
	.uleb128 0x9
	.byte	0x3
	.quad	data2
	.uleb128 0x2e
	.string	"idx"
	.byte	0x1
	.byte	0xaf
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	idx
	.uleb128 0x2f
	.long	.LASF54
	.long	0x8d
	.long	0xba7
	.uleb128 0x10
	.long	0x8d
	.uleb128 0x10
	.long	0x62
	.uleb128 0x10
	.long	0x86
	.byte	0
	.uleb128 0x30
	.long	.LASF91
	.byte	0x3
	.byte	0x58
	.long	0x62
	.long	0xbc2
	.uleb128 0x10
	.long	0x62
	.uleb128 0x10
	.long	0x28d
	.uleb128 0x13
	.byte	0
	.uleb128 0x31
	.long	.LASF85
	.byte	0x7
	.byte	0x11
	.long	0x91f
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.value	0x1
	.byte	0x51
	.quad	.LVL1-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL2-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	.LVL3-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL11-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL16-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE63-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31-.Ltext0
	.quad	.LFE65-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL34-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE66-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LFE67-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL49-1-.Ltext0
	.quad	.LFE68-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL52-1-.Ltext0
	.quad	.LFE69-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL55-1-.Ltext0
	.quad	.LFE70-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL56-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL58-1-.Ltext0
	.quad	.LFE71-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL60-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL59-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL62-.Ltext0
	.quad	.LVL63-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL63-1-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL61-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL63-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL63-1-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL60-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL62-.Ltext0
	.quad	.LVL63-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL63-1-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL64-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL65-.Ltext0
	.quad	.LVL67-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL71-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL72-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL74-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL75-.Ltext0
	.quad	.LFE59-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL78-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL82-.Ltext0
	.quad	.LVL83-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL78-.Ltext0
	.quad	.LVL83-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL83-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LVL86-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL80-.Ltext0
	.quad	.LVL81-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL78-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LFE73-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL80-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LFE73-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
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
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB25-.Ltext0
	.quad	.LBE25-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
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
.LASF52:
	.string	"__ch"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF78:
	.string	"test_descr"
.LASF61:
	.string	"limit"
.LASF85:
	.string	"find_cpe"
.LASF62:
	.string	"array_copy_2"
.LASF64:
	.string	"array_copy_4"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"_fileno"
.LASF71:
	.string	"mem_clear"
.LASF74:
	.string	"clear_array_4"
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
.LASF75:
	.string	"double"
.LASF91:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF50:
	.string	"test_fun"
.LASF79:
	.string	"case_fun"
.LASF48:
	.string	"elem_fun_t"
.LASF42:
	.string	"_IO_marker"
.LASF81:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF87:
	.string	"copy.c"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"array_clear_4"
.LASF44:
	.string	"_sbuf"
.LASF83:
	.string	"data"
.LASF2:
	.string	"short unsigned int"
.LASF86:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF21:
	.string	"_IO_save_base"
.LASF63:
	.string	"array_clear_2"
.LASF65:
	.string	"array_clear_3"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF82:
	.string	"stdout"
.LASF57:
	.string	"write_read"
.LASF10:
	.string	"sizetype"
.LASF84:
	.string	"data2"
.LASF18:
	.string	"_IO_write_end"
.LASF88:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF51:
	.string	"__dest"
.LASF89:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF59:
	.string	"dest"
.LASF77:
	.string	"copier"
.LASF58:
	.string	"array_copy"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF60:
	.string	"array_clear"
.LASF73:
	.string	"clear_array"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF53:
	.string	"__len"
.LASF30:
	.string	"_vtable_offset"
.LASF49:
	.string	"copy_fun"
.LASF80:
	.string	"case_descr"
.LASF67:
	.string	"test2a"
.LASF68:
	.string	"test2b"
.LASF69:
	.string	"test2c"
.LASF70:
	.string	"test2d"
.LASF11:
	.string	"char"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF56:
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
.LASF54:
	.string	"memset"
.LASF90:
	.string	"run_test"
.LASF22:
	.string	"_IO_backup_base"
.LASF72:
	.string	"copy_array"
.LASF76:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
