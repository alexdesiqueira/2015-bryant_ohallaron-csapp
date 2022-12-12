#include <stdio.h>
#include <stdint.h>

int main()
{
    int32_t x = 0X87654321;
    printf("x. %x \n", x);

    printf("A. %x \n", x & 0XFF);
    printf("B. %x \n", (x ^ ~0XFF) | (x & 0XFF));
    printf("C. %x \n", (x & ~0XFF) | (x | 0XFF));
}