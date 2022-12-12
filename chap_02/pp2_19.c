#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int tcomp_2_unsig(int input)
{
    if (input < 0) {
        return input + pow(2, sizeof(int));
    }
    else {
        return input;
    }
}

int main()
{
    printf("* %d: \t %d \n", -1, tcomp_2_unsig(-1));
    printf("* %d: \t %d \n", -5, tcomp_2_unsig(-5));
    printf("* %d: \t %d \n", -6, tcomp_2_unsig(-6));
    printf("* %d: \t %d \n", -4, tcomp_2_unsig(-4));
    printf("* %d: \t %d \n", 1, tcomp_2_unsig(1));
    printf("* %d: \t %d \n", 8, tcomp_2_unsig(8));
    return EXIT_SUCCESS;
}
