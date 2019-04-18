#include <iostream>
using namespace std;

class Person {
public:
	virtual void who() {
		cout<< "I am a human" << endl;
	}
	virtual void where() {
		cout<< "I am on Earth" << endl;
	}
};

class Student: public Person {
public:
	virtual void who() {
		cout<< "I am a student" << endl;
	}
};

class Teacher: public Person {
public:
	virtual void where() {
		cout << "I am at UVA" << endl;
	}
};

int main() {
	Person *p = new Person();
	p->who();
	p->where();

	Person *s = new Student();
	s->who();
	s->where();

	Person *t = new Teacher();
	t->who();
	t->where();
	return 0;
}