/* Yubin Lim yl2vv
postfixCalculator.cpp
Feb 7, 2019 
CS2150 - 103*/

#include <iostream>
#include <stack>
#include <cstdlib> // Used to use exit();
#include "postfixCalculator.h"
#include "ListNode.h"
#include "ListItr.h"
#include "List.h"
using namespace std;

PostfixCalculator::PostfixCalculator() {
	s = new Stack;
}

void PostfixCalculator::add() {
	//if(s.size() > 1) {
		x = s->top();
		s->pop();
		y = s->top();
		s->pop();
		z = y + x;
		s->push(z);
	//}
}

void PostfixCalculator::subtract() {
	//if (s.size() > 1) {
		x = s->top();
		s->pop();
		y = s->top();
		s->pop();
		z = y - x;
		s->push(z);
	//}
}

void PostfixCalculator::multiply() {
	//if (s->size() > 1) {
		x = s->top();
		s->pop();
		y = s->top();
		s->pop();
		z = y * x;
		s->push(z);
	//}
}

void PostfixCalculator::divide() {
	//if (s.size() > 1) {
		x = s->top();
		s->pop();
		y = s->top();
		s->pop();
		z = y / x;
		s->push(z);
	//}
}

void PostfixCalculator::negate() {
	x = s->top();
	s->pop();
	z = (-1) * x;
	s->push(z);
}

void PostfixCalculator::push(int x) {
	s->push(x);
}

int PostfixCalculator::topNum() {
	return s->top();
}
