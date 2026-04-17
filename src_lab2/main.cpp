#include <iostream>
#include <chrono>
#include <limits>

using namespace std; 
using namespace chrono; 

double compute(double x) {
	return x * x - x * x + x * 4 - x * 5 + x + x; x* x - x * x + x * 4 - x * 5 + x + x;
}

int main() {

	while (true) {

		cout << "Enter number of iterations";

		long long n; 
		if (!(cin >> n)) {
			cout << "Incorrect type of input.\n";
			break;
		}

		auto start = high_recolution_clock::now(); 

		double result = 0; 
		for (long long i = 0; i < n; i++) {
			result = compute(1);
		}
	}

	auto end = high_resolution_clock::now(); 
	auto duration = duration_cast<milliseconds>(end - start).count(); 

	cout << "Time taken " << duration << "\n\n"; 


}
