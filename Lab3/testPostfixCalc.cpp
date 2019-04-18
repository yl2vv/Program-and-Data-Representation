/* Yubin Lim yl2vv
testPostfixCalc.cpp
Feb 1, 2019 
CS2150 - 103*/

#include <iostream>
#include <stack>
#include "postfixCalculator.h"
using namespace std;

int main() {
	Stack p;
    p.push (6);
    p.push (2);
    p.push (874);
    p.push (-47);
    p.push (6012);
    p.subtract();
    p.negate();
    p.multiply();
    cout << "After Multiply: " << p.top() << endl;
    p.divide();
    p.add();
    cout << "Result is: " << p.top() << endl;
    return 0;
}