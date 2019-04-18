#include <iostream>
using namespace std;

int plusOne(int num) {
    return num++;
}

char character(char n) {
    return n;
}

float float_(float num) {
    return num;
}

double double_(double num) {
    return num;
}

char characterRef(char &n) {
    return n;
}

float floatRef(float &num) {
    return num;
}

double doubleRef(double &num) {
    return num;
}

int retRef(int &num) {
    return num;
}

int retPoi(int *num) {
    return *num;
}

int plusTwo(int num) {
	return plusOne(num) + 1;
}

// class Object {
// public:
// 	string a;

// };

// void add(Object o) 
//     { 
//         cout << o.a; 
//     } 

void obj3(object x, )

void a(int a[2]) {
	a[0] = 1;
	a[1] = 2;
}