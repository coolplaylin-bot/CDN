#include <iostream>

using namespace std;

int main()
{
    int answer = rand() % 100 + 1;
    int res;
    cout << "Type a number: ";
    cin >> res;
    while (answer != res)
    {
        if (answer > res)
        {
            cout << "Smaller" << endl;
        }
        else
        {
            cout << "Biger" << endl;
        }
        cout << "Type a number: ";
        cin >> res;
    }
    cout << "Success" << endl;
    return 0;
}

