#include <iostream>

using namespace std;

__declspec(dllexport) int array()
{
	int list[5] = {0, 2, 3, 4, 5};
	cout << list << endl;
	return 0;
}