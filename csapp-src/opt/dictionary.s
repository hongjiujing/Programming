	.file	"dictionary.c"
	.text
.Ltext0:
	.globl	h_mod
	.type	h_mod, @function
h_mod:
.LFB61:
	.file 1 "dictionary.c"
	.loc 1 119 0
	.cfi_startproc
.LVL0:
	.loc 1 120 0
	movl	$0, %edx
	.loc 1 122 0
	jmp	.L2
.LVL1:
.L3:
	.loc 1 123 0
	movl	%edx, %eax
	sall	$7, %eax
	movsbl	%cl, %ecx
.LVL2:
	addl	%ecx, %eax
	movl	$0, %edx
.LVL3:
	divl	tsize(%rip)
.LVL4:
	.loc 1 122 0
	movq	%rsi, %rdi
.LVL5:
.L2:
	.loc 1 122 0 is_stmt 0 discriminator 1
	leaq	1(%rdi), %rsi
.LVL6:
	movzbl	(%rdi), %ecx
.LVL7:
	testb	%cl, %cl
	jne	.L3
	.loc 1 125 0 is_stmt 1
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE61:
	.size	h_mod, .-h_mod
	.globl	h_add
	.type	h_add, @function
h_add:
.LFB62:
	.loc 1 129 0
	.cfi_startproc
.LVL8:
	.loc 1 130 0
	movl	$0, %eax
	.loc 1 132 0
	jmp	.L5
.LVL9:
.L6:
	.loc 1 133 0
	movsbl	%cl, %ecx
.LVL10:
	addl	%ecx, %eax
.LVL11:
	.loc 1 132 0
	movq	%rdx, %rdi
.LVL12:
.L5:
	.loc 1 132 0 is_stmt 0 discriminator 1
	leaq	1(%rdi), %rdx
.LVL13:
	movzbl	(%rdi), %ecx
.LVL14:
	testb	%cl, %cl
	jne	.L6
	.loc 1 134 0 is_stmt 1
	movl	$0, %edx
.LVL15:
	divl	tsize(%rip)
.LVL16:
	.loc 1 135 0
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE62:
	.size	h_add, .-h_add
	.globl	h_xor
	.type	h_xor, @function
h_xor:
.LFB63:
	.loc 1 139 0
	.cfi_startproc
.LVL17:
	.loc 1 140 0
	movl	$0, %eax
	.loc 1 142 0
	jmp	.L8
.LVL18:
.L9:
	.loc 1 143 0
	movsbl	%dl, %edx
.LVL19:
	xorl	%eax, %edx
	sall	$4, %edx
	shrl	$28, %eax
.LVL20:
	orl	%edx, %eax
.LVL21:
	.loc 1 142 0
	movq	%rcx, %rdi
.LVL22:
.L8:
	.loc 1 142 0 is_stmt 0 discriminator 1
	leaq	1(%rdi), %rcx
.LVL23:
	movzbl	(%rdi), %edx
.LVL24:
	testb	%dl, %dl
	jne	.L9
	.loc 1 144 0 is_stmt 1
	movl	$0, %edx
.LVL25:
	divl	tsize(%rip)
.LVL26:
	.loc 1 145 0
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE63:
	.size	h_xor, .-h_xor
	.globl	compare_ele
	.type	compare_ele, @function
compare_ele:
.LFB68:
	.loc 1 240 0
	.cfi_startproc
.LVL27:
	.loc 1 241 0
	movq	(%rdi), %rdx
.LVL28:
	.loc 1 242 0
	movq	(%rsi), %rax
.LVL29:
	.loc 1 243 0
	movl	8(%rax), %eax
.LVL30:
	subl	8(%rdx), %eax
	.loc 1 244 0
	ret
	.cfi_endproc
.LFE68:
	.size	compare_ele, .-compare_ele
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Couldn't allocate hash array, exiting\n"
	.text
	.type	new_table, @function
new_table:
.LFB59:
	.loc 1 83 0
	.cfi_startproc
.LVL31:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 84 0
	movl	%edi, tsize(%rip)
	.loc 1 85 0
	movslq	%edi, %rdi
.LVL32:
	movl	$8, %esi
	call	calloc
.LVL33:
	movq	%rax, htable(%rip)
	.loc 1 86 0
	testq	%rax, %rax
	jne	.L11
.LVL34:
.LBB41:
.LBB42:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 98 0
	movq	stderr(%rip), %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
.LVL35:
.LBE42:
.LBE41:
	.loc 1 88 0
	movl	$1, %edi
	call	exit
.LVL36:
.L11:
	.loc 1 90 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE59:
	.size	new_table, .-new_table
	.globl	Strlen
	.type	Strlen, @function
Strlen:
.LFB58:
	.loc 1 57 0
	.cfi_startproc
.LVL37:
	.loc 1 59 0
	movl	$0, %eax
	movq	$-1, %rcx
	repnz; scasb
.LVL38:
	notq	%rcx
	leaq	-1(%rcx), %rax
	.loc 1 68 0
	ret
	.cfi_endproc
.LFE58:
	.size	Strlen, .-Strlen
	.globl	lower1
	.type	lower1, @function
lower1:
.LFB56:
	.loc 1 30 0
	.cfi_startproc
.LVL39:
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
.LVL40:
	.loc 1 33 0
	movl	$0, %ebx
	jmp	.L16
.LVL41:
.L18:
	.loc 1 34 0
	addq	%r12, %rbp
	movzbl	0(%rbp), %eax
	leal	-65(%rax), %edx
	cmpb	$25, %dl
	ja	.L17
	.loc 1 35 0
	addl	$32, %eax
	movb	%al, 0(%rbp)
.L17:
	.loc 1 33 0
	addl	$1, %ebx
.LVL42:
.L16:
	.loc 1 33 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rbp
	movq	%r12, %rdi
	call	Strlen
.LVL43:
	cmpq	%rax, %rbp
	jb	.L18
	.loc 1 36 0 is_stmt 1
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL44:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL45:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL46:
	ret
	.cfi_endproc
.LFE56:
	.size	lower1, .-lower1
	.globl	lower2
	.type	lower2, @function
lower2:
.LFB57:
	.loc 1 40 0
	.cfi_startproc
.LVL47:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	.loc 1 42 0
	call	Strlen
.LVL48:
	.loc 1 44 0
	movl	$0, %edx
	jmp	.L21
.LVL49:
.L23:
	.loc 1 45 0
	movslq	%edx, %rcx
	addq	%rbx, %rcx
	movzbl	(%rcx), %esi
	leal	-65(%rsi), %r8d
	cmpb	$25, %r8b
	ja	.L22
	.loc 1 46 0
	addl	$32, %esi
	movb	%sil, (%rcx)
.L22:
	.loc 1 44 0
	addl	$1, %edx
.LVL50:
.L21:
	.loc 1 44 0 is_stmt 0 discriminator 1
	cmpl	%eax, %edx
	jl	.L23
	.loc 1 47 0 is_stmt 1
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL51:
	ret
	.cfi_endproc
.LFE57:
	.size	lower2, .-lower2
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"Couldn't allocate hash element, exiting\n"
	.text
	.type	new_ele, @function
new_ele:
.LFB60:
	.loc 1 93 0
	.cfi_startproc
.LVL52:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp
	.loc 1 94 0
	movl	$24, %edi
.LVL53:
	call	malloc
.LVL54:
	movq	%rax, %rbx
.LVL55:
	.loc 1 95 0
	movq	%rbp, %rdi
	call	Strlen
.LVL56:
	.loc 1 96 0
	movl	llen(%rip), %edx
	cmpl	%edx, %eax
	jle	.L26
	.loc 1 97 0
	movq	%rbp, lstring(%rip)
	.loc 1 98 0
	movl	%eax, llen(%rip)
	.loc 1 99 0
	movl	$1, lcnt(%rip)
	jmp	.L27
.L26:
	.loc 1 100 0
	cmpl	%edx, %eax
	jne	.L27
	.loc 1 101 0
	addl	$1, lcnt(%rip)
.L27:
	.loc 1 102 0
	testq	%rbx, %rbx
	jne	.L28
.LVL57:
.LBB43:
.LBB44:
	.loc 2 98 0
	movq	stderr(%rip), %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
.LVL58:
.LBE44:
.LBE43:
	.loc 1 104 0
	movl	$1, %edi
	call	exit
.LVL59:
.L28:
	.loc 1 107 0
	movq	%rbp, (%rbx)
	.loc 1 108 0
	movl	$1, 8(%rbx)
	.loc 1 110 0
	movq	%rbx, %rax
.LVL60:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL61:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL62:
	ret
	.cfi_endproc
.LFE60:
	.size	new_ele, .-new_ele
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"Couldn't allocate space for string, exiting\n"
	.text
	.globl	save_string
	.type	save_string, @function
save_string:
.LFB64:
	.loc 1 152 0
	.cfi_startproc
.LVL63:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp
	.loc 1 153 0
	call	Strlen
.LVL64:
	leaq	1(%rax), %rdi
	call	malloc
.LVL65:
	movq	%rax, %rbx
.LVL66:
	.loc 1 154 0
	testq	%rax, %rax
	jne	.L31
.LVL67:
.LBB45:
.LBB46:
	.loc 2 98 0
	movq	stderr(%rip), %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
.LVL68:
.LBE46:
.LBE45:
	.loc 1 156 0
	movl	$1, %edi
	call	exit
.LVL69:
.L31:
.LBB47:
.LBB48:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string3.h"
	.loc 3 105 0
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	strcpy
.LVL70:
.LBE48:
.LBE47:
	.loc 1 160 0
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL71:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL72:
	ret
	.cfi_endproc
.LFE64:
	.size	save_string, .-save_string
	.globl	find_ele_rec
	.type	find_ele_rec, @function
find_ele_rec:
.LFB65:
	.loc 1 164 0
	.cfi_startproc
.LVL73:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	.loc 1 165 0
	testq	%rdi, %rdi
	jne	.L34
	.loc 1 167 0
	addl	$1, ucnt(%rip)
	.loc 1 168 0
	movq	%rsi, %rdi
.LVL74:
	call	save_string
.LVL75:
	movq	%rax, %rdi
	call	new_ele
.LVL76:
	jmp	.L35
.LVL77:
.L34:
.LBB49:
	.loc 1 170 0
	movq	(%rdi), %rsi
.LVL78:
	movq	%rbp, %rdi
	call	strcmp
.LVL79:
.LBE49:
	testl	%eax, %eax
	jne	.L36
	.loc 1 171 0
	movl	8(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rbx)
	.loc 1 172 0
	cmpl	mcnt(%rip), %eax
	jle	.L37
	.loc 1 173 0
	movl	%eax, mcnt(%rip)
	.loc 1 174 0
	movq	(%rbx), %rax
	movq	%rax, mstring(%rip)
.L37:
	.loc 1 176 0
	movq	%rbx, %rax
	jmp	.L35
.L36:
	.loc 1 178 0
	movq	16(%rbx), %rdi
	movq	%rbp, %rsi
	call	find_ele_rec
.LVL80:
	movq	%rax, 16(%rbx)
	.loc 1 179 0
	movq	%rbx, %rax
.L35:
	.loc 1 180 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL81:
	popq	%rbp
	.cfi_def_cfa_offset 8
.LVL82:
	ret
	.cfi_endproc
.LFE65:
	.size	find_ele_rec, .-find_ele_rec
	.globl	find_ele_iter_f
	.type	find_ele_iter_f, @function
find_ele_iter_f:
.LFB66:
	.loc 1 184 0
	.cfi_startproc
.LVL83:
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
	movq	%rdi, %r13
	movq	%rsi, %r12
.LVL84:
	.loc 1 186 0
	movq	%rdi, %rbx
	jmp	.L40
.LVL85:
.L44:
.LBB50:
	.loc 1 187 0
	movq	(%rbx), %rbp
.LVL86:
.LBB51:
	.loc 1 188 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	strcmp
.LVL87:
.LBE51:
	testl	%eax, %eax
	jne	.L41
.LBB52:
	.loc 1 189 0
	movl	8(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rbx)
.LVL88:
	.loc 1 190 0
	cmpl	mcnt(%rip), %eax
	jle	.L42
	.loc 1 191 0
	movl	%eax, mcnt(%rip)
	.loc 1 192 0
	movq	%rbp, mstring(%rip)
.L42:
	.loc 1 194 0
	movq	%r13, %rax
.LVL89:
	jmp	.L43
.LVL90:
.L41:
.LBE52:
.LBE50:
	.loc 1 186 0
	movq	16(%rbx), %rbx
.LVL91:
.L40:
	.loc 1 186 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx
	jne	.L44
	.loc 1 197 0 is_stmt 1
	movq	%r12, %rdi
	call	save_string
.LVL92:
	movq	%rax, %rdi
	call	new_ele
.LVL93:
	.loc 1 198 0
	addl	$1, ucnt(%rip)
	.loc 1 199 0
	movq	%r13, 16(%rax)
.LVL94:
.L43:
	.loc 1 201 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL95:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL96:
	ret
	.cfi_endproc
.LFE66:
	.size	find_ele_iter_f, .-find_ele_iter_f
	.globl	find_ele_iter_r
	.type	find_ele_iter_r, @function
find_ele_iter_r:
.LFB67:
	.loc 1 205 0
	.cfi_startproc
.LVL97:
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
	movq	%rdi, %r13
	movq	%rsi, %r12
.LVL98:
	.loc 1 208 0
	movq	%rdi, %rbx
	.loc 1 207 0
	movl	$0, %ebp
	.loc 1 208 0
	jmp	.L47
.LVL99:
.L51:
.LBB53:
	.loc 1 209 0
	movq	(%rbx), %rbp
.LVL100:
.LBB54:
	.loc 1 210 0
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	strcmp
.LVL101:
.LBE54:
	testl	%eax, %eax
	jne	.L48
.LBB55:
	.loc 1 211 0
	movl	8(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rbx)
.LVL102:
	.loc 1 212 0
	cmpl	mcnt(%rip), %eax
	jle	.L49
	.loc 1 213 0
	movl	%eax, mcnt(%rip)
	.loc 1 214 0
	movq	%rbp, mstring(%rip)
.L49:
	.loc 1 216 0
	movq	%r13, %rax
.LVL103:
	jmp	.L50
.LVL104:
.L48:
.LBE55:
	.loc 1 218 0
	movq	%rbx, %rbp
.LVL105:
.LBE53:
	.loc 1 208 0
	movq	16(%rbx), %rbx
.LVL106:
.L47:
	.loc 1 208 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx
	jne	.L51
	.loc 1 220 0 is_stmt 1
	movq	%r12, %rdi
	call	save_string
.LVL107:
	movq	%rax, %rdi
	call	new_ele
.LVL108:
	.loc 1 221 0
	addl	$1, ucnt(%rip)
	.loc 1 222 0
	movq	$0, 16(%rax)
	.loc 1 223 0
	testq	%rbp, %rbp
	je	.L50
	.loc 1 224 0
	movq	%rax, 16(%rbp)
	.loc 1 225 0
	movq	%r13, %rax
.LVL109:
.L50:
	.loc 1 228 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL110:
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL111:
	ret
	.cfi_endproc
.LFE67:
	.size	find_ele_iter_r, .-find_ele_iter_r
	.globl	sort_words
	.type	sort_words, @function
sort_words:
.LFB69:
	.loc 1 249 0
	.cfi_startproc
.LVL112:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %r12d
.LVL113:
	.loc 1 252 0
	movslq	ucnt(%rip), %rdi
.LVL114:
	movl	$8, %esi
	call	calloc
.LVL115:
	movq	%rax, %rbx
.LVL116:
	.loc 1 255 0
	movl	$0, scnt(%rip)
.LVL117:
	.loc 1 254 0
	movl	$0, %ebp
	.loc 1 256 0
	movl	$0, %edi
	jmp	.L55
.LVL118:
.L63:
	.loc 1 257 0
	movslq	%edi, %rdx
	movq	htable(%rip), %rax
	movq	(%rax,%rdx,8), %rax
.LVL119:
	jmp	.L56
.L62:
	.loc 1 258 0
	cmpl	$1, 8(%rax)
	jne	.L57
	.loc 1 259 0
	addl	$1, scnt(%rip)
.L57:
	.loc 1 260 0
	testl	%r12d, %r12d
	je	.L67
	.loc 1 261 0
	movslq	%ebp, %rdx
	movq	%rax, (%rbx,%rdx,8)
	jmp	.L59
.LVL120:
.L61:
	.loc 1 264 0 discriminator 1
	movq	%rcx, (%rbx,%rsi)
	.loc 1 263 0 discriminator 1
	subl	$1, %edx
.LVL121:
	jmp	.L58
.LVL122:
.L67:
	movl	%ebp, %edx
.L58:
.LVL123:
	testl	%edx, %edx
	jle	.L60
	.loc 1 263 0 is_stmt 0 discriminator 2
	movslq	%edx, %rsi
	salq	$3, %rsi
	movq	-8(%rbx,%rsi), %rcx
	movl	8(%rcx), %r8d
	cmpl	%r8d, 8(%rax)
	jg	.L61
.L60:
	.loc 1 265 0 is_stmt 1
	movslq	%edx, %rdx
	movq	%rax, (%rbx,%rdx,8)
.LVL124:
.L59:
	.loc 1 267 0
	addl	$1, %ebp
.LVL125:
	.loc 1 257 0
	movq	16(%rax), %rax
.LVL126:
.L56:
	.loc 1 257 0 is_stmt 0 discriminator 1
	testq	%rax, %rax
	jne	.L62
	.loc 1 256 0 is_stmt 1
	addl	$1, %edi
.LVL127:
.L55:
	.loc 1 256 0 is_stmt 0 discriminator 1
	cmpl	tsize(%rip), %edi
	jl	.L63
	.loc 1 269 0 is_stmt 1
	testl	%r12d, %r12d
	je	.L64
	.loc 1 270 0
	movslq	%ebp, %rsi
	movl	$compare_ele, %ecx
	movl	$8, %edx
	movq	%rbx, %rdi
.LVL128:
	call	qsort
.LVL129:
.L64:
	.loc 1 272 0
	movq	(%rbx), %r12
.LVL130:
	.loc 1 273 0
	movl	$0, %edx
	leal	-1(%rbp), %edi
	jmp	.L65
.LVL131:
.L66:
	.loc 1 274 0 discriminator 2
	movslq	%edx, %rcx
	movq	(%rbx,%rcx,8), %rsi
	movq	8(%rbx,%rcx,8), %rax
	movq	%rax, 16(%rsi)
	.loc 1 273 0 discriminator 2
	addl	$1, %edx
.LVL132:
.L65:
	.loc 1 273 0 is_stmt 0 discriminator 1
	cmpl	%edx, %edi
	jg	.L66
	.loc 1 275 0 is_stmt 1
	movslq	%ebp, %rbp
.LVL133:
	movq	-8(%rbx,%rbp,8), %rax
	movq	$0, 16(%rax)
	.loc 1 276 0
	movq	%rbx, %rdi
.LVL134:
	call	free
.LVL135:
	.loc 1 278 0
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL136:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL137:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL138:
	ret
	.cfi_endproc
.LFE69:
	.size	sort_words, .-sort_words
	.globl	insert_string
	.type	insert_string, @function
insert_string:
.LFB70:
	.loc 1 284 0
	.cfi_startproc
.LVL139:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%rcx, %r12
	.loc 1 286 0
	call	*%rdx
.LVL140:
	.loc 1 287 0
	movq	%rbx, %rdi
	call	*%rbp
.LVL141:
	.loc 1 288 0
	cltq
	movq	htable(%rip), %rdx
	leaq	(%rdx,%rax,8), %rbp
.LVL142:
	movq	%rbx, %rsi
	movq	0(%rbp), %rdi
	call	*%r12
.LVL143:
	movq	%rax, 0(%rbp)
	.loc 1 289 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL144:
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL145:
	ret
	.cfi_endproc
.LFE70:
	.size	insert_string, .-insert_string
	.globl	init_token
	.type	init_token, @function
init_token:
.LFB71:
	.loc 1 297 0
	.cfi_startproc
.LVL146:
	.loc 1 298 0
	movl	$0, bufvalid(%rip)
	.loc 1 299 0
	movq	%rdi, infile(%rip)
	ret
	.cfi_endproc
.LFE71:
	.size	init_token, .-init_token
	.section	.rodata
	.align 8
.LC3:
	.string	" \t\n\r.,:;/<>()[]{}?!\"-'"
	.string	"xc2"
	.string	"xa0"
	.text
	.globl	get_word
	.type	get_word, @function
get_word:
.LFB72:
	.loc 1 307 0
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L76:
	.loc 1 310 0
	cmpl	$0, bufvalid(%rip)
	je	.L73
	.loc 1 311 0
	movl	$.LC3, %esi
	movl	$0, %edi
	call	strtok
.LVL147:
	.loc 1 312 0
	testq	%rax, %rax
	jne	.L74
.LVL148:
.L73:
.LBB56:
.LBB57:
	.loc 2 255 0
	movq	infile(%rip), %rdx
	movl	$1024, %esi
	movl	$buf, %edi
	call	fgets
.LVL149:
.LBE57:
.LBE56:
	.loc 1 315 0
	testq	%rax, %rax
	je	.L75
	.loc 1 317 0
	movl	$1, bufvalid(%rip)
	.loc 1 318 0
	movl	$.LC3, %esi
	movl	$buf, %edi
	call	strtok
.LVL150:
	.loc 1 319 0
	testq	%rax, %rax
	je	.L76
.LVL151:
.L74:
	.loc 1 322 0
	addl	$1, wcnt(%rip)
.LVL152:
.L75:
	.loc 1 324 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE72:
	.size	get_word, .-get_word
	.globl	get_token
	.type	get_token, @function
get_token:
.LFB73:
	.loc 1 330 0
	.cfi_startproc
.LVL153:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movl	%edi, %r12d
.LVL154:
	.loc 1 339 0
	cmpl	$1, %edi
	jne	.L80
	.loc 1 340 0
	movl	$0, %eax
	call	get_word
.LVL155:
	jmp	.L81
.LVL156:
.L80:
	.loc 1 343 0
	leal	-1(%rdi), %ebx
	.loc 1 341 0
	cmpl	$0, first.4138(%rip)
	jne	.L94
	jmp	.L83
.LVL157:
.L84:
.LBB58:
	.loc 1 344 0
	movl	$0, %eax
	call	get_word
.LVL158:
	.loc 1 345 0
	testq	%rax, %rax
	je	.L91
	.loc 1 348 0
	movl	bindex.4139(%rip), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, bindex.4139(%rip)
	movslq	%edx, %rdi
	salq	$10, %rdi
	addq	$token_buf.4137, %rdi
.LVL159:
.LBB59:
.LBB60:
	.loc 3 105 0
	movq	%rax, %rsi
	call	strcpy
.LVL160:
.L94:
.LBE60:
.LBE59:
.LBE58:
	.loc 1 343 0 discriminator 1
	cmpl	bindex.4139(%rip), %ebx
	jg	.L84
	.loc 1 350 0
	movl	$0, first.4138(%rip)
.L83:
	.loc 1 353 0
	movl	$0, %eax
	call	get_word
.LVL161:
	.loc 1 354 0
	testq	%rax, %rax
	je	.L92
	.loc 1 357 0
	movl	bindex.4139(%rip), %edx
	leal	1(%rdx), %ebx
	movl	%ebx, bindex.4139(%rip)
	movslq	%edx, %rdi
	salq	$10, %rdi
	addq	$token_buf.4137, %rdi
.LVL162:
.LBB61:
.LBB62:
	.loc 3 105 0
	movq	%rax, %rsi
	call	strcpy
.LVL163:
.LBE62:
.LBE61:
	.loc 1 358 0
	cmpl	$9, %ebx
	jle	.L85
	.loc 1 359 0
	movl	$0, bindex.4139(%rip)
.L85:
.LVL164:
	.loc 1 362 0
	movl	bindex.4139(%rip), %ebx
.LVL165:
	subl	%r12d, %ebx
.LVL166:
	.loc 1 363 0
	leal	10(%rbx), %eax
	testl	%ebx, %ebx
	cmovs	%eax, %ebx
.LVL167:
	.loc 1 372 0
	movl	$0, %ebp
	movl	$sbuf.4140, %eax
.LVL168:
	movl	$0, %r14d
	jmp	.L87
.LVL169:
.L90:
	.loc 1 365 0
	testl	%ebp, %ebp
	je	.L93
	.loc 1 366 0
	leaq	1(%rax), %r13
.LVL170:
	movb	$32, (%rax)
	jmp	.L88
.LVL171:
.L93:
	movq	%rax, %r13
.LVL172:
.L88:
	.loc 1 367 0
	movslq	%ebx, %r15
	salq	$10, %r15
	addq	$token_buf.4137, %r15
.LVL173:
.LBB63:
.LBB64:
	.loc 3 105 0
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	strcpy
.LVL174:
.LBE64:
.LBE63:
	.loc 1 369 0
	movq	%r15, %rdi
	call	Strlen
.LVL175:
	addq	%r13, %rax
.LVL176:
	.loc 1 370 0
	addl	$1, %ebx
.LVL177:
	.loc 1 372 0
	cmpl	$10, %ebx
	cmovge	%r14d, %ebx
.LVL178:
	.loc 1 364 0
	addl	$1, %ebp
.LVL179:
.L87:
	.loc 1 364 0 is_stmt 0 discriminator 1
	cmpl	%r12d, %ebp
	jl	.L90
	.loc 1 377 0 is_stmt 1
	movl	$sbuf.4140, %eax
.LVL180:
	jmp	.L81
.LVL181:
.L91:
.LBB65:
	.loc 1 346 0
	movl	$0, %eax
.LVL182:
	jmp	.L81
.LVL183:
.L92:
.LBE65:
	.loc 1 355 0
	movl	$0, %eax
.LVL184:
.L81:
	.loc 1 378 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL185:
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.size	get_token, .-get_token
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%d\t'%s'\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"%d n-grams, %d unique, %d singletons.  Most common (%d) = '%s'.  Longest (%d have length %d) = '%s'\n"
	.text
	.globl	word_freq
	.type	word_freq, @function
word_freq:
.LFB74:
	.loc 1 386 0
	.cfi_startproc
.LVL186:
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
	movl	%esi, %ebx
	movl	%edx, %ebp
	movl	%ecx, %r15d
	movl	%r8d, 44(%rsp)
	movq	%r9, %r14
	movq	112(%rsp), %r13
	movq	120(%rsp), %r12
	.loc 1 390 0
	call	init_token
.LVL187:
	.loc 1 391 0
	movl	%r15d, %edi
	call	new_table
.LVL188:
	.loc 1 393 0
	jmp	.L97
.LVL189:
.L98:
	.loc 1 394 0
	movq	%r12, %rcx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	call	insert_string
.LVL190:
.L97:
	.loc 1 393 0 discriminator 1
	movl	%ebp, %edi
	call	get_token
.LVL191:
	testq	%rax, %rax
	jne	.L98
	.loc 1 396 0
	testl	%ebx, %ebx
	jle	.L99
	.loc 1 397 0
	movl	44(%rsp), %edi
	call	sort_words
.LVL192:
	movq	%rax, %rbp
.LVL193:
	.loc 1 398 0
	jmp	.L100
.LVL194:
.L101:
	.loc 1 399 0
	movq	0(%rbp), %rcx
	movl	8(%rbp), %edx
.LVL195:
.LBB66:
.LBB67:
	.loc 2 105 0
	movl	$.LC4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL196:
.LBE67:
.LBE66:
	.loc 1 400 0
	movq	16(%rbp), %rbp
.LVL197:
	.loc 1 398 0
	movl	%r12d, %ebx
.LVL198:
.L100:
	.loc 1 398 0 is_stmt 0 discriminator 1
	testq	%rbp, %rbp
	je	.L99
	.loc 1 398 0 discriminator 2
	leal	-1(%rbx), %r12d
.LVL199:
	testl	%ebx, %ebx
	jne	.L101
.LVL200:
.L99:
	.loc 1 403 0 is_stmt 1
	movq	lstring(%rip), %rax
.LVL201:
.LBB68:
.LBB69:
	.loc 2 105 0
	movq	%rax, 24(%rsp)
	movl	llen(%rip), %eax
	movl	%eax, 16(%rsp)
	movl	lcnt(%rip), %eax
	movl	%eax, 8(%rsp)
	movq	mstring(%rip), %rax
	movq	%rax, (%rsp)
	movl	mcnt(%rip), %r9d
	movl	scnt(%rip), %r8d
	movl	ucnt(%rip), %ecx
	movl	wcnt(%rip), %edx
	movl	$.LC5, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL202:
.LBE69:
.LBE68:
	.loc 1 405 0
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
.LVL203:
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL204:
	ret
	.cfi_endproc
.LFE74:
	.size	word_freq, .-word_freq
	.section	.rodata.str1.1
.LC6:
	.string	"verbose"
.LC7:
	.string	"size"
.LC8:
	.string	"hash"
.LC9:
	.string	"lower"
.LC10:
	.string	"find"
.LC11:
	.string	"ngram"
.LC12:
	.string	"quicksort"
.LC13:
	.string	"file"
.LC14:
	.string	"N-gram size %d\n"
.LC15:
	.string	"Lower case function %s\n"
.LC16:
	.string	"Hash function %s\n"
.LC17:
	.string	"Find element function %s\n"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Invalid hash function index %d\n"
	.align 8
.LC19:
	.string	"Invalid lower function index %d\n"
	.align 8
.LC20:
	.string	"Invalid find function index %d\n"
	.section	.rodata.str1.1
.LC21:
	.string	"r"
.LC22:
	.string	"Couldn't open file '%s'\n"
.LC24:
	.string	"Total time = %f seconds\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB75:
	.loc 1 408 0
	.cfi_startproc
.LVL205:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, %ebp
	movq	%rsi, %r12
	.loc 1 409 0
	movl	$1, 28(%rsp)
	.loc 1 410 0
	movl	$1024, 32(%rsp)
	.loc 1 411 0
	movl	$0, 36(%rsp)
	.loc 1 412 0
	movl	$0, 40(%rsp)
	.loc 1 413 0
	movl	$0, 44(%rsp)
	.loc 1 414 0
	movl	$1, 48(%rsp)
	.loc 1 415 0
	movl	$0, 52(%rsp)
	.loc 1 416 0
	movq	$0, 56(%rsp)
	.loc 1 417 0
	movq	stdin(%rip), %rbx
.LVL206:
	.loc 1 418 0
	leaq	28(%rsp), %rsi
.LVL207:
	movl	$.LC6, %edi
.LVL208:
	call	add_int_option
.LVL209:
	.loc 1 419 0
	leaq	32(%rsp), %rsi
	movl	$.LC7, %edi
	call	add_int_option
.LVL210:
	.loc 1 420 0
	leaq	36(%rsp), %rsi
	movl	$.LC8, %edi
	call	add_int_option
.LVL211:
	.loc 1 421 0
	leaq	40(%rsp), %rsi
	movl	$.LC9, %edi
	call	add_int_option
.LVL212:
	.loc 1 422 0
	leaq	44(%rsp), %rsi
	movl	$.LC10, %edi
	call	add_int_option
.LVL213:
	.loc 1 423 0
	leaq	48(%rsp), %rsi
	movl	$.LC11, %edi
	call	add_int_option
.LVL214:
	.loc 1 424 0
	leaq	52(%rsp), %rsi
	movl	$.LC12, %edi
	call	add_int_option
.LVL215:
	.loc 1 425 0
	leaq	56(%rsp), %rsi
	movl	$.LC13, %edi
	call	add_string_option
.LVL216:
	.loc 1 426 0
	movl	$0, %edx
	movq	%r12, %rsi
	movl	%ebp, %edi
	call	parse_options
.LVL217:
	.loc 1 427 0
	movq	stdout(%rip), %rdi
	call	show_options
.LVL218:
.LBB70:
.LBB71:
	.loc 2 105 0
	movl	48(%rsp), %edx
	movl	$.LC14, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL219:
.LBE71:
.LBE70:
	.loc 1 429 0
	movslq	40(%rsp), %rax
	movq	lower_fun_names(,%rax,8), %rdx
.LVL220:
.LBB72:
.LBB73:
	.loc 2 105 0
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL221:
.LBE73:
.LBE72:
	.loc 1 430 0
	movslq	36(%rsp), %rax
	movq	hash_fun_names(,%rax,8), %rdx
.LVL222:
.LBB74:
.LBB75:
	.loc 2 105 0
	movl	$.LC16, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL223:
.LBE75:
.LBE74:
	.loc 1 431 0
	movslq	44(%rsp), %rax
	movq	find_ele_fun_names(,%rax,8), %rdx
.LVL224:
.LBB76:
.LBB77:
	.loc 2 105 0
	movl	$.LC17, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL225:
.LBE77:
.LBE76:
	.loc 1 432 0
	movl	36(%rsp), %ecx
	cmpl	$2, %ecx
	jbe	.L104
.LVL226:
.LBB78:
.LBB79:
	.loc 2 98 0
	movl	$.LC18, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rdi
	movl	$0, %eax
	call	__fprintf_chk
.LVL227:
.LBE79:
.LBE78:
	.loc 1 434 0
	movl	$1, %edi
	call	exit
.LVL228:
.L104:
	.loc 1 436 0
	movl	40(%rsp), %ecx
	cmpl	$1, %ecx
	jbe	.L105
.LVL229:
.LBB80:
.LBB81:
	.loc 2 98 0
	movl	$.LC19, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rdi
	movl	$0, %eax
	call	__fprintf_chk
.LVL230:
.LBE81:
.LBE80:
	.loc 1 438 0
	movl	$1, %edi
	call	exit
.LVL231:
.L105:
	.loc 1 440 0
	movl	44(%rsp), %ecx
	cmpl	$2, %ecx
	jbe	.L106
.LVL232:
.LBB82:
.LBB83:
	.loc 2 98 0
	movl	$.LC20, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rdi
	movl	$0, %eax
	call	__fprintf_chk
.LVL233:
.LBE83:
.LBE82:
	.loc 1 442 0
	movl	$1, %edi
	call	exit
.LVL234:
.L106:
	.loc 1 444 0
	movq	56(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L107
	.loc 1 445 0
	movl	$.LC21, %esi
	call	fopen
.LVL235:
	movq	%rax, %rbx
.LVL236:
	.loc 1 446 0
	testq	%rax, %rax
	jne	.L107
.LVL237:
.LBB84:
.LBB85:
	.loc 2 98 0
	movq	56(%rsp), %rcx
	movl	$.LC22, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rdi
	movl	$0, %eax
.LVL238:
	call	__fprintf_chk
.LVL239:
.LBE85:
.LBE84:
	.loc 1 448 0
	movl	$1, %edi
	call	exit
.LVL240:
.L107:
	.loc 1 451 0
	movslq	36(%rsp), %rax
	movq	hash_fun_set(,%rax,8), %r9
	movslq	44(%rsp), %rax
	movq	find_ele_fun_set(,%rax,8), %rax
	movq	%rax, 8(%rsp)
	movslq	40(%rsp), %rax
	movq	lower_fun_set(,%rax,8), %rax
	movq	%rax, (%rsp)
	movl	52(%rsp), %r8d
	movl	32(%rsp), %ecx
	movl	48(%rsp), %edx
	movl	28(%rsp), %esi
	movq	%rbx, %rdi
	call	word_freq
.LVL241:
	.loc 1 455 0
	call	clock
.LVL242:
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC23(%rip), %xmm0, %xmm0
.LVL243:
.LBB86:
.LBB87:
	.loc 2 105 0
	movl	$.LC24, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL244:
.LBE87:
.LBE86:
	.loc 1 456 0
	movq	%rbx, %rdi
	call	fclose
.LVL245:
	.loc 1 458 0
	movl	$0, %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL246:
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL247:
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL248:
	ret
	.cfi_endproc
.LFE75:
	.size	main, .-main
	.local	token_buf.4137
	.comm	token_buf.4137,10240,32
	.local	bindex.4139
	.comm	bindex.4139,4,4
	.data
	.align 4
	.type	first.4138, @object
	.size	first.4138, 4
first.4138:
	.long	1
	.local	sbuf.4140
	.comm	sbuf.4140,1024,32
	.comm	infile,8,8
	.globl	bufvalid
	.bss
	.align 4
	.type	bufvalid, @object
	.size	bufvalid, 4
bufvalid:
	.zero	4
	.comm	buf,1024,32
	.globl	find_ele_fun_names
	.section	.rodata.str1.1
.LC25:
	.string	"find_ele_rec"
.LC26:
	.string	"find_ele_iter_f"
.LC27:
	.string	"find_ele_iter_r"
	.data
	.align 16
	.type	find_ele_fun_names, @object
	.size	find_ele_fun_names, 24
find_ele_fun_names:
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.globl	find_ele_fun_set
	.align 16
	.type	find_ele_fun_set, @object
	.size	find_ele_fun_set, 24
find_ele_fun_set:
	.quad	find_ele_rec
	.quad	find_ele_iter_f
	.quad	find_ele_iter_r
	.globl	hash_fun_names
	.section	.rodata.str1.1
.LC28:
	.string	"h_mod"
.LC29:
	.string	"h_add"
.LC30:
	.string	"h_xor"
	.data
	.align 16
	.type	hash_fun_names, @object
	.size	hash_fun_names, 24
hash_fun_names:
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.globl	hash_fun_set
	.align 16
	.type	hash_fun_set, @object
	.size	hash_fun_set, 24
hash_fun_set:
	.quad	h_mod
	.quad	h_add
	.quad	h_xor
	.comm	tsize,4,4
	.comm	htable,8,8
	.globl	lower_fun_names
	.section	.rodata.str1.1
.LC31:
	.string	"lower1"
.LC32:
	.string	"lower2"
	.data
	.align 16
	.type	lower_fun_names, @object
	.size	lower_fun_names, 16
lower_fun_names:
	.quad	.LC31
	.quad	.LC32
	.globl	lower_fun_set
	.align 16
	.type	lower_fun_set, @object
	.size	lower_fun_set, 16
lower_fun_set:
	.quad	lower1
	.quad	lower2
	.globl	lcnt
	.bss
	.align 4
	.type	lcnt, @object
	.size	lcnt, 4
lcnt:
	.zero	4
	.globl	lstring
	.section	.rodata.str1.1
.LC33:
	.string	""
	.data
	.align 8
	.type	lstring, @object
	.size	lstring, 8
lstring:
	.quad	.LC33
	.globl	llen
	.bss
	.align 4
	.type	llen, @object
	.size	llen, 4
llen:
	.zero	4
	.globl	mstring
	.data
	.align 8
	.type	mstring, @object
	.size	mstring, 8
mstring:
	.quad	.LC33
	.globl	scnt
	.bss
	.align 4
	.type	scnt, @object
	.size	scnt, 4
scnt:
	.zero	4
	.globl	mcnt
	.align 4
	.type	mcnt, @object
	.size	mcnt, 4
mcnt:
	.zero	4
	.globl	ucnt
	.align 4
	.type	ucnt, @object
	.size	ucnt, 4
ucnt:
	.zero	4
	.globl	wcnt
	.align 4
	.type	wcnt, @object
	.size	wcnt, 4
wcnt:
	.zero	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC23:
	.long	0
	.long	1093567616
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "/usr/include/time.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "<built-in>"
	.file 11 "/usr/include/string.h"
	.file 12 "options.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1bc1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF157
	.byte	0x1
	.long	.LASF158
	.long	.LASF159
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
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x91
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x31
	.long	0xb2
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x7
	.value	0x111
	.long	0x239
	.uleb128 0x8
	.long	.LASF14
	.byte	0x7
	.value	0x112
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x117
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x118
	.long	0x9a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x119
	.long	0x9a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x11a
	.long	0x9a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x11b
	.long	0x9a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11c
	.long	0x9a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11d
	.long	0x9a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0x9a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x120
	.long	0x9a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x121
	.long	0x9a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x9a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x271
	.byte	0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x277
	.byte	0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x128
	.long	0x62
	.byte	0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x62
	.byte	0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x12e
	.long	0x70
	.byte	0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x132
	.long	0x46
	.byte	0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x133
	.long	0x54
	.byte	0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x134
	.long	0x27d
	.byte	0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x138
	.long	0x28d
	.byte	0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x141
	.long	0x7b
	.byte	0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x14a
	.long	0x98
	.byte	0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x14b
	.long	0x98
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14c
	.long	0x98
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14d
	.long	0x98
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x62
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x7
	.value	0x152
	.long	0x293
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF160
	.byte	0x7
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xbc
	.long	0x271
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.byte	0xbd
	.long	0x271
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0xbe
	.long	0x277
	.byte	0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0xc2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x240
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0xc
	.long	0xa0
	.long	0x28d
	.uleb128 0xd
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x239
	.uleb128 0xc
	.long	0xa0
	.long	0x2a3
	.uleb128 0xd
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a9
	.uleb128 0xe
	.long	0xa0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x2
	.long	.LASF49
	.byte	0x8
	.byte	0x3c
	.long	0x8d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0xf
	.long	.LASF51
	.byte	0x9
	.value	0x2e6
	.long	0x2d9
	.uleb128 0x6
	.byte	0x8
	.long	0x2df
	.uleb128 0x10
	.long	0x62
	.long	0x2f3
	.uleb128 0x11
	.long	0x2f3
	.uleb128 0x11
	.long	0x2f3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f9
	.uleb128 0x12
	.uleb128 0x2
	.long	.LASF52
	.byte	0x1
	.byte	0x18
	.long	0x305
	.uleb128 0x6
	.byte	0x8
	.long	0x30b
	.uleb128 0x13
	.long	0x316
	.uleb128 0x11
	.long	0x9a
	.byte	0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x18
	.byte	0x1
	.byte	0x48
	.long	0x347
	.uleb128 0xb
	.long	.LASF54
	.byte	0x1
	.byte	0x49
	.long	0x9a
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x1
	.byte	0x4a
	.long	0x62
	.byte	0x8
	.uleb128 0xb
	.long	.LASF56
	.byte	0x1
	.byte	0x4b
	.long	0x347
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x316
	.uleb128 0x2
	.long	.LASF57
	.byte	0x1
	.byte	0x4c
	.long	0x347
	.uleb128 0x2
	.long	.LASF58
	.byte	0x1
	.byte	0x74
	.long	0x363
	.uleb128 0x6
	.byte	0x8
	.long	0x369
	.uleb128 0x10
	.long	0x4d
	.long	0x378
	.uleb128 0x11
	.long	0x9a
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x1
	.byte	0xe7
	.long	0x383
	.uleb128 0x6
	.byte	0x8
	.long	0x389
	.uleb128 0x10
	.long	0x34d
	.long	0x39d
	.uleb128 0x11
	.long	0x34d
	.uleb128 0x11
	.long	0x9a
	.byte	0
	.uleb128 0x14
	.long	.LASF62
	.byte	0x2
	.byte	0x60
	.long	0x62
	.byte	0x3
	.long	0x3c5
	.uleb128 0x15
	.long	.LASF60
	.byte	0x2
	.byte	0x60
	.long	0x3c5
	.uleb128 0x15
	.long	.LASF61
	.byte	0x2
	.byte	0x60
	.long	0x2a3
	.uleb128 0x16
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x14
	.long	.LASF63
	.byte	0x3
	.byte	0x67
	.long	0x9a
	.byte	0x3
	.long	0x3f2
	.uleb128 0x15
	.long	.LASF64
	.byte	0x3
	.byte	0x67
	.long	0x9a
	.uleb128 0x15
	.long	.LASF65
	.byte	0x3
	.byte	0x67
	.long	0x2a3
	.byte	0
	.uleb128 0x14
	.long	.LASF66
	.byte	0x2
	.byte	0xf5
	.long	0x9a
	.byte	0x3
	.long	0x424
	.uleb128 0x17
	.string	"__s"
	.byte	0x2
	.byte	0xf5
	.long	0x9a
	.uleb128 0x17
	.string	"__n"
	.byte	0x2
	.byte	0xf5
	.long	0x62
	.uleb128 0x15
	.long	.LASF60
	.byte	0x2
	.byte	0xf5
	.long	0x3c5
	.byte	0
	.uleb128 0x14
	.long	.LASF67
	.byte	0x2
	.byte	0x67
	.long	0x62
	.byte	0x3
	.long	0x441
	.uleb128 0x15
	.long	.LASF61
	.byte	0x2
	.byte	0x67
	.long	0x2a3
	.uleb128 0x16
	.byte	0
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.byte	0x76
	.long	0x4d
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x48c
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x76
	.long	0x9a
	.long	.LLST0
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x78
	.long	0x4d
	.long	.LLST1
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x79
	.long	0x62
	.long	.LLST2
	.byte	0
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x80
	.long	0x4d
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d7
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x80
	.long	0x9a
	.long	.LLST3
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x82
	.long	0x4d
	.long	.LLST4
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x83
	.long	0x62
	.long	.LLST5
	.byte	0
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x8a
	.long	0x4d
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x522
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x8a
	.long	0x9a
	.long	.LLST6
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x8c
	.long	0x4d
	.long	.LLST7
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x8d
	.long	0x62
	.long	.LLST8
	.byte	0
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x57a
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.byte	0xf0
	.long	0x2f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.byte	0xf0
	.long	0x2f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF74
	.byte	0x1
	.byte	0xf1
	.long	0x34d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1d
	.long	.LASF75
	.byte	0x1
	.byte	0xf2
	.long	0x34d
	.long	.LLST9
	.byte	0
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x1
	.byte	0x52
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x62e
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x1
	.byte	0x52
	.long	0x62
	.long	.LLST10
	.uleb128 0x20
	.long	0x39d
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.byte	0x1
	.byte	0x57
	.long	0x5f6
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST11
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL35
	.long	0x19de
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL33
	.long	0x1a06
	.long	0x61a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x23
	.quad	.LVL36
	.long	0x1a21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF77
	.byte	0x1
	.byte	0x38
	.long	0x2d
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x65d
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x38
	.long	0x2a3
	.long	.LLST12
	.byte	0
	.uleb128 0x26
	.long	.LASF78
	.byte	0x1
	.byte	0x1d
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a9
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x1d
	.long	0x9a
	.long	.LLST13
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.long	0x62
	.long	.LLST14
	.uleb128 0x23
	.quad	.LVL43
	.long	0x62e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF79
	.byte	0x1
	.byte	0x27
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x702
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x27
	.long	0x9a
	.long	.LLST15
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x29
	.long	0x62
	.long	.LLST16
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0x2a
	.long	0x62
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x23
	.quad	.LVL48
	.long	0x62e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF162
	.byte	0x1
	.byte	0x5c
	.long	0x34d
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e1
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.long	0x9a
	.long	.LLST17
	.uleb128 0x1d
	.long	.LASF80
	.byte	0x1
	.byte	0x5e
	.long	0x34d
	.long	.LLST18
	.uleb128 0x1d
	.long	.LASF81
	.byte	0x1
	.byte	0x5f
	.long	0x62
	.long	.LLST19
	.uleb128 0x20
	.long	0x39d
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.byte	0x1
	.byte	0x67
	.long	0x79e
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST20
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL58
	.long	0x19de
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL54
	.long	0x1a33
	.long	0x7b5
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x25
	.quad	.LVL56
	.long	0x62e
	.long	0x7cd
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL59
	.long	0x1a21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.byte	0x97
	.long	0x9a
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ef
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x97
	.long	0x9a
	.long	.LLST21
	.uleb128 0x1d
	.long	.LASF80
	.byte	0x1
	.byte	0x99
	.long	0x9a
	.long	.LLST22
	.uleb128 0x20
	.long	0x39d
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0x1
	.byte	0x9b
	.long	0x86e
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST23
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL68
	.long	0x19de
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x3cb
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.byte	0x1
	.byte	0x9e
	.long	0x8b6
	.uleb128 0x21
	.long	0x3e6
	.long	.LLST24
	.uleb128 0x21
	.long	0x3db
	.long	.LLST25
	.uleb128 0x23
	.quad	.LVL70
	.long	0x1a49
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL64
	.long	0x62e
	.long	0x8ce
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL65
	.long	0x1a33
	.uleb128 0x23
	.quad	.LVL69
	.long	0x1a21
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0xa3
	.long	0x34d
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a5
	.uleb128 0x19
	.string	"ls"
	.byte	0x1
	.byte	0xa3
	.long	0x34d
	.long	.LLST26
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xa3
	.long	0x9a
	.long	.LLST27
	.uleb128 0x2a
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x96b
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
	.byte	0xaa
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF85
	.byte	0x1
	.byte	0xaa
	.long	0x2d
	.uleb128 0x23
	.quad	.LVL79
	.long	0x1a67
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL75
	.long	0x7e1
	.long	0x983
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL76
	.long	0x702
	.uleb128 0x23
	.quad	.LVL80
	.long	0x8ef
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.byte	0xb7
	.long	0x34d
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa2
	.uleb128 0x19
	.string	"ls"
	.byte	0x1
	.byte	0xb7
	.long	0x34d
	.long	.LLST28
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xb7
	.long	0x9a
	.long	.LLST29
	.uleb128 0x1a
	.string	"ele"
	.byte	0x1
	.byte	0xb9
	.long	0x34d
	.long	.LLST30
	.uleb128 0x2a
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0xa7c
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.byte	0xbb
	.long	0x9a
	.long	.LLST31
	.uleb128 0x2a
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0xa5a
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
	.byte	0xbc
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF85
	.byte	0x1
	.byte	0xbc
	.long	0x2d
	.uleb128 0x23
	.quad	.LVL87
	.long	0x1a67
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0xbd
	.long	0x62
	.long	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL92
	.long	0x7e1
	.long	0xa94
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL93
	.long	0x702
	.byte	0
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.byte	0xcc
	.long	0x34d
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xbae
	.uleb128 0x19
	.string	"ls"
	.byte	0x1
	.byte	0xcc
	.long	0x34d
	.long	.LLST33
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xcc
	.long	0x9a
	.long	.LLST34
	.uleb128 0x1a
	.string	"ele"
	.byte	0x1
	.byte	0xce
	.long	0x34d
	.long	.LLST35
	.uleb128 0x1d
	.long	.LASF88
	.byte	0x1
	.byte	0xcf
	.long	0x34d
	.long	.LLST36
	.uleb128 0x2a
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0xb88
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.byte	0xd1
	.long	0x9a
	.long	.LLST37
	.uleb128 0x2a
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0xb66
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
	.byte	0xd2
	.long	0x2d
	.uleb128 0x2b
	.long	.LASF85
	.byte	0x1
	.byte	0xd2
	.long	0x2d
	.uleb128 0x23
	.quad	.LVL101
	.long	0x1a67
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0xd3
	.long	0x62
	.long	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL107
	.long	0x7e1
	.long	0xba0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL108
	.long	0x702
	.byte	0
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.byte	0xf8
	.long	0x34d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0xc95
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.byte	0xf8
	.long	0x62
	.long	.LLST39
	.uleb128 0x1a
	.string	"ls"
	.byte	0x1
	.byte	0xfa
	.long	0x34d
	.long	.LLST40
	.uleb128 0x1a
	.string	"ele"
	.byte	0x1
	.byte	0xfb
	.long	0x34d
	.long	.LLST41
	.uleb128 0x1d
	.long	.LASF91
	.byte	0x1
	.byte	0xfc
	.long	0xc95
	.long	.LLST42
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.long	.LLST43
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.long	.LLST44
	.uleb128 0x1a
	.string	"cnt"
	.byte	0x1
	.byte	0xfe
	.long	0x62
	.long	.LLST45
	.uleb128 0x25
	.quad	.LVL115
	.long	0x1a06
	.long	0xc4a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.quad	.LVL129
	.long	0x1a85
	.long	0xc80
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
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
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	compare_ele
	.byte	0
	.uleb128 0x23
	.quad	.LVL135
	.long	0x1aa6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34d
	.uleb128 0x2d
	.long	.LASF92
	.byte	0x1
	.value	0x119
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0xd4a
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x119
	.long	0x9a
	.long	.LLST46
	.uleb128 0x2f
	.long	.LASF93
	.byte	0x1
	.value	0x11a
	.long	0x358
	.long	.LLST47
	.uleb128 0x2f
	.long	.LASF94
	.byte	0x1
	.value	0x11a
	.long	0x2fa
	.long	.LLST48
	.uleb128 0x2f
	.long	.LASF95
	.byte	0x1
	.value	0x11b
	.long	0x378
	.long	.LLST49
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.value	0x11d
	.long	0x62
	.long	.LLST50
	.uleb128 0x31
	.quad	.LVL140
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.long	0xd1f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL141
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.long	0xd36
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.quad	.LVL143
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF97
	.byte	0x1
	.value	0x129
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0xd76
	.uleb128 0x33
	.string	"in"
	.byte	0x1
	.value	0x129
	.long	0x3c5
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x34
	.long	.LASF98
	.byte	0x1
	.value	0x132
	.long	0x9a
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0xe4d
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x134
	.long	0x9a
	.long	.LLST51
	.uleb128 0x36
	.long	0x3f2
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.value	0x13b
	.long	0xe00
	.uleb128 0x21
	.long	0x418
	.long	.LLST52
	.uleb128 0x21
	.long	0x40d
	.long	.LLST53
	.uleb128 0x21
	.long	0x402
	.long	.LLST54
	.uleb128 0x23
	.quad	.LVL149
	.long	0x1ab8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL147
	.long	0x1adb
	.long	0xe24
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x23
	.quad	.LVL150
	.long	0x1adb
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF99
	.byte	0x1
	.value	0x149
	.long	0x9a
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1045
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x149
	.long	0x62
	.long	.LLST55
	.uleb128 0x38
	.long	.LASF101
	.byte	0x1
	.value	0x14c
	.long	0x1045
	.uleb128 0x9
	.byte	0x3
	.quad	token_buf.4137
	.uleb128 0x38
	.long	.LASF102
	.byte	0x1
	.value	0x14d
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	first.4138
	.uleb128 0x38
	.long	.LASF103
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	bindex.4139
	.uleb128 0x38
	.long	.LASF104
	.byte	0x1
	.value	0x14f
	.long	0x105c
	.uleb128 0x9
	.byte	0x3
	.quad	sbuf.4140
	.uleb128 0x30
	.long	.LASF105
	.byte	0x1
	.value	0x150
	.long	0x9a
	.long	.LLST56
	.uleb128 0x35
	.string	"i"
	.byte	0x1
	.value	0x151
	.long	0x62
	.long	.LLST57
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.value	0x151
	.long	0x62
	.long	.LLST58
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.value	0x161
	.long	0x9a
	.long	.LLST59
	.uleb128 0x39
	.long	.Ldebug_ranges0+0
	.long	0xf78
	.uleb128 0x30
	.long	.LASF54
	.byte	0x1
	.value	0x158
	.long	0x9a
	.long	.LLST60
	.uleb128 0x36
	.long	0x3cb
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0x1
	.value	0x15c
	.long	0xf6a
	.uleb128 0x21
	.long	0x3e6
	.long	.LLST61
	.uleb128 0x21
	.long	0x3db
	.long	.LLST62
	.uleb128 0x29
	.quad	.LVL160
	.long	0x1a49
	.byte	0
	.uleb128 0x29
	.quad	.LVL158
	.long	0xd76
	.byte	0
	.uleb128 0x36
	.long	0x3cb
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.byte	0x1
	.value	0x165
	.long	0xfcd
	.uleb128 0x21
	.long	0x3e6
	.long	.LLST63
	.uleb128 0x21
	.long	0x3db
	.long	.LLST64
	.uleb128 0x23
	.quad	.LVL163
	.long	0x1a49
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x3a
	.byte	0x24
	.byte	0x3
	.quad	token_buf.4137
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x3cb
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.byte	0x1
	.value	0x170
	.long	0x1016
	.uleb128 0x21
	.long	0x3e6
	.long	.LLST65
	.uleb128 0x21
	.long	0x3db
	.long	.LLST66
	.uleb128 0x23
	.quad	.LVL174
	.long	0x1a49
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LVL155
	.long	0xd76
	.uleb128 0x29
	.quad	.LVL161
	.long	0xd76
	.uleb128 0x23
	.quad	.LVL175
	.long	0x62e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xa0
	.long	0x105c
	.uleb128 0xd
	.long	0x86
	.byte	0x9
	.uleb128 0x3a
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0xc
	.long	0xa0
	.long	0x106d
	.uleb128 0x3a
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x2d
	.long	.LASF106
	.byte	0x1
	.value	0x17f
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x123e
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x17f
	.long	0x3c5
	.long	.LLST67
	.uleb128 0x2f
	.long	.LASF107
	.byte	0x1
	.value	0x17f
	.long	0x62
	.long	.LLST68
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x17f
	.long	0x62
	.long	.LLST69
	.uleb128 0x2f
	.long	.LASF76
	.byte	0x1
	.value	0x17f
	.long	0x62
	.long	.LLST70
	.uleb128 0x2f
	.long	.LASF90
	.byte	0x1
	.value	0x17f
	.long	0x62
	.long	.LLST71
	.uleb128 0x2f
	.long	.LASF93
	.byte	0x1
	.value	0x180
	.long	0x358
	.long	.LLST72
	.uleb128 0x3b
	.long	.LASF94
	.byte	0x1
	.value	0x180
	.long	0x2fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF95
	.byte	0x1
	.value	0x181
	.long	0x378
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"s"
	.byte	0x1
	.value	0x183
	.long	0x9a
	.long	.LLST73
	.uleb128 0x35
	.string	"ls"
	.byte	0x1
	.value	0x184
	.long	0x34d
	.long	.LLST74
	.uleb128 0x36
	.long	0x424
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0x1
	.value	0x18f
	.long	0x116c
	.uleb128 0x21
	.long	0x434
	.long	.LLST75
	.uleb128 0x23
	.quad	.LVL196
	.long	0x1af6
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
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x424
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x1
	.value	0x193
	.long	0x11b9
	.uleb128 0x3c
	.long	0x434
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x23
	.quad	.LVL202
	.long	0x1af6
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
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL187
	.long	0xd4a
	.long	0x11d2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x25
	.quad	.LVL188
	.long	0x57a
	.long	0x11ea
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL190
	.long	0xc9b
	.long	0x120e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.quad	.LVL191
	.long	0xe4d
	.long	0x1226
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL192
	.long	0xbae
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x4
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF108
	.byte	0x1
	.value	0x197
	.long	0x62
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c4
	.uleb128 0x2f
	.long	.LASF109
	.byte	0x1
	.value	0x197
	.long	0x62
	.long	.LLST76
	.uleb128 0x2f
	.long	.LASF110
	.byte	0x1
	.value	0x197
	.long	0x17c4
	.long	.LLST77
	.uleb128 0x38
	.long	.LASF107
	.byte	0x1
	.value	0x199
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.long	.LASF76
	.byte	0x1
	.value	0x19a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.long	.LASF111
	.byte	0x1
	.value	0x19b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.long	.LASF112
	.byte	0x1
	.value	0x19c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF113
	.byte	0x1
	.value	0x19d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF100
	.byte	0x1
	.value	0x19e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF90
	.byte	0x1
	.value	0x19f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.long	.LASF114
	.byte	0x1
	.value	0x1a0
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF115
	.byte	0x1
	.value	0x1a1
	.long	0x3c5
	.long	.LLST78
	.uleb128 0x36
	.long	0x424
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.byte	0x1
	.value	0x1ac
	.long	0x1356
	.uleb128 0x3c
	.long	0x434
	.uleb128 0xa
	.byte	0x3
	.quad	.LC14
	.byte	0x9f
	.uleb128 0x23
	.quad	.LVL219
	.long	0x1af6
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
	.quad	.LC14
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x424
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.byte	0x1
	.value	0x1ad
	.long	0x13a3
	.uleb128 0x3c
	.long	0x434
	.uleb128 0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.uleb128 0x23
	.quad	.LVL221
	.long	0x1af6
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
	.quad	.LC15
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x424
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.byte	0x1
	.value	0x1ae
	.long	0x13f0
	.uleb128 0x3c
	.long	0x434
	.uleb128 0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.uleb128 0x23
	.quad	.LVL223
	.long	0x1af6
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
	.quad	.LC16
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x424
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.byte	0x1
	.value	0x1af
	.long	0x143d
	.uleb128 0x3c
	.long	0x434
	.uleb128 0xa
	.byte	0x3
	.quad	.LC17
	.byte	0x9f
	.uleb128 0x23
	.quad	.LVL225
	.long	0x1af6
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
	.quad	.LC17
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x39d
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.byte	0x1
	.value	0x1b1
	.long	0x1488
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST79
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL227
	.long	0x1b11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x39d
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.byte	0x1
	.value	0x1b5
	.long	0x14d3
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST80
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL230
	.long	0x1b11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x39d
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.byte	0x1
	.value	0x1b9
	.long	0x151e
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST81
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL233
	.long	0x1b11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x39d
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.byte	0x1
	.value	0x1bf
	.long	0x1569
	.uleb128 0x21
	.long	0x3b8
	.long	.LLST82
	.uleb128 0x22
	.long	0x3ad
	.uleb128 0x23
	.quad	.LVL239
	.long	0x1b11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x424
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.byte	0x1
	.value	0x1c7
	.long	0x15b6
	.uleb128 0x3c
	.long	0x434
	.uleb128 0xa
	.byte	0x3
	.quad	.LC24
	.byte	0x9f
	.uleb128 0x23
	.quad	.LVL244
	.long	0x1af6
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
	.quad	.LC24
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL209
	.long	0x1b31
	.long	0x15dc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x25
	.quad	.LVL210
	.long	0x1b31
	.long	0x1601
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.quad	.LVL211
	.long	0x1b31
	.long	0x1626
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x25
	.quad	.LVL212
	.long	0x1b31
	.long	0x164b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LVL213
	.long	0x1b31
	.long	0x1670
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.quad	.LVL214
	.long	0x1b31
	.long	0x1695
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.quad	.LVL215
	.long	0x1b31
	.long	0x16ba
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x25
	.quad	.LVL216
	.long	0x1b47
	.long	0x16df
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.quad	.LVL217
	.long	0x1b5d
	.long	0x1702
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.quad	.LVL218
	.long	0x1b7c
	.uleb128 0x25
	.quad	.LVL228
	.long	0x1a21
	.long	0x1726
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.quad	.LVL231
	.long	0x1a21
	.long	0x173d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.quad	.LVL234
	.long	0x1a21
	.long	0x1754
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.quad	.LVL235
	.long	0x1b8d
	.long	0x1773
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.byte	0
	.uleb128 0x25
	.quad	.LVL240
	.long	0x1a21
	.long	0x178a
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.quad	.LVL241
	.long	0x106d
	.long	0x17a2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL242
	.long	0x1ba8
	.uleb128 0x23
	.quad	.LVL245
	.long	0x1bb3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0x3d
	.long	.LASF116
	.byte	0x1
	.value	0x12f
	.long	0x17d6
	.uleb128 0xe
	.long	0x9a
	.uleb128 0x3e
	.long	.LASF117
	.byte	0x6
	.byte	0xa9
	.long	0x277
	.uleb128 0x3e
	.long	.LASF118
	.byte	0x6
	.byte	0xaa
	.long	0x277
	.uleb128 0x3e
	.long	.LASF119
	.byte	0x6
	.byte	0xab
	.long	0x277
	.uleb128 0x3f
	.long	.LASF120
	.byte	0x1
	.byte	0xe
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	wcnt
	.uleb128 0x3f
	.long	.LASF121
	.byte	0x1
	.byte	0xf
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	ucnt
	.uleb128 0x3f
	.long	.LASF122
	.byte	0x1
	.byte	0x10
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	mcnt
	.uleb128 0x3f
	.long	.LASF123
	.byte	0x1
	.byte	0x11
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	scnt
	.uleb128 0x3f
	.long	.LASF124
	.byte	0x1
	.byte	0x12
	.long	0x9a
	.uleb128 0x9
	.byte	0x3
	.quad	mstring
	.uleb128 0x3f
	.long	.LASF125
	.byte	0x1
	.byte	0x13
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	llen
	.uleb128 0x3f
	.long	.LASF126
	.byte	0x1
	.byte	0x14
	.long	0x9a
	.uleb128 0x9
	.byte	0x3
	.quad	lstring
	.uleb128 0x3f
	.long	.LASF127
	.byte	0x1
	.byte	0x15
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	lcnt
	.uleb128 0xc
	.long	0x2fa
	.long	0x18b4
	.uleb128 0xd
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.long	.LASF128
	.byte	0x1
	.byte	0x33
	.long	0x18a4
	.uleb128 0x9
	.byte	0x3
	.quad	lower_fun_set
	.uleb128 0xc
	.long	0x9a
	.long	0x18d9
	.uleb128 0xd
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x3f
	.long	.LASF129
	.byte	0x1
	.byte	0x34
	.long	0x18c9
	.uleb128 0x9
	.byte	0x3
	.quad	lower_fun_names
	.uleb128 0x3f
	.long	.LASF130
	.byte	0x1
	.byte	0x4f
	.long	0xc95
	.uleb128 0x9
	.byte	0x3
	.quad	htable
	.uleb128 0x3f
	.long	.LASF131
	.byte	0x1
	.byte	0x50
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	tsize
	.uleb128 0xc
	.long	0x358
	.long	0x1928
	.uleb128 0xd
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x3f
	.long	.LASF132
	.byte	0x1
	.byte	0x94
	.long	0x1918
	.uleb128 0x9
	.byte	0x3
	.quad	hash_fun_set
	.uleb128 0xc
	.long	0x9a
	.long	0x194d
	.uleb128 0xd
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x3f
	.long	.LASF133
	.byte	0x1
	.byte	0x95
	.long	0x193d
	.uleb128 0x9
	.byte	0x3
	.quad	hash_fun_names
	.uleb128 0xc
	.long	0x378
	.long	0x1972
	.uleb128 0xd
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x3f
	.long	.LASF134
	.byte	0x1
	.byte	0xea
	.long	0x1962
	.uleb128 0x9
	.byte	0x3
	.quad	find_ele_fun_set
	.uleb128 0x3f
	.long	.LASF135
	.byte	0x1
	.byte	0xec
	.long	0x193d
	.uleb128 0x9
	.byte	0x3
	.quad	find_ele_fun_names
	.uleb128 0x40
	.string	"buf"
	.byte	0x1
	.value	0x125
	.long	0x105c
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x41
	.long	.LASF136
	.byte	0x1
	.value	0x126
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	bufvalid
	.uleb128 0x41
	.long	.LASF115
	.byte	0x1
	.value	0x127
	.long	0x3c5
	.uleb128 0x9
	.byte	0x3
	.quad	infile
	.uleb128 0x42
	.long	.LASF137
	.byte	0xa
	.byte	0
	.long	.LASF141
	.long	0x38
	.long	0x1a06
	.uleb128 0x11
	.long	0x2f3
	.uleb128 0x11
	.long	0x38
	.uleb128 0x11
	.long	0x38
	.uleb128 0x11
	.long	0x98
	.byte	0
	.uleb128 0x43
	.long	.LASF138
	.byte	0x9
	.value	0x1d9
	.long	0x98
	.long	0x1a21
	.uleb128 0x11
	.long	0x2d
	.uleb128 0x11
	.long	0x2d
	.byte	0
	.uleb128 0x44
	.long	.LASF144
	.byte	0x9
	.value	0x220
	.long	0x1a33
	.uleb128 0x11
	.long	0x62
	.byte	0
	.uleb128 0x43
	.long	.LASF139
	.byte	0x9
	.value	0x1d7
	.long	0x98
	.long	0x1a49
	.uleb128 0x11
	.long	0x2d
	.byte	0
	.uleb128 0x42
	.long	.LASF140
	.byte	0xa
	.byte	0
	.long	.LASF63
	.long	0x9a
	.long	0x1a67
	.uleb128 0x11
	.long	0x9a
	.uleb128 0x11
	.long	0x2a3
	.byte	0
	.uleb128 0x42
	.long	.LASF142
	.byte	0xa
	.byte	0
	.long	.LASF143
	.long	0x62
	.long	0x1a85
	.uleb128 0x11
	.long	0x2a3
	.uleb128 0x11
	.long	0x2a3
	.byte	0
	.uleb128 0x44
	.long	.LASF145
	.byte	0x9
	.value	0x2f9
	.long	0x1aa6
	.uleb128 0x11
	.long	0x98
	.uleb128 0x11
	.long	0x2d
	.uleb128 0x11
	.long	0x2d
	.uleb128 0x11
	.long	0x2cd
	.byte	0
	.uleb128 0x44
	.long	.LASF146
	.byte	0x9
	.value	0x1e8
	.long	0x1ab8
	.uleb128 0x11
	.long	0x98
	.byte	0
	.uleb128 0x42
	.long	.LASF147
	.byte	0x2
	.byte	0xeb
	.long	.LASF66
	.long	0x9a
	.long	0x1adb
	.uleb128 0x11
	.long	0x9a
	.uleb128 0x11
	.long	0x62
	.uleb128 0x11
	.long	0x3c5
	.byte	0
	.uleb128 0x43
	.long	.LASF148
	.byte	0xb
	.value	0x15c
	.long	0x9a
	.long	0x1af6
	.uleb128 0x11
	.long	0x9a
	.uleb128 0x11
	.long	0x2a3
	.byte	0
	.uleb128 0x45
	.long	.LASF149
	.byte	0x2
	.byte	0x58
	.long	0x62
	.long	0x1b11
	.uleb128 0x11
	.long	0x62
	.uleb128 0x11
	.long	0x2a3
	.uleb128 0x16
	.byte	0
	.uleb128 0x45
	.long	.LASF150
	.byte	0x2
	.byte	0x56
	.long	0x62
	.long	0x1b31
	.uleb128 0x11
	.long	0x3c5
	.uleb128 0x11
	.long	0x62
	.uleb128 0x11
	.long	0x2a3
	.uleb128 0x16
	.byte	0
	.uleb128 0x46
	.long	.LASF151
	.byte	0xc
	.byte	0x9
	.long	0x1b47
	.uleb128 0x11
	.long	0x9a
	.uleb128 0x11
	.long	0x2ae
	.byte	0
	.uleb128 0x46
	.long	.LASF152
	.byte	0xc
	.byte	0xb
	.long	0x1b5d
	.uleb128 0x11
	.long	0x9a
	.uleb128 0x11
	.long	0x17c4
	.byte	0
	.uleb128 0x45
	.long	.LASF153
	.byte	0xc
	.byte	0x15
	.long	0x62
	.long	0x1b7c
	.uleb128 0x11
	.long	0x62
	.uleb128 0x11
	.long	0x17c4
	.uleb128 0x11
	.long	0x17c4
	.byte	0
	.uleb128 0x46
	.long	.LASF154
	.byte	0xc
	.byte	0x1b
	.long	0x1b8d
	.uleb128 0x11
	.long	0x3c5
	.byte	0
	.uleb128 0x43
	.long	.LASF155
	.byte	0x6
	.value	0x111
	.long	0x3c5
	.long	0x1ba8
	.uleb128 0x11
	.long	0x2a3
	.uleb128 0x11
	.long	0x2a3
	.byte	0
	.uleb128 0x47
	.long	.LASF163
	.byte	0x8
	.byte	0xb7
	.long	0x2bb
	.uleb128 0x48
	.long	.LASF156
	.byte	0x6
	.byte	0xee
	.long	0x62
	.uleb128 0x11
	.long	0x3c5
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
	.uleb128 0x16
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
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
	.uleb128 0x2e
	.uleb128 0x5
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
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x48
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
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL6-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL4-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL2-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LFE61-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL9-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL12-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL15-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL10-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL14-.Ltext0
	.quad	.LFE62-.Ltext0
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL18-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL23-.Ltext0
	.quad	.LFE63-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL18-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL21-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LFE63-.Ltext0
	.value	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL30-.Ltext0
	.quad	.LFE68-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 0
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	tsize
	.quad	.LVL33-1-.Ltext0
	.quad	.LFE59-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL34-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL41-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL46-.Ltext0
	.quad	.LFE56-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL48-1-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL51-.Ltext0
	.quad	.LFE57-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL48-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL49-.Ltext0
	.quad	.LFE57-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL53-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL62-.Ltext0
	.quad	.LFE60-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL56-1-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL61-.Ltext0
	.quad	.LFE60-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL56-.Ltext0
	.quad	.LVL58-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL64-1-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL72-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL66-.Ltext0
	.quad	.LVL68-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL68-1-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL70-1-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL71-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL67-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL69-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL72-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL70-1-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL71-.Ltext0
	.quad	.LFE64-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL73-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL74-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL81-.Ltext0
	.quad	.LFE65-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL73-.Ltext0
	.quad	.LVL75-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL75-1-.Ltext0
	.quad	.LVL77-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL78-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL82-.Ltext0
	.quad	.LFE65-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL83-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL85-.Ltext0
	.quad	.LVL96-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL96-.Ltext0
	.quad	.LFE66-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL83-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL85-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL95-.Ltext0
	.quad	.LFE66-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL85-.Ltext0
	.quad	.LVL93-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL86-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL97-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL99-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL111-.Ltext0
	.quad	.LFE67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL97-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL99-.Ltext0
	.quad	.LVL110-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL110-.Ltext0
	.quad	.LFE67-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL99-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL104-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 16
	.quad	.LVL106-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL108-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL99-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL104-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL106-.Ltext0
	.quad	.LVL109-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL100-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL102-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL103-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x2
	.byte	0x73
	.sleb128 8
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL112-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL114-.Ltext0
	.quad	.LVL130-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL130-.Ltext0
	.quad	.LFE69-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL113-.Ltext0
	.quad	.LVL130-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL130-.Ltext0
	.quad	.LVL138-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL138-.Ltext0
	.quad	.LFE69-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL119-.Ltext0
	.quad	.LVL127-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL116-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL118-.Ltext0
	.quad	.LVL136-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL117-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL128-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL120-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL123-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL130-.Ltext0
	.quad	.LVL131-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL131-.Ltext0
	.quad	.LVL135-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL116-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL118-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.quad	.LVL134-.Ltext0
	.quad	.LVL137-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL139-.Ltext0
	.quad	.LVL140-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL140-1-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL144-.Ltext0
	.quad	.LFE70-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL139-.Ltext0
	.quad	.LVL140-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL140-1-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL142-.Ltext0
	.quad	.LFE70-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL139-.Ltext0
	.quad	.LVL140-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL140-1-.Ltext0
	.quad	.LFE70-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL139-.Ltext0
	.quad	.LVL140-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL140-1-.Ltext0
	.quad	.LVL145-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL145-.Ltext0
	.quad	.LFE70-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL141-.Ltext0
	.quad	.LVL143-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL147-.Ltext0
	.quad	.LVL148-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL150-.Ltext0
	.quad	.LVL152-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL148-.Ltext0
	.quad	.LVL149-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	infile
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL148-.Ltext0
	.quad	.LVL151-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL148-.Ltext0
	.quad	.LVL151-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	buf
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL155-1-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL156-.Ltext0
	.quad	.LVL157-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL157-.Ltext0
	.quad	.LVL185-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL185-.Ltext0
	.quad	.LFE73-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL154-.Ltext0
	.quad	.LVL169-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	sbuf.4140
	.byte	0x9f
	.quad	.LVL169-.Ltext0
	.quad	.LVL170-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL170-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL171-.Ltext0
	.quad	.LVL172-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL172-.Ltext0
	.quad	.LVL176-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL176-.Ltext0
	.quad	.LVL180-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL181-.Ltext0
	.quad	.LVL184-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	sbuf.4140
	.byte	0x9f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL169-.Ltext0
	.quad	.LVL181-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL164-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0xf
	.byte	0x3
	.quad	bindex.4139
	.byte	0x94
	.byte	0x4
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL166-.Ltext0
	.quad	.LVL167-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL167-.Ltext0
	.quad	.LVL168-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -10
	.byte	0x9f
	.quad	.LVL168-.Ltext0
	.quad	.LVL169-.Ltext0
	.value	0xf
	.byte	0x3
	.quad	bindex.4139
	.byte	0x94
	.byte	0x4
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL169-.Ltext0
	.quad	.LVL181-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL161-.Ltext0
	.quad	.LVL163-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL173-.Ltext0
	.quad	.LVL179-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL183-.Ltext0
	.quad	.LVL184-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL158-.Ltext0
	.quad	.LVL160-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL181-.Ltext0
	.quad	.LVL182-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL159-.Ltext0
	.quad	.LVL160-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL159-.Ltext0
	.quad	.LVL160-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL163-1-.Ltext0
	.quad	.LVL165-.Ltext0
	.value	0x15
	.byte	0x73
	.sleb128 -1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x3a
	.byte	0x24
	.byte	0x3
	.quad	token_buf.4137
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL173-.Ltext0
	.quad	.LVL179-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL173-.Ltext0
	.quad	.LVL179-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL187-1-.Ltext0
	.quad	.LFE74-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL187-1-.Ltext0
	.quad	.LVL194-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL194-.Ltext0
	.quad	.LVL198-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL198-.Ltext0
	.quad	.LVL199-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL199-.Ltext0
	.quad	.LVL200-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL187-1-.Ltext0
	.quad	.LVL193-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL193-.Ltext0
	.quad	.LFE74-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-1-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	.LVL187-1-.Ltext0
	.quad	.LVL204-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL204-.Ltext0
	.quad	.LFE74-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-1-.Ltext0
	.value	0x1
	.byte	0x58
	.quad	.LVL187-1-.Ltext0
	.quad	.LFE74-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL186-.Ltext0
	.quad	.LVL187-1-.Ltext0
	.value	0x1
	.byte	0x59
	.quad	.LVL187-1-.Ltext0
	.quad	.LVL203-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL203-.Ltext0
	.quad	.LFE74-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL189-.Ltext0
	.quad	.LVL190-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL191-.Ltext0
	.quad	.LVL192-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL193-.Ltext0
	.quad	.LVL194-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL194-.Ltext0
	.quad	.LVL200-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL195-.Ltext0
	.quad	.LVL198-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL205-.Ltext0
	.quad	.LVL208-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL208-.Ltext0
	.quad	.LVL247-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL247-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL205-.Ltext0
	.quad	.LVL207-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL207-.Ltext0
	.quad	.LVL248-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL248-.Ltext0
	.quad	.LFE75-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL206-.Ltext0
	.quad	.LVL236-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL236-.Ltext0
	.quad	.LVL238-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL238-.Ltext0
	.quad	.LVL246-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL226-.Ltext0
	.quad	.LVL228-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC18
	.byte	0x9f
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL229-.Ltext0
	.quad	.LVL231-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC19
	.byte	0x9f
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL232-.Ltext0
	.quad	.LVL234-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL237-.Ltext0
	.quad	.LVL240-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC22
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
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB65-.Ltext0
	.quad	.LBE65-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF130:
	.string	"htable"
.LASF88:
	.string	"last"
.LASF33:
	.string	"_shortbuf"
.LASF160:
	.string	"_IO_lock_t"
.LASF119:
	.string	"stderr"
.LASF22:
	.string	"_IO_buf_end"
.LASF140:
	.string	"__builtin_strcpy"
.LASF113:
	.string	"find_fun_index"
.LASF122:
	.string	"mcnt"
.LASF134:
	.string	"find_ele_fun_set"
.LASF103:
	.string	"bindex"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF56:
	.string	"next"
.LASF116:
	.string	"skipchar"
.LASF14:
	.string	"_flags"
.LASF26:
	.string	"_markers"
.LASF137:
	.string	"__builtin_fwrite"
.LASF94:
	.string	"lower_fun"
.LASF68:
	.string	"h_mod"
.LASF111:
	.string	"hash_fun_index"
.LASF138:
	.string	"calloc"
.LASF124:
	.string	"mstring"
.LASF59:
	.string	"find_ele_fun_t"
.LASF47:
	.string	"_pos"
.LASF63:
	.string	"strcpy"
.LASF118:
	.string	"stdout"
.LASF25:
	.string	"_IO_save_end"
.LASF90:
	.string	"quick"
.LASF142:
	.string	"__builtin_strcmp"
.LASF139:
	.string	"malloc"
.LASF96:
	.string	"index"
.LASF80:
	.string	"result"
.LASF50:
	.string	"long long unsigned int"
.LASF52:
	.string	"lower_fun_t"
.LASF24:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_offset"
.LASF99:
	.string	"get_token"
.LASF49:
	.string	"clock_t"
.LASF64:
	.string	"__dest"
.LASF62:
	.string	"fprintf"
.LASF28:
	.string	"_fileno"
.LASF106:
	.string	"word_freq"
.LASF83:
	.string	"find_ele_rec"
.LASF7:
	.string	"size_t"
.LASF154:
	.string	"show_options"
.LASF17:
	.string	"_IO_read_base"
.LASF109:
	.string	"argc"
.LASF117:
	.string	"stdin"
.LASF74:
	.string	"ele1"
.LASF75:
	.string	"ele2"
.LASF45:
	.string	"_next"
.LASF146:
	.string	"free"
.LASF55:
	.string	"freq"
.LASF61:
	.string	"__fmt"
.LASF163:
	.string	"clock"
.LASF89:
	.string	"sort_words"
.LASF151:
	.string	"add_int_option"
.LASF115:
	.string	"infile"
.LASF60:
	.string	"__stream"
.LASF84:
	.string	"__s1_len"
.LASF12:
	.string	"char"
.LASF150:
	.string	"__fprintf_chk"
.LASF41:
	.string	"_mode"
.LASF78:
	.string	"lower1"
.LASF79:
	.string	"lower2"
.LASF44:
	.string	"_IO_marker"
.LASF145:
	.string	"qsort"
.LASF15:
	.string	"_IO_read_ptr"
.LASF144:
	.string	"exit"
.LASF125:
	.string	"llen"
.LASF143:
	.string	"strcmp"
.LASF92:
	.string	"insert_string"
.LASF104:
	.string	"sbuf"
.LASF133:
	.string	"hash_fun_names"
.LASF127:
	.string	"lcnt"
.LASF18:
	.string	"_IO_write_base"
.LASF162:
	.string	"new_ele"
.LASF128:
	.string	"lower_fun_set"
.LASF48:
	.string	"long long int"
.LASF85:
	.string	"__s2_len"
.LASF67:
	.string	"printf"
.LASF72:
	.string	"vele1"
.LASF73:
	.string	"vele2"
.LASF23:
	.string	"_IO_save_base"
.LASF70:
	.string	"h_xor"
.LASF158:
	.string	"dictionary.c"
.LASF131:
	.string	"tsize"
.LASF149:
	.string	"__printf_chk"
.LASF112:
	.string	"lower_fun_index"
.LASF53:
	.string	"HELE"
.LASF101:
	.string	"token_buf"
.LASF51:
	.string	"__compar_fn_t"
.LASF76:
	.string	"size"
.LASF121:
	.string	"ucnt"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF86:
	.string	"find_ele_iter_f"
.LASF11:
	.string	"__clock_t"
.LASF114:
	.string	"fname"
.LASF87:
	.string	"find_ele_iter_r"
.LASF155:
	.string	"fopen"
.LASF32:
	.string	"_vtable_offset"
.LASF98:
	.string	"get_word"
.LASF95:
	.string	"find_ele_fun"
.LASF126:
	.string	"lstring"
.LASF66:
	.string	"fgets"
.LASF91:
	.string	"array"
.LASF110:
	.string	"argv"
.LASF136:
	.string	"bufvalid"
.LASF69:
	.string	"h_add"
.LASF129:
	.string	"lower_fun_names"
.LASF77:
	.string	"Strlen"
.LASF57:
	.string	"h_ptr"
.LASF16:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"wlen"
.LASF161:
	.string	"new_table"
.LASF120:
	.string	"wcnt"
.LASF54:
	.string	"word"
.LASF156:
	.string	"fclose"
.LASF100:
	.string	"ngram"
.LASF152:
	.string	"add_string_option"
.LASF93:
	.string	"hash_fun"
.LASF157:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -Og -fstack-protector"
.LASF82:
	.string	"save_string"
.LASF147:
	.string	"__fgets_alias"
.LASF34:
	.string	"_lock"
.LASF97:
	.string	"init_token"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_old_offset"
.LASF43:
	.string	"_IO_FILE"
.LASF135:
	.string	"find_ele_fun_names"
.LASF1:
	.string	"unsigned char"
.LASF105:
	.string	"nextpos"
.LASF46:
	.string	"_sbuf"
.LASF65:
	.string	"__src"
.LASF19:
	.string	"_IO_write_ptr"
.LASF123:
	.string	"scnt"
.LASF102:
	.string	"first"
.LASF148:
	.string	"strtok"
.LASF141:
	.string	"fwrite"
.LASF8:
	.string	"__off_t"
.LASF159:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF107:
	.string	"verbose"
.LASF153:
	.string	"parse_options"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF108:
	.string	"main"
.LASF71:
	.string	"compare_ele"
.LASF58:
	.string	"hash_fun_t"
.LASF27:
	.string	"_chain"
.LASF13:
	.string	"FILE"
.LASF132:
	.string	"hash_fun_set"
.LASF29:
	.string	"_flags2"
.LASF31:
	.string	"_cur_column"
.LASF9:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
