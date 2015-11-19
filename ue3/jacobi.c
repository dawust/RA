#include <immintrin.h>
#include "jacobi.h"
#include <stdio.h>
#include "iacaMarks.h"

void jacobi_vanilla(dtype *grid0, dtype *grid1, int x, int y) {
	for (int j = 1; j < y - 1; ++j) {
		for (int i = 1; i < x - 1; ++i) { 
			grid1[(j * x) + i] =
				(grid0[((j - 1) * x) + i] 
				+ grid0[((j + 1) * x) + i]
				+ grid0[(j * x) + (i - 1)] 
				+ grid0[(j * x) + (i + 1)]) 
				* 0.25;
		}
	}
}

#ifdef SSE
void jacobi_sse(dtype *grid0, dtype *grid1, int x, int y) {
	SSE_TYPE mulvector = SSE_SET(0.25);
	SSE_TYPE vector;
	SSE_TYPE res;
	for (int j = 1; j < y - 1; ++j) {
		int i = 1;
		for (; i < x - SSE_VECTOR; i += SSE_VECTOR) {
			IACA_START
			res = SSE_LOAD(&grid0[((j - 1) * x) + i]);

			vector = SSE_LOAD(&grid0[((j + 1) * x) + i]);
			res = SSE_ADD(res, vector);
	
			vector = SSE_LOAD(&grid0[(j * x) + (i - 1)]);
			res = SSE_ADD(res, vector);
			
			vector = SSE_LOAD(&grid0[(j * x) + (i + 1)]);
			res = SSE_ADD(res, vector);

			res = SSE_MUL(res, mulvector);
		
			SSE_STORE(&grid1[(j * x) + i], res);
			IACA_END
		}
		for (; i < x - 1; ++i) { 
			grid1[(j * x) + i] =
				(grid0[((j - 1) * x) + i] 
				+ grid0[((j + 1) * x) + i]
				+ grid0[(j * x) + (i - 1)] 
				+ grid0[(j * x) + (i + 1)]) 
				* 0.25;
		}
	}
}
#endif
#ifdef AVX
void jacobi_avx(dtype *grid0, dtype *grid1, int x, int y) {
	AVX_TYPE mulvector = AVX_SET(0.25);
	AVX_TYPE vector;
	AVX_TYPE res;
	
	for (int j = 1; j < y - 1; ++j) {
		int i = 1;
		for (; i < x - AVX_VECTOR; i += AVX_VECTOR) {
			IACA_START
			res = AVX_LOAD(&grid0[((j - 1) * x) + i]);

			vector = AVX_LOAD(&grid0[((j + 1) * x) + i]);
			res = AVX_ADD(res, vector);
	
			vector = AVX_LOAD(&grid0[(j * x) + (i - 1)]);
			res = AVX_ADD(res, vector);
			
			vector = AVX_LOAD(&grid0[(j * x) + (i + 1)]);
			res = AVX_ADD(res, vector);

			res = AVX_MUL(res, mulvector);
			
			AVX_STORE(&grid1[(i * x) + j], res);
			IACA_END
		}		
		
		for (; i < x - 1; ++i) { 
			grid1[(j * x) + i] =
				(grid0[((j - 1) * x) + i] 
				+ grid0[((j + 1) * x) + i]
				+ grid0[(j * x) + (i - 1)] 
				+ grid0[(j * x) + (i + 1)]) 
				* 0.25;
		}
	}
}
#endif
