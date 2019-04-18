/* Yubin Lim yl2vv
inlab4.cpp
Feb 11, 2019 
CS2150 - 103*/

#include <iostream>
#include <climits>
#include <cfloat>
#include <stdint.h>

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

void overflow() {
	unsigned int unsignedInt = UINT_MAX;
	int Int = INT_MAX;
	float flo = FLT_MAX;
	double d = DBL_MAX;
	bool b = false;
	cout << "Maximum value of an int: " << Int << endl;
	cout << "Maximum value of an unsigned int: " << unsignedInt << endl;
	cout << "Maximum value of a float: " << flo << endl;
	cout << "Maximum value of a double: " << d << endl;
	cout << "Maximum value of a bool: " << b << endl;
	cout << "Maximum value of an unsigned character: " << UCHAR_MAX << endl;
	cout << "Maximum value of an signed character: " << SCHAR_MAX << endl;
	cout << endl;
}

int main() {

	int i = 0;
	unsigned int u = 0;
	float f = 0;
	double d = 0.0;
	char c = '0';
	bool b = false;
	int* ip = NULL;

	cout << i << endl;
	cout << u << endl;
	cout << f << endl;
	cout << d << endl;
	cout << c << endl;
	cout << b << endl;
	cout << ip << endl;
	cout << endl;

	u = 1;
	f = 1;

	i = 1;
	d = 1.0;
	c = '1';
	b = true;

	cout << i << endl;
	cout << d << endl;
	cout << c << endl;
	cout << b << endl;
	cout << endl;

	sizeOfTest();
	overflow();

	/////////////////////////////////////////////////////////////////
	/* Begin Primitive Arrays*/
	/////////////////////////////////////////////////////////////////

	int IntArray[10];
	char CharArray[10];

	int IntArray2D[6][5];
	char CharArray2D[6][5];

	for(int i=0;i<10;i++) { 
	  IntArray[i] = i; 
	} 

	for(int i=0;i<10;i++) { 
	  CharArray[i] = 'a'; 
	} 

	int count = 1;
	for(int i=0;i<6;i++) { 
		for(int z=0;z<5;z++) {
	  		IntArray2D[i][z] = count;
	  		count++; 
		}
	}

	char character = 'a';
	for(int i=0;i<6;i++) { 
		for(int z=0;z<5;z++) {
	  		CharArray2D[i][z] = character;
	  		character++; 
	  	}
	}  

	return 0;
}