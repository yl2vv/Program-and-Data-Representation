#include <iostream>
#include <time.h>
#include <cstdlib>
#include "timer.h"
using namespace std;

extern "C" int threexplusone(int);

int main () {

	int x, n;

	cout << "parameter to pass to the subroutine: ";
	cin >> x;
	cout << "number of times to call the subroutine: ";
	cin >> n;

	timer t;
	t.start();
	for (int i = 0; i < n; i++) {
		threexplusone(x);
	}
	t.stop();

	float time = (float) t.getTime();
	cout << "number of steps taken: " << threexplusone(x) << endl;
	cout << "average time in milliseconds: " << ((time * 1000) / n) << endl;
	return 0;
}
