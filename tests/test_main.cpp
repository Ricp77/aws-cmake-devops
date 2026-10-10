#include <iostream>
#include <cstdlib>
#include "app.hpp"

int main() {
    if (get_status() != "OK") {
        std::cerr << "FAIL: unexpected status\n";
        return EXIT_FAILURE;
    }

    std::cout << "PASS\n";
    return EXIT_SUCCESS;
}
