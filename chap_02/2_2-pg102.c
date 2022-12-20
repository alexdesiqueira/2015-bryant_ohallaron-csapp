#include <stdio.h>
#include <limits.h>

int return_positive(int x)
{
    if (x < 0)
        return -x;
    else
        return x;
}

int main()
{
    int neg_x;

    neg_x = return_positive(-42);
    printf("* Positive of x: %d\n", neg_x);

    // now, passing INT_MIN.
    neg_x = return_positive(INT_MIN);
    printf("* Positive of x: %d\n", neg_x);

    return 0;
}

/* compiling it with

$ gcc -Wall -Og -g -o 2_2-pg102 2_2-pg102.c

Checking assembly file with

$ gcc -Wall -Og -S 2_2-pg102.c

*/