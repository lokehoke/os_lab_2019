CC=gcc
CFLAGS=-std=c99 -w

all : process_memory.o zombie.o parallel_sum.o utils.c

zombie.o : zombie.c
	$(CC) -o $@ zombie.c $(CFLAGS)

process_memory.o : process_memory.c
	$(CC) -o $@ process_memory.c $(CFLAGS)

parallel_sum.o : parallel_sum.c utils.c
	$(CC) -o $@ parallel_sum.c utils.c $(CFLAGS) -pthread
