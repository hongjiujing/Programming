	.file	"dmult.c"
	.text
.Ltext0:
	.globl	init
	.type	init, @function
init:
.LFB34:
	.file 1 "dmult.c"
	.loc 1 28 0
	.cfi_startproc
.LVL0:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, 20(%rsp)
	.loc 1 30 0
	movl	%edi, %eax
	movl	%edi, global_cnt(%rip)
.LVL1:
	subl	$1, %eax
	leaq	8(,%rax,8), %r14
	movl	$0, %ebx
.LBB13:
	.loc 1 35 0
	movslq	%edi, %rax
	movq	%rax, 24(%rsp)
.LBB14:
	.loc 1 39 0
	movabsq	$4607182418800017408, %r13
.LVL2:
.L6:
.LBE14:
	.loc 1 33 0
	vmovsd	.LC1(%rip), %xmm1
	vmovsd	%xmm1, answer(%rbx)
	.loc 1 35 0
	movl	$8, %esi
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	calloc
.LVL3:
	movq	%rax, array_data(%rbx)
	.loc 1 36 0
	movl	$16, %esi
	movq	%r15, %rdi
	call	calloc
.LVL4:
	.loc 1 37 0
	movq	$0, list_data(%rbx)
.LVL5:
	.loc 1 38 0
	cmpl	$0, 20(%rsp)
	jle	.L2
	movq	%rax, %rbp
	movl	$0, %r12d
.LBB15:
	.loc 1 39 0
	movabsq	$-4616189618054758400, %r15
.LVL6:
.L4:
	call	random
.LVL7:
	movq	%r13, 8(%rsp)
	vmovsd	8(%rsp), %xmm0
	testb	$1, %al
	je	.L3
	movq	%r15, 8(%rsp)
	vmovsd	8(%rsp), %xmm0
.L3:
.LVL8:
	.loc 1 40 0 discriminator 3
	movq	array_data(%rbx), %rax
	vmovsd	%xmm0, (%rax,%r12)
.LVL9:
	.loc 1 42 0 discriminator 3
	vmovsd	%xmm0, 0(%rbp)
	.loc 1 43 0 discriminator 3
	movq	list_data(%rbx), %rax
	movq	%rax, 8(%rbp)
	.loc 1 44 0 discriminator 3
	movq	%rbp, list_data(%rbx)
	.loc 1 45 0 discriminator 3
	vmulsd	answer(%rbx), %xmm0, %xmm0
.LVL10:
	vmovsd	%xmm0, answer(%rbx)
	addq	$8, %r12
	addq	$16, %rbp
.LVL11:
.LBE15:
	.loc 1 38 0 discriminator 3
	cmpq	%r14, %r12
	jne	.L4
.LVL12:
.L2:
	addq	$8, %rbx
.LBE13:
	.loc 1 32 0
	cmpq	$40, %rbx
	jne	.L6
	.loc 1 48 0
	addq	$40, %rsp
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
.LFE34:
	.size	init, .-init
	.globl	list_prod
	.type	list_prod, @function
list_prod:
.LFB35:
	.loc 1 52 0
	.cfi_startproc
.LVL13:
	.loc 1 54 0
	testq	%rdi, %rdi
	je	.L12
	.loc 1 53 0
	vmovsd	.LC1(%rip), %xmm0
.LVL14:
.L11:
	.loc 1 55 0
	vmulsd	(%rdi), %xmm0, %xmm0
.LVL15:
	.loc 1 56 0
	movq	8(%rdi), %rdi
.LVL16:
	.loc 1 54 0
	testq	%rdi, %rdi
	jne	.L11
	rep; ret
.LVL17:
.L12:
	.loc 1 53 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 59 0
	ret
	.cfi_endproc
.LFE35:
	.size	list_prod, .-list_prod
	.globl	wrap_list_prod
	.type	wrap_list_prod, @function
wrap_list_prod:
.LFB36:
	.loc 1 62 0
	.cfi_startproc
.LVL18:
	.loc 1 63 0
	movslq	%edi, %rdi
	movq	list_data(,%rdi,8), %rdi
.LVL19:
	call	list_prod
.LVL20:
	.loc 1 64 0
	rep; ret
	.cfi_endproc
.LFE36:
	.size	wrap_list_prod, .-wrap_list_prod
	.globl	array_u1p1S_prod
	.type	array_u1p1S_prod, @function
array_u1p1S_prod:
.LFB37:
	.loc 1 67 0
	.cfi_startproc
.LVL21:
	.loc 1 70 0
	testl	%esi, %esi
	jle	.L17
	movl	$0, %eax
	.loc 1 69 0
	vmovsd	.LC1(%rip), %xmm0
.LVL22:
.L16:
	.loc 1 71 0 discriminator 2
	vmulsd	(%rdi,%rax,8), %xmm0, %xmm0
.LVL23:
	addq	$1, %rax
.LVL24:
	.loc 1 70 0 discriminator 2
	cmpl	%eax, %esi
	jg	.L16
	rep; ret
.LVL25:
.L17:
	.loc 1 69 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 74 0
	ret
	.cfi_endproc
.LFE37:
	.size	array_u1p1S_prod, .-array_u1p1S_prod
	.globl	wrap_array_u1p1S_prod
	.type	wrap_array_u1p1S_prod, @function
wrap_array_u1p1S_prod:
.LFB38:
	.loc 1 77 0
	.cfi_startproc
.LVL26:
	.loc 1 78 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL27:
	movl	global_cnt(%rip), %esi
	call	array_u1p1S_prod
.LVL28:
	.loc 1 79 0
	rep; ret
	.cfi_endproc
.LFE38:
	.size	wrap_array_u1p1S_prod, .-wrap_array_u1p1S_prod
	.globl	array_u5p5S_prod
	.type	array_u5p5S_prod, @function
array_u5p5S_prod:
.LFB39:
	.loc 1 83 0
	.cfi_startproc
.LVL29:
	.loc 1 90 0
	movl	%esi, %r8d
	subl	$5, %r8d
	js	.L24
	.loc 1 89 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 88 0
	vmovapd	%xmm0, %xmm2
	.loc 1 87 0
	vmovapd	%xmm0, %xmm3
	.loc 1 86 0
	vmovapd	%xmm0, %xmm4
	.loc 1 85 0
	vmovapd	%xmm0, %xmm1
	.loc 1 90 0
	movl	$0, %eax
.LVL30:
.L21:
	.loc 1 91 0 discriminator 2
	movslq	%eax, %rcx
	leaq	0(,%rcx,8), %rdx
	vmulsd	(%rdi,%rcx,8), %xmm1, %xmm1
.LVL31:
	.loc 1 92 0 discriminator 2
	vmulsd	8(%rdi,%rdx), %xmm4, %xmm4
.LVL32:
	.loc 1 93 0 discriminator 2
	vmulsd	16(%rdi,%rdx), %xmm3, %xmm3
.LVL33:
	.loc 1 94 0 discriminator 2
	vmulsd	24(%rdi,%rdx), %xmm2, %xmm2
.LVL34:
	.loc 1 95 0 discriminator 2
	vmulsd	32(%rdi,%rdx), %xmm0, %xmm0
.LVL35:
	.loc 1 90 0 discriminator 2
	addl	$5, %eax
.LVL36:
	cmpl	%r8d, %eax
	jle	.L21
	jmp	.L20
.LVL37:
.L24:
	.loc 1 89 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 88 0
	vmovapd	%xmm0, %xmm2
	.loc 1 87 0
	vmovapd	%xmm0, %xmm3
	.loc 1 86 0
	vmovapd	%xmm0, %xmm4
	.loc 1 85 0
	vmovapd	%xmm0, %xmm1
	.loc 1 90 0
	movl	$0, %eax
.LVL38:
.L20:
	.loc 1 97 0 discriminator 1
	cmpl	%eax, %esi
	jle	.L22
.L23:
	.loc 1 98 0 discriminator 2
	movslq	%eax, %rdx
	vmulsd	(%rdi,%rdx,8), %xmm1, %xmm1
.LVL39:
	.loc 1 97 0 discriminator 2
	addl	$1, %eax
.LVL40:
	cmpl	%esi, %eax
	jne	.L23
.L22:
	.loc 1 99 0
	vmulsd	%xmm4, %xmm1, %xmm1
.LVL41:
	vmulsd	%xmm3, %xmm1, %xmm3
	vmulsd	%xmm2, %xmm3, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm0
	.loc 1 100 0
	ret
	.cfi_endproc
.LFE39:
	.size	array_u5p5S_prod, .-array_u5p5S_prod
	.globl	wrap_array_u5p5S_prod
	.type	wrap_array_u5p5S_prod, @function
wrap_array_u5p5S_prod:
.LFB40:
	.loc 1 103 0
	.cfi_startproc
.LVL42:
	.loc 1 104 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL43:
	movl	global_cnt(%rip), %esi
	call	array_u5p5S_prod
.LVL44:
	.loc 1 105 0
	rep; ret
	.cfi_endproc
.LFE40:
	.size	wrap_array_u5p5S_prod, .-wrap_array_u5p5S_prod
	.globl	array_u5p1S_prod
	.type	array_u5p1S_prod, @function
array_u5p1S_prod:
.LFB41:
	.loc 1 108 0
	.cfi_startproc
.LVL45:
	.loc 1 111 0
	movl	%esi, %r8d
	subl	$5, %r8d
	js	.L31
	.loc 1 110 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 111 0
	movl	$0, %eax
.LVL46:
.L28:
	.loc 1 112 0 discriminator 2
	movslq	%eax, %rcx
	leaq	0(,%rcx,8), %rdx
	vmulsd	(%rdi,%rcx,8), %xmm0, %xmm0
.LVL47:
	vmulsd	8(%rdi,%rdx), %xmm0, %xmm0
	vmulsd	16(%rdi,%rdx), %xmm0, %xmm0
	vmulsd	24(%rdi,%rdx), %xmm0, %xmm0
	vmulsd	32(%rdi,%rdx), %xmm0, %xmm0
.LVL48:
	.loc 1 111 0 discriminator 2
	addl	$5, %eax
.LVL49:
	cmpl	%r8d, %eax
	jle	.L28
	jmp	.L27
.LVL50:
.L31:
	.loc 1 110 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 111 0
	movl	$0, %eax
.LVL51:
.L27:
	.loc 1 114 0 discriminator 1
	cmpl	%eax, %esi
	jle	.L29
.L30:
	.loc 1 115 0 discriminator 2
	movslq	%eax, %rdx
	vmulsd	(%rdi,%rdx,8), %xmm0, %xmm0
.LVL52:
	.loc 1 114 0 discriminator 2
	addl	$1, %eax
.LVL53:
	cmpl	%esi, %eax
	jne	.L30
.L29:
	.loc 1 117 0
	rep; ret
	.cfi_endproc
.LFE41:
	.size	array_u5p1S_prod, .-array_u5p1S_prod
	.globl	wrap_array_u5p1S_prod
	.type	wrap_array_u5p1S_prod, @function
wrap_array_u5p1S_prod:
.LFB42:
	.loc 1 120 0
	.cfi_startproc
.LVL54:
	.loc 1 121 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL55:
	movl	global_cnt(%rip), %esi
	call	array_u5p1S_prod
.LVL56:
	.loc 1 122 0
	rep; ret
	.cfi_endproc
.LFE42:
	.size	wrap_array_u5p1S_prod, .-wrap_array_u5p1S_prod
	.globl	array_u5p1A_prod
	.type	array_u5p1A_prod, @function
array_u5p1A_prod:
.LFB43:
	.loc 1 126 0
	.cfi_startproc
.LVL57:
	.loc 1 129 0
	movl	%esi, %r8d
	subl	$5, %r8d
	js	.L38
	.loc 1 128 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 129 0
	movl	$0, %eax
.LVL58:
.L35:
	.loc 1 130 0 discriminator 2
	movslq	%eax, %rcx
	leaq	0(,%rcx,8), %rdx
	vmovsd	(%rdi,%rcx,8), %xmm2
	vmulsd	8(%rdi,%rdx), %xmm2, %xmm2
	vmovsd	16(%rdi,%rdx), %xmm1
	vmulsd	24(%rdi,%rdx), %xmm1, %xmm1
	vmulsd	32(%rdi,%rdx), %xmm1, %xmm1
	vmulsd	%xmm1, %xmm2, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
.LVL59:
	.loc 1 129 0 discriminator 2
	addl	$5, %eax
.LVL60:
	cmpl	%r8d, %eax
	jle	.L35
	jmp	.L34
.LVL61:
.L38:
	.loc 1 128 0
	vmovsd	.LC1(%rip), %xmm0
	.loc 1 129 0
	movl	$0, %eax
.LVL62:
.L34:
	.loc 1 132 0 discriminator 1
	cmpl	%eax, %esi
	jle	.L36
.L37:
	.loc 1 133 0 discriminator 2
	movslq	%eax, %rdx
	vmulsd	(%rdi,%rdx,8), %xmm0, %xmm0
.LVL63:
	.loc 1 132 0 discriminator 2
	addl	$1, %eax
.LVL64:
	cmpl	%esi, %eax
	jne	.L37
.L36:
	.loc 1 135 0
	rep; ret
	.cfi_endproc
.LFE43:
	.size	array_u5p1A_prod, .-array_u5p1A_prod
	.globl	wrap_array_u5p1A_prod
	.type	wrap_array_u5p1A_prod, @function
wrap_array_u5p1A_prod:
.LFB44:
	.loc 1 138 0
	.cfi_startproc
.LVL65:
	.loc 1 139 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL66:
	movl	global_cnt(%rip), %esi
	call	array_u5p1A_prod
.LVL67:
	.loc 1 140 0
	rep; ret
	.cfi_endproc
.LFE44:
	.size	wrap_array_u5p1A_prod, .-wrap_array_u5p1A_prod
	.globl	sse_u1p1_prod
	.type	sse_u1p1_prod, @function
sse_u1p1_prod:
.LFB45:
	.loc 1 156 0
	.cfi_startproc
.LVL68:
	.loc 1 164 0
	vmovsd	.LC1(%rip), %xmm3
	vmovsd	%xmm3, -24(%rsp)
.LVL69:
	vmovsd	%xmm3, -16(%rsp)
.LVL70:
	.loc 1 168 0
	testb	$15, %dil
	je	.L51
	testl	%esi, %esi
	je	.L52
	.loc 1 159 0
	vmovapd	%xmm3, %xmm0
.LVL71:
.L46:
	.loc 1 169 0
	addq	$8, %rdi
.LVL72:
	vmulsd	-8(%rdi), %xmm0, %xmm0
.LVL73:
	.loc 1 170 0
	subl	$1, %esi
.LVL74:
	.loc 1 168 0
	testb	$15, %dil
	jne	.L43
	jmp	.L41
.LVL75:
.L51:
	.loc 1 159 0
	vmovsd	.LC1(%rip), %xmm0
.LVL76:
.L41:
	.loc 1 173 0 discriminator 1
	cmpl	$1, %esi
	jg	.L44
	jmp	.L45
.LVL77:
.L43:
	.loc 1 168 0 discriminator 2
	testl	%esi, %esi
	jne	.L46
	.p2align 4,,9
	jmp	.L45
.LVL78:
.L44:
	.loc 1 173 0
	movq	%rdi, %rdx
	movl	%esi, %eax
.LVL79:
.L48:
.LBB16:
	.loc 1 175 0
	vmovapd	-24(%rsp), %xmm2
	vmulpd	(%rdx), %xmm2, %xmm1
	vmovapd	%xmm1, -24(%rsp)
.LVL80:
	.loc 1 176 0
	addq	$16, %rdx
.LVL81:
	.loc 1 177 0
	subl	$2, %eax
.LVL82:
.LBE16:
	.loc 1 173 0
	cmpl	$1, %eax
	jg	.L48
	subl	$2, %esi
	movl	%esi, %eax
.LVL83:
	shrl	%eax
	movl	%eax, %edx
.LVL84:
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rdi
	negl	%eax
	leal	(%rsi,%rax,2), %esi
.LVL85:
.L45:
	.loc 1 180 0 discriminator 1
	testl	%esi, %esi
	je	.L49
.L50:
	.loc 1 181 0
	addq	$8, %rdi
.LVL86:
	vmulsd	-8(%rdi), %xmm0, %xmm0
.LVL87:
	.loc 1 180 0
	subl	$1, %esi
.LVL88:
	jne	.L50
	jmp	.L49
.LVL89:
.L52:
	.loc 1 159 0
	vmovsd	.LC1(%rip), %xmm0
	jmp	.L45
.LVL90:
.L49:
	.loc 1 186 0
	vmulsd	-24(%rsp), %xmm0, %xmm0
.LVL91:
	vmulsd	-16(%rsp), %xmm0, %xmm0
.LVL92:
	.loc 1 188 0
	ret
	.cfi_endproc
.LFE45:
	.size	sse_u1p1_prod, .-sse_u1p1_prod
	.globl	wrap_sse_u1p1_prod
	.type	wrap_sse_u1p1_prod, @function
wrap_sse_u1p1_prod:
.LFB46:
	.loc 1 191 0
	.cfi_startproc
.LVL93:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 192 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL94:
	movl	global_cnt(%rip), %esi
	call	sse_u1p1_prod
.LVL95:
	.loc 1 193 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	wrap_sse_u1p1_prod, .-wrap_sse_u1p1_prod
	.globl	sse_u5p5_prod
	.type	sse_u5p5_prod, @function
sse_u5p5_prod:
.LFB47:
	.loc 1 199 0
	.cfi_startproc
.LVL96:
	.loc 1 207 0
	vmovsd	.LC1(%rip), %xmm6
	vmovsd	%xmm6, -24(%rsp)
.LVL97:
	vmovsd	%xmm6, -16(%rsp)
.LVL98:
	.loc 1 208 0
	vmovapd	-24(%rsp), %xmm1
.LVL99:
	.loc 1 211 0
	testb	$15, %dil
	je	.L66
	testl	%esi, %esi
	je	.L67
	.loc 1 202 0
	vmovapd	%xmm6, %xmm0
.LVL100:
.L62:
	.loc 1 212 0
	addq	$8, %rdi
.LVL101:
	vmulsd	-8(%rdi), %xmm0, %xmm0
.LVL102:
	.loc 1 213 0
	subl	$1, %esi
.LVL103:
	.loc 1 211 0
	testb	$15, %dil
	jne	.L59
	jmp	.L57
.LVL104:
.L66:
	.loc 1 202 0
	vmovsd	.LC1(%rip), %xmm0
.LVL105:
.L57:
	.loc 1 216 0 discriminator 1
	cmpl	$9, %esi
	jg	.L60
	.loc 1 216 0 is_stmt 0
	vmovapd	%xmm1, %xmm5
	vmovapd	%xmm1, %xmm4
	vmovapd	%xmm1, %xmm3
	vmovapd	%xmm1, %xmm2
	jmp	.L61
.LVL106:
.L59:
	.loc 1 211 0 is_stmt 1 discriminator 2
	testl	%esi, %esi
	jne	.L62
	jmp	.L58
.LVL107:
.L60:
	.loc 1 216 0
	vmovapd	%xmm1, %xmm5
	vmovapd	%xmm1, %xmm4
	vmovapd	%xmm1, %xmm3
	vmovapd	%xmm1, %xmm2
.LVL108:
.L63:
.LBB17:
	.loc 1 218 0
	vmulpd	(%rdi), %xmm1, %xmm1
.LVL109:
	.loc 1 220 0
	vmulpd	16(%rdi), %xmm2, %xmm2
.LVL110:
	.loc 1 222 0
	vmulpd	32(%rdi), %xmm3, %xmm3
.LVL111:
	.loc 1 224 0
	vmulpd	48(%rdi), %xmm4, %xmm4
.LVL112:
	.loc 1 226 0
	vmulpd	64(%rdi), %xmm5, %xmm5
.LVL113:
	.loc 1 227 0
	addq	$80, %rdi
.LVL114:
	.loc 1 228 0
	subl	$10, %esi
.LVL115:
.LBE17:
	.loc 1 216 0
	cmpl	$9, %esi
	jg	.L63
.LVL116:
.L61:
	.loc 1 231 0 discriminator 1
	testl	%esi, %esi
	je	.L64
.L65:
	.loc 1 232 0
	addq	$8, %rdi
.LVL117:
	vmulsd	-8(%rdi), %xmm0, %xmm0
.LVL118:
	.loc 1 231 0
	subl	$1, %esi
.LVL119:
	jne	.L65
	jmp	.L64
.LVL120:
.L67:
	.loc 1 202 0
	vmovsd	.LC1(%rip), %xmm0
.LVL121:
.L58:
	.loc 1 216 0
	vmovapd	%xmm1, %xmm5
	vmovapd	%xmm1, %xmm4
	vmovapd	%xmm1, %xmm3
	vmovapd	%xmm1, %xmm2
	jmp	.L61
.LVL122:
.L64:
	.loc 1 235 0
	vmulpd	%xmm2, %xmm1, %xmm1
.LVL123:
	vmulpd	%xmm4, %xmm3, %xmm3
.LVL124:
	vmulpd	%xmm5, %xmm3, %xmm5
.LVL125:
	vmulpd	%xmm5, %xmm1, %xmm6
	vmovapd	%xmm6, -24(%rsp)
.LVL126:
	.loc 1 237 0
	vmulsd	-24(%rsp), %xmm0, %xmm0
.LVL127:
	vmulsd	-16(%rsp), %xmm0, %xmm0
.LVL128:
	.loc 1 239 0
	ret
	.cfi_endproc
.LFE47:
	.size	sse_u5p5_prod, .-sse_u5p5_prod
	.globl	wrap_sse_u5p5_prod
	.type	wrap_sse_u5p5_prod, @function
wrap_sse_u5p5_prod:
.LFB48:
	.loc 1 242 0
	.cfi_startproc
.LVL129:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 243 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL130:
	movl	global_cnt(%rip), %esi
	call	sse_u5p5_prod
.LVL131:
	.loc 1 244 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	wrap_sse_u5p5_prod, .-wrap_sse_u5p5_prod
	.globl	sse_u8p8_prod
	.type	sse_u8p8_prod, @function
sse_u8p8_prod:
.LFB49:
	.loc 1 249 0
	.cfi_startproc
.LVL132:
	.loc 1 257 0
	vmovsd	.LC1(%rip), %xmm2
	vmovsd	%xmm2, -24(%rsp)
.LVL133:
	vmovsd	%xmm2, -16(%rsp)
.LVL134:
	.loc 1 258 0
	vmovapd	-24(%rsp), %xmm1
.LVL135:
	.loc 1 261 0
	testb	$15, %dil
	je	.L82
	testl	%esi, %esi
	je	.L83
	.loc 1 252 0
	vmovapd	%xmm2, %xmm0
.LVL136:
.L77:
	.loc 1 262 0
	addq	$8, %rdi
.LVL137:
	vmulsd	-8(%rdi), %xmm0, %xmm0
.LVL138:
	.loc 1 263 0
	subl	$1, %esi
.LVL139:
	.loc 1 261 0
	testb	$15, %dil
	jne	.L74
	jmp	.L72
.LVL140:
.L82:
	.loc 1 252 0
	vmovsd	.LC1(%rip), %xmm0
.LVL141:
.L72:
	.loc 1 266 0 discriminator 1
	cmpl	$15, %esi
	jg	.L75
	.loc 1 266 0 is_stmt 0
	vmovapd	%xmm1, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovapd	%xmm1, %xmm6
	vmovapd	%xmm1, %xmm5
	vmovapd	%xmm1, %xmm4
	vmovapd	%xmm1, %xmm3
	vmovapd	%xmm1, %xmm2
	jmp	.L76
.LVL142:
.L74:
	.loc 1 261 0 is_stmt 1 discriminator 2
	testl	%esi, %esi
	jne	.L77
	jmp	.L73
.LVL143:
.L75:
	.loc 1 266 0
	movq	%rdi, %rax
	vmovapd	%xmm1, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovapd	%xmm1, %xmm6
	vmovapd	%xmm1, %xmm5
	vmovapd	%xmm1, %xmm4
	vmovapd	%xmm1, %xmm3
	vmovapd	%xmm1, %xmm2
	movl	%esi, %edx
.LVL144:
.L79:
.LBB18:
	.loc 1 268 0
	vmulpd	(%rax), %xmm1, %xmm1
.LVL145:
	.loc 1 270 0
	vmulpd	16(%rax), %xmm2, %xmm2
.LVL146:
	.loc 1 272 0
	vmulpd	32(%rax), %xmm3, %xmm3
.LVL147:
	.loc 1 274 0
	vmulpd	48(%rax), %xmm4, %xmm4
.LVL148:
	.loc 1 276 0
	vmulpd	64(%rax), %xmm5, %xmm5
.LVL149:
	.loc 1 278 0
	vmulpd	80(%rax), %xmm6, %xmm6
.LVL150:
	.loc 1 280 0
	vmulpd	96(%rax), %xmm7, %xmm7
.LVL151:
	.loc 1 282 0
	vmulpd	112(%rax), %xmm8, %xmm8
.LVL152:
	.loc 1 283 0
	subq	$-128, %rax
.LVL153:
	.loc 1 284 0
	subl	$16, %edx
.LVL154:
.LBE18:
	.loc 1 266 0
	cmpl	$15, %edx
	jg	.L79
	subl	$16, %esi
	movl	%esi, %eax
.LVL155:
	shrl	$4, %eax
	movl	%eax, %edx
.LVL156:
	addq	$1, %rdx
	salq	$7, %rdx
	addq	%rdx, %rdi
	sall	$4, %eax
	subl	%eax, %esi
.L76:
.LVL157:
	.loc 1 287 0 discriminator 1
	testl	%esi, %esi
	je	.L80
.L81:
	.loc 1 288 0
	addq	$8, %rdi
.LVL158:
	vmulsd	-8(%rdi), %xmm0, %xmm0
.LVL159:
	.loc 1 287 0
	subl	$1, %esi
.LVL160:
	jne	.L81
	jmp	.L80
.LVL161:
.L83:
	.loc 1 252 0
	vmovsd	.LC1(%rip), %xmm0
.LVL162:
.L73:
	.loc 1 266 0
	vmovapd	%xmm1, %xmm8
	vmovapd	%xmm1, %xmm7
	vmovapd	%xmm1, %xmm6
	vmovapd	%xmm1, %xmm5
	vmovapd	%xmm1, %xmm4
	vmovapd	%xmm1, %xmm3
	vmovapd	%xmm1, %xmm2
	jmp	.L76
.LVL163:
.L80:
	.loc 1 291 0
	vmulpd	%xmm2, %xmm1, %xmm1
.LVL164:
	vmulpd	%xmm4, %xmm3, %xmm3
.LVL165:
	vmulpd	%xmm3, %xmm1, %xmm1
	vmulpd	%xmm6, %xmm5, %xmm5
.LVL166:
	vmulpd	%xmm8, %xmm7, %xmm7
.LVL167:
	vmulpd	%xmm7, %xmm5, %xmm5
	vmulpd	%xmm5, %xmm1, %xmm6
.LVL168:
	vmovapd	%xmm6, -24(%rsp)
.LVL169:
	.loc 1 293 0
	vmulsd	-24(%rsp), %xmm0, %xmm0
.LVL170:
	vmulsd	-16(%rsp), %xmm0, %xmm0
.LVL171:
	.loc 1 295 0
	ret
	.cfi_endproc
.LFE49:
	.size	sse_u8p8_prod, .-sse_u8p8_prod
	.globl	wrap_sse_u8p8_prod
	.type	wrap_sse_u8p8_prod, @function
wrap_sse_u8p8_prod:
.LFB50:
	.loc 1 298 0
	.cfi_startproc
.LVL172:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 299 0
	movslq	%edi, %rdi
	movq	array_data(,%rdi,8), %rdi
.LVL173:
	movl	global_cnt(%rip), %esi
	call	sse_u8p8_prod
.LVL174:
	.loc 1 300 0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	wrap_sse_u8p8_prod, .-wrap_sse_u8p8_prod
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Function '%s' Data Error. Test %d"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	", Expected %.1f.  Got %.1f\n"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Function '%s' (%s) %.0f cycles, %.0f nsecs, %.2f cycles/element\n"
	.text
	.globl	tester
	.type	tester, @function
tester:
.LFB51:
	.loc 1 304 0
	.cfi_startproc
.LVL175:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %r12
	movq	%rsi, %r14
	movq	%rdx, %r15
.LVL176:
	movl	$answer+32, %ebx
	.loc 1 307 0
	movl	$4, %ebp
.LVL177:
.L91:
.LBB19:
	.loc 1 308 0
	movl	%ebp, %edi
	call	*%r12
.LVL178:
	vmovsd	%xmm0, 8(%rsp)
.LVL179:
	movq	%rbx, %r13
	.loc 1 309 0
	vucomisd	(%rbx), %xmm0
	jp	.L92
	je	.L88
.L92:
.LVL180:
.LBB20:
.LBB21:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movl	%ebp, %ecx
	movq	%r14, %rdx
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
.LVL181:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	vmovsd	8(%rsp), %xmm1
	vmovsd	0(%r13), %xmm0
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
.LVL182:
.L88:
.LBE23:
.LBE22:
.LBE19:
	.loc 1 307 0
	subl	$1, %ebp
.LVL183:
	subq	$8, %rbx
	cmpl	$-1, %ebp
	jne	.L91
	.loc 1 315 0
	movl	$0, %eax
	call	start_counter
.LVL184:
	.loc 1 316 0
	movl	$0, %edi
	call	*%r12
.LVL185:
	.loc 1 317 0
	movl	$0, %eax
	call	get_counter
.LVL186:
	vmovsd	%xmm0, 8(%rsp)
.LVL187:
	.loc 1 318 0
	movl	$0, %edi
	call	mhz
.LVL188:
	.loc 1 320 0
	vcvtsi2sd	global_cnt(%rip), %xmm2, %xmm2
	.loc 1 318 0
	vdivsd	.LC4(%rip), %xmm0, %xmm1
.LVL189:
.LBB24:
.LBB25:
	.loc 2 105 0
	vmovsd	8(%rsp), %xmm4
	vdivsd	%xmm2, %xmm4, %xmm2
	vdivsd	%xmm1, %xmm4, %xmm1
.LVL190:
	vmovapd	%xmm4, %xmm0
.LVL191:
	movq	%r15, %rcx
	movq	%r14, %rdx
	movl	$.LC5, %esi
	movl	$1, %edi
	movl	$3, %eax
	call	__printf_chk
.LVL192:
.LBE25:
.LBE24:
	.loc 1 322 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL193:
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL194:
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL195:
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL196:
	ret
	.cfi_endproc
.LFE51:
	.size	tester, .-tester
	.section	.rodata.str1.1
.LC6:
	.string	"Count = %d, Ghz = %.2f\n"
	.text
	.globl	run
	.type	run, @function
run:
.LFB52:
	.loc 1 343 0
	.cfi_startproc
.LVL197:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	.loc 1 344 0
	call	init
.LVL198:
	.loc 1 345 0
	movl	$0, %edi
	call	mhz
.LVL199:
	vdivsd	.LC4(%rip), %xmm0, %xmm0
.LBB26:
.LBB27:
	.loc 2 105 0
	movl	%ebx, %edx
	movl	$.LC6, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL200:
.LBE27:
.LBE26:
	.loc 1 347 0
	movq	tests(%rip), %rdi
	testq	%rdi, %rdi
	je	.L94
	movl	$tests+16, %ebx
.LVL201:
.L96:
	.loc 1 348 0 discriminator 2
	movq	-8(%rbx), %rsi
	movq	(%rbx), %rdx
	call	tester
.LVL202:
	addq	$24, %rbx
	.loc 1 347 0 discriminator 2
	movq	-16(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L96
.L94:
	.loc 1 350 0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	run, .-run
	.globl	main
	.type	main, @function
main:
.LFB53:
	.loc 1 352 0
	.cfi_startproc
.LVL203:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.LVL204:
	.loc 1 353 0
	movl	$20000, %eax
	.loc 1 354 0
	cmpl	$1, %edi
	jle	.L99
.LVL205:
.LBB28:
.LBB29:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movq	8(%rsi), %rdi
.LVL206:
	movl	$10, %edx
	movl	$0, %esi
.LVL207:
	call	strtol
.LVL208:
.L99:
.LBE29:
.LBE28:
	.loc 1 356 0
	movl	%eax, %edi
	call	run
.LVL209:
	.loc 1 358 0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.globl	tests
	.section	.rodata.str1.1
.LC7:
	.string	"list"
.LC8:
	.string	"array_u1p1S"
.LC9:
	.string	"array_u5p5S"
.LC10:
	.string	"array_u5p1S"
.LC11:
	.string	"array_u5p1A"
.LC12:
	.string	"sse_u1p1"
.LC13:
	.string	"sse_u5p5"
.LC14:
	.string	"sse_u8p8"
	.data
	.align 32
	.type	tests, @object
	.size	tests, 216
tests:
	.quad	wrap_list_prod
	.quad	.LC7
	.quad	list_prod_descr
	.quad	wrap_array_u1p1S_prod
	.quad	.LC8
	.quad	array_u1p1S_prod_descr
	.quad	wrap_array_u5p5S_prod
	.quad	.LC9
	.quad	array_u5p5S_prod_descr
	.quad	wrap_array_u5p1S_prod
	.quad	.LC10
	.quad	array_u5p1S_prod_descr
	.quad	wrap_array_u5p1A_prod
	.quad	.LC11
	.quad	array_u5p1A_prod_descr
	.quad	wrap_sse_u1p1_prod
	.quad	.LC12
	.quad	sse_u1p1_prod_descr
	.quad	wrap_sse_u5p5_prod
	.quad	.LC13
	.quad	sse_u5p5_prod_descr
	.quad	wrap_sse_u8p8_prod
	.quad	.LC14
	.quad	sse_u8p8_prod_descr
	.quad	0
	.quad	0
	.quad	0
	.globl	sse_u8p8_prod_descr
	.align 32
	.type	sse_u8p8_prod_descr, @object
	.size	sse_u8p8_prod_descr, 34
sse_u8p8_prod_descr:
	.string	"2x SSE.  Unroll 8x.  Parallel 8x."
	.globl	sse_u5p5_prod_descr
	.align 32
	.type	sse_u5p5_prod_descr, @object
	.size	sse_u5p5_prod_descr, 34
sse_u5p5_prod_descr:
	.string	"2x SSE.  Unroll 5x.  Parallel 5x."
	.globl	sse_u1p1_prod_descr
	.align 32
	.type	sse_u1p1_prod_descr, @object
	.size	sse_u1p1_prod_descr, 34
sse_u1p1_prod_descr:
	.string	"2x SSE.  Unroll 1x.  Parallel 1x."
	.globl	array_u5p1A_prod_descr
	.align 32
	.type	array_u5p1A_prod_descr, @object
	.size	array_u5p1A_prod_descr, 56
array_u5p1A_prod_descr:
	.string	"Array.  Unroll 5x.  Parallel 1x, Modified associativity"
	.globl	array_u5p1S_prod_descr
	.align 32
	.type	array_u5p1S_prod_descr, @object
	.size	array_u5p1S_prod_descr, 56
array_u5p1S_prod_descr:
	.string	"Array.  Unroll 5x.  Parallel 1x, Standard associativity"
	.globl	array_u5p5S_prod_descr
	.align 32
	.type	array_u5p5S_prod_descr, @object
	.size	array_u5p5S_prod_descr, 56
array_u5p5S_prod_descr:
	.string	"Array.  Unroll 5x.  Parallel 5x, Standard associativity"
	.globl	array_u1p1S_prod_descr
	.align 32
	.type	array_u1p1S_prod_descr, @object
	.size	array_u1p1S_prod_descr, 56
array_u1p1S_prod_descr:
	.string	"Array.  Unroll 1x.  Parallel 1x, Standard associativity"
	.globl	list_prod_descr
	.align 16
	.type	list_prod_descr, @object
	.size	list_prod_descr, 30
list_prod_descr:
	.string	"Traversing Singly-Linked List"
	.comm	answer,40,32
	.globl	global_cnt
	.align 4
	.type	global_cnt, @object
	.size	global_cnt, 4
global_cnt:
	.long	10000
	.comm	list_data,40,32
	.comm	array_data,40,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1083129856
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "../include/clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x114f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF131
	.byte	0x1
	.long	.LASF132
	.long	.LASF133
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x4
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
	.byte	0x5
	.byte	0x8d
	.long	0x70
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
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
	.byte	0x6
	.value	0x111
	.long	0x22a
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.value	0x112
	.long	0x69
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
	.long	0x69
	.byte	0x70
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.value	0x12c
	.long	0x69
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
	.long	0x4d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.value	0x133
	.long	0x5b
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
	.long	0x34
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.value	0x150
	.long	0x69
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.value	0x152
	.long	0x284
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF134
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
	.uleb128 0xc
	.long	0x9c
	.long	0x2b6
	.uleb128 0xd
	.long	0x8d
	.byte	0x37
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.long	.LASF49
	.byte	0x1
	.byte	0x9
	.long	0x2c8
	.uleb128 0x6
	.byte	0x8
	.long	0x2ce
	.uleb128 0xf
	.string	"ELE"
	.byte	0x10
	.byte	0x1
	.byte	0xb
	.long	0x2f3
	.uleb128 0x10
	.string	"val"
	.byte	0x1
	.byte	0xc
	.long	0x2d
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.byte	0xd
	.long	0x2bd
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF51
	.byte	0x1
	.byte	0xe
	.long	0x2ce
	.uleb128 0x3
	.long	.LASF52
	.byte	0x1
	.byte	0x90
	.long	0x309
	.uleb128 0x11
	.long	0x2d
	.long	0x315
	.uleb128 0x12
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0x10
	.byte	0x1
	.byte	0x91
	.long	0x330
	.uleb128 0x14
	.string	"v"
	.byte	0x1
	.byte	0x92
	.long	0x2fe
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0x93
	.long	0x330
	.byte	0
	.uleb128 0xc
	.long	0x2d
	.long	0x340
	.uleb128 0xd
	.long	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x1
	.byte	0x94
	.long	0x315
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.value	0x12e
	.long	0x357
	.uleb128 0x6
	.byte	0x8
	.long	0x35d
	.uleb128 0x16
	.long	0x2d
	.long	0x36c
	.uleb128 0x17
	.long	0x69
	.byte	0
	.uleb128 0x18
	.byte	0x18
	.byte	0x1
	.value	0x144
	.long	0x39d
	.uleb128 0x19
	.string	"fun"
	.byte	0x1
	.value	0x145
	.long	0x34b
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1
	.value	0x146
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1
	.value	0x147
	.long	0x96
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x148
	.long	0x36c
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x2
	.byte	0x67
	.long	0x69
	.byte	0x3
	.long	0x3c6
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x2
	.byte	0x67
	.long	0x294
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x3
	.value	0x11c
	.long	0x69
	.byte	0x3
	.long	0x3e4
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x3
	.value	0x11c
	.long	0x294
	.byte	0
	.uleb128 0x1f
	.long	.LASF105
	.byte	0x1
	.byte	0x1c
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7
	.uleb128 0x20
	.string	"cnt"
	.byte	0x1
	.byte	0x1c
	.long	0x69
	.long	.LLST0
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.byte	0x1f
	.long	0x69
	.long	.LLST1
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x69
	.long	.LLST2
	.uleb128 0x23
	.long	.LASF60
	.byte	0x1
	.byte	0x24
	.long	0x4b7
	.long	.LLST3
	.uleb128 0x24
	.long	.Ldebug_ranges0+0
	.long	0x47f
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x27
	.long	0x2d
	.long	.LLST4
	.uleb128 0x23
	.long	.LASF61
	.byte	0x1
	.byte	0x29
	.long	0x2bd
	.long	.LLST5
	.uleb128 0x25
	.quad	.LVL7
	.long	0x10c2
	.byte	0
	.uleb128 0x26
	.quad	.LVL3
	.long	0x10ce
	.long	0x49c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x28
	.quad	.LVL4
	.long	0x10ce
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f3
	.uleb128 0x29
	.long	.LASF62
	.byte	0x1
	.byte	0x33
	.long	0x2d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fc
	.uleb128 0x20
	.string	"ls"
	.byte	0x1
	.byte	0x33
	.long	0x2bd
	.long	.LLST6
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x35
	.long	0x2d
	.long	.LLST7
	.byte	0
	.uleb128 0x29
	.long	.LASF63
	.byte	0x1
	.byte	0x3d
	.long	0x2d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x538
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x3d
	.long	0x69
	.long	.LLST8
	.uleb128 0x25
	.quad	.LVL20
	.long	0x4bd
	.byte	0
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x43
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x590
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.byte	0x43
	.long	0x590
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x1
	.byte	0x43
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x44
	.long	0x69
	.long	.LLST9
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x45
	.long	0x2d
	.long	.LLST10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x29
	.long	.LASF66
	.byte	0x1
	.byte	0x4c
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d2
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x4c
	.long	0x69
	.long	.LLST11
	.uleb128 0x25
	.quad	.LVL28
	.long	0x538
	.byte	0
	.uleb128 0x29
	.long	.LASF67
	.byte	0x1
	.byte	0x53
	.long	0x2d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x666
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.byte	0x53
	.long	0x590
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x1
	.byte	0x53
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x54
	.long	0x69
	.long	.LLST12
	.uleb128 0x23
	.long	.LASF68
	.byte	0x1
	.byte	0x55
	.long	0x2d
	.long	.LLST13
	.uleb128 0x23
	.long	.LASF69
	.byte	0x1
	.byte	0x56
	.long	0x2d
	.long	.LLST14
	.uleb128 0x23
	.long	.LASF70
	.byte	0x1
	.byte	0x57
	.long	0x2d
	.long	.LLST15
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.long	.LLST16
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.long	.LLST17
	.byte	0
	.uleb128 0x29
	.long	.LASF73
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a2
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x66
	.long	0x69
	.long	.LLST18
	.uleb128 0x25
	.quad	.LVL44
	.long	0x5d2
	.byte	0
	.uleb128 0x29
	.long	.LASF74
	.byte	0x1
	.byte	0x6c
	.long	0x2d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fa
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.byte	0x6c
	.long	0x590
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x1
	.byte	0x6c
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.long	0x69
	.long	.LLST19
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x6e
	.long	0x2d
	.long	.LLST20
	.byte	0
	.uleb128 0x29
	.long	.LASF75
	.byte	0x1
	.byte	0x77
	.long	0x2d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x736
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x77
	.long	0x69
	.long	.LLST21
	.uleb128 0x25
	.quad	.LVL56
	.long	0x6a2
	.byte	0
	.uleb128 0x29
	.long	.LASF76
	.byte	0x1
	.byte	0x7e
	.long	0x2d
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x78e
	.uleb128 0x2a
	.long	.LASF65
	.byte	0x1
	.byte	0x7e
	.long	0x590
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.string	"cnt"
	.byte	0x1
	.byte	0x7e
	.long	0x69
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.long	0x69
	.long	.LLST22
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x80
	.long	0x2d
	.long	.LLST23
	.byte	0
	.uleb128 0x29
	.long	.LASF77
	.byte	0x1
	.byte	0x89
	.long	0x2d
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ca
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0x89
	.long	0x69
	.long	.LLST24
	.uleb128 0x25
	.quad	.LVL67
	.long	0x736
	.byte	0
	.uleb128 0x29
	.long	.LASF78
	.byte	0x1
	.byte	0x9b
	.long	0x2d
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x870
	.uleb128 0x2c
	.long	.LASF65
	.byte	0x1
	.byte	0x9b
	.long	0x590
	.long	.LLST25
	.uleb128 0x20
	.string	"cnt"
	.byte	0x1
	.byte	0x9b
	.long	0x69
	.long	.LLST26
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.byte	0x9d
	.long	0x340
	.uleb128 0x23
	.long	.LASF79
	.byte	0x1
	.byte	0x9e
	.long	0x2fe
	.long	.LLST27
	.uleb128 0x23
	.long	.LASF80
	.byte	0x1
	.byte	0x9f
	.long	0x2d
	.long	.LLST28
	.uleb128 0x23
	.long	.LASF81
	.byte	0x1
	.byte	0xa0
	.long	0x590
	.long	.LLST29
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xa2
	.long	0x69
	.long	.LLST30
	.uleb128 0x22
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x23
	.long	.LASF82
	.byte	0x1
	.byte	0xae
	.long	0x2fe
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF83
	.byte	0x1
	.byte	0xbe
	.long	0x2d
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ac
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xbe
	.long	0x69
	.long	.LLST32
	.uleb128 0x25
	.quad	.LVL95
	.long	0x7ca
	.byte	0
	.uleb128 0x29
	.long	.LASF84
	.byte	0x1
	.byte	0xc6
	.long	0x2d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c8
	.uleb128 0x2c
	.long	.LASF65
	.byte	0x1
	.byte	0xc6
	.long	0x590
	.long	.LLST33
	.uleb128 0x20
	.string	"cnt"
	.byte	0x1
	.byte	0xc6
	.long	0x69
	.long	.LLST34
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.byte	0xc8
	.long	0x340
	.uleb128 0x23
	.long	.LASF86
	.byte	0x1
	.byte	0xc9
	.long	0x2fe
	.long	.LLST35
	.uleb128 0x23
	.long	.LASF87
	.byte	0x1
	.byte	0xc9
	.long	0x2fe
	.long	.LLST36
	.uleb128 0x23
	.long	.LASF88
	.byte	0x1
	.byte	0xc9
	.long	0x2fe
	.long	.LLST37
	.uleb128 0x23
	.long	.LASF89
	.byte	0x1
	.byte	0xc9
	.long	0x2fe
	.long	.LLST38
	.uleb128 0x23
	.long	.LASF90
	.byte	0x1
	.byte	0xc9
	.long	0x2fe
	.long	.LLST39
	.uleb128 0x23
	.long	.LASF80
	.byte	0x1
	.byte	0xca
	.long	0x2d
	.long	.LLST40
	.uleb128 0x2e
	.long	.LASF81
	.byte	0x1
	.byte	0xcb
	.long	0x590
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xcd
	.long	0x69
	.long	.LLST41
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x23
	.long	.LASF91
	.byte	0x1
	.byte	0xd9
	.long	0x2fe
	.long	.LLST42
	.uleb128 0x23
	.long	.LASF92
	.byte	0x1
	.byte	0xdb
	.long	0x2fe
	.long	.LLST43
	.uleb128 0x23
	.long	.LASF93
	.byte	0x1
	.byte	0xdd
	.long	0x2fe
	.long	.LLST44
	.uleb128 0x23
	.long	.LASF94
	.byte	0x1
	.byte	0xdf
	.long	0x2fe
	.long	.LLST45
	.uleb128 0x23
	.long	.LASF95
	.byte	0x1
	.byte	0xe1
	.long	0x2fe
	.long	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF96
	.byte	0x1
	.byte	0xf1
	.long	0x2d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xa04
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.byte	0xf1
	.long	0x69
	.long	.LLST47
	.uleb128 0x25
	.quad	.LVL131
	.long	0x8ac
	.byte	0
	.uleb128 0x29
	.long	.LASF97
	.byte	0x1
	.byte	0xf8
	.long	0x2d
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xb84
	.uleb128 0x2c
	.long	.LASF65
	.byte	0x1
	.byte	0xf8
	.long	0x590
	.long	.LLST48
	.uleb128 0x20
	.string	"cnt"
	.byte	0x1
	.byte	0xf8
	.long	0x69
	.long	.LLST49
	.uleb128 0x2d
	.long	.LASF85
	.byte	0x1
	.byte	0xfa
	.long	0x340
	.uleb128 0x23
	.long	.LASF86
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST50
	.uleb128 0x23
	.long	.LASF87
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST51
	.uleb128 0x23
	.long	.LASF88
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST52
	.uleb128 0x23
	.long	.LASF89
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST53
	.uleb128 0x23
	.long	.LASF90
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST54
	.uleb128 0x23
	.long	.LASF98
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST55
	.uleb128 0x23
	.long	.LASF99
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST56
	.uleb128 0x23
	.long	.LASF100
	.byte	0x1
	.byte	0xfb
	.long	0x2fe
	.long	.LLST57
	.uleb128 0x23
	.long	.LASF80
	.byte	0x1
	.byte	0xfc
	.long	0x2d
	.long	.LLST58
	.uleb128 0x23
	.long	.LASF81
	.byte	0x1
	.byte	0xfd
	.long	0x590
	.long	.LLST59
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xff
	.long	0x69
	.long	.LLST60
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.long	.LASF91
	.byte	0x1
	.value	0x10b
	.long	0x2fe
	.long	.LLST61
	.uleb128 0x2f
	.long	.LASF92
	.byte	0x1
	.value	0x10d
	.long	0x2fe
	.long	.LLST62
	.uleb128 0x2f
	.long	.LASF93
	.byte	0x1
	.value	0x10f
	.long	0x2fe
	.long	.LLST63
	.uleb128 0x2f
	.long	.LASF94
	.byte	0x1
	.value	0x111
	.long	0x2fe
	.long	.LLST64
	.uleb128 0x2f
	.long	.LASF95
	.byte	0x1
	.value	0x113
	.long	0x2fe
	.long	.LLST65
	.uleb128 0x2f
	.long	.LASF101
	.byte	0x1
	.value	0x115
	.long	0x2fe
	.long	.LLST66
	.uleb128 0x2f
	.long	.LASF102
	.byte	0x1
	.value	0x117
	.long	0x2fe
	.long	.LLST67
	.uleb128 0x2f
	.long	.LASF103
	.byte	0x1
	.value	0x119
	.long	0x2fe
	.long	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF104
	.byte	0x1
	.value	0x129
	.long	0x2d
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc2
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x129
	.long	0x69
	.long	.LLST69
	.uleb128 0x25
	.quad	.LVL174
	.long	0xa04
	.byte	0
	.uleb128 0x32
	.long	.LASF106
	.byte	0x1
	.value	0x130
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xdca
	.uleb128 0x31
	.string	"fun"
	.byte	0x1
	.value	0x130
	.long	0x34b
	.long	.LLST70
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.value	0x130
	.long	0x96
	.long	.LLST71
	.uleb128 0x33
	.long	.LASF56
	.byte	0x1
	.value	0x130
	.long	0x96
	.long	.LLST72
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.value	0x131
	.long	0x69
	.long	.LLST73
	.uleb128 0x34
	.string	"cyc"
	.byte	0x1
	.value	0x132
	.long	0x2d
	.long	.LLST74
	.uleb128 0x2f
	.long	.LASF107
	.byte	0x1
	.value	0x132
	.long	0x2d
	.long	.LLST75
	.uleb128 0x34
	.string	"ghz"
	.byte	0x1
	.value	0x132
	.long	0x2d
	.long	.LLST76
	.uleb128 0x35
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0xd26
	.uleb128 0x34
	.string	"val"
	.byte	0x1
	.value	0x134
	.long	0x2d
	.long	.LLST77
	.uleb128 0x36
	.long	0x3a9
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.value	0x136
	.long	0xcc5
	.uleb128 0x37
	.long	0x3b9
	.long	.LLST78
	.uleb128 0x28
	.quad	.LVL181
	.long	0x10e9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x3a9
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.value	0x137
	.long	0xd15
	.uleb128 0x37
	.long	0x3b9
	.long	.LLST79
	.uleb128 0x28
	.quad	.LVL182
	.long	0x10e9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.byte	0
	.uleb128 0x38
	.quad	.LVL178
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x3a9
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.value	0x140
	.long	0xd89
	.uleb128 0x39
	.long	0x3b9
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.uleb128 0x28
	.quad	.LVL192
	.long	0x10e9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL184
	.long	0x1104
	.uleb128 0x3a
	.quad	.LVL185
	.long	0xda9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL186
	.long	0x1111
	.uleb128 0x28
	.quad	.LVL188
	.long	0x1122
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3b
	.string	"run"
	.byte	0x1
	.value	0x157
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xe96
	.uleb128 0x31
	.string	"cnt"
	.byte	0x1
	.value	0x157
	.long	0x69
	.long	.LLST80
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x15a
	.long	0x69
	.long	.LLST81
	.uleb128 0x36
	.long	0x3a9
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.value	0x159
	.long	0xe59
	.uleb128 0x39
	.long	0x3b9
	.uleb128 0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.uleb128 0x28
	.quad	.LVL200
	.long	0x10e9
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL198
	.long	0x3e4
	.long	0xe71
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL199
	.long	0x1122
	.long	0xe88
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.quad	.LVL202
	.long	0xbc2
	.byte	0
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.value	0x160
	.long	0x69
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xf34
	.uleb128 0x33
	.long	.LASF109
	.byte	0x1
	.value	0x160
	.long	0x69
	.long	.LLST82
	.uleb128 0x33
	.long	.LASF110
	.byte	0x1
	.value	0x160
	.long	0xf34
	.long	.LLST83
	.uleb128 0x34
	.string	"cnt"
	.byte	0x1
	.value	0x161
	.long	0x69
	.long	.LLST84
	.uleb128 0x36
	.long	0x3c6
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.value	0x163
	.long	0xf26
	.uleb128 0x37
	.long	0x3d7
	.long	.LLST85
	.uleb128 0x28
	.quad	.LVL208
	.long	0x1137
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL209
	.long	0xdca
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0x3c
	.long	.LASF111
	.byte	0x7
	.byte	0xa9
	.long	0x268
	.uleb128 0x3c
	.long	.LASF112
	.byte	0x7
	.byte	0xaa
	.long	0x268
	.uleb128 0xc
	.long	0x590
	.long	0xf60
	.uleb128 0xd
	.long	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x3d
	.long	.LASF113
	.byte	0x1
	.byte	0x14
	.long	0xf50
	.uleb128 0x9
	.byte	0x3
	.quad	array_data
	.uleb128 0xc
	.long	0x2bd
	.long	0xf85
	.uleb128 0xd
	.long	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x3d
	.long	.LASF114
	.byte	0x1
	.byte	0x15
	.long	0xf75
	.uleb128 0x9
	.byte	0x3
	.quad	list_data
	.uleb128 0x3d
	.long	.LASF115
	.byte	0x1
	.byte	0x18
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	global_cnt
	.uleb128 0xc
	.long	0x2d
	.long	0xfbf
	.uleb128 0xd
	.long	0x8d
	.byte	0x4
	.byte	0
	.uleb128 0x3d
	.long	.LASF116
	.byte	0x1
	.byte	0x1a
	.long	0xfaf
	.uleb128 0x9
	.byte	0x3
	.quad	answer
	.uleb128 0xc
	.long	0x9c
	.long	0xfe4
	.uleb128 0xd
	.long	0x8d
	.byte	0x1d
	.byte	0
	.uleb128 0x3d
	.long	.LASF117
	.byte	0x1
	.byte	0x32
	.long	0xfd4
	.uleb128 0x9
	.byte	0x3
	.quad	list_prod_descr
	.uleb128 0x3d
	.long	.LASF118
	.byte	0x1
	.byte	0x42
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	array_u1p1S_prod_descr
	.uleb128 0x3d
	.long	.LASF119
	.byte	0x1
	.byte	0x52
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	array_u5p5S_prod_descr
	.uleb128 0x3d
	.long	.LASF120
	.byte	0x1
	.byte	0x6b
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	array_u5p1S_prod_descr
	.uleb128 0x3d
	.long	.LASF121
	.byte	0x1
	.byte	0x7d
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	array_u5p1A_prod_descr
	.uleb128 0xc
	.long	0x9c
	.long	0x105d
	.uleb128 0xd
	.long	0x8d
	.byte	0x21
	.byte	0
	.uleb128 0x3d
	.long	.LASF122
	.byte	0x1
	.byte	0x99
	.long	0x104d
	.uleb128 0x9
	.byte	0x3
	.quad	sse_u1p1_prod_descr
	.uleb128 0x3d
	.long	.LASF123
	.byte	0x1
	.byte	0xc4
	.long	0x104d
	.uleb128 0x9
	.byte	0x3
	.quad	sse_u5p5_prod_descr
	.uleb128 0x3d
	.long	.LASF124
	.byte	0x1
	.byte	0xf6
	.long	0x104d
	.uleb128 0x9
	.byte	0x3
	.quad	sse_u8p8_prod_descr
	.uleb128 0xc
	.long	0x39d
	.long	0x10ac
	.uleb128 0xd
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x3e
	.long	.LASF125
	.byte	0x1
	.value	0x14a
	.long	0x109c
	.uleb128 0x9
	.byte	0x3
	.quad	tests
	.uleb128 0x3f
	.long	.LASF136
	.byte	0x3
	.value	0x147
	.long	0x70
	.uleb128 0x40
	.long	.LASF127
	.byte	0x3
	.value	0x1d9
	.long	0x94
	.long	0x10e9
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x34
	.byte	0
	.uleb128 0x41
	.long	.LASF128
	.byte	0x2
	.byte	0x58
	.long	0x69
	.long	0x1104
	.uleb128 0x17
	.long	0x69
	.uleb128 0x17
	.long	0x294
	.uleb128 0x1c
	.byte	0
	.uleb128 0x42
	.long	.LASF137
	.byte	0x8
	.byte	0x4
	.long	0x1111
	.uleb128 0x1c
	.byte	0
	.uleb128 0x43
	.long	.LASF129
	.byte	0x8
	.byte	0x7
	.long	0x2d
	.long	0x1122
	.uleb128 0x1c
	.byte	0
	.uleb128 0x44
	.string	"mhz"
	.byte	0x8
	.byte	0xa
	.long	0x2d
	.long	0x1137
	.uleb128 0x17
	.long	0x69
	.byte	0
	.uleb128 0x45
	.long	.LASF130
	.byte	0x3
	.byte	0xb8
	.long	0x70
	.uleb128 0x17
	.long	0x294
	.uleb128 0x17
	.long	0xf34
	.uleb128 0x17
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LFE34-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL4-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 0
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	list_data
	.byte	0x22
	.byte	0x6
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.quad	list_data
	.byte	0x22
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL16-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL14-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL17-.Ltext0
	.quad	.LFE35-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL18-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL19-.Ltext0
	.quad	.LFE36-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL25-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL27-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL30-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL38-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL30-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL30-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL30-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL30-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL43-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL48-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL50-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL51-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL54-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL55-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL58-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL62-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL65-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL66-.Ltext0
	.quad	.LFE44-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL68-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL71-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL76-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL90-.Ltext0
	.quad	.LFE45-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL68-.Ltext0
	.quad	.LVL74-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL74-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL79-.Ltext0
	.quad	.LVL83-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL85-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL87-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL88-.Ltext0
	.quad	.LFE45-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL70-.Ltext0
	.quad	.LVL80-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL80-.Ltext0
	.quad	.LVL85-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL68-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL72-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x75
	.sleb128 -8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL73-.Ltext0
	.quad	.LVL75-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL77-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL86-.Ltext0
	.quad	.LVL87-.Ltext0
	.value	0xa
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x75
	.sleb128 -8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL87-.Ltext0
	.quad	.LVL89-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL68-.Ltext0
	.quad	.LVL79-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL79-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL85-.Ltext0
	.quad	.LFE45-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL70-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL90-.Ltext0
	.quad	.LVL91-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL91-.Ltext0
	.quad	.LVL92-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL92-.Ltext0
	.quad	.LFE45-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL79-.Ltext0
	.quad	.LVL81-.Ltext0
	.value	0x2
	.byte	0x71
	.sleb128 0
	.quad	.LVL81-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x2
	.byte	0x71
	.sleb128 -16
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL94-.Ltext0
	.quad	.LFE46-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL96-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL100-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL105-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL121-.Ltext0
	.quad	.LFE47-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL96-.Ltext0
	.quad	.LVL103-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL103-.Ltext0
	.quad	.LVL118-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL118-.Ltext0
	.quad	.LVL119-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL119-.Ltext0
	.quad	.LFE47-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL99-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL107-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL121-.Ltext0
	.quad	.LVL123-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL99-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL108-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL122-.Ltext0
	.quad	.LFE47-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL99-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL108-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL122-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL99-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL108-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL122-.Ltext0
	.quad	.LFE47-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL99-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL105-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL107-.Ltext0
	.quad	.LVL108-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL108-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL122-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL96-.Ltext0
	.quad	.LVL100-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL100-.Ltext0
	.quad	.LVL104-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL104-.Ltext0
	.quad	.LVL105-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL116-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL122-.Ltext0
	.quad	.LVL128-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL96-.Ltext0
	.quad	.LVL97-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL97-.Ltext0
	.quad	.LVL98-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL98-.Ltext0
	.quad	.LVL126-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL126-.Ltext0
	.quad	.LVL127-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL127-.Ltext0
	.quad	.LVL128-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL128-.Ltext0
	.quad	.LFE47-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL108-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 0
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 -80
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL109-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 16
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -64
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL110-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 32
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -48
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL111-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 48
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL112-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 64
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL129-.Ltext0
	.quad	.LVL130-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL130-.Ltext0
	.quad	.LFE48-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL132-.Ltext0
	.quad	.LVL136-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL136-.Ltext0
	.quad	.LVL140-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL140-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL141-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL162-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL132-.Ltext0
	.quad	.LVL139-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL139-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL144-.Ltext0
	.quad	.LVL156-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL157-.Ltext0
	.quad	.LVL159-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL159-.Ltext0
	.quad	.LVL160-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL160-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL164-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x1
	.byte	0x63
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LVL165-.Ltext0
	.value	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LVL166-.Ltext0
	.value	0x1
	.byte	0x66
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LVL168-.Ltext0
	.value	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x68
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LVL167-.Ltext0
	.value	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL135-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL141-.Ltext0
	.quad	.LVL142-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL143-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL144-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x69
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.quad	.LVL162-.Ltext0
	.quad	.LVL163-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL163-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x1
	.byte	0x69
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL132-.Ltext0
	.quad	.LVL136-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL136-.Ltext0
	.quad	.LVL140-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL140-.Ltext0
	.quad	.LVL141-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL142-.Ltext0
	.quad	.LVL143-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL157-.Ltext0
	.quad	.LVL161-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL161-.Ltext0
	.quad	.LVL162-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3ff00000
	.quad	.LVL163-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL132-.Ltext0
	.quad	.LVL144-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL144-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL157-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL132-.Ltext0
	.quad	.LVL133-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL133-.Ltext0
	.quad	.LVL134-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL134-.Ltext0
	.quad	.LVL169-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL169-.Ltext0
	.quad	.LVL170-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL170-.Ltext0
	.quad	.LVL171-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL171-.Ltext0
	.quad	.LFE49-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL144-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -128
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL145-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 16
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -112
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL146-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 32
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -96
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL147-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 48
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -80
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL148-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 64
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 -64
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL149-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 80
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 -48
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL150-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 96
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 -32
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL151-.Ltext0
	.quad	.LVL153-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 112
	.quad	.LVL153-.Ltext0
	.quad	.LVL155-.Ltext0
	.value	0x2
	.byte	0x70
	.sleb128 -16
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL172-.Ltext0
	.quad	.LVL173-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL173-.Ltext0
	.quad	.LFE50-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL175-.Ltext0
	.quad	.LVL177-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL177-.Ltext0
	.quad	.LVL194-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL194-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL175-.Ltext0
	.quad	.LVL177-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL177-.Ltext0
	.quad	.LVL195-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL195-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL175-.Ltext0
	.quad	.LVL177-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL177-.Ltext0
	.quad	.LVL196-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL196-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL176-.Ltext0
	.quad	.LVL177-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL177-.Ltext0
	.quad	.LVL193-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL187-.Ltext0
	.quad	.LVL188-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL188-1-.Ltext0
	.quad	.LFE51-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL188-.Ltext0
	.quad	.LVL190-.Ltext0
	.value	0x17
	.byte	0x91
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x408f4000
	.byte	0x1b
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL190-.Ltext0
	.quad	.LVL192-1-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL188-.Ltext0
	.quad	.LVL189-.Ltext0
	.value	0x10
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x408f4000
	.byte	0x1b
	.byte	0x9f
	.quad	.LVL189-.Ltext0
	.quad	.LVL190-.Ltext0
	.value	0x1
	.byte	0x62
	.quad	.LVL190-.Ltext0
	.quad	.LVL191-.Ltext0
	.value	0x10
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0xf4
	.uleb128 0x2d
	.byte	0x8
	.long	0
	.long	0x408f4000
	.byte	0x1b
	.byte	0x9f
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL179-.Ltext0
	.quad	.LVL181-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL181-1-.Ltext0
	.quad	.LVL187-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL180-.Ltext0
	.quad	.LVL182-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL181-.Ltext0
	.quad	.LVL182-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL197-.Ltext0
	.quad	.LVL198-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL198-1-.Ltext0
	.quad	.LVL201-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL201-.Ltext0
	.quad	.LFE52-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL200-.Ltext0
	.quad	.LVL201-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL203-.Ltext0
	.quad	.LVL206-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL206-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST83:
	.quad	.LVL203-.Ltext0
	.quad	.LVL207-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL207-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL204-.Ltext0
	.quad	.LVL208-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4e20
	.byte	0x9f
	.quad	.LVL208-.Ltext0
	.quad	.LVL209-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL205-.Ltext0
	.quad	.LVL207-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.quad	.LVL207-.Ltext0
	.quad	.LVL208-1-.Ltext0
	.value	0x1
	.byte	0x55
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
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
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
.LASF105:
	.string	"init"
.LASF136:
	.string	"random"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF125:
	.string	"tests"
.LASF50:
	.string	"next"
.LASF60:
	.string	"list_nodes"
.LASF47:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF117:
	.string	"list_prod_descr"
.LASF113:
	.string	"array_data"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF7:
	.string	"long int"
.LASF74:
	.string	"array_u5p1S_prod"
.LASF130:
	.string	"strtol"
.LASF13:
	.string	"_flags"
.LASF69:
	.string	"val1"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF79:
	.string	"accum"
.LASF0:
	.string	"double"
.LASF128:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF65:
	.string	"array"
.LASF63:
	.string	"wrap_list_prod"
.LASF126:
	.string	"atoi"
.LASF62:
	.string	"list_prod"
.LASF91:
	.string	"chunk0"
.LASF92:
	.string	"chunk1"
.LASF93:
	.string	"chunk2"
.LASF94:
	.string	"chunk3"
.LASF43:
	.string	"_IO_marker"
.LASF101:
	.string	"chunk5"
.LASF97:
	.string	"sse_u8p8_prod"
.LASF103:
	.string	"chunk7"
.LASF4:
	.string	"unsigned int"
.LASF118:
	.string	"array_u1p1S_prod_descr"
.LASF100:
	.string	"accum7"
.LASF1:
	.string	"long unsigned int"
.LASF121:
	.string	"array_u5p1A_prod_descr"
.LASF104:
	.string	"wrap_sse_u8p8_prod"
.LASF18:
	.string	"_IO_write_ptr"
.LASF55:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF81:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF131:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF22:
	.string	"_IO_save_base"
.LASF111:
	.string	"stdin"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF112:
	.string	"stdout"
.LASF116:
	.string	"answer"
.LASF123:
	.string	"sse_u5p5_prod_descr"
.LASF106:
	.string	"tester"
.LASF76:
	.string	"array_u5p1A_prod"
.LASF75:
	.string	"wrap_array_u5p1S_prod"
.LASF67:
	.string	"array_u5p5S_prod"
.LASF11:
	.string	"sizetype"
.LASF115:
	.string	"global_cnt"
.LASF19:
	.string	"_IO_write_end"
.LASF133:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF96:
	.string	"wrap_sse_u5p5_prod"
.LASF68:
	.string	"val0"
.LASF134:
	.string	"_IO_lock_t"
.LASF70:
	.string	"val2"
.LASF42:
	.string	"_IO_FILE"
.LASF72:
	.string	"val4"
.LASF120:
	.string	"array_u5p1S_prod_descr"
.LASF59:
	.string	"__nptr"
.LASF132:
	.string	"dmult.c"
.LASF86:
	.string	"accum0"
.LASF46:
	.string	"_pos"
.LASF88:
	.string	"accum2"
.LASF89:
	.string	"accum3"
.LASF90:
	.string	"accum4"
.LASF98:
	.string	"accum5"
.LASF99:
	.string	"accum6"
.LASF25:
	.string	"_markers"
.LASF119:
	.string	"array_u5p5S_prod_descr"
.LASF52:
	.string	"vec_t"
.LASF54:
	.string	"dfun"
.LASF85:
	.string	"xfer"
.LASF56:
	.string	"descr"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"short int"
.LASF78:
	.string	"sse_u1p1_prod"
.LASF51:
	.string	"list_ele"
.LASF31:
	.string	"_vtable_offset"
.LASF122:
	.string	"sse_u1p1_prod_descr"
.LASF83:
	.string	"wrap_sse_u1p1_prod"
.LASF61:
	.string	"head"
.LASF57:
	.string	"b_ele"
.LASF82:
	.string	"chunk"
.LASF12:
	.string	"char"
.LASF53:
	.string	"pack_t"
.LASF49:
	.string	"list_ptr"
.LASF77:
	.string	"wrap_array_u5p1A_prod"
.LASF124:
	.string	"sse_u8p8_prod_descr"
.LASF44:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF114:
	.string	"list_data"
.LASF95:
	.string	"chunk4"
.LASF129:
	.string	"get_counter"
.LASF58:
	.string	"__fmt"
.LASF102:
	.string	"chunk6"
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
.LASF84:
	.string	"sse_u5p5_prod"
.LASF73:
	.string	"wrap_array_u5p5S_prod"
.LASF41:
	.string	"_unused2"
.LASF110:
	.string	"argv"
.LASF71:
	.string	"val3"
.LASF127:
	.string	"calloc"
.LASF66:
	.string	"wrap_array_u1p1S_prod"
.LASF64:
	.string	"array_u1p1S_prod"
.LASF23:
	.string	"_IO_backup_base"
.LASF107:
	.string	"nsecs"
.LASF109:
	.string	"argc"
.LASF87:
	.string	"accum1"
.LASF137:
	.string	"start_counter"
.LASF108:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF80:
	.string	"result"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
