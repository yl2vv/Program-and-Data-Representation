/* Yubin Lim yl2vv
testPostfixCalc.cpp
Feb 7, 2019 
CS2150 - 103*/

#include <iostream>
#include <cstdlib>
#include <string>
#include "stack.h"
#include "postfixCalculator.h"
using namespace std;

int main() {
    PostfixCalculator stack;
    stack.push(23);
    string s;
    cout << "Enter your postfix calculation: ";
    while (cin >> s) {
        if(s == "+") 
            stack.add();
        else if(s == "*") 
            stack.multiply();
        else if(s == "-") 
            stack.subtract();
        else if(s == "/") 
            stack.divide();
        else if(s == "~") 
            stack.negate();
        else
            stack.push(atoi(s.c_str()));
    }
     cout << "Result is: " << stack.topNum() << endl;
    return 0;
}