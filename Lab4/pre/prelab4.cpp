/* Yubin Lim yl2vv
prelab4.cpp
Feb 9, 2019 
CS2150 - 103*/

#include <iostream>
#include <climits>

using namespace std;

void sizeOfTest() {

	cout << "SIZE OF TYPES" << endl;
	cout << "int: " << sizeof(int) << endl;
	cout << "unsigned int: " << sizeof(unsigned int) << endl;
	cout << "float: " << sizeof(float) << endl;
	cout << "double: " << sizeof(double) << endl;
	cout << "char: " << sizeof(char) << endl;
	cout << "bool: " << sizeof(bool) << endl;
	cout << "int*: " << sizeof(int*) << endl;
	cout << "char*: " << sizeof(char*) << endl;
	cout << "double*:" << sizeof(double*) << endl;
	cout << endl;
}

void outputBinary(unsigned int x) {
	string ThirtyTwoBinary = "";
	int count = 0;
	for (int i = 31; i >= 0; i--) {
		if ((x & 1 << i) != 0) {
			ThirtyTwoBinary += "1";
		}
		else 
			ThirtyTwoBinary += "0";
		count++;
		if (count % 4 == 0) 
			ThirtyTwoBinary += " ";
	}
	cout << ThirtyTwoBinary << endl;
	cout << endl;
}

void overflow() {
	unsigned int unsignedInt = UINT_MAX;
	cout << "Maximum value of an unsigned int: " << unsignedInt << endl;
	unsignedInt += 1;
	cout << "Add one to max unsigned int: " << unsignedInt << endl;
	cout << "The maximum value of an unsigned integer, ~4.3 Billion, the binary is all 1's. If you add one to it, all the 1's would become 0. " << endl;
	cout << endl;
}

int main() {
	string s;
	cout << "Enter a single integer: ";
	cin >> s;
	cout << endl;
	int x = atoi(s.c_str());
	sizeOfTest();
	outputBinary(x);
	overflow();
	return 0;
}