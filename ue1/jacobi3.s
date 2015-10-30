	.file	"jacobi.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	jacobi_vanilla
	.type	jacobi_vanilla, @function
jacobi_vanilla:
.LFB0:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %eax
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 72
	movl	%edx, -32(%rsp)
	leal	-1(%rcx), %edx
	movq	%rsi, -80(%rsp)
	movl	%edx, -44(%rsp)
	cmpl	$1, %edx
	jle	.L1
	movslq	%eax, %rbx
	movl	%eax, %ebp
	movq	%rdi, %r12
	movaps	.LC1(%rip), %xmm5
	leal	-1(%rax), %ecx
	addl	%eax, %eax
	movq	%rbx, -40(%rsp)
	movq	%r12, %r15
	movl	%ecx, -84(%rsp)
	leal	-2(%rbp), %edi
	cltq
	movl	%ebp, %ecx
	movq	%rax, -24(%rsp)
	leaq	(%r12,%rax,4), %r13
	subl	$3, %ecx
	movss	.LC0(%rip), %xmm3
	leal	2(%rbp,%rbp), %eax
	addq	$1, %rcx
	movq	%rbx, -56(%rsp)
	cltq
	movl	$0, -104(%rsp)
	movaps	%xmm3, %xmm4
	movaps	%xmm3, %xmm2
	leaq	0(,%rbx,4), %r8
	movl	%edi, -100(%rsp)
	xorl	%ebx, %ebx
	leaq	(%r12,%rax,4), %r11
	movq	%rcx, -16(%rsp)
	movq	%r8, %rbp
	leaq	(%r12,%r8), %r10
	movq	%r11, -8(%rsp)
	leaq	(%rsi,%r8), %r14
	movl	$2, -92(%rsp)
	movq	$0, -64(%rsp)
	.p2align 4,,10
	.p2align 3
.L3:
	cmpl	$1, -84(%rsp)
	jle	.L86
	movl	-32(%rsp), %r9d
	leaq	20(%r14), %rdi
	movl	-104(%rsp), %edx
	leaq	4(%r14), %r11
	movl	-92(%rsp), %eax
	leaq	0(%rbp,%rbx), %rcx
	movq	%rcx, -112(%rsp)
	leaq	20(%r12,%rbx), %rcx
	leaq	4(%r15), %r8
	addl	%r9d, %edx
	addl	%edx, %r9d
	cmpq	%rdi, %r10
	movl	%eax, -88(%rsp)
	movl	%r9d, -96(%rsp)
	leaq	24(%r10), %r9
	setnb	%sil
	cmpq	%r9, %r11
	setnb	%al
	orl	%eax, %esi
	cmpq	%rcx, %r11
	setnb	%r9b
	cmpq	%r8, %rdi
	setbe	%al
	orl	%r9d, %eax
	andl	%eax, %esi
	cmpl	$6, -100(%rsp)
	seta	%cl
	testb	%cl, %sil
	je	.L16
	leaq	20(%r13), %rsi
	leaq	4(%r13), %r9
	cmpq	%rsi, %r11
	setnb	%r11b
	cmpq	%r9, %rdi
	setbe	%dil
	orb	%dil, %r11b
	je	.L16
	movl	-100(%rsp), %eax
	andl	$15, %r8d
	shrq	$2, %r8
	negq	%r8
	andl	$3, %r8d
	cmpl	%r8d, %eax
	cmovbe	%eax, %r8d
	movl	$1, %eax
	testl	%r8d, %r8d
	je	.L6
	movss	4(%r15), %xmm0
	movb	$2, %al
	addss	4(%r13), %xmm0
	addss	(%r10), %xmm0
	addss	8(%r10), %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm0, 4(%r14)
	cmpl	$1, %r8d
	je	.L6
	movq	-8(%rsp), %rcx
	movl	$3, %eax
	movss	8(%r15), %xmm1
	addss	(%rcx,%rbx), %xmm1
	addss	4(%r10), %xmm1
	addss	12(%r10), %xmm1
	mulss	%xmm4, %xmm1
	movss	%xmm1, 8(%r14)
	cmpl	$3, %r8d
	jne	.L6
	movss	12(%r15), %xmm6
	movb	$4, %al
	addss	12(%r13), %xmm6
	addss	8(%r10), %xmm6
	addss	16(%r10), %xmm6
	mulss	%xmm4, %xmm6
	movss	%xmm6, 12(%r14)
.L6:
	movl	-100(%rsp), %ebx
	movl	%r8d, %ecx
	subl	%r8d, %ebx
	movq	-64(%rsp), %r8
	leal	-4(%rbx), %esi
	movl	%ebx, -28(%rsp)
	shrl	$2, %esi
	leal	1(%rsi), %r11d
	andl	$3, %esi
	leal	0(,%r11,4), %r9d
	movl	%r11d, -48(%rsp)
	movq	-24(%rsp), %r11
	movl	%r9d, (%rsp)
	movq	-112(%rsp), %r9
	leaq	1(%rcx,%r8), %rbx
	leaq	(%r12,%rbx,4), %rbx
	leaq	1(%r8,%r11), %r8
	addq	%rcx, %r8
	leaq	(%r12,%r8,4), %rdi
	movq	%rdi, -72(%rsp)
	leaq	(%r9,%rcx,4), %rdi
	movq	-56(%rsp), %r9
	addq	%r12, %rdi
	movups	(%rdi), %xmm8
	leaq	2(%rcx,%r9), %r8
	leaq	(%r12,%r8,4), %r11
	movq	-72(%rsp), %r8
	movups	(%r11), %xmm9
	leaq	1(%rcx,%r9), %rcx
	movq	-80(%rsp), %r9
	movups	(%r8), %xmm7
	movl	$1, %r8d
	addps	(%rbx), %xmm7
	leaq	(%r9,%rcx,4), %r9
	movl	$16, %ecx
	addps	%xmm8, %xmm7
	addps	%xmm9, %xmm7
	mulps	%xmm5, %xmm7
	movups	%xmm7, (%r9)
	cmpl	-48(%rsp), %r8d
	jnb	.L79
	testl	%esi, %esi
	je	.L83
	cmpl	$1, %esi
	je	.L64
	cmpl	$2, %esi
	je	.L65
	movq	-72(%rsp), %rsi
	movl	$2, %r8d
	movl	$32, %ecx
	movups	16(%rdi), %xmm11
	movups	16(%r11), %xmm12
	movups	16(%rsi), %xmm10
	addps	16(%rbx), %xmm10
	addps	%xmm11, %xmm10
	addps	%xmm12, %xmm10
	mulps	%xmm5, %xmm10
	movups	%xmm10, 16(%r9)
.L65:
	movq	-72(%rsp), %rsi
	addl	$1, %r8d
	movups	(%rdi,%rcx), %xmm14
	movups	(%r11,%rcx), %xmm15
	movups	(%rsi,%rcx), %xmm13
	addps	(%rbx,%rcx), %xmm13
	addps	%xmm14, %xmm13
	addps	%xmm15, %xmm13
	mulps	%xmm5, %xmm13
	movups	%xmm13, (%r9,%rcx)
	addq	$16, %rcx
.L64:
	movq	-72(%rsp), %rsi
	addl	$1, %r8d
	movups	(%rdi,%rcx), %xmm1
	movups	(%r11,%rcx), %xmm6
	movups	(%rsi,%rcx), %xmm0
	addps	(%rbx,%rcx), %xmm0
	addps	%xmm1, %xmm0
	addps	%xmm6, %xmm0
	mulps	%xmm5, %xmm0
	movups	%xmm0, (%r9,%rcx)
	addq	$16, %rcx
	cmpl	-48(%rsp), %r8d
	jnb	.L79
.L83:
	movl	%eax, 4(%rsp)
	movq	-72(%rsp), %rax
.L8:
	movups	(%rax,%rcx), %xmm7
	addl	$4, %r8d
	addps	(%rbx,%rcx), %xmm7
	movups	(%rdi,%rcx), %xmm8
	movups	(%r11,%rcx), %xmm9
	addps	%xmm8, %xmm7
	addps	%xmm7, %xmm9
	mulps	%xmm5, %xmm9
	movups	%xmm9, (%r9,%rcx)
	movups	16(%rax,%rcx), %xmm10
	addps	16(%rbx,%rcx), %xmm10
	movups	16(%rdi,%rcx), %xmm11
	movups	16(%r11,%rcx), %xmm12
	addps	%xmm11, %xmm10
	addps	%xmm10, %xmm12
	mulps	%xmm5, %xmm12
	movups	%xmm12, 16(%r9,%rcx)
	movups	32(%rax,%rcx), %xmm13
	addps	32(%rbx,%rcx), %xmm13
	movups	32(%rdi,%rcx), %xmm14
	movups	32(%r11,%rcx), %xmm15
	addps	%xmm14, %xmm13
	addps	%xmm13, %xmm15
	mulps	%xmm5, %xmm15
	movups	%xmm15, 32(%r9,%rcx)
	movups	48(%rax,%rcx), %xmm1
	addps	48(%rbx,%rcx), %xmm1
	movups	48(%rdi,%rcx), %xmm0
	movups	48(%r11,%rcx), %xmm6
	addps	%xmm0, %xmm1
	addps	%xmm1, %xmm6
	mulps	%xmm5, %xmm6
	movups	%xmm6, 48(%r9,%rcx)
	addq	$64, %rcx
	cmpl	-48(%rsp), %r8d
	jb	.L8
	movl	4(%rsp), %eax
	.p2align 4,,10
	.p2align 3
.L79:
	movl	(%rsp), %ebx
	addl	%ebx, %eax
	cmpl	%ebx, -28(%rsp)
	je	.L13
	movl	-104(%rsp), %ebx
	movl	-96(%rsp), %ecx
	leal	(%rax,%rdx), %r11d
	leal	1(%rax), %esi
	movslq	%r11d, %r9
	leal	(%rsi,%rdx), %edi
	leal	(%rbx,%rax), %r8d
	movslq	%edi, %rdi
	movslq	%r8d, %r11
	addl	%eax, %ecx
	movss	(%r12,%r11,4), %xmm7
	leal	-1(%rax,%rdx), %r11d
	movslq	%ecx, %r8
	movslq	%r11d, %rcx
	addss	(%r12,%r8,4), %xmm7
	addss	(%r12,%rcx,4), %xmm7
	addss	(%r12,%rdi,4), %xmm7
	movq	-80(%rsp), %r8
	mulss	%xmm3, %xmm7
	movss	%xmm7, (%r8,%r9,4)
	cmpl	-84(%rsp), %esi
	jge	.L13
	leal	(%rsi,%rbx), %ebx
	addl	-96(%rsp), %esi
	leal	2(%rax), %ecx
	leal	(%rcx,%rdx), %r11d
	movslq	%r11d, %r8
	movslq	%esi, %rsi
	movslq	%ebx, %r11
	movss	(%r12,%r11,4), %xmm8
	addss	(%r12,%rsi,4), %xmm8
	addss	(%r12,%r9,4), %xmm8
	addss	(%r12,%r8,4), %xmm8
	movq	-80(%rsp), %r9
	mulss	%xmm3, %xmm8
	movss	%xmm8, (%r9,%rdi,4)
	cmpl	%ecx, -84(%rsp)
	jle	.L13
	movl	-104(%rsp), %ebx
	leal	3(%rax,%rdx), %eax
	cltq
	addl	%ecx, %ebx
	addl	-96(%rsp), %ecx
	movslq	%ebx, %r11
	movss	(%r12,%r11,4), %xmm9
	movslq	%ecx, %rcx
	addss	(%r12,%rcx,4), %xmm9
	addss	(%r12,%rdi,4), %xmm9
	addss	(%r12,%rax,4), %xmm9
	movq	-80(%rsp), %rdi
	mulss	%xmm3, %xmm9
	movss	%xmm9, (%rdi,%r8,4)
.L13:
	movl	%edx, -104(%rsp)
	addq	%rbp, %r15
	movq	-40(%rsp), %rdx
	addq	%rbp, %r13
	addl	$1, -92(%rsp)
	addq	%rbp, %r10
	addq	%rbp, %r14
	movq	-112(%rsp), %rbx
	addq	%rdx, -64(%rsp)
	addq	%rdx, -56(%rsp)
	movl	-88(%rsp), %r11d
	cmpl	%r11d, -44(%rsp)
	jg	.L3
.L1:
	addq	$16, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	movss	4(%r15), %xmm10
	movl	$1, %ebx
	addss	4(%r13), %xmm10
	addss	(%r10), %xmm10
	addss	8(%r10), %xmm10
	movq	-16(%rsp), %r8
	mulss	%xmm2, %xmm10
	leaq	-1(%r8), %r9
	andl	$7, %r9d
	movss	%xmm10, 4(%r14)
	cmpq	%r8, %rbx
	je	.L13
	testq	%r9, %r9
	je	.L4
	cmpq	$1, %r9
	je	.L58
	cmpq	$2, %r9
	je	.L59
	cmpq	$3, %r9
	je	.L60
	cmpq	$4, %r9
	je	.L61
	cmpq	$5, %r9
	je	.L62
	cmpq	$6, %r9
	je	.L63
	movss	8(%r15), %xmm11
	movl	$2, %ebx
	addss	8(%r13), %xmm11
	addss	4(%r10), %xmm11
	addss	12(%r10), %xmm11
	mulss	%xmm2, %xmm11
	movss	%xmm11, 8(%r14)
.L63:
	movss	4(%r15,%rbx,4), %xmm12
	addss	4(%r13,%rbx,4), %xmm12
	addss	(%r10,%rbx,4), %xmm12
	addss	8(%r10,%rbx,4), %xmm12
	mulss	%xmm2, %xmm12
	movss	%xmm12, 4(%r14,%rbx,4)
	addq	$1, %rbx
.L62:
	movss	4(%r15,%rbx,4), %xmm13
	addss	4(%r13,%rbx,4), %xmm13
	addss	(%r10,%rbx,4), %xmm13
	addss	8(%r10,%rbx,4), %xmm13
	mulss	%xmm2, %xmm13
	movss	%xmm13, 4(%r14,%rbx,4)
	addq	$1, %rbx
.L61:
	movss	4(%r15,%rbx,4), %xmm14
	addss	4(%r13,%rbx,4), %xmm14
	addss	(%r10,%rbx,4), %xmm14
	addss	8(%r10,%rbx,4), %xmm14
	mulss	%xmm2, %xmm14
	movss	%xmm14, 4(%r14,%rbx,4)
	addq	$1, %rbx
.L60:
	movss	4(%r15,%rbx,4), %xmm15
	addss	4(%r13,%rbx,4), %xmm15
	addss	(%r10,%rbx,4), %xmm15
	addss	8(%r10,%rbx,4), %xmm15
	mulss	%xmm2, %xmm15
	movss	%xmm15, 4(%r14,%rbx,4)
	addq	$1, %rbx
.L59:
	movss	4(%r15,%rbx,4), %xmm1
	addss	4(%r13,%rbx,4), %xmm1
	addss	(%r10,%rbx,4), %xmm1
	addss	8(%r10,%rbx,4), %xmm1
	mulss	%xmm2, %xmm1
	movss	%xmm1, 4(%r14,%rbx,4)
	addq	$1, %rbx
.L58:
	movss	4(%r15,%rbx,4), %xmm0
	addss	4(%r13,%rbx,4), %xmm0
	addss	(%r10,%rbx,4), %xmm0
	addss	8(%r10,%rbx,4), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, 4(%r14,%rbx,4)
	addq	$1, %rbx
	cmpq	-16(%rsp), %rbx
	je	.L13
.L4:
	movss	4(%r15,%rbx,4), %xmm6
	addss	4(%r13,%rbx,4), %xmm6
	leaq	1(%rbx), %r11
	addss	(%r10,%rbx,4), %xmm6
	leaq	2(%rbx), %rcx
	addss	8(%r10,%rbx,4), %xmm6
	leaq	3(%rbx), %rax
	leaq	4(%rbx), %rdi
	leaq	5(%rbx), %r8
	mulss	%xmm2, %xmm6
	leaq	6(%rbx), %rsi
	leaq	7(%rbx), %r9
	movss	%xmm6, 4(%r14,%rbx,4)
	movss	4(%r15,%r11,4), %xmm7
	addq	$8, %rbx
	addss	4(%r13,%r11,4), %xmm7
	addss	(%r10,%r11,4), %xmm7
	addss	8(%r10,%r11,4), %xmm7
	mulss	%xmm2, %xmm7
	movss	%xmm7, 4(%r14,%r11,4)
	movss	4(%r15,%rcx,4), %xmm8
	addss	4(%r13,%rcx,4), %xmm8
	addss	(%r10,%rcx,4), %xmm8
	addss	8(%r10,%rcx,4), %xmm8
	mulss	%xmm2, %xmm8
	movss	%xmm8, 4(%r14,%rcx,4)
	movss	4(%r15,%rax,4), %xmm9
	addss	4(%r13,%rax,4), %xmm9
	addss	(%r10,%rax,4), %xmm9
	addss	8(%r10,%rax,4), %xmm9
	mulss	%xmm2, %xmm9
	movss	%xmm9, 4(%r14,%rax,4)
	movss	4(%r15,%rdi,4), %xmm10
	addss	4(%r13,%rdi,4), %xmm10
	addss	(%r10,%rdi,4), %xmm10
	addss	8(%r10,%rdi,4), %xmm10
	mulss	%xmm2, %xmm10
	movss	%xmm10, 4(%r14,%rdi,4)
	movss	4(%r15,%r8,4), %xmm11
	addss	4(%r13,%r8,4), %xmm11
	addss	(%r10,%r8,4), %xmm11
	addss	8(%r10,%r8,4), %xmm11
	mulss	%xmm2, %xmm11
	movss	%xmm11, 4(%r14,%r8,4)
	movss	4(%r15,%rsi,4), %xmm12
	addss	4(%r13,%rsi,4), %xmm12
	addss	(%r10,%rsi,4), %xmm12
	addss	8(%r10,%rsi,4), %xmm12
	mulss	%xmm2, %xmm12
	movss	%xmm12, 4(%r14,%rsi,4)
	movss	4(%r15,%r9,4), %xmm13
	addss	4(%r13,%r9,4), %xmm13
	addss	(%r10,%r9,4), %xmm13
	addss	8(%r10,%r9,4), %xmm13
	mulss	%xmm2, %xmm13
	movss	%xmm13, 4(%r14,%r9,4)
	cmpq	-16(%rsp), %rbx
	jne	.L4
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L86:
	movl	-92(%rsp), %r8d
	leaq	(%rbx,%rbp), %rbx
	movl	-104(%rsp), %esi
	movq	%rbx, -112(%rsp)
	movl	-32(%rsp), %edx
	movl	%r8d, -88(%rsp)
	addl	%esi, %edx
	jmp	.L13
	.cfi_endproc
.LFE0:
	.size	jacobi_vanilla, .-jacobi_vanilla
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1048576000
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
