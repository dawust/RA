#include <immintrin.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include "jacobi.h"

void initgrid(dtype *grid, int x, int y) {
        for (int j = 0; j < y; ++j) {
                for (int i = 0; i < x; ++i) {
                        grid[(j * x) + i] = 0.0;
                }
        }

	for (int i = 0; i < x; ++i) {
		grid[i] = 1.0;
	}

	for (int i = 0; i < y; ++i) {
		grid[i * x] = 1.0;
	}
}

int main(int argc, char **argv) {

	if (argc != 2) {
		printf("usage: %s size\n", argv[0]);
		return -1;
	}
	int size = atoi(argv[1]);
	
	int sizex = sqrt(size * 1024 / sizeof(dtype));
	int sizey = sizex;

	dtype *grid0;
	dtype *grid1;
	dtype *tmpgrid;
	
	struct timespec ts_time;
	double timestart = 0.0;
	double timeend = 0.0;
	double time = 0.0;

	posix_memalign((void **)&grid0, 64, sizex * sizey * sizeof(dtype));
	posix_memalign((void **)&grid1, 64, sizex * sizey * sizeof(dtype));
	//grid0 = (dtype *)_mm_malloc(sizex * sizey * sizeof(dtype), 32 );
	//grid1 = (dtype *)_mm_malloc(sizex * sizey * sizeof(dtype), 32 );

	initgrid(grid0, sizex, sizey);
	initgrid(grid1, sizex, sizey);

	int T = 0;	
	for (T = 1; timeend - timestart < 1.0; T = T * 2) {

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timestart = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		for (int t = 0; t < T; ++t) {
			//initgrid(grid0, sizex, sizey);
			//initgrid(grid1, sizex, sizey);
			#ifdef AVX
			jacobi_avx(grid0, grid1, sizex, sizey);
			#elif SSE
			jacobi_sse(grid0, grid1, sizex, sizey);
			#else
			jacobi_vanilla(grid0, grid1, sizex, sizey);
			#endif

			tmpgrid = grid0;
			grid0 = grid1;
			grid1 = tmpgrid;
		}

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timeend = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		time = timeend - timestart; 
	}
	T /= 2;

	fprintf(stdout, "Time %f Iterations %d MUPS %f\n", time, T, (double)((long)sizex * sizey * T / 1000000) / time);
	//ppmgrid(grid0, sizex, sizey);

	
}
