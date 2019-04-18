// Yubin Lim yl2vv
// mathfun.cpp
// March 25, 2019
// CS2150-103

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" int product (int, int);
extern "C" int power (int, int);

// Purpose: This main program produces a vector of random numbers
// between 0 and 99, then calls the externally defined function
// 'vecsum' to add up the elements of the vector.

// Originally written by Adam Ferrari, and updated by Aaron Bloomfield

int  main () {

    // delcare the local variables
    int  x, y, prod, pow;

    // input for x
    cout << "Please enter first int:  ";
    cin >> x;

    // input for y
    cout << "Please enter second int:  ";
    cin >> y;

    prod = product(x, y);
    cout << "The product of " << x << " and " << y << " is: " << prod << endl;

    pow = power(x, y);
    cout << "The power of " << x << " to the " << y << " power is: " << pow <<endl;

    return 0;
}
