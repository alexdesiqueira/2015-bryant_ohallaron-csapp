#include <stdio.h>

typedef unsigned char* byte_pointer;

// show_bytes in class (1h01') is different than the one in the book
void show_bytes(byte_pointer start, size_t len)
{
    int i;
    for (i = 0; i < len; i++)
        // print pointer, tab, value, newline
        printf("%p \t 0x%.2x\n", start+i, start[i]);
    printf("\n");
}

int main()
{
    int value = 15123;
    show_bytes((byte_pointer) &value, sizeof(int));
}