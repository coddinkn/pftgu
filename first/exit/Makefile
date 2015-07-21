CC=gcc
CFLAGS= -nostdlib

PROG=exit

all: $(PROG)

.PHONY: clean

$(PROG): $(PROG).s
	$(CC) $(CFLAGS) $^ -o $@.out

clean:
	rm -f $(PROG).out *.o
