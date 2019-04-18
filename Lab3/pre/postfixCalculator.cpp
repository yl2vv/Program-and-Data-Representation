/* Yubin Lim yl2vv
postfixCalculator.cpp
Feb 1, 2019 
CS2150 - 103*/

#include <iostream>
#include <stack>
#include <cstdlib> // Used to use exit();
#include "postfixCalculator.h"
using namespace std;

Stack::Stack() {
	stack <int> s;
}

void Stack::push(int e) {
	s.push(e);
}

int Stack::top() {
	if (s.empty()) {
		cout << "STACK IS EMPTY" << endl;
		exit(-1);
	}
	return s.top();
}

void Stack::pop() {
	if (s.empty()) {
		cout << "NOTHING TO POP" << endl;
		exit(-1);
	}
	s.pop();
}

bool Stack::empty() {
	return (s.size()== 0);
}

void Stack::add() {
	if(s.size() > 1) {
		x = s.top();
		s.pop();
		y = s.top();
		s.pop();
		z = y + x;
		s.push(z);
	}
}

void Stack::subtract() {
	if (s.size() > 1) {
		x = s.top();
		s.pop();
		y = s.top();
		s.pop();
		z = y - x;
		s.push(z);
	}
}

void Stack::multiply() {
	if (s.size() > 1) {
		x = s.top();
		s.pop();
		y = s.top();
		s.pop();
		z = y * x;
		s.push(z);
	}
}

void Stack::divide() {
	if (s.size() > 1) {
		x = s.top();
		s.pop();
		y = s.top();
		s.pop();
		z = y / x;
		s.push(z);
	}
}

void Stack::negate() {
	x = s.top();
	s.pop();
	z = (-1) * x;
	s.push(z);
}
