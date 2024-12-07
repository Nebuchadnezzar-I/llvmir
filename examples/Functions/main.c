int getNumber(int* n) {
    return *n;
}

int main() {
    int n = 10;
    getNumber(&n);

    return 0;
}
