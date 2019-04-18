/* Yubin Lim yl2vv
List.cpp
January 27, 2019 
CS2150 - 103*/

#include <iostream>
#include "List.h"
#include "ListNode.h"
using namespace std;

List::List() {
	head = new ListNode;
	tail = new ListNode;
	head->next=tail;
	tail->previous=head;
	head->previous = NULL;
	tail->next = NULL;
	count = 0;
}

List::List(const List& source) {      // Copy Constructor
    head=new ListNode;
    tail=new ListNode;
    head->next=tail;
    tail->previous=head;
    count=0;
    ListItr iter(source.head->next);
    while (!iter.isPastEnd()) {       // deep copy of the list
        insertAtTail(iter.retrieve());
        iter.moveForward();
    }
}

 List::~List() {
 	makeEmpty();
	delete head;
	delete tail;
 }

List& List::operator=(const List& source) { //Equals operator
    if (this == &source)
        return *this;
    else {
        makeEmpty();
        ListItr iter(source.head->next);
        while (!iter.isPastEnd()) {
            insertAtTail(iter.retrieve());
            iter.moveForward();
        }
    }
    return *this;
}

 bool List::isEmpty() const {
 	if (count == 0) {
 		return true;
 	}
 	return false;
 }

 void List::makeEmpty() {
 	while (!isEmpty()) {
 		ListItr * itr = new ListItr(head->next);
 		itr->current->next->previous = head;
 		head->next = itr->current->next;
 		delete itr;
 		count--;
 	}
 }

ListItr List::first() {
	ListItr *iterator = new ListItr(head->next);
	return *iterator;
}

ListItr List::last() {
	ListItr *iterator = new ListItr(tail->previous);
	return *iterator;
}

void List::insertAfter(int x, ListItr position) {
	ListNode * node = new ListNode();
	node->value = x;
	node-> next = position.current->next;
	node-> previous = position.current;
	position.current->next->previous = node;
	position.current->next = node;
	count++;

}

void List::insertBefore(int x, ListItr position) {
		ListNode * node = new ListNode();
		node->value = x;
		node->next = position.current;
		node->previous = position.current->previous;
		position.current->previous->next = node;
		position.current->previous = node;
		count++; 
}
	

void List::insertAtTail(int x) {
	ListNode * node = new ListNode();
	node->value = x;
	node->previous = tail->previous;
	node->next = tail;
	tail->previous = node;
	node->previous->next=node;
	count++;
}

void List::remove(int x) {
	ListItr * itr = new ListItr(head->next);
	while (! itr->isPastEnd() ) {
		if(itr->retrieve() == x) {
			itr->current->previous->next = itr->current->next;
			itr->current->next->previous = itr->current->previous;
			delete itr;
			count--;
			break;
		}
		itr->moveForward();
	}
}

ListItr List::find(int x) {
	ListItr * itr = new ListItr(head->next);
	while(! itr->isPastEnd() ) {
		if(itr->retrieve() == x) {
			return *itr;
		}
		itr->moveForward();
	}
	return *itr;
}

int List::size() const {
	return count;
}

void printList(List& source, bool direction) {
	if (direction == true) {
		ListItr *iterator =new ListItr(source.first());
	 	while (iterator->isPastEnd() == false) {
	 		cout << iterator->retrieve() << " ";
	 		iterator->moveForward();
	 	}
	 }
	 else {
	 	ListItr *iterator =new ListItr(source.last());
	 	while (iterator->isPastBeginning() == false) {
	 		cout << iterator->retrieve() << " ";
	 		iterator->moveBackward();
		}
	}
	cout<< endl;
}
