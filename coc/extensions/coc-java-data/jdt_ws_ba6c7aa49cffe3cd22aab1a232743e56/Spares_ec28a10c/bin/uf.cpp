#include <bits/stdc++.h>
using namespace std;

bool connected(vector<int> id, int p, int q) {
    return (id[p] == id[q]);
}

void node_union (vector<int> id, int p, int q) {
    int pid = id[p];
    int qid = id[q];
    for (int i = 0; i < id.size(); i++) {
        if (id[i] == pid) id[i] = qid;
    }
}

int main() {
    int n;
    cin >> n;
    vector<int> arr(n);
    // setting the values to independent nodes initially
    for (int i = 0; i < n; i++) {
        arr[i] = i;
    }
    return 0;
}
