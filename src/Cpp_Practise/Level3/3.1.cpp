#include <iostream>

using namespace std;

int main()
{
    int num, x, y, z;
    num = 100;
    do
    {
        x = num % 10;
        y = num / 10 % 10;
        z = num / 100;
        if ((x * x * x + y * y * y + z * z * z) == num)
        {
            cout << num << " is a Narcissistic number" << endl;
        }
        else
        {
            cout << num << " isn't a Narcissistic number" << endl;
        }
        num++;
    } while (num < 1000);
}
