#include <stdio.h>
#include <stdint.h>


int main()
{
    int8_t a = 0x01;
    int8_t b = 0xFF;

    printf(" %x \n", a&b);
    printf(" %x \n", a|b);
    printf(" %x \n", ~b);
    printf(" %x \n", a^b);

    printf(" %x \n", a&&b);
    printf(" %x \n", a||b);
    printf(" %x \n", !b);
    printf(" %x \n", a^b);

    return 0;
}