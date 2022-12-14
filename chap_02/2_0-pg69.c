#include <stdio.h>

int main()
{
  float exp_1 = (3.14+1e20)-1e20;
  float exp_2 = 3.14+(1e20-1e20);

  printf("(3.14+1e20)-1e20 = %f\n", exp_1);
  printf("3.14+(1e20-1e20) = %f\n", exp_2);

  return 0;
}

/*

  Compiling:

  $ gcc -Wall -Og -g -o 2_0-pg69 2_0-pg69.c

  Checking the assembly version:

  $ gcc -Og -S 2_0-pg69.c

  Wondering what happens if I compile the assembly version with debug information...

  $ gcc -Og -g -S 2_0-pg69.c -o 2_0-pg69-w_debug.s

  There's _a lot_ of information in that file!
  
*/
