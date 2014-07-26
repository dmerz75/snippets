# -*- mode: snippet -*-
# name: makefile
# key: makefile
# --
# Compiler
CC = gcc

# Compiler Flags: Use $(CF) for generic/old architectures
CF       = -g -O2
CFLAGS   = -ansi -std=gnu99
CFLAGS_1 = -ansi -pedantic -std=gnu99 -Wall -W
CFLAGS_2 = -Wconversion -Wshadow -Wcast-qual -Wwrite-strings -g -O2

# Objects
OBJECTS = $1.o $2.o
CFILES = $1.c $2.c

MACRO1 = -D$3

example1:
	$(CC) $(CF) $(MACRO1) $(CFILES) -lm -o run_prog

main.exe : $(OBJECTS)
	$(CC) $(CFLAGS) $(MACRO1) $(OBJECTS) -lm -o run_prog

%.o : %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -r *.o run_prog*
run:
	./run_prog