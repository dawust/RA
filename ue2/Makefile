CC=icc
CFLAGS=-std=gnu99 -O3 -xhost -qopt-report -qopt-report-phase=vec -dM
OPT=-DUNROLLCOMP
TARGET=vecsum_u1 vecsum_u2 vecsum_u3 vecsum_u4 vecsum_u8 vecsum_asm vecsum_u1_uc vecsum_u2_uc vecsum_u3_uc vecsum_u4_uc vecsum_u8_uc vecsum_asm_uc

all: clean $(TARGET)

vecsum_u1:
	$(CC) $(CFLAGS) -DUNROLL=1 main.c -lrt vecsum.c -o $@
vecsum_u2:
	$(CC) $(CFLAGS) -DUNROLL=2 main.c -lrt vecsum.c -o $@
vecsum_u3:
	$(CC) $(CFLAGS) -DUNROLL=3 main.c -lrt vecsum.c -o $@
vecsum_u4:
	$(CC) $(CFLAGS) -DUNROLL=4 main.c -lrt vecsum.c -o $@
vecsum_u8:
	$(CC) $(CFLAGS) -DUNROLL=8 main.c -lrt vecsum.c -o $@

vecsum_u1_uc:
	$(CC) $(CFLAGS) $(OPT) -DUNROLL=0 main.c -lrt vecsum.c -o $@
vecsum_u2_uc:
	$(CC) $(CFLAGS) $(OPT) -DUNROLL=2 main.c -lrt vecsum.c -o $@
vecsum_u3_uc:
	$(CC) $(CFLAGS) $(OPT) -DUNROLL=3 main.c -lrt vecsum.c -o $@
vecsum_u4_uc:
	$(CC) $(CFLAGS) $(OPT) -DUNROLL=4 main.c -lrt vecsum.c -o $@
vecsum_u8_uc:
	$(CC) $(CFLAGS) $(OPT) -DUNROLL=8 main.c -lrt vecsum.c -o $@

vecsum_asm:
	$(CC) $(CFLAGS) -DUNROLL=4 -S -masm=intel -fsource-asm vecsum.c -o $@.S
vecsum_asm_uc:
	$(CC) $(CFLAGS) $(OPT) -DUNROLL=4 -S -masm=intel -fsource-asm vecsum.c -o $@.S
clean:
	rm -rf *.o $(TARGET)
