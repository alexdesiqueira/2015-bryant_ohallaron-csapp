#include <stdio.h>

int main()
{
    unsigned i;
    int n = 3;

    for (i = n-1; i >= 0; i--)
    printf("* value of i: %d\n", i);

    return 0;
}

/* Compiling:

$ gcc -Wall -Og -g -o 2_2-class_57m30s 2_2-class_57m30s.c

Checking assembly output:

$ gcc -Wall -Og -S 2_2-class_57m30s.c

Executing it:

$ ./2_2-class_57m30s

(...)
* value of i: -306092
* value of i: -306093
* value of i: -306094
* value of i: -306095
* value of i: -306096
* value of i: -306097
* value of i: -306098
* value of i: -306099
* value of i: -306100
* value of i: -306101
(...)

*/