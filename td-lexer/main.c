#include <ctype.h>
#include <stdio.h>
#include <string.h>

typedef enum {
    TYPE,
    IDNT,
    ASSG,
    NUMB,
    SEMI,
    SPCE,
    ILLG,
} State;

const int dfa[6][7] = {
    {  1,  -1,  -1,  -1,  -1,   0,  -1 },
    { -1,   2,  -1,  -1,  -1,   1,  -1 },
    { -1,  -1,   3,  -1,  -1,   2,  -1 },
    { -1,  -1,  -1,   4,  -1,   3,  -1 },
    { -1,  -1,  -1,   4,   5,   4,  -1 },
    { -1,  -1,  -1,  -1,  -1,   5,  -1 },
};

int getClass(const char *cursor) {
    if (strncmp(cursor, "int", 3) == 0) return TYPE;
    // Add eating string and numbers

    char ch = *cursor;
    if (isspace(ch)) return SPCE;
    if (isalpha(ch)) return IDNT;
    if (isdigit(ch)) return NUMB;
    if (ch == '=') return ASSG;
    if (ch == ';') return SEMI;

    return ILLG;
}

int main() {
    char input[] = "int t = 20;";
    int state = 0;
    const char *cursor = input;

    while (*cursor) {
        if (isspace(*cursor)) {
            cursor++;
            continue;
        }

        int input_class = getClass(cursor);

        if (input_class == ILLG) {
            printf("Error: Invalid token '%c'\n", *cursor);
            return 1;
        }

        if (input_class == TYPE) {
            printf("Keyword: 'int'\n");
            cursor += 3; // Skip "int"
            state = dfa[state][TYPE];
            continue;
        }

        int next_state = dfa[state][input_class];
        if (next_state == -1) {
            printf("Error: Invalid token '%c' at state %d\n", *cursor, state);
            return 1;
        }

        printf("State %d -> '%c' -> State %d\n", state, *cursor, next_state);

        state = next_state;
        cursor++;
    }

    if (state == 5) {
        printf("Successfully parsed variable declaration.\n");
    } else {
        printf("Error: Incomplete statement at state %d\n", state);
    }

    return 0;
}
