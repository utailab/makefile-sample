/* In The Name of Allah */

#include <iostream>

#include "funcs.hpp"

int main (int argc, char ** argv) {
    unsigned int  n = 0;

    while (std::cin >> n) {
        std::cout << "Factorial of" << n << ": " << factorial(n) << std::endl;
    }

    return 0;
}
