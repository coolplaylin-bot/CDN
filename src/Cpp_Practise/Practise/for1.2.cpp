#include <iostream>


using namespace std;

__declspec(dllexport) int NestedFor()
{
	for (int i = 1; i <= 10; i++)
	{
		for (int i = 1; i <= 10; i++)
		{
			cout << "*" << " ";
		}
		cout << endl;
		return 0;
	}

	return 0;
}