#include <iostream>
#include <Windows.h>

using namespace std;

__declspec(dllexport) int desk()
{
    int x, y, z;
    const int num = 7;
    for (int i = 1; i <= 100; i++)
    {
        x = i % 10;
        y = i / 10 % 10;
        z = i % 100;
        cout << i << ((x == num || y == num || z == num || i % num == 0) ? " -- desk" : "") << endl;
        Sleep(10);
    }
    

    return 0;
}
