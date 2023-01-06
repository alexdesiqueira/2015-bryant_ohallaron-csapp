#include <stdio.h>

long plus(long x, long y);

void sumstore(long x, long y, long *dest)
{
    long t = plus(x, y);
    *dest = t;
}

/* Checking different assembly "representations" of sumstore.

* Using $ gcc -Og -S <file.c>:

sumstore:
	pushq	%rbx
	movq	%rdx, %rbx
	call	plus
	movq	%rax, (%rbx)
	popq	%rbx
	ret

* Generating an object file with

$ gcc -Og -c <file.c>,

then running $ objdump -d <file.o>:

0000000000000005 <sumstore>:
   5:   53                      push   %rbx
   6:   48 89 d3                mov    %rdx,%rbx
   9:   e8 00 00 00 00          call   e <sumstore+0x9>
   e:   48 89 03                mov    %rax,(%rbx)
  11:   5b                      pop    %rbx
  12:   c3                      ret

* Running objdump -d directly on the executable <file>:

000000000040112b <sumstore>:
  40112b:       53                      push   %rbx
  40112c:       48 89 d3                mov    %rdx,%rbx
  40112f:       e8 f2 ff ff ff          call   401126 <plus>
  401134:       48 89 03                mov    %rax,(%rbx)
  401137:       5b                      pop    %rbx
  401138:       c3                      ret  

<file> here was generated with $ gcc -Og -o <file> <file.c>.
*/

long plus(long a, long b) {
    long s = a + b;
    return s;
}

int main()
{
    long s;
    sumstore(2, 3, &s);
    printf("2 + 3 --> %ld\n", s);
    return 0;
}