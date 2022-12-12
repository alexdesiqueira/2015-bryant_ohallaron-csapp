#include <stdio.h>
#include <stdint.h>

void inplace_swap(int *x, int *y)
{
    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
}

void reverse_array(int a[], int cnt)
{
    int first, last;
    for (first = 0, last = cnt-1;
         first <= last;
         first++, last--)
    {
        inplace_swap(&a[first], &a[last]);
    }
}

int main()
{
    printf("* Original array: \n");
    int cnt = 7;
    int arr[7] = {1, 2, 3, 4, 5, 6, 7};

    for (int i = 0; i < cnt; i++)
        printf(" %d ", arr[i]);

    // https://stackoverflow.com/questions/1461432/what-is-array-to-pointer-decay
    // Three ways to pass in an array:
    //
    // void by_value(const T* array)   // const T array[] means the same
    // void by_pointer(const T (*array)[U])
    // void by_reference(const T (&array)[U])
    //
    // The last two will give proper sizeof info, while the first one won't since the array argument has decayed to be assigned to the parameter.

    printf("\n");

    reverse_array(arr, cnt);

    printf("* Reversed array: \n");
    for (int i = 0; i < cnt; i++)
        printf(" %d ", arr[i]);

    printf("\n");
    return 0;

}