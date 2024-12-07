#include <stdio.h>

int main() {
    int x = 0;

    switch(x) {
        case 1:
            printf("One");
            break;
        case 2:
            printf("Two");
            // This will fall through
        default:
            break;
    }

    return 0;
}
