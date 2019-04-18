/* Yubin Lim yl2vv
postfixCalculator.h
Feb 7, 2019 
CS2150 - 103*/
#ifndef POSTFIXCALCULATOR_H
#define POSTFIXCALCULATOR_H

#include <iostream>
#include "postfixCalculator.h"
#include "stack.h"
#include "ListNode.h"
#include "ListItr.h"
#include "List.h"

using namespace std;

class PostfixCalculator {
public:
	PostfixCalculator();
	void add();
	void subtract();
	void multiply();
	void divide();
	void negate();
	void push(int x);
	int topNum();
private:
	Stack * s;
	int x, y, z;
};

#endif
