#include <iostream>
#include <Windows.h>
extern int desk();
extern int NestedFor();

int main()
{
	while (true) {
		desk();
		NestedFor();
		Sleep(10);
	}
	return 0;
}