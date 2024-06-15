#include "arith.h"

float add(float a, float b)
{
    return a + b;
}

float subtract(float a, float b)
{
    return a - b;
}

float multiply(float a, float b)
{
    return a * b;
}

float divide(float a, float b)
{
    if (b != 0)
    {
        return a / b;
    }
    else
    {
        // Handle division by zero as needed
        return 0; // or NAN, or some other error indication
    }
}
