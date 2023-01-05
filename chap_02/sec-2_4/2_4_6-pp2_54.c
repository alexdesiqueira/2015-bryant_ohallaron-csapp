#include <stdio.h>
#include <limits.h>


int main()
{
  int x = INT_MIN;
  float f = (float) x;
  double d = (double) x;

  printf ("(int)(double) %d = %d\n", x, (int)(double) x);
  printf ("(int)(float) %d = %d\n", x, (int)(float) x);
  printf ("(float)(double) %f = %f\n", d, (float)(double) d);
  printf ("-(-(%f)) = %f\n", f, -(-f));

  printf("1.0/2 == 1/2.0: %d\n", 1.0/2 == 1/2.0);
  printf("(f+d)-f: %f = %f\n", ((f+d)-f), d);

  return 0;
}
