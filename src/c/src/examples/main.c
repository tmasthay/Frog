#include <stdio.h>
#include "arith.h"

int main()
{
    float a = 5.0, b = 3.0;

    printf("Add: %f + %f = %f\n", a, b, add(a, b));
    printf("Subtract: %f - %f = %f\n", a, b, subtract(a, b));
    printf("Multiply: %f * %f = %f\n", a, b, multiply(a, b));
    printf("Divide: %f / %f = %f\n", a, b, divide(a, b));

    return 0;
}
