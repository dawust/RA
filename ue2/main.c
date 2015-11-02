#define _GNU_SOURCE
#define VECVALUE 1.0

#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <sched.h>
#include "vecsum.h"


void initvector(float *A, int N) {
	for (int i = 0; i < N; ++i) {
		A[i] = VECVALUE;
	}
}

int main(int argc, char **argv) {
	if (argc != 2) {
		printf("usage: %s vectorsize\n", argv[0]);
		exit(EXIT_FAILURE);
	}

	int size = atoi(argv[1]);
	int elem = size * 1024 / sizeof(float);
	
	struct timespec ts_time;
	double timestart = 0.0;
	double timeend = 0.0;
	double time = 0.0;

	//Pin to specific CPU
	cpu_set_t my_set;
	CPU_ZERO(&my_set);
	CPU_SET(0, &my_set);
	if (sched_setaffinity(0, sizeof(cpu_set_t), &my_set) != 0) {
		fprintf(stderr, "could not pin thread");
		exit(EXIT_FAILURE);
	}
	
	//Create aligned vector	
	float *vector;
	float res;
	posix_memalign((void **)&vector, 64, elem * sizeof(float));
	initvector(vector, elem);

	//Measure execution time
	int T = 0;	
	for (T = 1; timeend - timestart < 1.0; T *= 2) {

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timestart = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		for (int t = 0; t < T; ++t) {
			res = vec_sum(vector, elem);
		}

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timeend = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		time = timeend - timestart; 
	}
	T /= 2;

	fprintf(stdout, "Time %f Iterations %d MUPS %f\n", time, T, (double)((long)elem * T / 1000000) / time);
	
	//Result assertion 
	if (res != VECVALUE * elem) {
		fprintf(stderr, "Wrong result! %f %f\n", res, VECVALUE * elem);
	}
}
