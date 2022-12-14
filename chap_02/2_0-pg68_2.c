#include <stdio.h>

int main()
{
  int mult_1 = (500 * 400) * (300 * 200);
  int mult_2 = ((500 * 400) * 300) * 200;
  int mult_3 = ((200 * 500) * 300) * 400;
  int mult_4 = 400   * (200 * (300 * 500));

  printf("(500 * 400) * (300 * 200) = %d\n", mult_1);
  printf("((500 * 400) * 300) * 200 = %d\n", mult_2);
  printf("((200 * 500) * 300) * 400 = %d\n", mult_3);
  printf("400 * (200 * (300 * 500)) = %d\n", mult_4);

  return 0;
}

/*

Compiling it with

$ gcc -Wall -Og -g -o 2_0-pg68_2 2_0-pg68_2.c

Warnings:

2_0-pg68_2.c: In function ‘main’:
2_0-pg68_2.c:5:28: warning: integer overflow in expression of type ‘int’ results in ‘-884901888’ [-Woverflow]
    5 |   int mult_1 = (500 * 400) * (300 * 200);
      |                            ^
2_0-pg68_2.c:6:36: warning: integer overflow in expression of type ‘int’ results in ‘-884901888’ [-Woverflow]
    6 |   int mult_2 = ((500 * 400) * 300) * 200;
      |                                    ^
2_0-pg68_2.c:7:36: warning: integer overflow in expression of type ‘int’ results in ‘-884901888’ [-Woverflow]
    7 |   int mult_3 = ((200 * 500) * 300) * 400;
      |                                    ^
2_0-pg68_2.c:8:22: warning: integer overflow in expression of type ‘int’ results in ‘-884901888’ [-Woverflow]
    8 |   int mult_4 = 400   * (200 * (300 * 500));
      |                      ^

*/
