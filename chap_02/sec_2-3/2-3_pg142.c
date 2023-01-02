#include <stdio.h>
#include <math.h>

int main()
{
    int x = 30;
    int k = 4;
    /* (x + (1 << k) - 1) >> k == ceil(x / (2 ^ k))*/

    int x_shift_k = (x + (1 << k) - 1) >> k;
    double ceil_x_div_2_pow_k = ceil((double) (x / pow(2, k)));

    printf("* x = \t%d, k = \t%d\n", x, k);
    printf("* (x + (1 << k) - 1) >> k = \t%d\n", x_shift_k);
    printf("* ceil((double) (x / pow(2, k))) = \t%d\n", (int) ceil_x_div_2_pow_k);
}