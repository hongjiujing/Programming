	.file	"test_cpe.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Usage: %s [-q] [-u] [-a][-r] [-l CNT] [-n REPS] [-s SAMPLES] [-b BIAS] [-k SEED]\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"\t-q\tQuiet mode"
.LC2:
	.string	"\t-u\tUse unrolled code"
.LC3:
	.string	"\t-a\tUse alternate code"
.LC4:
	.string	"\t-r\tUse random sampling"
.LC5:
	.string	"\t-l len\tSet vector length"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"\t-n reps\tSet number of repetitions"
	.align 8
.LC7:
	.string	"\t-s samples\tSet number of samples"
	.align 8
.LC8:
	.string	"\t-b bias\tSet bias (between 0 & 1.0) determining sample value"
	.section	.rodata.str1.1
.LC9:
	.string	"\t-k seed\tSet seed for rng"
	.text
	.type	usage, @function
usage:
.LFB42:
	.file 1 "test_cpe.c"
	.loc 1 99 0
	.cfi_startproc
.LVL0:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx
.LVL1:
.LBB44:
.LBB45:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 0
	movl	$.LC0, %esi
	movl	$1, %edi
.LVL2:
	movl	$0, %eax
	call	__printf_chk
.LVL3:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	movl	$.LC1, %edi
	call	puts
.LVL4:
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	movl	$.LC2, %edi
	call	puts
.LVL5:
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	movl	$.LC3, %edi
	call	puts
.LVL6:
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	movl	$.LC4, %edi
	call	puts
.LVL7:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	movl	$.LC5, %edi
	call	puts
.LVL8:
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	movl	$.LC6, %edi
	call	puts
.LVL9:
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	movl	$.LC7, %edi
	call	puts
.LVL10:
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	movl	$.LC8, %edi
	call	puts
.LVL11:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	movl	$.LC9, %edi
	call	puts
.LVL12:
.LBE63:
.LBE62:
	.loc 1 110 0
	movl	$0, %edi
	call	exit
.LVL13:
	.cfi_endproc
.LFE42:
	.size	usage, .-usage
	.globl	psum1
	.type	psum1, @function
psum1:
.LFB35:
	.loc 1 22 0
	.cfi_startproc
.LVL14:
	.loc 1 24 0
	vmovss	(%rdi), %xmm0
	vmovss	%xmm0, (%rsi)
.LVL15:
	.loc 1 25 0
	cmpq	$1, %rdx
	jle	.L3
	movl	$1, %eax
.LVL16:
.L5:
	.loc 1 26 0 discriminator 2
	vmovss	-4(%rsi,%rax,4), %xmm0
	vaddss	(%rdi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rsi,%rax,4)
	.loc 1 25 0 discriminator 2
	addq	$1, %rax
.LVL17:
	cmpq	%rdx, %rax
	jne	.L5
.LVL18:
.L3:
	rep; ret
	.cfi_endproc
.LFE35:
	.size	psum1, .-psum1
	.globl	tpsum1
	.type	tpsum1, @function
tpsum1:
.LFB38:
	.loc 1 60 0
	.cfi_startproc
.LVL19:
	movq	%rdi, %rdx
	.loc 1 61 0
	movq	p(%rip), %rsi
	movq	a(%rip), %rdi
.LVL20:
	call	psum1
.LVL21:
	rep; ret
	.cfi_endproc
.LFE38:
	.size	tpsum1, .-tpsum1
	.globl	psum2
	.type	psum2, @function
psum2:
.LFB36:
	.loc 1 30 0
	.cfi_startproc
.LVL22:
	.loc 1 32 0
	vmovss	(%rdi), %xmm0
	vmovss	%xmm0, (%rsi)
.LVL23:
	.loc 1 33 0
	leaq	-1(%rdx), %rcx
	cmpq	$1, %rcx
	jle	.L12
	movl	$1, %eax
.LVL24:
.L10:
.LBB64:
	.loc 1 34 0 discriminator 2
	vmovss	-4(%rsi,%rax,4), %xmm0
	vaddss	(%rdi,%rax,4), %xmm0, %xmm0
.LVL25:
	.loc 1 35 0 discriminator 2
	vmovss	%xmm0, (%rsi,%rax,4)
	.loc 1 36 0 discriminator 2
	vaddss	4(%rdi,%rax,4), %xmm0, %xmm0
.LVL26:
	vmovss	%xmm0, 4(%rsi,%rax,4)
.LBE64:
	.loc 1 33 0 discriminator 2
	addq	$2, %rax
.LVL27:
	cmpq	%rcx, %rax
	jl	.L10
	leaq	-3(%rdx), %rax
.LVL28:
	andq	$-2, %rax
	addq	$3, %rax
	jmp	.L8
.LVL29:
.L12:
	.loc 1 33 0 is_stmt 0
	movl	$1, %eax
.LVL30:
.L8:
	.loc 1 39 0 is_stmt 1
	cmpq	%rax, %rdx
	jle	.L7
	.loc 1 40 0
	vmovss	-4(%rsi,%rax,4), %xmm0
	vaddss	(%rdi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rsi,%rax,4)
.L7:
	rep; ret
	.cfi_endproc
.LFE36:
	.size	psum2, .-psum2
	.globl	tpsum2
	.type	tpsum2, @function
tpsum2:
.LFB39:
	.loc 1 65 0
	.cfi_startproc
.LVL31:
	movq	%rdi, %rdx
	.loc 1 66 0
	movq	p(%rip), %rsi
	movq	a(%rip), %rdi
.LVL32:
	call	psum2
.LVL33:
	rep; ret
	.cfi_endproc
.LFE39:
	.size	tpsum2, .-tpsum2
	.globl	psum1a
	.type	psum1a, @function
psum1a:
.LFB37:
	.loc 1 46 0
	.cfi_startproc
.LVL34:
	.loc 1 50 0
	vmovss	(%rdi), %xmm0
	vmovss	%xmm0, (%rsi)
.LVL35:
	.loc 1 51 0
	cmpq	$1, %rdx
	jle	.L14
	movl	$1, %eax
.LVL36:
.L16:
	.loc 1 52 0 discriminator 2
	vaddss	(%rdi,%rax,4), %xmm0, %xmm0
.LVL37:
	.loc 1 53 0 discriminator 2
	vmovss	%xmm0, (%rsi,%rax,4)
.LVL38:
	.loc 1 51 0 discriminator 2
	addq	$1, %rax
.LVL39:
	cmpq	%rdx, %rax
	jne	.L16
.LVL40:
.L14:
	rep; ret
	.cfi_endproc
.LFE37:
	.size	psum1a, .-psum1a
	.globl	tpsum1a
	.type	tpsum1a, @function
tpsum1a:
.LFB40:
	.loc 1 70 0
	.cfi_startproc
.LVL41:
	movq	%rdi, %rdx
	.loc 1 71 0
	movq	p(%rip), %rsi
	movq	a(%rip), %rdi
.LVL42:
	call	psum1a
.LVL43:
	rep; ret
	.cfi_endproc
.LFE40:
	.size	tpsum1a, .-tpsum1a
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Ref: i = %ld, b[i-1] = %.0f, a[i] = %.0f, b[i] = %.0f.  Got b[i-1] = %.0f, b[i] = %.0f\n"
	.section	.rodata.str1.1
.LC11:
	.string	"Too many errors.  Exiting"
	.text
	.globl	check
	.type	check, @function
check:
.LFB41:
	.loc 1 75 0
	.cfi_startproc
.LVL44:
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
	movq	%rdi, %r14
	movq	%rsi, %rbp
.LVL45:
	.loc 1 78 0
	testq	%rsi, %rsi
	jle	.L19
	movl	$0, %ebx
	.loc 1 79 0
	movabsq	$2361183241434822607, %r13
.LVL46:
.L21:
	.loc 1 79 0 is_stmt 0 discriminator 2
	movq	a(%rip), %rax
	leaq	(%rax,%rbx,4), %r12
	call	random
.LVL47:
	movq	%rax, %rcx
	imulq	%r13
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	imulq	$1000, %rdx, %rdx
	subq	%rdx, %rcx
	vcvtsi2ssq	%rcx, %xmm0, %xmm0
	vmovss	%xmm0, (%r12)
	.loc 1 78 0 is_stmt 1 discriminator 2
	addq	$1, %rbx
.LVL48:
	cmpq	%rbp, %rbx
	jne	.L21
	jmp	.L20
.LVL49:
.L26:
	.loc 1 86 0
	movq	b(%rip), %rax
	leaq	0(,%rbx,4), %rcx
	vmovss	(%rax,%rbx,4), %xmm4
	movq	c(%rip), %rdx
	vmovss	(%rdx,%rbx,4), %xmm2
	vucomiss	%xmm2, %xmm4
	jp	.L27
	je	.L22
.L27:
.LVL50:
	.loc 1 87 0
	vmovss	-4(%rdx,%rcx), %xmm0
	vcvtps2pd	%xmm0, %xmm0
.LBB65:
.LBB66:
	.loc 2 105 0
	vunpcklps	%xmm4, %xmm4, %xmm4
	vcvtps2pd	%xmm4, %xmm4
	vmovss	-4(%rax,%rcx), %xmm3
	vcvtps2pd	%xmm3, %xmm3
	vunpcklps	%xmm2, %xmm2, %xmm2
	vcvtps2pd	%xmm2, %xmm2
	movq	a(%rip), %rax
	vmovss	(%rax,%rcx), %xmm1
	vcvtps2pd	%xmm1, %xmm1
	movq	%rbx, %rdx
	movl	$.LC10, %esi
	movl	$1, %edi
	movl	$5, %eax
	call	__printf_chk
.LVL51:
.LBE66:
.LBE65:
	.loc 1 89 0
	addq	$1, %r12
.LVL52:
	.loc 1 90 0
	cmpq	$10, %r12
	jle	.L22
.LVL53:
.LBB67:
.LBB68:
	.loc 2 105 0
	movl	$.LC11, %edi
	call	puts
.LVL54:
.LBE68:
.LBE67:
	.loc 1 92 0
	movl	$1, %edi
	call	exit
.LVL55:
.L22:
	.loc 1 85 0
	addq	$1, %rbx
.LVL56:
	cmpq	%rbp, %rbx
	jne	.L26
	jmp	.L18
.LVL57:
.L19:
	.loc 1 81 0
	movq	b(%rip), %rax
	movq	%rax, p(%rip)
	.loc 1 82 0
	movq	%rsi, %rdi
.LVL58:
	call	tpsum1
.LVL59:
	.loc 1 83 0
	movq	c(%rip), %rax
	movq	%rax, p(%rip)
	.loc 1 84 0
	movq	%rbp, %rdi
	call	*%r14
.LVL60:
	jmp	.L18
.LVL61:
.L20:
	.loc 1 81 0
	movq	b(%rip), %rax
	movq	%rax, p(%rip)
	.loc 1 82 0
	movq	%rbp, %rdi
	call	tpsum1
.LVL62:
	.loc 1 83 0
	movq	c(%rip), %rax
	movq	%rax, p(%rip)
	.loc 1 84 0
	movq	%rbp, %rdi
	call	*%r14
.LVL63:
	.loc 1 77 0
	movl	$0, %r12d
	.loc 1 85 0
	movl	$0, %ebx
	jmp	.L26
.LVL64:
.L18:
	.loc 1 96 0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
.LVL65:
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL66:
	ret
	.cfi_endproc
.LFE41:
	.size	check, .-check
	.section	.rodata.str1.1
.LC14:
	.string	"Cycles = %.2f, CPE = %.2f\n"
.LC15:
	.string	"Full cpe = %.2f\n"
.LC16:
	.string	"Default cpe = %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB43:
	.loc 1 114 0
	.cfi_startproc
.LVL67:
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
	movl	%edi, %r15d
.LVL68:
	.loc 1 124 0
	cmpl	$1, %edi
	jle	.L56
	movq	%rsi, %r14
	.loc 1 123 0
	movl	$0, %r13d
	.loc 1 122 0
	movl	$2, 28(%rsp)
	.loc 1 121 0
	movl	$31415, %r12d
	.loc 1 120 0
	movl	$1, 24(%rsp)
	.loc 1 119 0
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovsd	%xmm2, (%rsp)
	.loc 1 118 0
	movl	$8, 8(%rsp)
	.loc 1 124 0
	movl	$1, %ebx
	.loc 1 116 0
	movl	$1024, 20(%rsp)
	.loc 1 115 0
	movl	$tpsum1, %ebp
.LVL69:
.L49:
	.loc 1 125 0
	movslq	%ebx, %rax
	leaq	0(,%rax,8), %rdx
	movq	(%r14,%rax,8), %rax
	cmpb	$45, (%rax)
	jne	.L31
	.loc 1 126 0
	movzbl	1(%rax), %eax
	subl	$97, %eax
	cmpb	$20, %al
	ja	.L32
	movzbl	%al, %eax
	jmp	*.L33(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L33:
	.quad	.L57
	.quad	.L34
	.quad	.L32
	.quad	.L32
	.quad	.L32
	.quad	.L32
	.quad	.L32
	.quad	.L32
	.quad	.L32
	.quad	.L32
	.quad	.L35
	.quad	.L36
	.quad	.L32
	.quad	.L37
	.quad	.L32
	.quad	.L32
	.quad	.L38
	.quad	.L39
	.quad	.L40
	.quad	.L32
	.quad	.L41
	.text
.L41:
	.loc 1 128 0
	movl	$tpsum2, %ebp
.LVL70:
	jmp	.L31
.LVL71:
.L39:
	.loc 1 134 0
	movl	$1, %r13d
	.loc 1 135 0
	jmp	.L31
.LVL72:
.L38:
	.loc 1 137 0
	movl	$0, 28(%rsp)
	.loc 1 138 0
	jmp	.L31
.LVL73:
.L36:
	.loc 1 140 0
	addl	$1, %ebx
.LVL74:
	.loc 1 141 0
	cmpl	%ebx, %r15d
	jg	.L42
	.loc 1 142 0
	movq	(%r14), %rdi
	call	usage
.LVL75:
.L42:
.LBB89:
.LBB90:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 286 0
	movq	8(%r14,%rdx), %rdi
	movl	$10, %edx
.LVL76:
	movl	$0, %esi
	call	strtol
.LVL77:
	movl	%eax, 20(%rsp)
.LVL78:
.LBE90:
.LBE89:
	.loc 1 144 0
	subl	$1, %eax
	cmpl	$262143, %eax
	jbe	.L31
	.loc 1 145 0
	movq	(%r14), %rdi
	call	usage
.LVL79:
.L37:
	.loc 1 148 0
	addl	$1, %ebx
.LVL80:
	.loc 1 149 0
	cmpl	%ebx, %r15d
	jg	.L43
	.loc 1 150 0
	movq	(%r14), %rdi
	call	usage
.LVL81:
.L43:
.LBB91:
.LBB92:
	.loc 3 286 0
	movq	8(%r14,%rdx), %rdi
	movl	$10, %edx
.LVL82:
	movl	$0, %esi
	call	strtol
.LVL83:
	movl	%eax, 24(%rsp)
.LVL84:
.LBE92:
.LBE91:
	.loc 1 152 0
	testl	%eax, %eax
	jns	.L31
	.loc 1 153 0
	movq	(%r14), %rdi
	call	usage
.LVL85:
.L35:
	.loc 1 156 0
	addl	$1, %ebx
.LVL86:
	.loc 1 157 0
	cmpl	%ebx, %r15d
	jg	.L44
	.loc 1 158 0
	movq	(%r14), %rdi
	call	usage
.LVL87:
.L44:
.LBB93:
.LBB94:
	.loc 3 286 0
	movq	8(%r14,%rdx), %rdi
	movl	$10, %edx
.LVL88:
	movl	$0, %esi
	call	strtol
.LVL89:
	movl	%eax, %r12d
.LVL90:
.LBE94:
.LBE93:
	.loc 1 160 0
	jmp	.L31
.LVL91:
.L34:
	.loc 1 162 0
	addl	$1, %ebx
.LVL92:
	.loc 1 163 0
	cmpl	%ebx, %r15d
	jg	.L45
	.loc 1 164 0
	movq	(%r14), %rdi
	call	usage
.LVL93:
.L45:
.LBB95:
.LBB96:
	.loc 3 281 0
	movq	8(%r14,%rdx), %rdi
	movl	$0, %esi
	call	strtod
.LVL94:
	vmovsd	%xmm0, (%rsp)
.LVL95:
.LBE96:
.LBE95:
	.loc 1 166 0
	vxorpd	%xmm3, %xmm3, %xmm3
	vucomisd	%xmm0, %xmm3
	ja	.L46
	.loc 1 166 0 is_stmt 0 discriminator 1
	vucomisd	.LC13(%rip), %xmm0
	jbe	.L31
.L46:
	.loc 1 167 0 is_stmt 1
	movq	(%r14), %rdi
	call	usage
.LVL96:
.L40:
	.loc 1 170 0
	addl	$1, %ebx
.LVL97:
	.loc 1 171 0
	cmpl	%ebx, %r15d
	jg	.L48
	.loc 1 172 0
	movq	(%r14), %rdi
	call	usage
.LVL98:
.L48:
.LBB97:
.LBB98:
	.loc 3 286 0
	movq	8(%r14,%rdx), %rdi
	movl	$10, %edx
.LVL99:
	movl	$0, %esi
	call	strtol
.LVL100:
	movl	%eax, 8(%rsp)
.LVL101:
.LBE98:
.LBE97:
	.loc 1 174 0
	testl	%eax, %eax
	jg	.L31
	.loc 1 175 0
	movq	(%r14), %rdi
	call	usage
.LVL102:
.L32:
	.loc 1 178 0
	movq	(%r14), %rdi
	call	usage
.LVL103:
.L57:
	.loc 1 131 0
	movl	$tpsum1a, %ebp
.LVL104:
.L31:
	.loc 1 124 0
	addl	$1, %ebx
.LVL105:
	cmpl	%ebx, %r15d
	jg	.L49
	jmp	.L30
.LVL106:
.L56:
	.loc 1 123 0
	movl	$0, %r13d
	.loc 1 122 0
	movl	$2, 28(%rsp)
	.loc 1 121 0
	movl	$31415, %r12d
	.loc 1 120 0
	movl	$1, 24(%rsp)
	.loc 1 119 0
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	%xmm5, (%rsp)
	.loc 1 118 0
	movl	$8, 8(%rsp)
	.loc 1 116 0
	movl	$1024, 20(%rsp)
	.loc 1 115 0
	movl	$tpsum1, %ebp
.LVL107:
.L30:
	.loc 1 182 0
	movslq	20(%rsp), %r14
.LVL108:
.LBB99:
.LBB100:
	.loc 1 13 0
	movq	$data, a(%rip)
	.loc 1 14 0
	leaq	0(,%r14,4), %rdx
	leaq	data(%rdx), %rax
	movq	%rax, b(%rip)
	.loc 1 15 0
	addq	%rax, %rdx
	movq	%rdx, c(%rip)
	.loc 1 16 0
	movq	%rax, p(%rip)
.LBE100:
.LBE99:
	.loc 1 183 0
	cmpq	$tpsum1, %rbp
	je	.L50
	.loc 1 184 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	check
.LVL109:
.L50:
	.loc 1 185 0
	cmpl	$1, 8(%rsp)
	je	.L51
.LVL110:
	movl	24(%rsp), %eax
	movl	%eax, %ebx
.LBB101:
	.loc 1 191 0 discriminator 1
	testl	%eax, %eax
	jne	.L55
	jmp	.L53
.LVL111:
.L51:
.LBE101:
.LBB106:
	.loc 1 186 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	measure_function
.LVL112:
	.loc 1 187 0
	vcvtsi2sd	20(%rsp), %xmm1, %xmm1
.LBB107:
.LBB108:
	.loc 2 105 0
	vdivsd	%xmm1, %xmm0, %xmm1
	movl	$.LC14, %esi
	movl	$1, %edi
	movl	$2, %eax
	call	__printf_chk
.LVL113:
	jmp	.L54
.LVL114:
.L55:
.LBE108:
.LBE107:
.LBE106:
.LBB109:
	.loc 1 193 0
	movslq	28(%rsp), %r15
.LVL115:
	movslq	8(%rsp), %rax
.LVL116:
	movq	%rax, 8(%rsp)
.LVL117:
.L58:
	.loc 1 192 0
	movl	%r12d, %edi
	call	srandom
.LVL118:
	.loc 1 193 0
	movq	%r15, %r9
	vmovsd	(%rsp), %xmm0
	movl	%r13d, %r8d
	movq	stdout(%rip), %rcx
	movq	8(%rsp), %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	find_cpe_full
.LVL119:
.LBB102:
.LBB103:
	.loc 2 105 0
	movl	$.LC15, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL120:
.LBE103:
.LBE102:
	.loc 1 191 0
	subl	$1, %ebx
.LVL121:
	jne	.L58
.LVL122:
.L53:
	.loc 1 196 0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	find_cpe
.LVL123:
.LBB104:
.LBB105:
	.loc 2 105 0
	movl	$.LC16, %esi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk
.LVL124:
.L54:
.LBE105:
.LBE104:
.LBE109:
	.loc 1 200 0
	movl	$0, %eax
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
.LVL125:
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	main, .-main
	.local	p
	.comm	p,8,8
	.local	c
	.comm	c,8,8
	.local	b
	.comm	b,8,8
	.local	a
	.comm	a,8,8
	.local	data
	.comm	data,3145728,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC13:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "../include/cpe.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf45
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF94
	.byte	0x1
	.long	.LASF95
	.long	.LASF96
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
	.uleb128 0x3
	.long	.LASF13
	.byte	0x6
	.byte	0x31
	.long	0xae
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x7
	.value	0x111
	.long	0x235
	.uleb128 0x8
	.long	.LASF14
	.byte	0x7
	.value	0x112
	.long	0x69
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x7
	.value	0x117
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.value	0x118
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x7
	.value	0x119
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x7
	.value	0x11a
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF19
	.byte	0x7
	.value	0x11b
	.long	0x96
	.byte	0x28
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.value	0x11c
	.long	0x96
	.byte	0x30
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.value	0x11d
	.long	0x96
	.byte	0x38
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.value	0x11e
	.long	0x96
	.byte	0x40
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.value	0x120
	.long	0x96
	.byte	0x48
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.value	0x121
	.long	0x96
	.byte	0x50
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.value	0x122
	.long	0x96
	.byte	0x58
	.uleb128 0x8
	.long	.LASF26
	.byte	0x7
	.value	0x124
	.long	0x26d
	.byte	0x60
	.uleb128 0x8
	.long	.LASF27
	.byte	0x7
	.value	0x126
	.long	0x273
	.byte	0x68
	.uleb128 0x8
	.long	.LASF28
	.byte	0x7
	.value	0x128
	.long	0x69
	.byte	0x70
	.uleb128 0x8
	.long	.LASF29
	.byte	0x7
	.value	0x12c
	.long	0x69
	.byte	0x74
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.value	0x12e
	.long	0x77
	.byte	0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.value	0x132
	.long	0x4d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.value	0x133
	.long	0x5b
	.byte	0x82
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.value	0x134
	.long	0x279
	.byte	0x83
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.value	0x138
	.long	0x289
	.byte	0x88
	.uleb128 0x8
	.long	.LASF35
	.byte	0x7
	.value	0x141
	.long	0x82
	.byte	0x90
	.uleb128 0x8
	.long	.LASF36
	.byte	0x7
	.value	0x14a
	.long	0x94
	.byte	0x98
	.uleb128 0x8
	.long	.LASF37
	.byte	0x7
	.value	0x14b
	.long	0x94
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF38
	.byte	0x7
	.value	0x14c
	.long	0x94
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF39
	.byte	0x7
	.value	0x14d
	.long	0x94
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x7
	.value	0x14e
	.long	0x34
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x7
	.value	0x150
	.long	0x69
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x7
	.value	0x152
	.long	0x28f
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF97
	.byte	0x7
	.byte	0xb6
	.uleb128 0xa
	.long	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xbc
	.long	0x26d
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.byte	0xbd
	.long	0x26d
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0xbe
	.long	0x273
	.byte	0x8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0xc2
	.long	0x69
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0x6
	.byte	0x8
	.long	0xae
	.uleb128 0xc
	.long	0x9c
	.long	0x289
	.uleb128 0xd
	.long	0x8d
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x235
	.uleb128 0xc
	.long	0x9c
	.long	0x29f
	.uleb128 0xd
	.long	0x8d
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a5
	.uleb128 0xe
	.long	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x3
	.long	.LASF50
	.byte	0x8
	.byte	0x4
	.long	0x2c3
	.uleb128 0x6
	.byte	0x8
	.long	0x2c9
	.uleb128 0xf
	.long	0x2d4
	.uleb128 0x10
	.long	0x70
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x8
	.byte	0xb
	.long	0x2e9
	.uleb128 0x12
	.long	.LASF51
	.sleb128 0
	.uleb128 0x12
	.long	.LASF52
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x8
	.byte	0xc
	.long	0x2d4
	.uleb128 0x13
	.long	.LASF85
	.byte	0x2
	.byte	0x67
	.long	0x69
	.byte	0x3
	.long	0x311
	.uleb128 0x14
	.long	.LASF54
	.byte	0x2
	.byte	0x67
	.long	0x29f
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x3
	.value	0x11c
	.long	0x69
	.byte	0x3
	.long	0x32f
	.uleb128 0x17
	.long	.LASF55
	.byte	0x3
	.value	0x11c
	.long	0x29f
	.byte	0
	.uleb128 0x16
	.long	.LASF57
	.byte	0x3
	.value	0x117
	.long	0x2d
	.byte	0x3
	.long	0x34d
	.uleb128 0x17
	.long	.LASF55
	.byte	0x3
	.value	0x117
	.long	0x29f
	.byte	0
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.byte	0x62
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fc
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x62
	.long	0x96
	.long	.LLST0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x1
	.byte	0x64
	.long	0x3cc
	.uleb128 0x1b
	.long	0x304
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x1c
	.quad	.LVL3
	.long	0xe42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x1
	.byte	0x65
	.long	0x408
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL4
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x1
	.byte	0x66
	.long	0x444
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL5
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x67
	.long	0x480
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL6
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x1
	.byte	0x68
	.long	0x4bc
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL7
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.byte	0x1
	.byte	0x69
	.long	0x4f8
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL8
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.byte	0x6a
	.long	0x534
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL9
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.byte	0x1
	.byte	0x6b
	.long	0x570
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL10
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.byte	0x1
	.byte	0x6c
	.long	0x5ac
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL11
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0x1
	.byte	0x6d
	.long	0x5e8
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL12
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL13
	.long	0xe76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF60
	.byte	0x1
	.byte	0x15
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x648
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x15
	.long	0x648
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x15
	.long	0x648
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x15
	.long	0x70
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x17
	.long	0x70
	.long	.LLST1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x64e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF59
	.uleb128 0x1f
	.long	.LASF61
	.byte	0x1
	.byte	0x3b
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x697
	.uleb128 0x22
	.string	"cnt"
	.byte	0x1
	.byte	0x3b
	.long	0x70
	.long	.LLST2
	.uleb128 0x1c
	.quad	.LVL21
	.long	0x5fc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF62
	.byte	0x1
	.byte	0x1d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x704
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x1d
	.long	0x648
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x1d
	.long	0x648
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x1d
	.long	0x70
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.long	0x70
	.long	.LLST3
	.uleb128 0x23
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x24
	.long	.LASF63
	.byte	0x1
	.byte	0x22
	.long	0x64e
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF64
	.byte	0x1
	.byte	0x40
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x746
	.uleb128 0x22
	.string	"cnt"
	.byte	0x1
	.byte	0x40
	.long	0x70
	.long	.LLST5
	.uleb128 0x1c
	.quad	.LVL33
	.long	0x697
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF65
	.byte	0x1
	.byte	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b0
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x2d
	.long	0x648
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0x2d
	.long	0x648
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x2d
	.long	0x70
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.long	0x70
	.long	.LLST6
	.uleb128 0x24
	.long	.LASF66
	.byte	0x1
	.byte	0x31
	.long	0x64e
	.long	.LLST7
	.uleb128 0x21
	.string	"val"
	.byte	0x1
	.byte	0x31
	.long	0x64e
	.long	.LLST8
	.byte	0
	.uleb128 0x1f
	.long	.LASF67
	.byte	0x1
	.byte	0x45
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f2
	.uleb128 0x22
	.string	"cnt"
	.byte	0x1
	.byte	0x45
	.long	0x70
	.long	.LLST9
	.uleb128 0x1c
	.quad	.LVL43
	.long	0x746
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF68
	.byte	0x1
	.byte	0x4b
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x949
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.byte	0x4b
	.long	0x2b8
	.long	.LLST10
	.uleb128 0x22
	.string	"cnt"
	.byte	0x1
	.byte	0x4b
	.long	0x70
	.long	.LLST11
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.long	0x70
	.long	.LLST12
	.uleb128 0x24
	.long	.LASF70
	.byte	0x1
	.byte	0x4d
	.long	0x70
	.long	.LLST13
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.byte	0x1
	.byte	0x57
	.long	0x894
	.uleb128 0x25
	.long	0x304
	.long	.LLST14
	.uleb128 0x1c
	.quad	.LVL51
	.long	0xe42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.byte	0x1
	.byte	0x5b
	.long	0x8d0
	.uleb128 0x1e
	.long	0x304
	.uleb128 0x1c
	.quad	.LVL54
	.long	0xe5d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL47
	.long	0xe88
	.uleb128 0x27
	.quad	.LVL55
	.long	0xe76
	.long	0x8f4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.quad	.LVL59
	.long	0x655
	.long	0x90c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.quad	.LVL60
	.long	0x920
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL62
	.long	0x655
	.long	0x938
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL63
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF99
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	0x961
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.byte	0xb
	.long	0x70
	.byte	0
	.uleb128 0x2c
	.long	.LASF100
	.byte	0x1
	.byte	0x71
	.long	0x69
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb2
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0x71
	.long	0x69
	.long	.LLST16
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0x71
	.long	0xdb2
	.long	.LLST17
	.uleb128 0x21
	.string	"f"
	.byte	0x1
	.byte	0x73
	.long	0x2b8
	.long	.LLST18
	.uleb128 0x21
	.string	"cnt"
	.byte	0x1
	.byte	0x74
	.long	0x69
	.long	.LLST19
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x75
	.long	0x69
	.long	.LLST20
	.uleb128 0x24
	.long	.LASF73
	.byte	0x1
	.byte	0x76
	.long	0x69
	.long	.LLST21
	.uleb128 0x24
	.long	.LASF74
	.byte	0x1
	.byte	0x77
	.long	0x2d
	.long	.LLST22
	.uleb128 0x24
	.long	.LASF75
	.byte	0x1
	.byte	0x78
	.long	0x69
	.long	.LLST23
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.byte	0x79
	.long	0x69
	.long	.LLST24
	.uleb128 0x24
	.long	.LASF77
	.byte	0x1
	.byte	0x7a
	.long	0x69
	.long	.LLST25
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.byte	0x7b
	.long	0x2e9
	.long	.LLST26
	.uleb128 0x1a
	.long	0x311
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.byte	0x1
	.byte	0x8f
	.long	0xa60
	.uleb128 0x25
	.long	0x322
	.long	.LLST27
	.uleb128 0x1c
	.quad	.LVL77
	.long	0xe94
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x311
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0x1
	.byte	0x97
	.long	0xa9d
	.uleb128 0x25
	.long	0x322
	.long	.LLST28
	.uleb128 0x1c
	.quad	.LVL83
	.long	0xe94
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x311
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.byte	0x1
	.byte	0x9f
	.long	0xada
	.uleb128 0x25
	.long	0x322
	.long	.LLST29
	.uleb128 0x1c
	.quad	.LVL89
	.long	0xe94
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x32f
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.byte	0x1
	.byte	0xa5
	.long	0xb12
	.uleb128 0x25
	.long	0x340
	.long	.LLST30
	.uleb128 0x1c
	.quad	.LVL94
	.long	0xeb3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x311
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.byte	0x1
	.byte	0xad
	.long	0xb4f
	.uleb128 0x25
	.long	0x322
	.long	.LLST31
	.uleb128 0x1c
	.quad	.LVL100
	.long	0xe94
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x949
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.byte	0x1
	.byte	0xb6
	.long	0xb74
	.uleb128 0x25
	.long	0x955
	.long	.LLST32
	.byte	0
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0
	.long	0xc93
	.uleb128 0x24
	.long	.LASF79
	.byte	0x1
	.byte	0xbe
	.long	0x2d
	.long	.LLST33
	.uleb128 0x24
	.long	.LASF80
	.byte	0x1
	.byte	0xbe
	.long	0x2d
	.long	.LLST34
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.byte	0x1
	.byte	0xc2
	.long	0xbe0
	.uleb128 0x25
	.long	0x304
	.long	.LLST35
	.uleb128 0x1c
	.quad	.LVL120
	.long	0xe42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC15
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.byte	0x1
	.byte	0xc5
	.long	0xc25
	.uleb128 0x25
	.long	0x304
	.long	.LLST36
	.uleb128 0x1c
	.quad	.LVL124
	.long	0xe42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL118
	.long	0xecd
	.long	0xc3d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.quad	.LVL119
	.long	0xedf
	.long	0xc78
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0x77
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL123
	.long	0xf18
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.long	0xd15
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.byte	0xba
	.long	0x2d
	.long	.LLST37
	.uleb128 0x1a
	.long	0x2f4
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.byte	0x1
	.byte	0xbb
	.long	0xcfa
	.uleb128 0x25
	.long	0x304
	.long	.LLST38
	.uleb128 0x1c
	.quad	.LVL113
	.long	0xe42
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL112
	.long	0xf32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL75
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL79
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL81
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL85
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL87
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL93
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL96
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL98
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL102
	.long	0x34d
	.uleb128 0x26
	.quad	.LVL103
	.long	0x34d
	.uleb128 0x1c
	.quad	.LVL109
	.long	0x7f2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0xc
	.long	0x64e
	.long	0xdcb
	.uleb128 0x2f
	.long	0x8d
	.long	0xbffff
	.byte	0
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.byte	0x8
	.long	0xdb8
	.uleb128 0x9
	.byte	0x3
	.quad	data
	.uleb128 0x31
	.string	"a"
	.byte	0x1
	.byte	0x9
	.long	0x648
	.uleb128 0x9
	.byte	0x3
	.quad	a
	.uleb128 0x31
	.string	"b"
	.byte	0x1
	.byte	0x9
	.long	0x648
	.uleb128 0x9
	.byte	0x3
	.quad	b
	.uleb128 0x31
	.string	"c"
	.byte	0x1
	.byte	0x9
	.long	0x648
	.uleb128 0x9
	.byte	0x3
	.quad	c
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.byte	0x9
	.long	0x648
	.uleb128 0x9
	.byte	0x3
	.quad	p
	.uleb128 0x32
	.long	.LASF82
	.byte	0x6
	.byte	0xa9
	.long	0x273
	.uleb128 0x32
	.long	.LASF83
	.byte	0x6
	.byte	0xaa
	.long	0x273
	.uleb128 0x33
	.long	.LASF84
	.byte	0x2
	.byte	0x58
	.long	0x69
	.long	0xe5d
	.uleb128 0x10
	.long	0x69
	.uleb128 0x10
	.long	0x29f
	.uleb128 0x15
	.byte	0
	.uleb128 0x34
	.long	.LASF86
	.byte	0x9
	.byte	0
	.long	.LASF101
	.long	0x69
	.long	0xe76
	.uleb128 0x10
	.long	0x29f
	.byte	0
	.uleb128 0x35
	.long	.LASF89
	.byte	0x3
	.value	0x220
	.long	0xe88
	.uleb128 0x10
	.long	0x69
	.byte	0
	.uleb128 0x36
	.long	.LASF102
	.byte	0x3
	.value	0x147
	.long	0x70
	.uleb128 0x33
	.long	.LASF87
	.byte	0x3
	.byte	0xb8
	.long	0x70
	.long	0xeb3
	.uleb128 0x10
	.long	0x29f
	.uleb128 0x10
	.long	0xdb2
	.uleb128 0x10
	.long	0x69
	.byte	0
	.uleb128 0x33
	.long	.LASF88
	.byte	0x3
	.byte	0xa5
	.long	0x2d
	.long	0xecd
	.uleb128 0x10
	.long	0x29f
	.uleb128 0x10
	.long	0xdb2
	.byte	0
	.uleb128 0x35
	.long	.LASF90
	.byte	0x3
	.value	0x14a
	.long	0xedf
	.uleb128 0x10
	.long	0x54
	.byte	0
	.uleb128 0x33
	.long	.LASF91
	.byte	0x8
	.byte	0x18
	.long	0x2d
	.long	0xf12
	.uleb128 0x10
	.long	0x2b8
	.uleb128 0x10
	.long	0x70
	.uleb128 0x10
	.long	0x70
	.uleb128 0x10
	.long	0xf12
	.uleb128 0x10
	.long	0x2e9
	.uleb128 0x10
	.long	0x2d
	.uleb128 0x10
	.long	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0x33
	.long	.LASF92
	.byte	0x8
	.byte	0x11
	.long	0x2d
	.long	0xf32
	.uleb128 0x10
	.long	0x2b8
	.uleb128 0x10
	.long	0x70
	.byte	0
	.uleb128 0x37
	.long	.LASF93
	.byte	0x8
	.byte	0x1f
	.long	0x2d
	.uleb128 0x10
	.long	0x2b8
	.uleb128 0x10
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x18
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.quad	.LVL3-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL3-1-.Ltext0
	.quad	.LFE42-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL21-1-.Ltext0
	.quad	.LFE38-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x7
	.byte	0x70
	.sleb128 -2
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL31-.Ltext0
	.quad	.LVL32-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL33-1-.Ltext0
	.quad	.LFE39-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	.LVL38-.Ltext0
	.quad	.LFE37-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL37-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL43-1-.Ltext0
	.quad	.LFE40-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL46-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL58-.Ltext0
	.quad	.LVL66-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL66-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL44-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL46-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL59-1-.Ltext0
	.quad	.LVL65-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL65-.Ltext0
	.quad	.LFE41-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL57-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL63-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL45-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL49-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL57-.Ltext0
	.quad	.LVL64-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL50-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL67-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL69-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL107-.Ltext0
	.quad	.LVL115-.Ltext0
	.value	0x1
	.byte	0x5f
	.quad	.LVL115-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL67-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL69-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL107-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	tpsum1
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL70-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL71-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x56
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	tpsum1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL78-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	.LVL79-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL101-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL102-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	.LVL69-.Ltext0
	.quad	.LVL95-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL96-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 0
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL84-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL85-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL110-.Ltext0
	.quad	.LVL111-.Ltext0
	.value	0x8
	.byte	0x91
	.sleb128 -72
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL114-.Ltext0
	.quad	.LVL116-.Ltext0
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL116-.Ltext0
	.quad	.LVL120-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL120-.Ltext0
	.quad	.LVL121-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL121-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x7ab7
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL90-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL91-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x5c
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x7ab7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL72-.Ltext0
	.quad	.LVL73-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL73-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL69-.Ltext0
	.quad	.LVL71-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL71-.Ltext0
	.quad	.LVL72-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL72-.Ltext0
	.quad	.LVL106-.Ltext0
	.value	0x1
	.byte	0x5d
	.quad	.LVL106-.Ltext0
	.quad	.LVL107-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL75-.Ltext0
	.quad	.LVL76-.Ltext0
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL76-.Ltext0
	.quad	.LVL77-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL81-.Ltext0
	.quad	.LVL82-.Ltext0
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL82-.Ltext0
	.quad	.LVL83-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL87-.Ltext0
	.quad	.LVL88-.Ltext0
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL88-.Ltext0
	.quad	.LVL89-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL93-.Ltext0
	.quad	.LVL94-1-.Ltext0
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL98-.Ltext0
	.quad	.LVL99-.Ltext0
	.value	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.quad	.LVL99-.Ltext0
	.quad	.LVL100-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL108-.Ltext0
	.quad	.LVL125-.Ltext0
	.value	0x1
	.byte	0x5e
	.quad	.LVL125-.Ltext0
	.quad	.LFE43-.Ltext0
	.value	0xc
	.byte	0x91
	.sleb128 -76
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL119-.Ltext0
	.quad	.LVL120-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL123-.Ltext0
	.quad	.LVL124-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL119-.Ltext0
	.quad	.LVL122-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL123-.Ltext0
	.quad	.LVL124-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL112-.Ltext0
	.quad	.LVL113-1-.Ltext0
	.value	0x1
	.byte	0x61
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL112-.Ltext0
	.quad	.LVL114-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC14
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
	.quad	.LBB101-.Ltext0
	.quad	.LBE101-.Ltext0
	.quad	.LBB109-.Ltext0
	.quad	.LBE109-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"printf"
.LASF9:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF27:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF66:
	.string	"last_val"
.LASF21:
	.string	"_IO_buf_base"
.LASF49:
	.string	"long long unsigned int"
.LASF92:
	.string	"find_cpe"
.LASF61:
	.string	"tpsum1"
.LASF48:
	.string	"long long int"
.LASF5:
	.string	"signed char"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF88:
	.string	"strtod"
.LASF7:
	.string	"long int"
.LASF68:
	.string	"check"
.LASF67:
	.string	"tpsum1a"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF0:
	.string	"double"
.LASF84:
	.string	"__printf_chk"
.LASF52:
	.string	"RAN_SAMPLE"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF80:
	.string	"cpe_def"
.LASF50:
	.string	"elem_fun_t"
.LASF44:
	.string	"_IO_marker"
.LASF82:
	.string	"stdin"
.LASF74:
	.string	"bias"
.LASF4:
	.string	"unsigned int"
.LASF73:
	.string	"samples"
.LASF76:
	.string	"seed"
.LASF1:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF58:
	.string	"name"
.LASF46:
	.string	"_sbuf"
.LASF81:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF94:
	.string	"GNU C 4.8.1 -mavx2 -mfma -m64 -mtune=generic -march=x86-64 -g -O1 -fstack-protector"
.LASF78:
	.string	"smethod"
.LASF51:
	.string	"UNI_SAMPLE"
.LASF23:
	.string	"_IO_save_base"
.LASF87:
	.string	"strtol"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF86:
	.string	"__builtin_puts"
.LASF83:
	.string	"stdout"
.LASF102:
	.string	"random"
.LASF60:
	.string	"psum1"
.LASF62:
	.string	"psum2"
.LASF98:
	.string	"usage"
.LASF101:
	.string	"puts"
.LASF53:
	.string	"sample_t"
.LASF90:
	.string	"srandom"
.LASF11:
	.string	"sizetype"
.LASF64:
	.string	"tpsum2"
.LASF20:
	.string	"_IO_write_end"
.LASF96:
	.string	"/usr0/home/bryant/afs/ics3/code/opt"
.LASF97:
	.string	"_IO_lock_t"
.LASF99:
	.string	"setup"
.LASF43:
	.string	"_IO_FILE"
.LASF55:
	.string	"__nptr"
.LASF59:
	.string	"float"
.LASF47:
	.string	"_pos"
.LASF26:
	.string	"_markers"
.LASF91:
	.string	"find_cpe_full"
.LASF57:
	.string	"atof"
.LASF56:
	.string	"atoi"
.LASF2:
	.string	"unsigned char"
.LASF69:
	.string	"tpsumX"
.LASF65:
	.string	"psum1a"
.LASF6:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF13:
	.string	"FILE"
.LASF89:
	.string	"exit"
.LASF12:
	.string	"char"
.LASF95:
	.string	"test_cpe.c"
.LASF63:
	.string	"mid_val"
.LASF45:
	.string	"_next"
.LASF10:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF93:
	.string	"measure_function"
.LASF54:
	.string	"__fmt"
.LASF77:
	.string	"verbose"
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
.LASF42:
	.string	"_unused2"
.LASF72:
	.string	"argv"
.LASF24:
	.string	"_IO_backup_base"
.LASF75:
	.string	"reps"
.LASF71:
	.string	"argc"
.LASF79:
	.string	"cpe_full"
.LASF100:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF70:
	.string	"errcnt"
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
