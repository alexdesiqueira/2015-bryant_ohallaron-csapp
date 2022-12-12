#include <stdio.h>
#include <string.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len)
{
    int i;
    for (i = 0; i < len; i++)
    {
        if (start[i] == ' ')
        {
            printf(" SPC ");
        }
        else
        {
            printf(" %x ", start[i]);
        }
    }
    printf("\n");
}


int main()
{
    const char *m = "a mnopqr z";
    show_bytes((byte_pointer) m, strlen(m));
    return 0;
}