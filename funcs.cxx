/* In The Name of Allah */

#include "funcs.hpp"

unsigned long long int factorial (unsigned int n) {
    if (n < 2) return n;
    else {
       unsigned long long int a = 0, b = 1;
        while(--n) {
            unsigned long long int tmp = a;
            a = b;
            b = tmp + b;
        }
        return b;
    }
}
