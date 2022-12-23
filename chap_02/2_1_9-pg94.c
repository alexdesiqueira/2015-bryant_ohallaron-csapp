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
    char x1 = 0x63;  // signed, for arithmetic right shifts
    unsigned char ux1 = 0x63;  // unsigned, for logical right shifts
    char x2 = 0x95;
    unsigned char ux2 = 0x95;

    char x1_left_4 = x1 << 4;
    unsigned char ux1_rlog_4 = ux1 >> 4;
    char x1_rarit_4 = x1 >> 4;

    printf("* x1: \t\t\t");
    show_bytes((byte_pointer) &x1, sizeof (char));
    printf("* ux1: \t\t\t");
    show_bytes((byte_pointer) &ux1, sizeof (char));
    printf("* x1 << 4: \t\t");
    show_bytes((byte_pointer) &x1_left_4, sizeof (char));
    printf("* ux1 >> (log) 4: \t");
    show_bytes((byte_pointer) &ux1_rlog_4, sizeof (char));
    printf("* x1 >> (arit) 4: \t");
    show_bytes((byte_pointer) &x1_rarit_4, sizeof (char));

    char x2_left_4 = x2 << 4;
    unsigned char ux2_rlog_4 = ux2 >> 4;
    char x2_rarit_4 = x2 >> 4;

    printf("\n* x2: \t\t\t");
    show_bytes((byte_pointer) &x2, sizeof (char));
    printf("* ux2: \t\t\t");
    show_bytes((byte_pointer) &ux2, sizeof (char));
    printf("* x2 << 4: \t\t");
    show_bytes((byte_pointer) &x2_left_4, sizeof (char));
    printf("* ux2 >> (log) 4: \t");
    show_bytes((byte_pointer) &ux2_rlog_4, sizeof (char));
    printf("* x2 >> (arit) 4: \t");
    show_bytes((byte_pointer) &x2_rarit_4, sizeof (char));
}