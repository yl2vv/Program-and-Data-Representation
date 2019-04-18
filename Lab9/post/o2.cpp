#include <iostream>
using namespace std;

int multiply(int x,int y) {
	int z = 0;
	for (int i = 0; i < y; i++) {
		z += x;
	}
	int w = 0;
	w += 2;
	return z;
}

int main() {
	cout << multiply(2,3) << endl;
	return 0;
}

