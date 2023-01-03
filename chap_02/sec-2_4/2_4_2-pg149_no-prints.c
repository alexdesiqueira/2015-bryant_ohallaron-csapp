#include <stdio.h>

typedef unsigned char* byte_pointer;

// using show_bytes from class (1h01'); different than the one in the book
void show_bytes(byte_pointer start, size_t len)
{
    int i;
    for (i = 0; i < len; i++)
        printf("%p \t 0x%.2x\n", start+i, start[i]);
    //printf("\n");
}

int main()
{
    long double value = 3.14159;
    show_bytes((byte_pointer) &value, sizeof(long double));
    return 0;
}