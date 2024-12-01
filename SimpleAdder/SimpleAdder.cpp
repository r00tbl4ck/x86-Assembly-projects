#include <iostream>

extern "C" int adderASM(int a, int b, int c);

int main()
{
    int a = 23, b = 54, c = 3;
    int sum = adderASM(a, b, c);

    std::cout << "a: " << a << std::endl;
    std::cout << "b: " << b << std::endl;
    std::cout << "c: " << c << std::endl;
    std::cout << "sum: " << sum << std::endl;

    return 0;
}
