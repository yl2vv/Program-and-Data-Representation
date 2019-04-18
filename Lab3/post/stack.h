/* Yubin Lim yl2vv
stack.h
Feb 7, 2019 
CS2150 - 103*/
#ifndef STACK_H
#define STACK_H

#include <iostream>
#include <cstdlib> 
#include "ListNode.h"
#include "ListItr.h"
#include "List.h"
using namespace std;

class Stack {
public:
	Stack();
	void push (int e);
	int top();
	void pop();
	bool empty();
private:
	List * stack;
	int size;
};

#endif