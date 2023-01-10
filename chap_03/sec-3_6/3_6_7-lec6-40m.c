#include <stdio.h>

long pcount_do(unsigned long x)
{
    long result = 0;
    do {
        result += x & 0x1;
        x >>= 1;
    } while (x);

    return result;
}

long pcount_goto(unsigned long x)
{
    long result = 0;
loop:
    result += x & 0x1;
    x >>= 1;
    if (x) goto loop;
    return result;
}

int main()
{
    unsigned long x = 0x101001010;

    unsigned long do_res = pcount_do(x);
    printf("* do_res: %ld\n", do_res);
    unsigned long goto_res = pcount_goto(x);
    printf("* goto_res: %ld\n", goto_res);

    return 0;
}