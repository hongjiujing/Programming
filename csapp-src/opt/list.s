	.file	"list.c"
	.text
.Ltext0:
	.globl	list_len
	.type	list_len, @function
list_len:
.LFB23:
	.file 1 "list.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
	.loc 1 32 0
	testq	%rdi, %rdi
	je	.L4
	.loc 1 31 0
	movl	$0, %eax
.LVL1:
.L3:
	.loc 1 33 0
	addq	$1, %rax
.LVL2:
	.loc 1 34 0
	movq	(%rdi), %rdi
.LVL3:
	.loc 1 32 0
	testq	%rdi, %rdi
	jne	.L3
	rep; ret
.LVL4:
.L4:
	.loc 1 31 0
	movl	$0, %eax
	.loc 1 37 0
	ret
	.cfi_endproc
.LFE23:
	.size	list_len, .-list_len
	.globl	list_len_clear
	.type	list_len_clear, @function
list_len_clear:
.LFB24:
	.loc 1 41 0
	.cfi_startproc
.LVL5:
	.loc 1 43 0
	testq	%rdi, %rdi
	je	.L8
	.loc 1 42 0
	movl	$0, %eax
.LVL6:
.L7:
	.loc 1 44 0
	movq	$0, 8(%rdi)
	.loc 1 45 0
	movq	(%rdi), %rdi
.LVL7:
	.loc 1 46 0
	addq	$1, %rax
.LVL8:
	.loc 1 43 0
	testq	%rdi, %rdi
	jne	.L7
	rep; ret
.LVL9:
.L8:
	.loc 1 42 0
	movl	$0, %eax
	.loc 1 49 0
	ret
	.cfi_endproc
.LFE24:
	.size	list_len_clear, .-list_len_clear
	.globl	list_sum_clear
	.type	list_sum_clear, @function
list_sum_clear:
.LFB25:
	.loc 1 52 0
	.cfi_startproc
.LVL10:
	.loc 1 54 0
	testq	%rdi, %rdi
	je	.L12
	.loc 1 53 0
	movl	$0, %eax
.LVL11:
.L11:
	.loc 1 55 0
	addq	8(%rdi), %rax
.LVL12:
	.loc 1 56 0
	movq	$0, 8(%rdi)
	.loc 1 57 0
	movq	(%rdi), %rdi
.LVL13:
	.loc 1 54 0
	testq	%rdi, %rdi
	jne	.L11
	rep; ret
.LVL14:
.L12:
	.loc 1 53 0
	movl	$0, %eax
	.loc 1 60 0
	ret
	.cfi_endproc
.LFE25:
	.size	list_sum_clear, .-list_sum_clear
	.globl	list_sum
	.type	list_sum, @function
list_sum:
.LFB26:
	.loc 1 65 0
	.cfi_startproc
.LVL15:
	.loc 1 68 0
	testq	%rdi, %rdi
	je	.L16
	.loc 1 66 0
	movl	$0, %eax
.LVL16:
.L15:
	.loc 1 69 0 discriminator 2
	addq	8(%rdi), %rax
.LVL17:
	.loc 1 68 0 discriminator 2
	movq	(%rdi), %rdi
.LVL18:
	testq	%rdi, %rdi
	jne	.L15
	rep; ret
.LVL19:
.L16:
	.loc 1 66 0
	movl	$0, %eax
	.loc 1 71 0
	ret
	.cfi_endproc
.LFE26:
	.size	list_sum, .-list_sum
	.globl	list_sum2
	.type	list_sum2, @function
list_sum2:
.LFB27:
	.loc 1 76 0
	.cfi_startproc
.LVL20:
	.loc 1 80 0
	testq	%rdi, %rdi
	je	.L20
	.loc 1 77 0
	movl	$0, %eax
.LVL21:
.L19:
	.loc 1 82 0
	movq	(%rdi), %rdx
.LVL22:
	.loc 1 83 0
	addq	8(%rdi), %rax
.LVL23:
	.loc 1 80 0
	testq	%rdx, %rdx
	je	.L18
	.loc 1 82 0
	movq	%rdx, %rdi
.LVL24:
	jmp	.L19
.LVL25:
.L20:
	.loc 1 77 0
	movl	$0, %eax
.LVL26:
.L18:
	.loc 1 86 0
	rep; ret
	.cfi_endproc
.LFE27:
	.size	list_sum2, .-list_sum2
	.globl	pipe_sum2
	.type	pipe_sum2, @function
pipe_sum2:
.LFB28:
	.loc 1 90 0
	.cfi_startproc
.LVL27:
	.loc 1 93 0
	testq	%rdi, %rdi
	je	.L24
	.loc 1 91 0
	movl	$0, %eax
.LVL28:
.L23:
	.loc 1 94 0
	movq	(%rdi), %rdx
.LVL29:
	.loc 1 95 0
	addq	8(%rdi), %rax
.LVL30:
	.loc 1 93 0
	testq	%rdx, %rdx
	je	.L22
	.loc 1 96 0
	movq	%rdx, %rdi
	jmp	.L23
.LVL31:
.L24:
	.loc 1 91 0
	movl	$0, %eax
.LVL32:
.L22:
	.loc 1 99 0
	rep; ret
	.cfi_endproc
.LFE28:
	.size	pipe_sum2, .-pipe_sum2
	.globl	rlist_len
	.type	rlist_len, @function
rlist_len:
.LFB29:
	.loc 1 102 0
	.cfi_startproc
.LVL33:
	.loc 1 104 0
	movl	$0, %eax
	.loc 1 103 0
	testq	%rdi, %rdi
	je	.L30
	.loc 1 102 0
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 105 0
	movq	(%rdi), %rdi
.LVL34:
	call	rlist_len
.LVL35:
	addq	$1, %rax
	.loc 1 106 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.L30:
	rep; ret
	.cfi_endproc
.LFE29:
	.size	rlist_len, .-rlist_len
	.globl	rlist_sum
	.type	rlist_sum, @function
rlist_sum:
.LFB30:
	.loc 1 109 0
	.cfi_startproc
.LVL36:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	.loc 1 111 0
	movl	$0, %eax
	.loc 1 110 0
	testq	%rdi, %rdi
	je	.L32
	.loc 1 112 0
	movq	(%rdi), %rdi
.LVL37:
	call	rlist_sum
.LVL38:
	addq	8(%rbx), %rax
.L32:
	.loc 1 113 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL39:
	ret
	.cfi_endproc
.LFE30:
	.size	rlist_sum, .-rlist_sum
	.globl	list_copy
	.type	list_copy, @function
list_copy:
.LFB31:
	.loc 1 117 0
	.cfi_startproc
.LVL40:
	.loc 1 118 0
	testq	%rdi, %rdi
	je	.L35
	testq	%rsi, %rsi
	je	.L35
.L37:
	.loc 1 119 0
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsi)
	.loc 1 120 0
	movq	(%rdi), %rdi
.LVL41:
	.loc 1 121 0
	movq	(%rsi), %rsi
.LVL42:
	.loc 1 118 0
	testq	%rsi, %rsi
	je	.L35
	testq	%rdi, %rdi
	jne	.L37
.L35:
	rep; ret
	.cfi_endproc
.LFE31:
	.size	list_copy, .-list_copy
	.globl	plist_copy
	.type	plist_copy, @function
plist_copy:
.LFB32:
	.loc 1 127 0
	.cfi_startproc
.LVL43:
	.loc 1 130 0
	testq	%rdi, %rdi
	je	.L38
	testq	%rsi, %rsi
	je	.L38
.LVL44:
.L40:
	.loc 1 134 0 discriminator 1
	movq	(%rsi), %rax
.LVL45:
	.loc 1 136 0 discriminator 1
	movq	(%rdi), %rdx
.LVL46:
	.loc 1 137 0 discriminator 1
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rsi)
	.loc 1 138 0 discriminator 1
	testq	%rax, %rax
	je	.L38
	testq	%rdx, %rdx
	je	.L38
	.loc 1 136 0
	movq	%rdx, %rdi
.LVL47:
	.loc 1 134 0
	movq	%rax, %rsi
.LVL48:
	jmp	.L40
.LVL49:
.L38:
	.p2align 4,,2
	rep; ret
	.cfi_endproc
.LFE32:
	.size	plist_copy, .-plist_copy
	.globl	plist_copy2
	.type	plist_copy2, @function
plist_copy2:
.LFB33:
	.loc 1 143 0
	.cfi_startproc
.LVL50:
	.loc 1 145 0
	testq	%rdi, %rdi
	je	.L41
	testq	%rsi, %rsi
	je	.L41
.L43:
	.loc 1 146 0
	movq	(%rdi), %rdx
.LVL51:
	.loc 1 147 0
	movq	(%rsi), %rax
.LVL52:
	.loc 1 148 0
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rsi)
.LVL53:
	.loc 1 145 0
	testq	%rax, %rax
	je	.L41
	testq	%rdx, %rdx
	je	.L41
	.loc 1 150 0
	movq	%rax, %rsi
	.loc 1 149 0
	movq	%rdx, %rdi
	jmp	.L43
.LVL54:
.L41:
	.p2align 4,,2
	rep; ret
	.cfi_endproc
.LFE33:
	.size	plist_copy2, .-plist_copy2
	.globl	stationary_copy
	.type	stationary_copy, @function
stationary_copy:
.LFB34:
	.loc 1 155 0
	.cfi_startproc
.LVL55:
	.loc 1 155 0
	movl	$1024, %eax
.LVL56:
.L46:
	.loc 1 158 0 discriminator 2
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rsi)
.LVL57:
	.loc 1 157 0 discriminator 2
	subq	$1, %rax
.LVL58:
	jne	.L46
	.loc 1 160 0
	rep; ret
	.cfi_endproc
.LFE34:
	.size	stationary_copy, .-stationary_copy
	.type	test, @function
test:
.LFB35:
	.loc 1 183 0
	.cfi_startproc
.LVL59:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 185 0
	leaq	-1(%rdi), %rbx
	salq	$4, %rbx
	movq	main_list(%rbx), %rbp
.LVL60:
	.loc 1 186 0
	movq	$0, main_list(%rbx)
	.loc 1 187 0
	movl	$main_list, %edi
.LVL61:
	movq	myindex(%rip), %rax
	call	*test_fun(,%rax,8)
.LVL62:
	.loc 1 188 0
	movq	%rbp, main_list(%rbx)
	.loc 1 189 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL63:
	ret
	.cfi_endproc
.LFE35:
	.size	test, .-test
	.type	test2a, @function
test2a:
.LFB37:
	.loc 1 217 0
	.cfi_startproc
.LVL64:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 218 0
	leaq	-1(%rdi), %rbx
	salq	$4, %rbx
	movq	main_list(%rbx), %rbp
.LVL65:
	.loc 1 219 0
	movq	$0, main_list(%rbx)
	.loc 1 220 0
	movl	$main_list, %esi
	movq	%rsi, %rdi
.LVL66:
	movq	myindex(%rip), %rax
	call	*test2_fun(,%rax,8)
.LVL67:
	.loc 1 221 0
	movq	%rbp, main_list(%rbx)
	.loc 1 222 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL68:
	ret
	.cfi_endproc
.LFE37:
	.size	test2a, .-test2a
	.type	test2b, @function
test2b:
.LFB38:
	.loc 1 225 0
	.cfi_startproc
.LVL69:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 226 0
	leaq	-1(%rdi), %rbx
	salq	$4, %rbx
	movq	main_list(%rbx), %rbp
.LVL70:
	.loc 1 227 0
	movq	$0, main_list(%rbx)
	.loc 1 228 0
	movq	main_list(%rip), %rsi
	movl	$main_list, %edi
.LVL71:
	movq	myindex(%rip), %rax
	call	*test2_fun(,%rax,8)
.LVL72:
	.loc 1 229 0
	movq	%rbp, main_list(%rbx)
	.loc 1 230 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL73:
	ret
	.cfi_endproc
.LFE38:
	.size	test2b, .-test2b
	.type	test2c, @function
test2c:
.LFB39:
	.loc 1 233 0
	.cfi_startproc
.LVL74:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 234 0
	leaq	-1(%rdi), %rbx
	salq	$4, %rbx
	movq	main_list(%rbx), %rbp
.LVL75:
	.loc 1 235 0
	movq	$0, main_list(%rbx)
	.loc 1 236 0
	movl	$main_list, %esi
	movq	main_list(%rip), %rdi
.LVL76:
	movq	myindex(%rip), %rax
	call	*test2_fun(,%rax,8)
.LVL77:
	.loc 1 237 0
	movq	%rbp, main_list(%rbx)
	.loc 1 238 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL78:
	ret
	.cfi_endproc
.LFE39:
	.size	test2c, .-test2c
	.globl	mylink
	.type	mylink, @function
mylink:
.LFB22:
	.loc 1 18 0
	.cfi_startproc
.LVL79:
	.loc 1 21 0
	leaq	-1(%rdi), %rcx
	testq	%rcx, %rcx
	jle	.L56
	movl	$main_list+16, %eax
	movl	$0, %edx
.LVL80:
.L57:
	.loc 1 22 0 discriminator 2
	movq	%rdx, -8(%rax)
	.loc 1 23 0 discriminator 2
	addq	$1, %rdx
.LVL81:
	movq	%rax, -16(%rax)
.LVL82:
	addq	$16, %rax
	.loc 1 21 0 discriminator 2
	cmpq	%rcx, %rdx
	jne	.L57
.LVL83:
.L56:
	.loc 1 25 0
	movq	%rcx, %rax
	salq	$4, %rax
	movq	%rcx, main_list+8(%rax)
	.loc 1 26 0
	movq	$0, main_list(%rax)
	ret
	.cfi_endproc
.LFE22:
	.size	mylink, .-mylink
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Description: %s, f(%ld) = %ld, "
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"CPE = %.2f\n"
.LC2:
	.string	"Description: %s, %s, "
	.text
	.globl	main
	.type	main, @function
main:
.LFB41:
	.loc 1 267 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LVL84:
	.loc 1 267 0
	movl	$0, %ebx
.LVL85:
.L61:
.LBB22:
.LBB23:
	.loc 1 197 0 discriminator 2
	movl	$1024, %edi
	call	mylink
.LVL86:
	.loc 1 198 0 discriminator 2
	movl	$main_list, %edi
	call	*test_fun(,%rbx,8)
.LVL87:
	movq	%rax, %r8
.LVL88:
.LBB24:
.LBB25:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0 discriminator 2
	movq	test_descr(,%rbx,8), %rdx
	movl	$1024, %ecx
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL89:
.LBE25:
.LBE24:
	.loc 1 200 0 discriminator 2
	movq	%rbx, myindex(%rip)
	.loc 1 201 0 discriminator 2
	movl	$1024, %esi
	movl	$test, %edi
	call	find_cpe
.LVL90:
.LBB26:
.LBB27:
	.loc 2 105 0 discriminator 2
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL91:
	addq	$1, %rbx
.LVL92:
.LBE27:
.LBE26:
.LBE23:
.LBE22:
	.loc 1 269 0 discriminator 2
	cmpq	$8, %rbx
	jne	.L61
	.loc 1 269 0 is_stmt 0
	movl	$0, %ebp
	jmp	.L60
.LVL93:
.L64:
.LBB28:
.LBB29:
	.loc 1 257 0 is_stmt 1 discriminator 2
	movl	$1024, %edi
	call	mylink
.LVL94:
.LBB30:
.LBB31:
	.loc 2 105 0 discriminator 2
	movq	case2_descr(%rbx), %rcx
	movq	test2_descr(,%rbp,8), %rdx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL95:
.LBE31:
.LBE30:
	.loc 1 260 0 discriminator 2
	movq	%rbp, myindex(%rip)
	.loc 1 261 0 discriminator 2
	movq	case_fun(%rbx), %rdi
	movl	$1024, %esi
	call	find_cpe
.LVL96:
.LBB32:
.LBB33:
	.loc 2 105 0 discriminator 2
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL97:
	addq	$8, %rbx
.LBE33:
.LBE32:
.LBE29:
.LBE28:
	.loc 1 273 0 discriminator 2
	cmpq	$24, %rbx
	jne	.L64
.LVL98:
	addq	$1, %rbp
.LVL99:
	.loc 1 272 0
	cmpq	$4, %rbp
	je	.L63
.LVL100:
.L60:
	.loc 1 267 0 discriminator 1
	movl	$0, %ebx
	jmp	.L64
.LVL101:
.L63:
	.loc 1 277 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL102:
	ret
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.section	.rodata.str1.1
.LC3:
	.string	"list --> list"
.LC4:
	.string	"list --> list->next"
.LC5:
	.string	"list->next --> list"
	.section	.rodata
	.align 16
	.type	case2_descr, @object
	.size	case2_descr, 24
case2_descr:
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.align 16
	.type	case_fun, @object
	.size	case_fun, 24
case_fun:
	.quad	test2a
	.quad	test2b
	.quad	test2c
	.section	.rodata.str1.1
.LC6:
	.string	"List Copy"
.LC7:
	.string	"Pipelined List Copy Do-While"
.LC8:
	.string	"Pipelined List Copy While"
.LC9:
	.string	"Stationary Copy"
	.section	.rodata
	.align 32
	.type	test2_descr, @object
	.size	test2_descr, 32
test2_descr:
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.align 32
	.type	test2_fun, @object
	.size	test2_fun, 32
test2_fun:
	.quad	list_copy
	.quad	plist_copy
	.quad	plist_copy2
	.quad	stationary_copy
	.local	myindex
	.comm	myindex,8,8
	.section	.rodata.str1.1
.LC10:
	.string	"Iterative List Length"
.LC11:
	.string	"Iterative List Sum"
.LC12:
	.string	"Pipelined List Sum with old"
.LC13:
	.string	"Pipelined List Sum with new"
.LC14:
	.string	"Recursive List Length"
.LC15:
	.string	"Recursive List Sum"
.LC16:
	.string	"List Length with Clear"
.LC17:
	.string	"List Sum with Clear"
	.section	.rodata
	.align 32
	.type	test_descr, @object
	.size	test_descr, 64
test_descr:
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.align 32
	.type	test_fun, @object
	.size	test_fun, 64
test_fun:
	.quad	list_len
	.quad	list_sum
	.quad	list_sum2
	.quad	pipe_sum2
	.quad	rlist_len
	.quad	rlist_sum
	.quad	list_len_clear
	.quad	list_sum_clear
	.comm	main_list,16384,32
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "../include/cpe.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcdb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF92
	.byte	0x1
	.long	.LASF93
	.long	.LASF94
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
	.long	.LASF95
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
	.uleb128 0x2
	.long	.LASF46
	.byte	0x6
	.byte	0x4
	.long	0x2a3
	.uleb128 0x6
	.byte	0x8
	.long	0x2a9
	.uleb128 0xf
	.long	0x2b4
	.uleb128 0x10
	.long	0x69
	.byte	0
	.uleb128 0x11
	.string	"ELE"
	.byte	0x10
	.byte	0x1
	.byte	0x8
	.long	0x2d9
	.uleb128 0xb
	.long	.LASF47
	.byte	0x1
	.byte	0x9
	.long	0x2d9
	.byte	0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.byte	0xa
	.long	0x69
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b4
	.uleb128 0x2
	.long	.LASF49
	.byte	0x1
	.byte	0xb
	.long	0x2b4
	.uleb128 0x2
	.long	.LASF50
	.byte	0x1
	.byte	0xb
	.long	0x2d9
	.uleb128 0x2
	.long	.LASF51
	.byte	0x1
	.byte	0xa2
	.long	0x300
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0x12
	.long	0x69
	.long	0x315
	.uleb128 0x10
	.long	0x2ea
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x1
	.byte	0xcf
	.long	0x320
	.uleb128 0x6
	.byte	0x8
	.long	0x326
	.uleb128 0xf
	.long	0x336
	.uleb128 0x10
	.long	0x2ea
	.uleb128 0x10
	.long	0x2ea
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x1
	.byte	0xf2
	.long	0x2a3
	.uleb128 0x13
	.long	.LASF96
	.byte	0x2
	.byte	0x67
	.long	0x62
	.byte	0x3
	.long	0x35e
	.uleb128 0x14
	.long	.LASF77
	.byte	0x2
	.byte	0x67
	.long	0x28d
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.byte	0x1e
	.long	0x69
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x39d
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x1e
	.long	0x2ea
	.long	.LLST0
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST1
	.byte	0
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.byte	0x28
	.long	0x69
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dc
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x28
	.long	0x2ea
	.long	.LLST2
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x2a
	.long	0x69
	.long	.LLST3
	.byte	0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x33
	.long	0x69
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x41b
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x33
	.long	0x2ea
	.long	.LLST4
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.byte	0x35
	.long	0x69
	.long	.LLST5
	.byte	0
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.byte	0x40
	.long	0x69
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x45a
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x40
	.long	0x2ea
	.long	.LLST6
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.byte	0x42
	.long	0x69
	.long	.LLST7
	.byte	0
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x4b
	.long	0x69
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a8
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x4b
	.long	0x2ea
	.long	.LLST8
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.byte	0x4d
	.long	0x69
	.long	.LLST9
	.uleb128 0x18
	.string	"old"
	.byte	0x1
	.byte	0x4e
	.long	0x2ea
	.long	.LLST10
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0x59
	.long	0x69
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f6
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x59
	.long	0x2ea
	.long	.LLST11
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.byte	0x5b
	.long	0x69
	.long	.LLST12
	.uleb128 0x19
	.long	.LASF47
	.byte	0x1
	.byte	0x5c
	.long	0x2ea
	.long	.LLST13
	.byte	0
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0x65
	.long	0x69
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x533
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x65
	.long	0x2ea
	.long	.LLST14
	.uleb128 0x1a
	.quad	.LVL35
	.long	0x4f6
	.byte	0
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.byte	0x6c
	.long	0x69
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x570
	.uleb128 0x17
	.string	"ls"
	.byte	0x1
	.byte	0x6c
	.long	0x2ea
	.long	.LLST15
	.uleb128 0x1a
	.quad	.LVL38
	.long	0x533
	.byte	0
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.byte	0x74
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ac
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x74
	.long	0x2ea
	.long	.LLST16
	.uleb128 0x1c
	.long	.LASF62
	.byte	0x1
	.byte	0x74
	.long	0x2ea
	.long	.LLST17
	.byte	0
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x1
	.byte	0x7e
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x606
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x7e
	.long	0x2ea
	.long	.LLST18
	.uleb128 0x1c
	.long	.LASF62
	.byte	0x1
	.byte	0x7e
	.long	0x2ea
	.long	.LLST19
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.byte	0x80
	.long	0x2ea
	.long	.LLST20
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.byte	0x81
	.long	0x2ea
	.long	.LLST21
	.byte	0
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x1
	.byte	0x8e
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x660
	.uleb128 0x17
	.string	"src"
	.byte	0x1
	.byte	0x8e
	.long	0x2ea
	.long	.LLST22
	.uleb128 0x1c
	.long	.LASF62
	.byte	0x1
	.byte	0x8e
	.long	0x2ea
	.long	.LLST23
	.uleb128 0x19
	.long	.LASF68
	.byte	0x1
	.byte	0x90
	.long	0x2ea
	.long	.LLST24
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.byte	0x90
	.long	0x2ea
	.long	.LLST25
	.byte	0
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.byte	0x9a
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a5
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0x9a
	.long	0x2ea
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x1
	.byte	0x9a
	.long	0x2ea
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.long	0x69
	.long	.LLST26
	.byte	0
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.byte	0xb6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f6
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0xb6
	.long	0x69
	.long	.LLST27
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0xb9
	.long	0x2ea
	.long	.LLST28
	.uleb128 0x20
	.quad	.LVL62
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF73
	.byte	0x1
	.byte	0xd8
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x754
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0xd8
	.long	0x69
	.long	.LLST29
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0xda
	.long	0x2ea
	.long	.LLST30
	.uleb128 0x20
	.quad	.LVL67
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF74
	.byte	0x1
	.byte	0xe0
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a5
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0xe0
	.long	0x69
	.long	.LLST31
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0xe2
	.long	0x2ea
	.long	.LLST32
	.uleb128 0x20
	.quad	.LVL72
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1
	.byte	0xe8
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f6
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0xe8
	.long	0x69
	.long	.LLST33
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0xea
	.long	0x2ea
	.long	.LLST34
	.uleb128 0x20
	.quad	.LVL77
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.byte	0x11
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x82e
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x11
	.long	0x69
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x13
	.long	0x69
	.long	.LLST35
	.byte	0
	.uleb128 0x22
	.long	.LASF79
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	0x85a
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.long	0x69
	.uleb128 0x24
	.string	"cpe"
	.byte	0x1
	.byte	0xc3
	.long	0x85a
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.long	0x69
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF78
	.uleb128 0x22
	.long	.LASF80
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.long	0x897
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x69
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xfd
	.long	0x69
	.uleb128 0x24
	.string	"cpe"
	.byte	0x1
	.byte	0xff
	.long	0x85a
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x100
	.long	0x69
	.byte	0
	.uleb128 0x26
	.long	.LASF81
	.byte	0x1
	.value	0x10a
	.long	0x62
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xb60
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x10c
	.long	0x62
	.long	.LLST36
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x10c
	.long	0x62
	.long	.LLST37
	.uleb128 0x28
	.long	0x82e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.value	0x10e
	.long	0xa25
	.uleb128 0x29
	.long	0x83a
	.long	.LLST38
	.uleb128 0x2a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2b
	.long	0x843
	.long	.LLST39
	.uleb128 0x2c
	.long	0x84e
	.value	0x400
	.uleb128 0x2d
	.long	0x341
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.byte	0xc6
	.long	0x981
	.uleb128 0x2e
	.long	0x351
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x2f
	.quad	.LVL89
	.long	0xcad
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
	.uleb128 0xf
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	test_descr
	.byte	0x22
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x341
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0xcb
	.long	0x9cd
	.uleb128 0x2e
	.long	0x351
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.uleb128 0x2f
	.quad	.LVL91
	.long	0xcad
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
	.uleb128 0x30
	.quad	.LVL86
	.long	0x7f6
	.long	0x9e6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x31
	.quad	.LVL87
	.long	0xa01
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.byte	0
	.uleb128 0x2f
	.quad	.LVL90
	.long	0xcc8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	test
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x861
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.value	0x112
	.uleb128 0x33
	.long	0x876
	.uleb128 0x29
	.long	0x86d
	.long	.LLST40
	.uleb128 0x2a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2b
	.long	0x87f
	.long	.LLST41
	.uleb128 0x2b
	.long	0x88a
	.long	.LLST42
	.uleb128 0x28
	.long	0x341
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.value	0x102
	.long	0xad8
	.uleb128 0x29
	.long	0x351
	.long	.LLST43
	.uleb128 0x2f
	.quad	.LVL95
	.long	0xcad
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
	.uleb128 0xf
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	test2_descr
	.byte	0x22
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	case2_descr
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x341
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x1
	.value	0x107
	.long	0xb1e
	.uleb128 0x29
	.long	0x351
	.long	.LLST44
	.uleb128 0x2f
	.quad	.LVL97
	.long	0xcad
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
	.uleb128 0x30
	.quad	.LVL94
	.long	0x7f6
	.long	0xb37
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.uleb128 0x2f
	.quad	.LVL96
	.long	0xcc8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	case_fun
	.byte	0x22
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x2f5
	.long	0xb70
	.uleb128 0xd
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x34
	.long	.LASF82
	.byte	0x1
	.byte	0xa7
	.long	0xb85
	.uleb128 0x9
	.byte	0x3
	.quad	test_fun
	.uleb128 0xe
	.long	0xb60
	.uleb128 0xc
	.long	0x8f
	.long	0xb9a
	.uleb128 0xd
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x34
	.long	.LASF83
	.byte	0x1
	.byte	0xaa
	.long	0xbaf
	.uleb128 0x9
	.byte	0x3
	.quad	test_descr
	.uleb128 0xe
	.long	0xb8a
	.uleb128 0x34
	.long	.LASF84
	.byte	0x1
	.byte	0xb4
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	myindex
	.uleb128 0xc
	.long	0x315
	.long	0xbd9
	.uleb128 0xd
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x34
	.long	.LASF85
	.byte	0x1
	.byte	0xd2
	.long	0xbee
	.uleb128 0x9
	.byte	0x3
	.quad	test2_fun
	.uleb128 0xe
	.long	0xbc9
	.uleb128 0xc
	.long	0x8f
	.long	0xc03
	.uleb128 0xd
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x34
	.long	.LASF86
	.byte	0x1
	.byte	0xd4
	.long	0xc18
	.uleb128 0x9
	.byte	0x3
	.quad	test2_descr
	.uleb128 0xe
	.long	0xbf3
	.uleb128 0xc
	.long	0x336
	.long	0xc2d
	.uleb128 0xd
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.long	.LASF87
	.byte	0x1
	.byte	0xf4
	.long	0xc42
	.uleb128 0x9
	.byte	0x3
	.quad	case_fun
	.uleb128 0xe
	.long	0xc1d
	.uleb128 0xc
	.long	0x8f
	.long	0xc57
	.uleb128 0xd
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.long	.LASF88
	.byte	0x1
	.byte	0xf7
	.long	0xc6c
	.uleb128 0x9
	.byte	0x3
	.quad	case2_descr
	.uleb128 0xe
	.long	0xc47
	.uleb128 0x35
	.long	.LASF89
	.byte	0x7
	.byte	0xa9
	.long	0x261
	.uleb128 0x35
	.long	.LASF90
	.byte	0x7
	.byte	0xaa
	.long	0x261
	.uleb128 0xc
	.long	0x2df
	.long	0xc98
	.uleb128 0x36
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x37
	.long	.LASF91
	.byte	0x1
	.byte	0xf
	.long	0xc87
	.uleb128 0x9
	.byte	0x3
	.quad	main_list
	.uleb128 0x38
	.long	.LASF97
	.byte	0x2
	.byte	0x58
	.long	0x62
	.long	0xcc8
	.uleb128 0x10
	.long	0x62
	.uleb128 0x10
	.long	0x28d
	.uleb128 0x15
	.byte	0
	.uleb128 0x39
	.long	.LASF98
	.byte	0x6
	.byte	0x11
	.long	0x85a
	.uleb128 0x10
	.long	0x298
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.quad	.LFE23-.Ltext0
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
	.quad	.LFE23-.Ltext0
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
	.quad	.LFE24-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL10-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL14-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL15-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL18-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-.Ltext0
	.quad	.LFE26-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL20-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL21-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL27-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL29-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL34-.Ltext0
	.quad	.LFE29-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL39-.Ltext0
	.quad	.LFE30-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL41-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL40-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL42-.Ltext0
	.quad	.LFE31-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL43-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL46-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL45-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL49-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL43-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL49-.Ltext0
	.quad	.LFE32-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL50-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL51-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL52-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL56-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x7
	.byte	0xa
	.value	0x400
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x7
	.byte	0xa
	.value	0x401
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x7
	.byte	0xa
	.value	0x400
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL61-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL60-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL63-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.quad	main_list
	.byte	0x22
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL64-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL66-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL65-.Ltext0
	.quad	.LVL68-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL68-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.quad	main_list
	.byte	0x22
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL69-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL71-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL70-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL73-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.quad	main_list
	.byte	0x22
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL74-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL76-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL75-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL78-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x31
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.quad	main_list
	.byte	0x22
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL79-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL80-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL81-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 -8
	.quad	.LVL82-.Ltext0
	.quad	.LVL83-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.quad	.LVL93-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.quad	.LVL100-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL100-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL85-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL92-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL90-.Ltext0
	.quad	.LVL91-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL93-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL99-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL101-.Ltext0
	.quad	.LVL102-.Ltext0
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL93-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	.LVL101-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL94-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	.LVL101-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL96-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL101-.Ltext0
	.quad	.LFE41-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
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
.LASF85:
	.string	"test2_fun"
.LASF19:
	.string	"_IO_buf_base"
.LASF83:
	.string	"test_descr"
.LASF64:
	.string	"plist_copy"
.LASF72:
	.string	"test"
.LASF98:
	.string	"find_cpe"
.LASF47:
	.string	"next"
.LASF4:
	.string	"signed char"
.LASF93:
	.string	"list.c"
.LASF58:
	.string	"list_sum2"
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
.LASF70:
	.string	"stationary_copy"
.LASF78:
	.string	"double"
.LASF97:
	.string	"__printf_chk"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF82:
	.string	"test_fun"
.LASF87:
	.string	"case_fun"
.LASF46:
	.string	"elem_fun_t"
.LASF66:
	.string	"odest"
.LASF42:
	.string	"_IO_marker"
.LASF89:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF55:
	.string	"list_len_clear"
.LASF0:
	.string	"long unsigned int"
.LASF57:
	.string	"list_sum"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF88:
	.string	"case2_descr"
.LASF48:
	.string	"data"
.LASF2:
	.string	"short unsigned int"
.LASF92:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF21:
	.string	"_IO_save_base"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF90:
	.string	"stdout"
.LASF91:
	.string	"main_list"
.LASF10:
	.string	"sizetype"
.LASF61:
	.string	"rlist_sum"
.LASF54:
	.string	"list_len"
.LASF76:
	.string	"mylink"
.LASF18:
	.string	"_IO_write_end"
.LASF94:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF63:
	.string	"list_copy"
.LASF95:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF62:
	.string	"dest"
.LASF86:
	.string	"test2_descr"
.LASF45:
	.string	"_pos"
.LASF84:
	.string	"myindex"
.LASF24:
	.string	"_markers"
.LASF56:
	.string	"list_sum_clear"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"list2_fun"
.LASF65:
	.string	"osrc"
.LASF5:
	.string	"short int"
.LASF60:
	.string	"rlist_len"
.LASF69:
	.string	"ndest"
.LASF49:
	.string	"list_ele"
.LASF30:
	.string	"_vtable_offset"
.LASF51:
	.string	"list_fun"
.LASF73:
	.string	"test2a"
.LASF74:
	.string	"test2b"
.LASF75:
	.string	"test2c"
.LASF80:
	.string	"run_test2"
.LASF11:
	.string	"char"
.LASF68:
	.string	"nsrc"
.LASF50:
	.string	"list_ptr"
.LASF67:
	.string	"plist_copy2"
.LASF43:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF53:
	.string	"test_fun2"
.LASF77:
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
.LASF71:
	.string	"onext"
.LASF59:
	.string	"pipe_sum2"
.LASF79:
	.string	"run_test"
.LASF22:
	.string	"_IO_backup_base"
.LASF81:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
