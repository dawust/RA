float vec_sum(float *A, int N) {
	float tmp = 0.0;
	
#ifdef UNROLLCOMP

	#pragma unroll(UNROLL)
	for (int i = 0; i < N; ++i) {
		tmp += A[i];
	}

#else

	int iter = N / UNROLL;
	int cnt = (iter * UNROLL);
	int leftover = N % UNROLL;
	
	float tmp0 = 0.0;
	float tmp1 = 0.0;
	float tmp2 = 0.0;
	float tmp3 = 0.0;
	float tmp4 = 0.0;
	float tmp5 = 0.0;
	float tmp6 = 0.0;
	float tmp7 = 0.0;

	#pragma novector
	#pragma nounroll
	for (int i = 0; i < cnt; i += UNROLL) {
		tmp0 += A[i];	
	#if UNROLL > 1
		tmp1 += A[i + 1];
	#endif
	#if UNROLL > 2
		tmp2 += A[i + 2];
	#endif
	#if UNROLL > 3
		tmp3 += A[i + 3];
	#endif
	#if UNROLL > 4
		tmp4 += A[i + 4];
	#endif
	#if UNROLL > 5
		tmp5 += A[i + 5];
	#endif
	#if UNROLL > 6
		tmp6 += A[i + 6];
	#endif
	#if UNROLL > 7
		tmp7 += A[i + 7];
	#endif
	}


	switch (leftover) {
		case 7: tmp6 += A[cnt + 6];
		case 6: tmp5 += A[cnt + 5];
		case 5: tmp4 += A[cnt + 4];
		case 4: tmp3 += A[cnt + 3];
		case 3: tmp2 += A[cnt + 2];
		case 2: tmp1 += A[cnt + 1];
		case 1: tmp0 += A[cnt];
		case 0: ;
	}

	tmp = tmp0;
	#if UNROLL > 1
	tmp += tmp1;
	#endif
	#if UNROLL > 2
	tmp += tmp2;
	#endif
	#if UNROLL > 3
	tmp += tmp3;
	#endif
	#if UNROLL > 4
	tmp += tmp4;
	#endif
	#if UNROLL > 5
	tmp += tmp5;
	#endif
	#if UNROLL > 6
	tmp += tmp6;
	#endif
	#if UNROLL > 7
	tmp += tmp7;
	#endif

#endif

	return tmp;
}
