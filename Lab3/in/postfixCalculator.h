/* Yubin Lim yl2vv
postfixCalculator.h
Feb 1, 2019 
CS2150 - 103*/
#ifndef POSTFIXCALCULATOR_H
#define POSTFIXCALCULATOR_H

#include <iostream>
#include <stack>
#include "postfixCalculator.h"
using namespace std;

class Stack {
public:
	Stack(); // Must be a linked list implementation
	void push(int e);
	int top();
	void pop();
	bool empty();

	void add();
	void subtract();
	void multiply();
	void divide();
	void negate();
private:
	stack <int> s;
	int x, y, z;
};

#endif
