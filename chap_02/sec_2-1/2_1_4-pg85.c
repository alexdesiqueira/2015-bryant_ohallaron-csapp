#include <stdio.h>
#include <string.h>  // strlen lives here

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
    const char* value = "12345";
    show_bytes((byte_pointer) value, strlen(value));  // why not &value?
}