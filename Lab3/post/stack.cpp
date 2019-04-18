/* Yubin Lim yl2vv
stack.cpp
Feb 7, 2019 
CS2150 - 103*/

#include <iostream>
#include <cstdlib> 
#include "stack.h"
#include "ListNode.h"
#include "ListItr.h"
#include "List.h"
using namespace std;
	
Stack::Stack() {
	stack = new List;
	size = 0;
}

void Stack::push(int e) {
	stack->insertAtTail(e);
	size++;
}

int Stack::top() {
	if (size < 1) {
		cout << "STACK IS EMPTY" << endl;
		exit(-1); 
	}
	return stack->last().retrieve();
}

void Stack::pop() {
	if (size < 1) {
		cout << "NOTHING TO POP" << endl;
		exit(-1);
	}
	ListItr * itr = new ListItr(stack->last());
	stack->remove(itr->retrieve());
	size--;
}

bool Stack::empty() {
	return stack->size() < 1;
}