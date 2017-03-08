#CC = cc
CC = mpicc
CFLAGS = -g -pg -O2 -std=c99
LIBS = -lm -lgsl -lgslcblas

OBJS = tpm.o

tpm :  $(OBJS)
	$(CC) -o tpm $(OBJS) $(LIBS) $(CFLAGS)

tpm.o: tpm.c $(HEADS)
	$(CC) -c tpm.c $(CFLAGS)

clean:
	@rm -f *.o *~