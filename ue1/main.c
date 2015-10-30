	#include <stdlib.h>
#include <stdio.h>
#include <time.h>
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

void double2rgb(double c, int *r, int *g, int *b) {
	if (c > 0.75) {
		*r = 0;
		*g = (int)((1.0 - c) * 255);
		*b = 255;
	} else if (c > 0.50) {
		*r = 0;
		*g = 255;
		*b = (int)(((c - 0.5) / 0.25) * 255);
	} else if (c > 0.25) {
		*r = (int)(((0.5 - c) / 0.25) * 255);
		*g = 255;
		*b = 0;
	} else {
		*r = 255;
		*g = (int)((c / 0.25) * 255);
		*b = 0;
	}
}

void ppmgrid(dtype *grid, int x, int y) {
	printf("P3\n");
	printf("%d %d\n", x, y);
	printf("255\n");
        for (int j = 0; j < y; ++j) {
                for (int i = 0; i < x; ++i) {
			int r, g, b;
                        double c = grid[(j * x) + i];
			double2rgb(c, &r, &g, &b);
			printf("%3d %3d %3d    ", r, g, b);
                }
		printf("\n");
        }
}

int main(int argc, char **argv) {

	if (argc != 3) {
		printf("usage: %s sizex sizey\n", argv[0]);
		return -1;
	}
	int sizex = atoi(argv[1]);
	int sizey = atoi(argv[2]);

	dtype *grid0;
	dtype *grid1;
	dtype *tmpgrid;
	
	struct timespec ts_time;
	double timestart = 0.0;
	double timeend = 0.0;
	double time = 0.0;

	posix_memalign((void **)&grid0, 64, sizex * sizey * sizeof(dtype));
	posix_memalign((void **)&grid1, 64, sizex * sizey * sizeof(dtype));

	initgrid(grid0, sizex, sizey);
	initgrid(grid1, sizex, sizey);

	int T = 0;	
	for (T = 1; timeend - timestart < 1.0; T = T * 2) {

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timestart = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		for (int t = 0; t < T; ++t) {
			jacobi_vanilla(grid0, grid1, sizex, sizey);

			tmpgrid = grid0;
			grid0 = grid1;
			grid1 = tmpgrid;
		}

                clock_gettime(CLOCK_MONOTONIC, &ts_time);
		timeend = ts_time.tv_sec + ((double)ts_time.tv_nsec / 1E9);

		time = timeend - timestart; 
		

	}
	T /= 2;

	fprintf(stderr, "Time %f Iterations %d LUPS %f\n", time, T, (double)T / time);
	ppmgrid(grid0, sizex, sizey);

	
}
