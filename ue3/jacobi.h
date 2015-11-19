#ifdef DOUBLE
	typedef double dtype;
	
	#define SSE_LOAD _mm_load_pd
	#define SSE_ADD _mm_add_pd
	#define SSE_MUL _mm_mul_pd
	#define SSE_SET _mm_set1_pd
	#define SSE_STORE _mm_store_pd
	#define SSE_TYPE __m128d
	#define SSE_VECTOR 2

	#define AVX_LOAD _mm256_load_pd
	#define AVX_ADD _mm256_add_pd
	#define AVX_MUL _mm256_mul_pd
	#define AVX_SET _mm256_set1_pd
	#define AVX_STORE _mm256_store_pd
	#define AVX_TYPE __m256d
	#define AVX_VECTOR 4
#else
	typedef float dtype;

	#define SSE_LOAD _mm_load_ps
	#define SSE_ADD _mm_add_ps
	#define SSE_MUL _mm_mul_ps
	#define SSE_SET _mm_set1_ps
	#define SSE_STORE _mm_store_ps
	#define SSE_TYPE __m128
	#define SSE_VECTOR 4

	#define AVX_LOAD _mm256_load_ps
	#define AVX_ADD _mm256_add_ps
	#define AVX_MUL _mm256_mul_ps
	#define AVX_SET _mm256_set1_ps
	#define AVX_STORE _mm256_store_ps
	#define AVX_TYPE __m256
	#define AVX_VECTOR 8
#endif

void jacobi_vanilla(dtype *, dtype *, int, int);
void jacobi_sse(dtype *, dtype *, int, int);
void jacobi_avx(dtype *, dtype *, int, int);

