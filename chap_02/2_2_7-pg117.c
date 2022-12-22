#include <stdio.h>

// show_bytes defined in page 81

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
    int i;
    for (i = 0; i < len; i++)
        printf(" %.2x", start[i]);
    printf("\n");
}

int main()
{
    int x = 53191;
    short sx = (short) x;
    int y = sx;

    // defining x as int. x = 53191, or 0x0000cfc7
    printf("* x  = %d:\t", x);
    show_bytes((byte_pointer) &x, sizeof(int));

    // casting x to short; storing it in sx. sx = -12345, or 0xcfc7
    printf("* sx = %d:\t", sx);
    show_bytes((byte_pointer) &sx, sizeof(short));

    // casting sx back to int; storing it in y. y = -12345, or  0xffffcfc7
    printf("* y  = %d:\t", y);
    show_bytes((byte_pointer) &y, sizeof(int));

    return 0;
}

/*
Compiling:

$ gcc -Wall -Og -g -o 2_2_7-pg117 2_2_7-pg117.c

Errors I got:

2_2_7-pg117.c: In function ‘main’:
2_2_7-pg117.c:21:35: warning: implicit declaration of function ‘size_of’ [-Wimplicit-function-declaration]
   21 |     show_bytes((byte_pointer) &x, size_of(int));
2_2_7-pg117.c:21:43: error: expected expression before ‘int’
   21 |     show_bytes((byte_pointer) &x, size_of(int));

It was supposed to be sizeof() :)
*/