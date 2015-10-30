#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "vecsum.h"

void initvector(float *A, int N) {
	for (int i = 0; i < N; ++i) {
		A[i] = 1.0;
	}
}

int main(int argc, char **argv) {

	if (argc != 2) {
		printf("usage: %s vectorsize\n", argv[0]);
		return -1;
	}
	int size = atoi(argv[1]);
	int elem = size * 1024 / sizeof(float);
	
	struct timespec ts_time;
	double timestart = 0.0;
	double timeend = 0.0;
	double time = 0.0;

	float *vector;

	posix_memalign((void **)&vector, 64, elem * sizeof(float));

	initvector(vector, elem);

	int T = 0;	
	for (T = 1; timeend - timestart < 1.0; T = T * 2) {

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timestart = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		for (int t = 0; t < T; ++t) {
			vec_sum(vector, elem);
		}

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timeend = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		time = timeend - timestart; 
		

	}
	T /= 2;

	fprintf(stderr, "Time %f Iterations %d LUPS %f\n", time, T, (double)T / time);
	
}
