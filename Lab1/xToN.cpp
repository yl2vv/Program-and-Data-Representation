// James Lim, yl2vv, 1/17/19
// xToN.cpp 
#include <iostream>
using namespace std;

int xton(int x, int n) {
  if(n == 0) {
    return 1;
  }
  return x *  xton(x, n-1);
}

int main() {
  int x, n, y;
  cin >> x;
  cin >> n;
  y = xton(x,n);
  cout << y << endl;
  return 0;
}