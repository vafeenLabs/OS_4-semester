#include "num.hpp"

string toBin(int number)
{
    string result = "";
    while (number > 0)
    {
        result = to_string(number % 2) + result;
        number = number / 2;
    }
    return result;
}
