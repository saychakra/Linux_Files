#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    while(n--) {
        string str;
        cin >> str;
        int str_len = str.length();
        // for cases where string length is even:
        if (str_len % 2 == 0) {
            cout << "Inside the even string case" << endl;
            string sub1 = str.substr(0, str_len/2);
            string sub2 = str.substr(str_len/2, str_len-1);
            cout << sub1 << endl;
            cout << sub2 << endl;
            if (sub1 == sub2) { 
                cout << "YES" << endl;
            } else {
                cout << "NO" << endl;
            }
        } 
        // for cases where the string length is odd:
        else if (str_len % 2 == 1) {
            cout << str_len << endl;
            cout << "inside the odd string case" << endl;
            string sub1 = str.substr(0, str_len/2);
            string sub2 = str.substr(str_len/2+1, str_len-1);
            cout << sub1 << endl;
            cout << sub2 << endl;
            if (sub1 == sub2) cout << "YES" << endl;
            else              cout << "NO" << endl;
        }
    }
    return 0;
}
