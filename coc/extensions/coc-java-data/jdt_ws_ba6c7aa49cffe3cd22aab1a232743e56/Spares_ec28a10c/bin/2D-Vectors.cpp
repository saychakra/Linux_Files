#include <bits/stdc++.h>
using namespace std;

int main() {
    vector<int> v[5];
    for(int i = 0; i < 5; i++) {
        for(int j = 0; j < 3; j++) {
            int x; cin >> x; v[i].push_back(x);
        }
    }
    cout << v[4][0] << endl;
}

/*
this will basically start filling up values at each row:
first i = 0 [row = 0]
we push 3 values into the v[0] position say 11, 12, 13
second i = 1 [row = 1]
we push 3 values into the v[1] position say 14, 15, 16 and so on.
Finally, if we push the following values:

11 12 13
14 15 16
17 18 19
20 21 22
23 24 25

This would be the final matrix and the value of v[4][0] should be 23.

*/
