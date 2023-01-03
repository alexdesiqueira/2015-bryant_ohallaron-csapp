#include <stdio.h>

typedef unsigned char* byte_pointer;

// using show_bytes from class (1h01'); different than the one in the book
void show_bytes(byte_pointer start, size_t len)
{
    int i;
    for (i = 0; i < len; i++)
        printf("%p \t 0x%.2x\n", start+i, start[i]);
    printf("\n");
}

int main()
{
    long double value = 3.14159;
    show_bytes((byte_pointer) &value, sizeof(long double));
    printf("* size of float: %ld bytes\n", sizeof(float));  // 4 bytes: 32 bits
    printf("* size of double: %ld bytes\n", sizeof(double));  // 8 bytes: 64 bits
    printf("* size of long double: %ld bytes\n", sizeof(long double));  // 16 bytes: 128 bits
    return 0;
}