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
    int x = 3;
    int x_times_16 = x * 16;  // 16 = 2 ^ 4 (k=4)
    int shift_x_by_4 = x << 4;  // x << k

    printf("* x:\t%d\n", x);

    printf("* Multiplying x by 16:\t%d\n", x_times_16);
    show_bytes((byte_pointer) &x_times_16, sizeof (int));

    printf("* Shifting x by 4:\t%d\n", shift_x_by_4);
    show_bytes((byte_pointer) &shift_x_by_4, sizeof (int));

    return 0;
}