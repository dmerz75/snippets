# -*- mode: snippet -*-
# name: makefile
# key: makefile
# --
# Compiler
CC = gcc

# Compiler Flags: Use $(CF) for generic/old architectures
CF       = -Wall -g -O2
CFLAGS   = -ansi -std=gnu99
CFLAGS_1 = -ansi -pedantic -std=gnu99 -Wall -W
CFLAGS_2 = -Wconversion -Wshadow -Wcast-qual -Wwrite-strings -g -O2

# Valgrind
VAL    = valgrind --track-origins=yes -v
VALFULL= valgrind --track-origins=yes --leak-check=full -v
VALMEM = valgrind --track-origins=yes --tool=memcheck --leak-check=full --show-leak-kinds=all --show-reachable=yes --num-callers=20 --track-fds=yes -v
VALMASS= valgrind --tool=massif prog

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
