#include <stdio.h>

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

int main()
{
    int value = 0X0001 << 0;
    int *pval = &value;
    show_bytes((byte_pointer) &value, sizeof(int));
    show_bytes((byte_pointer) &pval, sizeof(void *));

    int value1 = 0X0001 << 1;
    int *pval1 = &value1;
    show_bytes((byte_pointer) &value1, sizeof(int));
    show_bytes((byte_pointer) &pval1, sizeof(void *));

    int value2 = 0X0001 << 2;
    int *pval2 = &value2;
    show_bytes((byte_pointer) &value2, sizeof(int));
    show_bytes((byte_pointer) &pval2, sizeof(void *));
}