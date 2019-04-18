/* Yubin Lim yl2vv
LifeCycle.h
January 22, 2019 */

#ifndef LIFECYCLE_H
#define LIFECYCLE_H
#include <iostream>
using namespace std;

class MyObject {
 public:
  static int numObjs;
  MyObject(const char *n = "--default--");      // default constructor
  MyObject(const MyObject& rhs);                // copy constructor
  ~MyObject();                                  // destructor
  string getName() const;
  void setName(const string newName);
  friend ostream& operator<<(ostream& output, const MyObject& obj);

 private:
  string name;
  int id;
};

MyObject getMaxMyObj(const MyObject o1, const MyObject o2);
int cmpMyObj(const MyObject o1, const MyObject o2);
void swapMyObj(MyObject& o1, MyObject& o2);

#endif
