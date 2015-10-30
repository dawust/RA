float vec_sum(float *A, int N) {
	float tmp = 0.0;

	for (int i = 0; i < N; ++i) {
		tmp += A[i];
	}

	return tmp;
}
