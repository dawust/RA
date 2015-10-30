	.file	"jacobi.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	jacobi_vanilla
	.type	jacobi_vanilla, @function
jacobi_vanilla:
.LFB0:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leal	-1(%rcx), %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	cmpl	$1, %r12d
	jle	.L1
	leal	(%rdx,%rdx), %ebp
	movslq	%edx, %rax
	movss	.LC0(%rip), %xmm1
	movl	$2, %r10d
	leaq	0(,%rax,4), %r11
	movq	%rax, %r13
	movslq	%ebp, %rbp
	negq	%r13
	subq	%rax, %rbp
	addq	%r11, %rsi
	leal	-3(%rdx), %r9d
	salq	$2, %r13
	leaq	(%rdi,%r11), %rcx
	salq	$2, %rbp
	addq	$1, %r9
	.p2align 4,,10
	.p2align 3
.L3:
	leaq	(%rcx,%r13), %r8
	movl	%r10d, %ebx
	xorl	%eax, %eax
	leaq	(%rcx,%rbp), %rdi
	cmpl	$2, %edx
	jle	.L6
	.p2align 4,,10
	.p2align 3
.L4:
	movss	4(%r8,%rax,4), %xmm0
	addss	4(%rdi,%rax,4), %xmm0
	addss	(%rcx,%rax,4), %xmm0
	addss	8(%rcx,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%r9, %rax
	jne	.L4
.L6:
	addl	$1, %r10d
	addq	%r11, %rcx
	addq	%r11, %rsi
	cmpl	%ebx, %r12d
	jg	.L3
.L1:
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	jacobi_vanilla, .-jacobi_vanilla
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1048576000
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
