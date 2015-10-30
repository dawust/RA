	.file	"main.c"
	.intel_syntax noprefix
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	initgrid
	.type	initgrid, @function
initgrid:
.LFB38:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	mov	r13d, esi
	push	r12
	.cfi_offset 12, -48
	mov	r12d, edx
	push	r10
	push	rbx
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	mov	rbx, rdi
	sub	rsp, 32
	test	edx, edx
	jle	.L45
	movsx	rax, esi
	mov	r14, rdi
	xor	r15d, r15d
	mov	QWORD PTR [rbp-72], rax
	sal	rax, 2
	mov	QWORD PTR [rbp-56], rax
	lea	eax, [rsi-1]
	lea	rax, [4+rax*4]
	mov	QWORD PTR [rbp-64], rax
	.p2align 4,,10
	.p2align 3
.L4:
	test	r13d, r13d
	jle	.L6
	mov	rdx, QWORD PTR [rbp-64]
	xor	esi, esi
	mov	rdi, r14
	call	memset
.L6:
	add	r15d, 1
	add	r14, QWORD PTR [rbp-56]
	cmp	r12d, r15d
	jne	.L4
	test	r13d, r13d
	jle	.L46
.L19:
	test	r13d, r13d
	mov	edx, 1
	mov	rax, rbx
	cmovg	edx, r13d
	and	eax, 31
	shr	rax, 2
	neg	rax
	and	eax, 7
	cmp	eax, edx
	cmova	eax, edx
	cmp	edx, 10
	jg	.L47
	mov	eax, edx
.L7:
	mov	DWORD PTR [rbx], 0x3f800000
	cmp	eax, 1
	je	.L22
	mov	DWORD PTR [rbx+4], 0x3f800000
	cmp	eax, 2
	je	.L23
	mov	DWORD PTR [rbx+8], 0x3f800000
	cmp	eax, 3
	je	.L24
	mov	DWORD PTR [rbx+12], 0x3f800000
	cmp	eax, 4
	je	.L25
	mov	DWORD PTR [rbx+16], 0x3f800000
	cmp	eax, 5
	je	.L26
	mov	DWORD PTR [rbx+20], 0x3f800000
	cmp	eax, 6
	je	.L27
	mov	DWORD PTR [rbx+24], 0x3f800000
	cmp	eax, 7
	je	.L28
	mov	DWORD PTR [rbx+28], 0x3f800000
	cmp	eax, 8
	je	.L29
	mov	DWORD PTR [rbx+32], 0x3f800000
	cmp	eax, 10
	jne	.L30
	mov	DWORD PTR [rbx+36], 0x3f800000
	mov	ecx, 10
.L9:
	cmp	edx, eax
	je	.L10
.L8:
	sub	edx, eax
	mov	r11d, 0
	mov	r10d, eax
	lea	esi, [rdx-8]
	lea	edi, [r13-1]
	shr	esi, 3
	add	esi, 1
	test	r13d, r13d
	cmovle	edi, r11d
	lea	r8d, [0+rsi*8]
	sub	edi, eax
	cmp	edi, 6
	jbe	.L11
	vmovaps	ymm0, YMMWORD PTR .LC1[rip]
	lea	rdi, [rbx+r10*4]
	xor	eax, eax
.L12:
	add	eax, 1
	vmovaps	YMMWORD PTR [rdi], ymm0
	add	rdi, 32
	cmp	eax, esi
	jb	.L12
	add	ecx, r8d
	cmp	edx, r8d
	je	.L38
	vzeroupper
.L11:
	movsx	rax, ecx
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
	lea	eax, [rcx+1]
	cmp	r13d, eax
	jle	.L10
	cdqe
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
	lea	eax, [rcx+2]
	cmp	r13d, eax
	jle	.L10
	cdqe
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
	lea	eax, [rcx+3]
	cmp	r13d, eax
	jle	.L10
	cdqe
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
	lea	eax, [rcx+4]
	cmp	r13d, eax
	jle	.L10
	cdqe
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
	lea	eax, [rcx+5]
	cmp	r13d, eax
	jle	.L10
	cdqe
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
	lea	eax, [rcx+6]
	cmp	r13d, eax
	jle	.L10
	cdqe
	mov	DWORD PTR [rbx+rax*4], 0x3f800000
.L10:
	test	r12d, r12d
	jle	.L39
	movsx	rax, r13d
	mov	QWORD PTR [rbp-72], rax
	mov	r13, rax
.L16:
	sal	r13, 2
	mov	rdi, rbx
	xor	eax, eax
	.p2align 4,,10
	.p2align 3
.L17:
	add	eax, 1
	mov	DWORD PTR [rdi], 0x3f800000
	add	rdi, r13
	cmp	r12d, eax
	jg	.L17
.L39:
	add	rsp, 32
	pop	rbx
	pop	r10
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
	test	eax, eax
	jne	.L7
	xor	ecx, ecx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L38:
	vzeroupper
	jmp	.L10
.L45:
	test	esi, esi
	jle	.L39
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L23:
	mov	ecx, 2
	jmp	.L9
.L24:
	mov	ecx, 3
	jmp	.L9
.L22:
	mov	ecx, 1
	jmp	.L9
.L29:
	mov	ecx, 8
	jmp	.L9
.L30:
	mov	ecx, 9
	jmp	.L9
.L25:
	mov	ecx, 4
	jmp	.L9
.L26:
	mov	ecx, 5
	jmp	.L9
.L27:
	mov	ecx, 6
	jmp	.L9
.L28:
	mov	ecx, 7
	jmp	.L9
.L46:
	mov	r13, QWORD PTR [rbp-72]
	jmp	.L16
	.cfi_endproc
.LFE38:
	.size	initgrid, .-initgrid
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	double2rgb
	.type	double2rgb, @function
double2rgb:
.LFB39:
	.cfi_startproc
	vucomisd	xmm0, QWORD PTR .LC3[rip]
	ja	.L63
	vmovsd	xmm1, QWORD PTR .LC6[rip]
	vucomisd	xmm0, xmm1
	ja	.L64
	vucomisd	xmm0, QWORD PTR .LC8[rip]
	ja	.L65
	vmulsd	xmm0, xmm0, QWORD PTR .LC7[rip]
	mov	DWORD PTR [rdi], 255
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	eax, xmm0
	mov	DWORD PTR [rsi], eax
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	vsubsd	xmm0, xmm0, xmm1
	mov	DWORD PTR [rdi], 0
	vmulsd	xmm0, xmm0, QWORD PTR .LC7[rip]
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	mov	DWORD PTR [rsi], 255
	vcvttsd2si	eax, xmm0
	mov	DWORD PTR [rdx], eax
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	vmovsd	xmm1, QWORD PTR .LC4[rip]
	mov	DWORD PTR [rdi], 0
	vsubsd	xmm0, xmm1, xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	eax, xmm0
	mov	DWORD PTR [rsi], eax
	mov	DWORD PTR [rdx], 255
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	vsubsd	xmm0, xmm1, xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC7[rip]
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	eax, xmm0
	mov	DWORD PTR [rdi], eax
	mov	DWORD PTR [rsi], 255
	mov	DWORD PTR [rdx], 0
	ret
	.cfi_endproc
.LFE39:
	.size	double2rgb, .-double2rgb
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"P3"
.LC11:
	.string	"%d %d\n"
.LC12:
	.string	"255"
.LC13:
	.string	"%3d %3d %3d    "
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	ppmgrid
	.type	ppmgrid, @function
ppmgrid:
.LFB40:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14d, edx
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13d, esi
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	rbp, rdi
	mov	edi, OFFSET FLAT:.LC10
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	call	puts
	mov	edi, 1
	xor	eax, eax
	mov	ecx, r14d
	mov	edx, r13d
	mov	esi, OFFSET FLAT:.LC11
	call	__printf_chk
	mov	edi, OFFSET FLAT:.LC12
	call	puts
	test	r14d, r14d
	jle	.L87
	movsx	rax, r13d
	xor	r12d, r12d
	sal	rax, 2
	mov	QWORD PTR [rsp], rax
	lea	eax, [r13-1]
	lea	rax, [4+rax*4]
	mov	QWORD PTR [rsp+8], rax
	.p2align 4,,10
	.p2align 3
.L77:
	test	r13d, r13d
	jle	.L78
	mov	rax, QWORD PTR [rsp+8]
	mov	r15, rbp
	lea	rbx, [rax+rbp]
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L84:
	vucomisd	xmm0, QWORD PTR .LC6[rip]
	ja	.L89
	vucomisd	xmm0, QWORD PTR .LC8[rip]
	ja	.L90
	vmulsd	xmm0, xmm0, QWORD PTR .LC7[rip]
	xor	r8d, r8d
	mov	edx, 255
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	ecx, xmm0
.L71:
	mov	esi, OFFSET FLAT:.LC13
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
	add	r15, 4
	cmp	r15, rbx
	je	.L78
.L76:
	vxorpd	xmm0, xmm0, xmm0
	vcvtss2sd	xmm0, xmm0, DWORD PTR [r15]
	vucomisd	xmm0, QWORD PTR .LC3[rip]
	jbe	.L84
	vmovsd	xmm1, QWORD PTR .LC4[rip]
	mov	r8d, 255
	xor	edx, edx
	vsubsd	xmm0, xmm1, xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	ecx, xmm0
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L89:
	vsubsd	xmm0, xmm0, QWORD PTR .LC6[rip]
	mov	ecx, 255
	xor	edx, edx
	vmulsd	xmm0, xmm0, QWORD PTR .LC7[rip]
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	r8d, xmm0
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L90:
	vmovsd	xmm2, QWORD PTR .LC6[rip]
	xor	r8d, r8d
	mov	ecx, 255
	vsubsd	xmm0, xmm2, xmm0
	vmulsd	xmm0, xmm0, QWORD PTR .LC7[rip]
	vmulsd	xmm0, xmm0, QWORD PTR .LC5[rip]
	vcvttsd2si	edx, xmm0
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L78:
	mov	edi, 10
	add	r12d, 1
	call	putchar
	add	rbp, QWORD PTR [rsp]
	cmp	r14d, r12d
	jne	.L77
.L87:
	add	rsp, 24
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	ppmgrid, .-ppmgrid
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"usage: %s sizex sizey\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC17:
	.string	"Time %f Iterations %d LUPS %f\n"
	.section	.text.unlikely
.LCOLDB18:
	.section	.text.startup,"ax",@progbits
.LHOTB18:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbx, rsi
	sub	rsp, 88
	.cfi_def_cfa_offset 144
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rsp+72], rax
	xor	eax, eax
	cmp	edi, 3
	jne	.L103
	mov	rdi, QWORD PTR [rsi+8]
	mov	edx, 10
	xor	esi, esi
	mov	r15d, 0
	call	strtol
	mov	rdi, QWORD PTR [rbx+16]
	xor	esi, esi
	mov	edx, 10
	mov	r14, rax
	mov	QWORD PTR [rsp+24], rax
	mov	r13d, eax
	mov	ebx, r14d
	call	strtol
	lea	rdi, [rsp+32]
	mov	esi, 64
	imul	ebx, eax
	mov	rbp, rax
	mov	QWORD PTR [rsp+16], rax
	mov	r12d, eax
	movsx	rbx, ebx
	sal	rbx, 2
	mov	rdx, rbx
	call	posix_memalign
	mov	rdx, rbx
	mov	esi, 64
	mov	ebx, 0
	lea	rdi, [rsp+40]
	test	eax, eax
	cmove	r15, QWORD PTR [rsp+32]
	call	posix_memalign
	mov	edx, ebp
	mov	esi, r14d
	test	eax, eax
	mov	rdi, r15
	cmove	rbx, QWORD PTR [rsp+40]
	call	initgrid
	mov	edx, ebp
	mov	esi, r14d
	mov	rdi, rbx
	mov	ebp, 1
	call	initgrid
	.p2align 4,,10
	.p2align 3
.L97:
	lea	rsi, [rsp+48]
	mov	edi, 1
	mov	r14, rbx
	call	clock_gettime
	vxorpd	xmm1, xmm1, xmm1
	vxorpd	xmm0, xmm0, xmm0
	xor	ebx, ebx
	vcvtsi2sdq	xmm1, xmm1, QWORD PTR [rsp+48]
	vcvtsi2sdq	xmm0, xmm0, QWORD PTR [rsp+56]
	vdivsd	xmm0, xmm0, QWORD PTR .LC16[rip]
	vaddsd	xmm3, xmm0, xmm1
	vmovsd	QWORD PTR [rsp+8], xmm3
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L99:
	mov	r15, r14
	mov	r14, rax
.L96:
	mov	ecx, r12d
	mov	edx, r13d
	mov	rsi, r14
	mov	rdi, r15
	add	ebx, 1
	call	jacobi_vanilla
	mov	rax, r15
	cmp	ebx, ebp
	jne	.L99
	lea	rsi, [rsp+48]
	mov	edi, 1
	call	clock_gettime
	vxorpd	xmm2, xmm2, xmm2
	mov	ecx, ebx
	vxorpd	xmm1, xmm1, xmm1
	vcvtsi2sdq	xmm2, xmm2, QWORD PTR [rsp+48]
	vxorpd	xmm0, xmm0, xmm0
	mov	rdi, QWORD PTR stderr[rip]
	mov	edx, OFFSET FLAT:.LC17
	vcvtsi2sd	xmm1, xmm1, ebx
	mov	esi, 1
	vcvtsi2sdq	xmm0, xmm0, QWORD PTR [rsp+56]
	mov	eax, 2
	vdivsd	xmm0, xmm0, QWORD PTR .LC16[rip]
	lea	ebp, [rbx+rbx]
	mov	rbx, r15
	mov	r15, r14
	vaddsd	xmm2, xmm0, xmm2
	vsubsd	xmm2, xmm2, QWORD PTR [rsp+8]
	vdivsd	xmm1, xmm1, xmm2
	vmovapd	xmm0, xmm2
	vmovsd	QWORD PTR [rsp+8], xmm2
	call	__fprintf_chk
	vmovsd	xmm2, QWORD PTR [rsp+8]
	vmovsd	xmm5, QWORD PTR .LC4[rip]
	vucomisd	xmm5, xmm2
	ja	.L97
	mov	edx, DWORD PTR [rsp+16]
	mov	rdi, r14
	mov	esi, DWORD PTR [rsp+24]
	call	ppmgrid
	xor	eax, eax
.L93:
	mov	rcx, QWORD PTR [rsp+72]
	xor	rcx, QWORD PTR fs:40
	jne	.L104
	add	rsp, 88
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L103:
	.cfi_restore_state
	mov	rdx, QWORD PTR [rsi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.LC15
	call	__printf_chk
	or	eax, -1
	jmp	.L93
.L104:
	call	__stack_chk_fail
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE18:
	.section	.text.startup
.LHOTE18:
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1072168960
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1081073664
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1074790400
	.align 8
.LC8:
	.long	0
	.long	1070596096
	.align 8
.LC16:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits
