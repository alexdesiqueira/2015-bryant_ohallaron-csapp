#include <stdio.h>

int main()
{
  int mult = 200 * 300 * 400 * 500;
  printf("mult: %d\n", mult);
  return 0;
}


/*
Compiling it with

$ gcc -Wall -Og -o 2_0-pg68 2_0-pg68.c

gcc returns:

2_0-pg68.c: In function ‘main’:
2_0-pg68.c:5:30: warning: integer overflow in expression of type ‘int’ results in ‘-884901888’ [-Woverflow]
    5 |   int mult = 200 * 300 * 400 * 500;
      |                              ^

Executing 2_0-pg68:

$ ./2_0-pg68
mult: -884901888

Generating an assembly file:

$ gcc -Wall -Og -S 2_0-pg68.c

will generate 2_0-pg68.s:

	.file	"2_0-pg68.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"mult: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$-884901888, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.1 20221121 (Red Hat 12.2.1-4)"
	.section	.note.GNU-stack,"",@progbits

What about debugging it with gdb?
Checking some videos I wanted to see before.

https://youtu.be/Dq8l1_-QgAc

Recompiled the file to include debug information:

$ gcc -Wall -Og -g -o 2_0-pg68 2_0-pg68.c

$ gdb ./2_0-pg68

(gdb) lay next
(gdb) <Enter>     -> will show source code, assembly code
(gdb) break main  -> will break at main
(gdb) run         -> will run the program and break in main()
(gdb) next        -> next line in (C) source code
(gdb) nexti       -> next instruction in assembly code
(gdb) step        -> step into a function being called
(gdb) next        -> step over a function being called
(gdb) ref         -> refresh the screen
(gdb) x/i $pc     -> examine the instruction at $pc
(gdb) info registers  -> current info on registers

Funny stuff I remembered; how to go back in time using gdb?

(gdb) reverse-nexti

It gave me an error on multi-threaded programs. I'll try record, as shown here:

https://stackoverflow.com/questions/7517236/how-do-i-enable-reverse-debugging-on-a-multi-threaded-program

(gdb) break main
(gdb) run
(gdb) record
(gdb) nexti
(...)

Process record and replay target doesn't support syscall number 318

Geez :)
*/
