CC=gcc
CFLAGS=-I. -std=c99
all: sequential_min_max.o parallel_min_max.o fork_exec.o

fork_exec.o:
	$(CC) -o fork_exec.o fork_exec.c $(CFLAGS)

sequential_min_max.o : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o sequential_min_max.o find_min_max.o utils.o sequential_min_max.c $(CFLAGS)

parallel_min_max.o : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max.o utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)
