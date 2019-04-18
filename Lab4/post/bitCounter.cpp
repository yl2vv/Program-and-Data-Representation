/* Yubin Lim yl2vv
bitCounter.cpp
Feb 14, 2019 
CS2150 - 103*/

#include <iostream>
#include <cstdlib>
using namespace std;

int counter(int x) {
	if (x == 0)
		return 0;
	if (x == 1)
		return 1;
	else if (x % 2 == 0) 
		return counter(x/2);
	else return 1 + counter(x/2);
}

int main (int argc, char **argv) {
	if (argc < 1) {
		exit(-1);
	}
	int bin = atoi(argv[1]);
	cout << "Number of 1's in the binary representation: " << counter(bin) << endl;
	return 0;
}