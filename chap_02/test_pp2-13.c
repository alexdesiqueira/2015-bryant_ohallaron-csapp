#include <stdio.h>

int bis(int x, int m)  // bit set
{
    /* setting result to 1 at each bit position
       where m is 1*/
    return x | m;
}

int bic(int x, int m)  // bit clear
{
    /* setting result to 0 at each bit position
       where m is 1*/
    return (x & ~m);
}

int bool_or(int x, int y)
{
    int result = bis(x, y);
    return result;
}

int bool_xor(int x, int y)
{
    // x ^ y = (x & ~y) | (~x & y)
    int result = bis(bic(x, y), bic(y, x));
    return result;
}

int main()
{
    int x = 0x11001000;
    int m = 0x01010101;

    printf(" %x \n", bis(x, m));
    printf(" %x \n", bic(x, m));

    printf("OR:  %x \n", bool_or(x, m));
    printf("XOR:  %x \n", bool_xor(x, m));
    return 0;
}