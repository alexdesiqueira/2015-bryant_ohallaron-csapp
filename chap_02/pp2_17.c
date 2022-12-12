#include <stdio.h>
#include <math.h>


int bin_to_unsig(int first,int second, int third, int fourth)
{
    int result;
    result = first * pow(2, 3) +
        second * pow(2, 2) +
        third * pow(2, 1) +
        fourth * pow(2, 0);
    return result;
}

int bin_to_twos_comp(int first,int second, int third, int fourth)
{
    int result;
    result = -first * pow(2, 3) +
        second * pow(2, 2) +
        third * pow(2, 1) +
        fourth * pow(2, 0);
    return result;
}

int main()
{
    int first = 1, second = 1, third = 1, fourth = 1;
    printf("%d \n", bin_to_unsig(first, second, third, fourth));
    printf("%d \n", bin_to_twos_comp(first, second, third, fourth));
    
    return 0;
}
