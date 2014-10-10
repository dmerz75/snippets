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

# Macros
MACRO1 = -D$3

# Files/Objects
OBJECTS = $2.o
CFILES = $2.c

# make commands
basic:
	$(CC) $(CF) $(MACRO1) $(CFILES) -lm -o run_$1

main: $(OBJECTS)
	$(CC) $(CFLAGS) $(MACRO1) $(OBJECTS) -lm -o run_$1

%.o : %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -r *.o run_$1*
run:
	./run_$1
