#include "jacobi.h"

void jacobi_vanilla(dtype *grid0, dtype *grid1, int x, int y) {
	for (int j = 1; j < y - 1; ++j) {
		for (int i = 1; i < x - 1; ++i) {
			grid1[(j * x) + i] =
				( grid0[((j - 1) * x) + i]
				+ grid0[((j + 1) * x) + i]
				+ grid0[(j * x) + (i - 1)]
				+ grid0[(j * x) + (i + 1)]
				) * 0.25;
		}
	}
}
