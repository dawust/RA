# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 15.0.2.164 Build 2015012";
# mark_description "1";
# mark_description "-S -std=gnu99 -O3 -dM -DAVX -o jacobi.s";
	.file "jacobi.c"
	.text
..TXTST0:
# -- Begin  jacobi_vanilla
	.text
# mark_begin;
       .align    16,0x90
	.globl jacobi_vanilla
jacobi_vanilla:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B1.1:                         # Preds ..B1.0
..___tag_value_jacobi_vanilla.1:                                #5.63
..L2:
                                                          #5.63
        pushq     %rbp                                          #5.63
..___tag_value_jacobi_vanilla.3:                                #
        lea       -1(%rcx), %eax                                #6.26
        xorl      %r10d, %r10d                                  #6.2
        movq      %rdi, %r11                                    #5.63
        xorl      %r9d, %r9d                                    #7.14
        cmpl      $1, %eax                                      #6.26
        jle       ..B1.14       # Prob 9%                       #6.26
                                # LOE rbx rsi r11 r12 r13 r14 r15 edx ecx r9d r10d
..B1.2:                         # Preds ..B1.1
        movss     .L_2il0floatpacket.0(%rip), %xmm0             #13.7
        lea       -2(%rdx), %eax                                #7.3
        sarl      $1, %eax                                      #7.3
        lea       -1(%rdx), %r8d                                #7.27
        shrl      $30, %eax                                     #7.3
        addl      $-2, %ecx                                     #6.26
        movq      %r12, -48(%rsp)                               #13.7
        movq      %r13, -40(%rsp)                               #13.7
        movq      %r14, -32(%rsp)                               #13.7
        movq      %r15, -24(%rsp)                               #13.7
        lea       -2(%rdx,%rax), %edi                           #7.3
        movslq    %edx, %rdx                                    #7.3
        sarl      $2, %edi                                      #7.3
        movq      %rbx, -16(%rsp)                               #13.7
..___tag_value_jacobi_vanilla.5:                                #
        lea       -2(%rdx), %rbp                                #7.27
        lea       (%r11,%rdx,4), %rax                           #11.7
        lea       (%rsi,%rdx,4), %rsi                           #8.4
                                # LOE rax rbp rsi r11 edx ecx edi r8d r9d r10d xmm0
..B1.3:                         # Preds ..B1.12 ..B1.2
        cmpl      $1, %r8d                                      #7.27
        jle       ..B1.12       # Prob 50%                      #7.27
                                # LOE rax rbp rsi r11 edx ecx edi r8d r9d r10d xmm0
..B1.4:                         # Preds ..B1.3
        movl      $1, %r14d                                     #7.3
        xorl      %r12d, %r12d                                  #7.3
        testl     %edi, %edi                                    #7.3
        jbe       ..B1.8        # Prob 10%                      #7.3
                                # LOE rax rbp rsi r11 r14 edx ecx edi r8d r9d r10d r12d xmm0
..B1.5:                         # Preds ..B1.4
        lea       (%r9,%rdx,2), %ebx                            #10.7
                                # LOE rax rbp rsi r11 edx ecx ebx edi r8d r9d r10d r12d xmm0
..B1.6:                         # Preds ..B1.6 ..B1.5
        lea       (%r9,%r12,4), %r14d                           #12.7
        movslq    %r14d, %r14                                   #9.6
        lea       (%rbx,%r12,4), %r13d                          #10.7
        movslq    %r13d, %r13                                   #10.7
        incl      %r12d                                         #7.3
        cmpl      %edi, %r12d                                   #7.3
        movss     4(%r11,%r14,4), %xmm1                         #9.6
        addss     4(%r11,%r13,4), %xmm1                         #10.7
        addss     (%rax,%r14,4), %xmm1                          #11.7
        addss     8(%rax,%r14,4), %xmm1                         #12.7
        mulss     %xmm0, %xmm1                                  #13.7
        movss     %xmm1, 4(%rsi,%r14,4)                         #8.4
        movss     8(%r11,%r14,4), %xmm2                         #9.6
        addss     8(%r11,%r13,4), %xmm2                         #10.7
        addss     4(%rax,%r14,4), %xmm2                         #11.7
        addss     12(%rax,%r14,4), %xmm2                        #12.7
        mulss     %xmm0, %xmm2                                  #13.7
        movss     %xmm2, 8(%rsi,%r14,4)                         #8.4
        movss     12(%r11,%r14,4), %xmm3                        #9.6
        addss     12(%r11,%r13,4), %xmm3                        #10.7
        addss     8(%rax,%r14,4), %xmm3                         #11.7
        addss     16(%rax,%r14,4), %xmm3                        #12.7
        mulss     %xmm0, %xmm3                                  #13.7
        movss     %xmm3, 12(%rsi,%r14,4)                        #8.4
        movss     16(%r11,%r14,4), %xmm4                        #9.6
        addss     16(%r11,%r13,4), %xmm4                        #10.7
        addss     12(%rax,%r14,4), %xmm4                        #11.7
        addss     20(%rax,%r14,4), %xmm4                        #12.7
        mulss     %xmm0, %xmm4                                  #13.7
        movss     %xmm4, 16(%rsi,%r14,4)                        #8.4
        jb        ..B1.6        # Prob 27%                      #7.3
                                # LOE rax rbp rsi r11 edx ecx ebx edi r8d r9d r10d r12d xmm0
..B1.7:                         # Preds ..B1.6
        lea       1(,%r12,4), %r14d                             #8.4
        movslq    %r14d, %r14                                   #7.3
                                # LOE rax rbp rsi r11 r14 edx ecx edi r8d r9d r10d xmm0
..B1.8:                         # Preds ..B1.7 ..B1.4
        decq      %r14                                          #8.4
        cmpq      %rbp, %r14                                    #7.3
        jae       ..B1.12       # Prob 10%                      #7.3
                                # LOE rax rbp rsi r11 r14 edx ecx edi r8d r9d r10d xmm0
..B1.9:                         # Preds ..B1.8
        movslq    %r9d, %r9                                     #12.7
        lea       (%r9,%rdx,2), %r15d                           #10.7
        movslq    %r15d, %r15                                   #10.7
        lea       (%rsi,%r9,4), %r13                            #8.4
        lea       (%r11,%r9,4), %r12                            #9.6
        lea       (%rax,%r9,4), %rbx                            #12.7
        lea       (%r11,%r15,4), %r15                           #10.7
                                # LOE rax rbx rbp rsi r11 r12 r13 r14 r15 edx ecx edi r8d r9d r10d xmm0
..B1.10:                        # Preds ..B1.10 ..B1.9
        movss     4(%r12,%r14,4), %xmm1                         #9.6
        addss     4(%r15,%r14,4), %xmm1                         #10.7
        addss     (%rbx,%r14,4), %xmm1                          #11.7
        addss     8(%rbx,%r14,4), %xmm1                         #12.7
        mulss     %xmm0, %xmm1                                  #13.7
        movss     %xmm1, 4(%r13,%r14,4)                         #8.4
        incq      %r14                                          #7.3
        cmpq      %rbp, %r14                                    #7.3
        jb        ..B1.10       # Prob 66%                      #7.3
                                # LOE rax rbx rbp rsi r11 r12 r13 r14 r15 edx ecx edi r8d r9d r10d xmm0
..B1.12:                        # Preds ..B1.10 ..B1.3 ..B1.8
        incl      %r10d                                         #6.2
        addl      %edx, %r9d                                    #6.2
        cmpl      %ecx, %r10d                                   #6.2
        jb        ..B1.3        # Prob 82%                      #6.2
                                # LOE rax rbp rsi r11 edx ecx edi r8d r9d r10d xmm0
..B1.13:                        # Preds ..B1.12
        movq      -48(%rsp), %r12                               #
..___tag_value_jacobi_vanilla.10:                               #
        movq      -40(%rsp), %r13                               #
..___tag_value_jacobi_vanilla.11:                               #
        movq      -32(%rsp), %r14                               #
..___tag_value_jacobi_vanilla.12:                               #
        movq      -24(%rsp), %r15                               #
..___tag_value_jacobi_vanilla.13:                               #
        movq      -16(%rsp), %rbx                               #
..___tag_value_jacobi_vanilla.14:                               #
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13 ..B1.1
..___tag_value_jacobi_vanilla.15:                               #16.1
        popq      %rbp                                          #16.1
..___tag_value_jacobi_vanilla.16:                               #
        ret                                                     #16.1
        .align    16,0x90
..___tag_value_jacobi_vanilla.17:                               #
                                # LOE
# mark_end;
	.type	jacobi_vanilla,@function
	.size	jacobi_vanilla,.-jacobi_vanilla
	.data
# -- End  jacobi_vanilla
	.text
# -- Begin  jacobi_sse
	.text
# mark_begin;
       .align    16,0x90
	.globl jacobi_sse
jacobi_sse:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B2.1:                         # Preds ..B2.0
..___tag_value_jacobi_sse.18:                                   #18.59
..L19:
                                                         #18.59
        lea       -1(%rcx), %r11d                               #22.26
        xorl      %r9d, %r9d                                    #22.2
        movq      %rsi, %rax                                    #18.59
        movaps    .L_2il0floatpacket.1(%rip), %xmm1             #19.23
        movq      %rdi, %r10                                    #18.59
        xorl      %r8d, %r8d                                    #23.9
        cmpl      $1, %r11d                                     #22.26
        jle       ..B2.18       # Prob 9%                       #22.26
                                # LOE rax rbx rbp r10 r12 r13 r14 r15 edx ecx r8d r9d xmm1
..B2.2:                         # Preds ..B2.1
        movss     .L_2il0floatpacket.0(%rip), %xmm0             #46.7
        lea       -4(%rdx), %edi                                #24.18
        movq      %r12, -88(%rsp)                               #24.18
        lea       -1(%rdx), %esi                                #40.18
        movslq    %edx, %rdx                                    #40.3
        addl      $-2, %ecx                                     #22.26
        movl      %esi, -16(%rsp)                               #40.18
        lea       -2(%rdx), %r11d                               #24.18
        sarl      $1, %r11d                                     #24.18
        shrl      $30, %r11d                                    #24.18
        movq      %rdx, -8(%rsp)                                #40.3
        lea       (%r10,%rdx,4), %rsi                           #30.23
        movq      %r13, -80(%rsp)                               #24.18
        lea       (%rax,%rdx,4), %rax                           #38.15
        movq      %r14, -72(%rsp)                               #24.18
        movq      %r15, -64(%rsp)                               #24.18
        lea       -2(%rdx,%r11), %r11d                          #24.18
        sarl      $2, %r11d                                     #24.18
        movl      %r11d, -40(%rsp)                              #24.18
        movq      %rbx, -56(%rsp)                               #24.18
        movq      %rbp, -48(%rsp)                               #24.18
..___tag_value_jacobi_sse.20:                                   #
                                # LOE rax rsi r10 edx ecx edi r8d r9d xmm0 xmm1
..B2.3:                         # Preds ..B2.16 ..B2.2
        movl      $1, %r12d                                     #23.9
        xorl      %r11d, %r11d                                  #24.3
        cmpl      $1, %edi                                      #24.18
        jle       ..B2.7        # Prob 10%                      #24.18
                                # LOE rax rsi r10 edx ecx edi r8d r9d r11d r12d xmm0 xmm1
..B2.4:                         # Preds ..B2.3
        movl      -40(%rsp), %ebp                               #27.23
        lea       (%r8,%rdx,2), %ebx                            #27.23
                                # LOE rax rsi r10 edx ecx ebx ebp edi r8d r9d r11d xmm0 xmm1
..B2.5:                         # Preds ..B2.5 ..B2.4
        lea       (%r8,%r11,4), %r12d                           #25.20
        movslq    %r12d, %r12                                   #25.20
        lea       (%rbx,%r11,4), %r13d                          #27.23
        movslq    %r13d, %r13                                   #27.23
        movaps    4(%r10,%r12,4), %xmm2                         #25.20
        addps     4(%r10,%r13,4), %xmm2                         #28.10
        addps     (%rsi,%r12,4), %xmm2                          #31.10
        addps     8(%rsi,%r12,4), %xmm2                         #34.10
        mulps     %xmm1, %xmm2                                  #36.10
        movaps    %xmm2, 4(%rax,%r12,4)                         #38.15
        lea       5(,%r11,4), %r12d                             #24.30
        incl      %r11d                                         #24.3
        cmpl      %ebp, %r11d                                   #24.3
        jb        ..B2.5        # Prob 82%                      #24.3
                                # LOE rax rsi r10 edx ecx ebx ebp edi r8d r9d r11d r12d xmm0 xmm1
..B2.7:                         # Preds ..B2.5 ..B2.3
        movslq    %r12d, %rbx                                   #40.3
        cmpl      -16(%rsp), %r12d                              #40.18
        jge       ..B2.16       # Prob 50%                      #40.18
                                # LOE rax rbx rsi r10 edx ecx edi r8d r9d r12d xmm0 xmm1
..B2.8:                         # Preds ..B2.7
        movl      %edx, %r11d                                   #40.3
        movl      $1, %r13d                                     #40.3
        subl      %r12d, %r11d                                  #40.3
        xorl      %ebp, %ebp                                    #40.3
        decl      %r11d                                         #40.3
        sarl      $1, %r11d                                     #40.3
        shrl      $30, %r11d                                    #40.3
        addl      %edx, %r11d                                   #40.3
        subl      %r12d, %r11d                                  #40.3
        decl      %r11d                                         #40.3
        sarl      $2, %r11d                                     #40.3
        testl     %r11d, %r11d                                  #40.3
        jbe       ..B2.12       # Prob 10%                      #40.3
                                # LOE rax rbx rsi r10 r13 edx ecx ebp edi r8d r9d r11d xmm0 xmm1
..B2.9:                         # Preds ..B2.8
        movq      %r10, -24(%rsp)                               #43.7
        lea       (%rax,%rbx,4), %r14                           #41.4
        movl      %edx, -32(%rsp)                               #43.7
        lea       (%rsi,%rbx,4), %r15                           #44.7
        lea       (%r10,%rbx,4), %r13                           #42.6
        lea       (%r8,%rdx,2), %r12d                           #43.7
                                # LOE rax rbx rsi r13 r14 r15 ecx ebp edi r8d r9d r11d r12d xmm0 xmm1
..B2.10:                        # Preds ..B2.10 ..B2.9
        lea       (%r8,%rbp,4), %r10d                           #45.7
        movslq    %r10d, %r10                                   #42.6
        lea       (%r12,%rbp,4), %edx                           #43.7
        movslq    %edx, %rdx                                    #43.7
        incl      %ebp                                          #40.3
        cmpl      %r11d, %ebp                                   #40.3
        movss     (%r13,%r10,4), %xmm2                          #42.6
        addss     (%r13,%rdx,4), %xmm2                          #43.7
        addss     -4(%r15,%r10,4), %xmm2                        #44.7
        addss     4(%r15,%r10,4), %xmm2                         #45.7
        mulss     %xmm0, %xmm2                                  #46.7
        movss     %xmm2, (%r14,%r10,4)                          #41.4
        movss     4(%r13,%r10,4), %xmm3                         #42.6
        addss     4(%r13,%rdx,4), %xmm3                         #43.7
        addss     (%r15,%r10,4), %xmm3                          #44.7
        addss     8(%r15,%r10,4), %xmm3                         #45.7
        mulss     %xmm0, %xmm3                                  #46.7
        movss     %xmm3, 4(%r14,%r10,4)                         #41.4
        movss     8(%r13,%r10,4), %xmm4                         #42.6
        addss     8(%r13,%rdx,4), %xmm4                         #43.7
        addss     4(%r15,%r10,4), %xmm4                         #44.7
        addss     12(%r15,%r10,4), %xmm4                        #45.7
        mulss     %xmm0, %xmm4                                  #46.7
        movss     %xmm4, 8(%r14,%r10,4)                         #41.4
        movss     12(%r13,%r10,4), %xmm5                        #42.6
        addss     12(%r13,%rdx,4), %xmm5                        #43.7
        addss     8(%r15,%r10,4), %xmm5                         #44.7
        addss     16(%r15,%r10,4), %xmm5                        #45.7
        mulss     %xmm0, %xmm5                                  #46.7
        movss     %xmm5, 12(%r14,%r10,4)                        #41.4
        jb        ..B2.10       # Prob 27%                      #40.3
                                # LOE rax rbx rsi r13 r14 r15 ecx ebp edi r8d r9d r11d r12d xmm0 xmm1
..B2.11:                        # Preds ..B2.10
        movq      -24(%rsp), %r10                               #
        lea       1(,%rbp,4), %r13d                             #41.4
        movl      -32(%rsp), %edx                               #
        movslq    %r13d, %r13                                   #40.3
                                # LOE rax rbx rsi r10 r13 edx ecx edi r8d r9d xmm0 xmm1
..B2.12:                        # Preds ..B2.11 ..B2.8
        movq      -8(%rsp), %r14                                #18.59
        decq      %r13                                          #41.4
        subq      %rbx, %r14                                    #18.59
        decq      %r14                                          #18.59
        cmpq      %r14, %r13                                    #40.3
        jae       ..B2.16       # Prob 10%                      #40.3
                                # LOE rax rbx rsi r10 r13 r14 edx ecx edi r8d r9d xmm0 xmm1
..B2.13:                        # Preds ..B2.12
        movslq    %r8d, %r8                                     #45.7
        lea       (%r8,%rdx,2), %r15d                           #43.7
        movslq    %r15d, %r15                                   #43.7
        lea       (%rax,%r8,4), %r12                            #41.4
        lea       (%rsi,%r8,4), %r11                            #45.7
        lea       (%r10,%r8,4), %rbp                            #42.6
        lea       (%r10,%r15,4), %r15                           #43.7
        lea       (%r12,%rbx,4), %r12                           #41.4
        lea       (%r11,%rbx,4), %r11                           #44.7
        lea       (%rbp,%rbx,4), %rbp                           #42.6
        lea       (%r15,%rbx,4), %rbx                           #43.7
                                # LOE rax rbx rbp rsi r10 r11 r12 r13 r14 edx ecx edi r8d r9d xmm0 xmm1
..B2.14:                        # Preds ..B2.14 ..B2.13
        movss     (%rbp,%r13,4), %xmm2                          #42.6
        addss     (%rbx,%r13,4), %xmm2                          #43.7
        addss     -4(%r11,%r13,4), %xmm2                        #44.7
        addss     4(%r11,%r13,4), %xmm2                         #45.7
        mulss     %xmm0, %xmm2                                  #46.7
        movss     %xmm2, (%r12,%r13,4)                          #41.4
        incq      %r13                                          #40.3
        cmpq      %r14, %r13                                    #40.3
        jb        ..B2.14       # Prob 66%                      #40.3
                                # LOE rax rbx rbp rsi r10 r11 r12 r13 r14 edx ecx edi r8d r9d xmm0 xmm1
..B2.16:                        # Preds ..B2.14 ..B2.12 ..B2.7
        incl      %r9d                                          #22.2
        addl      %edx, %r8d                                    #22.2
        cmpl      %ecx, %r9d                                    #22.2
        jb        ..B2.3        # Prob 82%                      #22.2
                                # LOE rax rsi r10 edx ecx edi r8d r9d xmm0 xmm1
..B2.17:                        # Preds ..B2.16
        movq      -88(%rsp), %r12                               #
..___tag_value_jacobi_sse.26:                                   #
        movq      -80(%rsp), %r13                               #
..___tag_value_jacobi_sse.27:                                   #
        movq      -72(%rsp), %r14                               #
..___tag_value_jacobi_sse.28:                                   #
        movq      -64(%rsp), %r15                               #
..___tag_value_jacobi_sse.29:                                   #
        movq      -56(%rsp), %rbx                               #
..___tag_value_jacobi_sse.30:                                   #
        movq      -48(%rsp), %rbp                               #
..___tag_value_jacobi_sse.31:                                   #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.18:                        # Preds ..B2.17 ..B2.1
        ret                                                     #49.1
        .align    16,0x90
..___tag_value_jacobi_sse.32:                                   #
                                # LOE
# mark_end;
	.type	jacobi_sse,@function
	.size	jacobi_sse,.-jacobi_sse
	.data
# -- End  jacobi_sse
	.text
# -- Begin  jacobi_avx
	.text
# mark_begin;
       .align    16,0x90
	.globl jacobi_avx
jacobi_avx:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B3.1:                         # Preds ..B3.0
..___tag_value_jacobi_avx.33:                                   #51.59
..L34:
                                                         #51.59
        lea       -1(%rcx), %eax                                #56.26
        xorl      %r9d, %r9d                                    #56.2
        movq      %rdi, %r10                                    #51.59
        vmovaps   .L_2il0floatpacket.2(%rip), %ymm1             #52.23
        xorl      %r8d, %r8d                                    #57.9
        cmpl      $1, %eax                                      #56.26
        jle       ..B3.18       # Prob 9%                       #56.26
                                # LOE rbx rbp rsi r10 r12 r13 r14 r15 edx ecx r8d r9d ymm1
..B3.2:                         # Preds ..B3.1
        addl      $-2, %ecx                                     #56.26
        lea       -8(%rdx), %edi                                #58.18
        vmovss    .L_2il0floatpacket.0(%rip), %xmm0             #81.7
        lea       -1(%rdx), %r11d                               #75.18
        movslq    %edx, %rdx                                    #75.3
        movl      %r11d, -32(%rsp)                              #75.18
        movq      %rdx, -24(%rsp)                               #75.3
        movl      %ecx, -16(%rsp)                               #58.18
        movq      %rsi, -48(%rsp)                               #58.18
        lea       (%rsi,%rdx,4), %rax                           #76.4
        movq      %rax, -80(%rsp)                               #76.4
        lea       (,%rdx,8), %eax                               #72.4
        movslq    %eax, %rax                                    #62.10
        lea       (%r10,%rdx,4), %r11                           #79.7
        movq      %rax, -64(%rsp)                               #62.10
        negl      %eax                                          #72.15
        addl      %edx, %eax                                    #72.15
        movq      %r12, -120(%rsp)                              #58.18
        movq      %r13, -112(%rsp)                              #58.18
        movq      %r14, -104(%rsp)                              #58.18
        movq      %r15, -96(%rsp)                               #58.18
        lea       (%rax,%rdx,8), %eax                           #72.15
        movl      %eax, -72(%rsp)                               #72.15
        lea       -2(%rdx), %eax                                #58.18
        sarl      $2, %eax                                      #58.18
        shrl      $29, %eax                                     #58.18
        movq      %rbx, -88(%rsp)                               #58.18
        lea       -2(%rdx,%rax), %eax                           #58.18
        sarl      $3, %eax                                      #58.18
        movl      %eax, -56(%rsp)                               #58.18
        movq      -80(%rsp), %rax                               #58.18
..___tag_value_jacobi_avx.35:                                   #
                                # LOE rax rbp r10 r11 edx edi r8d r9d xmm0 ymm1
..B3.3:                         # Preds ..B3.16 ..B3.2
        movl      $1, %r12d                                     #57.9
        xorl      %r14d, %r14d                                  #58.3
        cmpl      $1, %edi                                      #58.18
        jle       ..B3.7        # Prob 10%                      #58.18
                                # LOE rax rbp r10 r11 edx edi r8d r9d r12d r14d xmm0 ymm1
..B3.4:                         # Preds ..B3.3
        movl      -72(%rsp), %ecx                               #72.15
        lea       (%r8,%rdx,2), %r13d                           #61.23
        movq      -48(%rsp), %rsi                               #51.59
        movq      -64(%rsp), %r15                               #51.59
        lea       (%rcx,%r9), %ebx                              #72.15
        movslq    %ebx, %rbx                                    #62.10
        lea       (%rsi,%rbx,4), %rbx                           #51.59
        movl      -56(%rsp), %esi                               #51.59
        .align    16,0x90
                                # LOE rax rbx rbp r10 r11 r15 edx esi edi r8d r9d r13d r14d xmm0 ymm1
..B3.5:                         # Preds ..B3.5 ..B3.4
        lea       (%r8,%r14,8), %ecx                            #59.20
        movslq    %ecx, %rcx                                    #59.20
        lea       (%r13,%r14,8), %r12d                          #61.23
        movslq    %r12d, %r12                                   #61.23
        vmovaps   4(%r10,%rcx,4), %ymm2                         #59.20
        vaddps    4(%r10,%r12,4), %ymm2, %ymm3                  #62.10
        lea       9(,%r14,8), %r12d                             #58.30
        vaddps    (%r11,%rcx,4), %ymm3, %ymm4                   #65.10
        incl      %r14d                                         #58.3
        vaddps    8(%r11,%rcx,4), %ymm4, %ymm5                  #68.10
        cmpl      %esi, %r14d                                   #58.3
        vmulps    %ymm1, %ymm5, %ymm6                           #70.10
        vmovaps   %ymm6, 4(%rbx)                                #72.15
        lea       (%rbx,%r15,4), %rbx                           #58.3
        jb        ..B3.5        # Prob 82%                      #58.3
                                # LOE rax rbx rbp r10 r11 r15 edx esi edi r8d r9d r12d r13d r14d xmm0 ymm1
..B3.7:                         # Preds ..B3.5 ..B3.3
        movslq    %r12d, %rcx                                   #75.3
        cmpl      -32(%rsp), %r12d                              #75.18
        jge       ..B3.16       # Prob 50%                      #75.18
                                # LOE rax rcx rbp r10 r11 edx edi r8d r9d r12d xmm0 ymm1
..B3.8:                         # Preds ..B3.7
        movl      %edx, %esi                                    #75.3
        movl      $1, %r13d                                     #75.3
        subl      %r12d, %esi                                   #75.3
        xorl      %ebx, %ebx                                    #75.3
        decl      %esi                                          #75.3
        sarl      $1, %esi                                      #75.3
        shrl      $30, %esi                                     #75.3
        addl      %edx, %esi                                    #75.3
        subl      %r12d, %esi                                   #75.3
        decl      %esi                                          #75.3
        sarl      $2, %esi                                      #75.3
        testl     %esi, %esi                                    #75.3
        jbe       ..B3.12       # Prob 10%                      #75.3
                                # LOE rax rcx rbp r10 r11 r13 edx ebx esi edi r8d r9d xmm0 ymm1
..B3.9:                         # Preds ..B3.8
        movq      %r10, -40(%rsp)                               #78.7
        lea       (%rax,%rcx,4), %r14                           #76.4
        movl      %edx, -80(%rsp)                               #78.7
        lea       (%r11,%rcx,4), %r15                           #79.7
        lea       (%r10,%rcx,4), %r12                           #77.6
        lea       (%r8,%rdx,2), %r13d                           #78.7
                                # LOE rax rcx rbp r11 r12 r14 r15 ebx esi edi r8d r9d r13d xmm0 ymm1
..B3.10:                        # Preds ..B3.10 ..B3.9
        lea       (%r8,%rbx,4), %r10d                           #80.7
        movslq    %r10d, %r10                                   #77.6
        lea       (%r13,%rbx,4), %edx                           #78.7
        movslq    %edx, %rdx                                    #78.7
        incl      %ebx                                          #75.3
        cmpl      %esi, %ebx                                    #75.3
        movss     (%r12,%r10,4), %xmm2                          #77.6
        addss     (%r12,%rdx,4), %xmm2                          #78.7
        addss     -4(%r15,%r10,4), %xmm2                        #79.7
        addss     4(%r15,%r10,4), %xmm2                         #80.7
        mulss     %xmm0, %xmm2                                  #81.7
        movss     %xmm2, (%r14,%r10,4)                          #76.4
        movss     4(%r12,%r10,4), %xmm3                         #77.6
        addss     4(%r12,%rdx,4), %xmm3                         #78.7
        addss     (%r15,%r10,4), %xmm3                          #79.7
        addss     8(%r15,%r10,4), %xmm3                         #80.7
        mulss     %xmm0, %xmm3                                  #81.7
        movss     %xmm3, 4(%r14,%r10,4)                         #76.4
        movss     8(%r12,%r10,4), %xmm4                         #77.6
        addss     8(%r12,%rdx,4), %xmm4                         #78.7
        addss     4(%r15,%r10,4), %xmm4                         #79.7
        addss     12(%r15,%r10,4), %xmm4                        #80.7
        mulss     %xmm0, %xmm4                                  #81.7
        movss     %xmm4, 8(%r14,%r10,4)                         #76.4
        movss     12(%r12,%r10,4), %xmm5                        #77.6
        addss     12(%r12,%rdx,4), %xmm5                        #78.7
        addss     8(%r15,%r10,4), %xmm5                         #79.7
        addss     16(%r15,%r10,4), %xmm5                        #80.7
        mulss     %xmm0, %xmm5                                  #81.7
        movss     %xmm5, 12(%r14,%r10,4)                        #76.4
        jb        ..B3.10       # Prob 27%                      #75.3
                                # LOE rax rcx rbp r11 r12 r14 r15 ebx esi edi r8d r9d r13d xmm0 ymm1
..B3.11:                        # Preds ..B3.10
        movq      -40(%rsp), %r10                               #
        lea       1(,%rbx,4), %r13d                             #76.4
        movl      -80(%rsp), %edx                               #
        movslq    %r13d, %r13                                   #75.3
                                # LOE rax rcx rbp r10 r11 r13 edx edi r8d r9d xmm0 ymm1
..B3.12:                        # Preds ..B3.11 ..B3.8
        movq      -24(%rsp), %r14                               #51.59
        decq      %r13                                          #76.4
        subq      %rcx, %r14                                    #51.59
        decq      %r14                                          #51.59
        cmpq      %r14, %r13                                    #75.3
        jae       ..B3.16       # Prob 10%                      #75.3
                                # LOE rax rcx rbp r10 r11 r13 r14 edx edi r8d r9d xmm0 ymm1
..B3.13:                        # Preds ..B3.12
        movslq    %r8d, %r8                                     #80.7
        lea       (%r8,%rdx,2), %r15d                           #78.7
        movslq    %r15d, %r15                                   #78.7
        lea       (%rax,%r8,4), %r12                            #76.4
        lea       (%r11,%r8,4), %rsi                            #80.7
        lea       (%r10,%r8,4), %rbx                            #77.6
        lea       (%r10,%r15,4), %r15                           #78.7
        lea       (%r12,%rcx,4), %r12                           #76.4
        lea       (%rsi,%rcx,4), %rsi                           #79.7
        lea       (%rbx,%rcx,4), %rbx                           #77.6
        lea       (%r15,%rcx,4), %rcx                           #78.7
                                # LOE rax rcx rbx rbp rsi r10 r11 r12 r13 r14 edx edi r8d r9d xmm0 ymm1
..B3.14:                        # Preds ..B3.14 ..B3.13
        movss     (%rbx,%r13,4), %xmm2                          #77.6
        addss     (%rcx,%r13,4), %xmm2                          #78.7
        addss     -4(%rsi,%r13,4), %xmm2                        #79.7
        addss     4(%rsi,%r13,4), %xmm2                         #80.7
        mulss     %xmm0, %xmm2                                  #81.7
        movss     %xmm2, (%r12,%r13,4)                          #76.4
        incq      %r13                                          #75.3
        cmpq      %r14, %r13                                    #75.3
        jb        ..B3.14       # Prob 66%                      #75.3
                                # LOE rax rcx rbx rbp rsi r10 r11 r12 r13 r14 edx edi r8d r9d xmm0 ymm1
..B3.16:                        # Preds ..B3.14 ..B3.12 ..B3.7
        incl      %r9d                                          #56.2
        addl      %edx, %r8d                                    #56.2
        cmpl      -16(%rsp), %r9d                               #56.2
        jb        ..B3.3        # Prob 82%                      #56.2
                                # LOE rax rbp r10 r11 edx edi r8d r9d xmm0 ymm1
..B3.17:                        # Preds ..B3.16
        movq      -120(%rsp), %r12                              #
..___tag_value_jacobi_avx.40:                                   #
        movq      -112(%rsp), %r13                              #
..___tag_value_jacobi_avx.41:                                   #
        movq      -104(%rsp), %r14                              #
..___tag_value_jacobi_avx.42:                                   #
        movq      -96(%rsp), %r15                               #
..___tag_value_jacobi_avx.43:                                   #
        movq      -88(%rsp), %rbx                               #
..___tag_value_jacobi_avx.44:                                   #
                                # LOE rbx rbp r12 r13 r14 r15
..B3.18:                        # Preds ..B3.17 ..B3.1
        ret                                                     #84.1
        .align    16,0x90
..___tag_value_jacobi_avx.45:                                   #
                                # LOE
# mark_end;
	.type	jacobi_avx,@function
	.size	jacobi_avx,.-jacobi_avx
	.data
# -- End  jacobi_avx
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.2:
	.long	0x3e800000,0x3e800000,0x3e800000,0x3e800000,0x3e800000,0x3e800000,0x3e800000,0x3e800000
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,32
	.align 16
.L_2il0floatpacket.1:
	.long	0x3e800000,0x3e800000,0x3e800000,0x3e800000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,16
	.align 4
.L_2il0floatpacket.0:
	.long	0x3e800000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x0000005c
	.4byte 0x0000001c
	.8byte ..___tag_value_jacobi_vanilla.1
	.8byte ..___tag_value_jacobi_vanilla.17-..___tag_value_jacobi_vanilla.1
	.byte 0x04
	.4byte ..___tag_value_jacobi_vanilla.3-..___tag_value_jacobi_vanilla.1
	.4byte 0x0286100e
	.byte 0x04
	.4byte ..___tag_value_jacobi_vanilla.5-..___tag_value_jacobi_vanilla.3
	.8byte 0x068e078d088c0483
	.2byte 0x058f
	.byte 0x04
	.4byte ..___tag_value_jacobi_vanilla.10-..___tag_value_jacobi_vanilla.5
	.2byte 0x04cc
	.4byte ..___tag_value_jacobi_vanilla.11-..___tag_value_jacobi_vanilla.10
	.2byte 0x04cd
	.4byte ..___tag_value_jacobi_vanilla.12-..___tag_value_jacobi_vanilla.11
	.2byte 0x04ce
	.4byte ..___tag_value_jacobi_vanilla.13-..___tag_value_jacobi_vanilla.12
	.2byte 0x04cf
	.4byte ..___tag_value_jacobi_vanilla.14-..___tag_value_jacobi_vanilla.13
	.2byte 0x04c3
	.4byte ..___tag_value_jacobi_vanilla.15-..___tag_value_jacobi_vanilla.14
	.2byte 0x04c6
	.4byte ..___tag_value_jacobi_vanilla.16-..___tag_value_jacobi_vanilla.15
	.4byte 0x0000080e
	.2byte 0x0000
	.byte 0x00
	.4byte 0x0000004c
	.4byte 0x0000007c
	.8byte ..___tag_value_jacobi_sse.18
	.8byte ..___tag_value_jacobi_sse.32-..___tag_value_jacobi_sse.18
	.byte 0x04
	.4byte ..___tag_value_jacobi_sse.20-..___tag_value_jacobi_sse.18
	.8byte 0x0b8d0c8c07860883
	.4byte 0x098f0a8e
	.byte 0x04
	.4byte ..___tag_value_jacobi_sse.26-..___tag_value_jacobi_sse.20
	.2byte 0x04cc
	.4byte ..___tag_value_jacobi_sse.27-..___tag_value_jacobi_sse.26
	.2byte 0x04cd
	.4byte ..___tag_value_jacobi_sse.28-..___tag_value_jacobi_sse.27
	.2byte 0x04ce
	.4byte ..___tag_value_jacobi_sse.29-..___tag_value_jacobi_sse.28
	.2byte 0x04cf
	.4byte ..___tag_value_jacobi_sse.30-..___tag_value_jacobi_sse.29
	.2byte 0x04c3
	.4byte ..___tag_value_jacobi_sse.31-..___tag_value_jacobi_sse.30
	.4byte 0x000000c6
	.4byte 0x00000044
	.4byte 0x000000cc
	.8byte ..___tag_value_jacobi_avx.33
	.8byte ..___tag_value_jacobi_avx.45-..___tag_value_jacobi_avx.33
	.byte 0x04
	.4byte ..___tag_value_jacobi_avx.35-..___tag_value_jacobi_avx.33
	.8byte 0x0e8e0f8d108c0c83
	.2byte 0x0d8f
	.byte 0x04
	.4byte ..___tag_value_jacobi_avx.40-..___tag_value_jacobi_avx.35
	.2byte 0x04cc
	.4byte ..___tag_value_jacobi_avx.41-..___tag_value_jacobi_avx.40
	.2byte 0x04cd
	.4byte ..___tag_value_jacobi_avx.42-..___tag_value_jacobi_avx.41
	.2byte 0x04ce
	.4byte ..___tag_value_jacobi_avx.43-..___tag_value_jacobi_avx.42
	.2byte 0x04cf
	.4byte ..___tag_value_jacobi_avx.44-..___tag_value_jacobi_avx.43
	.4byte 0x000000c3
# End
