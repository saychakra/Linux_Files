#include <bits/stdc++.h>
using namespace std;

int main() {
    int a[4][5] = {{1, 2, 3, 4, 5},
                   {6, 7, 8, 9, 10},
                   {11, 12, 13, 14, 15},
                   {16, 17, 18, 19, 20}};
    printf("(**a): %d\n", (**a));
    printf("(**a+2): %d\n", (**a+2));
    printf("%d\n",*(*(a+(**a+2)))); 
    //printf("%d\n", *(*(a+**a+2)+3));
    return 0;
}
