# my first real assembly language program :-)
# calls the linux kernel exit command, that is it

# I am told that in more functional programs this part is used
# to specify memory that will be used
.section .data

# This is where the instructions live
.section .text

.globl _start

_start:
	movq $1, %rax
	movq $5, %rbx
	int $0x80
