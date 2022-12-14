#include <stdio.h>
#include <math.h>

void print_n_line(int n)
{
  printf("%d \t %d \t\t 0x%x\n", n, (int) pow(2, n), (int) pow(2, n));
}

void print_dec_or_hex_line(int num)
{
  printf("%d \t %d \t\t 0x%x\n", (int) log2(num), num, num);
}

int main()
{
  printf("n \t 2^n (dec) \t 2^n (hex)\n");
  printf("----------------------------------\n");

  print_n_line(5);
  print_n_line(23);
  print_dec_or_hex_line(32768);
  print_dec_or_hex_line(0x2000);
  print_n_line(12);
  print_dec_or_hex_line(64);
  print_dec_or_hex_line(0x100);

  return 0;
}

/* Errors I got:

   $ gcc -Wall -Og -g -o pp2_2 pp2_2.c
/usr/bin/ld: /tmp/ccRGHzbm.o: in function `print_n_line':
/var/home/alex/docs/learning_bench/csapp_experiments/chap_02/pp2_2.c:6: undefined reference to `pow'
/usr/bin/ld: /var/home/alex/docs/learning_bench/csapp_experiments/chap_02/pp2_2.c:6: undefined reference to `pow'
collect2: error: ld returned 1 exit status

  Solution:

  "You need to link with the math library"

  https://stackoverflow.com/questions/12824134/undefined-reference-to-pow-in-c-despite-including-math-h

  $ gcc -Wall -Og -g -o pp2_2 pp2_2.c -lm

  Kinda stealing, using the fact that the same number can be shown in different ways as %d and %x =)
  It would be fun to try to estimate `n` and the decimal number according to (hex) n = i + 4 * j, as
described in the book
*/
