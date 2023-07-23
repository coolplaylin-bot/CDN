#include <iostream>

using namespace std;

int main()
{
    int answer = rand() % 100 + 1;
    int res;
    cout << answer << endl;
    cout << "Type a number: ";
    cin >> res;
    while (answer != res)
    {
        cout << "Type a number: ";
        cin >> res;
    }
    cout << "Success" << endl;
    return 0;
}

