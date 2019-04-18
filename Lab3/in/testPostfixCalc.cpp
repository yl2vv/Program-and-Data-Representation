/* Yubin Lim yl2vv
testPostfixCalc.cpp
Feb 1, 2019 
CS2150 - 103*/

#include <iostream>
#include <stack>
#include <cstdlib>
#include "postfixCalculator.h"
using namespace std;

int main() {
    Stack stack;
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
     cout << "Result is: " << stack.top() << endl;
    while(1){
        cout<< "yeet";
    }
    return 0;
}
