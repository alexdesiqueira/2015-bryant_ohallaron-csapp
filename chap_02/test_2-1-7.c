#include <stdio.h>

int main()
{
    printf(" %x \n", (char) ~0X41);
    printf(" %x \n", (char) ~0X00);
    printf(" %x \n", (char) (0X69 & 0X55));
    printf(" %x \n", (char) (0X69 | 0X55));

    return 0;
}