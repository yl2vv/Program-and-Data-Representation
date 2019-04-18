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
    p.push (2); // 2
    p.push (4); // 2 4
    p.push (6); // 2 4 6
    p.push (-5); // 2 4 6 -5
    p.push (3); // 2 4 6 -5 3
    p.subtract(); // 2 4 6 -8
    p.negate(); // 2 4 6 8
    p.multiply(); // 2 4 48
    cout << "After Multiply: " << p.top() << endl; //48
    p.divide(); // 2 0
    p.add(); // 2
    cout << "Result is: " << p.top() << endl; // 2
    return 0;
}