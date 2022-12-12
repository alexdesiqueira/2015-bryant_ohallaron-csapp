#include <stdio.h>
#include <stdint.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len)
{
    int i;
    for (i = 0; i < len; i++)
    {
        printf(" %x ", start[i]);
    }
    printf("\n");
}

int16_t sum(int16_t x, int16_t y)
{
    return x + y;
}

int main()
{
    int16_t res = sum(3, 4);
    int16_t *pres = &res;
    show_bytes((byte_pointer) &pres, sizeof(void *));
}