#include <stdio.h>

struct my_str {
    int x;
    int y;
};

int main() {
    struct my_str obj1;

    obj1.x = 10;
    obj1.y = 11;

    printf("Data: %i", obj1.x);

    return 0;
}
