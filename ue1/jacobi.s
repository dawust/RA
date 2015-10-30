	.file	"jacobi.c"
	.text
	.globl	jacobi_vanilla
	.type	jacobi_vanilla, @function
jacobi_vanilla:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L5:
	movl	$1, -8(%rbp)
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	imull	-36(%rbp), %eax
	movl	%eax, %esi
	movl	-8(%rbp), %eax
	addl	%esi, %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	movd	%edx, %xmm0
	movd	%eax, %xmm2
	addss	%xmm2, %xmm0
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	-8(%rbp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movd	%eax, %xmm3
	addss	%xmm3, %xmm0
	movl	-4(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	-8(%rbp), %edx
	addl	$1, %edx
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movd	%eax, %xmm4
	addss	%xmm4, %xmm0
	movl	.LC0(%rip), %eax
	movd	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, (%rcx)
	addl	$1, -8(%rbp)
.L3:
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cmpl	-8(%rbp), %eax
	jg	.L4
	addl	$1, -4(%rbp)
.L2:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	.L5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	jacobi_vanilla, .-jacobi_vanilla
	.section	.rodata
	.align 4
.LC0:
	.long	1048576000
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
