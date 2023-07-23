#include <iostream>

using namespace std;

string compare(int num1, int num2, int num3)
{
	string value;
	if (num1 > num2)
	{
		if (num2 > num3)
		{
			value = "1st > 2nd > 3rd";
		}
		else
		{
			if (num1 > num3)
			{
				value = "1st > 3rd > 2nd";
			}
			else
			{
				value = "3rd > 1st > 2nd";
			}
		}
	}
	else
	{
		if (num2 < num3)
		{
			value = "3rd > 2nd > 1st";
		}
		else
		{
			if (num1 < num3)
			{
				value = "2nd > 3rd > 1st";
			}
			else
			{
				value = "2nd > 1st > 3rd";
			}
		}
	}
	return value;
}

int main()
{
	int num1, num2, num3;
	string value;
	cout << "Type the Value of 1th Pig: ";
	cin >> num1;
	cout << "Type the Value of 2nd Pig: ";
	cin >> num2;
	cout << "Type the Value of 3rd Pig: ";
	cin >> num3;
	cout << "1st Pig: " << num1 << endl;
	cout << "2nd Pig: " << num2 << endl;
	cout << "3rd Pig: " << num3 << endl;
	cout << "Value: " << compare(num1, num2, num3) << endl;
	return 0;
}