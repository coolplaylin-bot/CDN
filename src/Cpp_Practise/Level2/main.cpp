#include <iostream>
#include <ctime>

using namespace std;

int main()
{
    // using time
    srand((unsigned int)time(NULL));
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

