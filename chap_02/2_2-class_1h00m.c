#include <stdio.h>

int main()
{
    int n = 3;
    for (int i=n-1; i-sizeof(char) >= 0; i--)
        printf("* value of i: %d\n", i);
    return 0;
}

/* Same stuff as 2_2-class_57m30s.c:

(...)
* value of i: -21294
* value of i: -21295
* value of i: -21296
* value of i: -21297
* value of i: -21298
* value of i: -21299
* value of i: -21300
* value of i: -21301
(...)

`i` won't stop, since sizeof() returns an unsigned value
Then, comparison is unsigned!

*/