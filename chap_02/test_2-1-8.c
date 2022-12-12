#include <stdio.h>

int main()
{
    printf("%x \n", !0x41);
    printf("%x \n", !0x00);
    printf("%x \n", !!0x41);
    printf("%x \n", 0x69 && 0x55);
    printf("%x \n", 0x69 || 0x55);
}