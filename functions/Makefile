all: power

.PHONY: clean

power: power.s
	gcc -m32 -nostdlib $^ -o $@

clean:
	rm -f power power.o
