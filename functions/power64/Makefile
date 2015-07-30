CC=gcc
CFLAGS= -g -nostdlib

PROG=power

all: $(PROG)

.PHONY: clean

$(PROG): $(PROG).s
	$(CC) $(CFLAGS) $^ -o $@.out

clean:
	rm -f $(PROG).out *.o
