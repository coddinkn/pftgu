# finds the max of a set of numbers

# registers used:
# %ebi - the index of the number currently being examined
# %rbx - the largest number found
# %rax - the current number

# memory locations used:
# data_items - contains the numbers to be examined, list terminated by 0

.section .data

data_items:
	.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start

_start:
	movl $0, %edi
	movl data_items(,%edi,4), %eax
	movl %eax, %ebx

start_loop:
	cmpl $0, %eax
	je loop_exit
	incl %edi
	movl data_items(,%edi,4), %eax
	cmpl $0, %eax
	je loop_exit
	cmpl %ebx, %eax
	jle start_loop

	movl %eax, %ebx
	jmp start_loop

loop_exit:
	movl $1, %eax
	int $0x80
