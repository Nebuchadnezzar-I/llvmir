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

const char *tokenNames[] = {
    "TYPE", "IDNT", "ASSG", "NUMB", "SEMI", "SPCE", "ILLG"
};

const int dfa[5][7] = {
    // TYPE, IDNT, ASSG, NUMB, SEMI, SPCE, ILLG
    { TYPE, IDNT,   -1,   -1,   -1, 0, -1 }, // State 0 (START)
    {   -1,   -1, ASSG, NUMB, SEMI, 0, -1 }, // State 1 (TYPE or IDNT)
    {   -1, IDNT,   -1, NUMB, SEMI, 0, -1 }, // State 2 (IDNT or ASSG)
    {   -1,   -1,   -1,   -1, SEMI, 0, -1 }, // State 3 (NUMB)
    {   -1,   -1,   -1,   -1,    0, 0, -1 }, // State 4 (FINAL_STATE)
};

int getClass(const char **cursor, char *tokenValue) {
    const char *start = *cursor;

    if (strncmp(*cursor, "int", 3) == 0 && isspace((*cursor)[3])) {
        *cursor += 3;
        strcpy(tokenValue, "int");
        return TYPE;
    }

    if (isdigit(**cursor)) {
        while (isdigit(**cursor)) {
            (*cursor)++;
        }
        strncpy(tokenValue, start, *cursor - start);
        tokenValue[*cursor - start] = '\0';
        return NUMB;
    }

    if (isalpha(**cursor)) {
        while (isalnum(**cursor)) {
            (*cursor)++;
        }
        strncpy(tokenValue, start, *cursor - start);
        tokenValue[*cursor - start] = '\0';
        return IDNT;
    }

    char ch = **cursor;
    (*cursor)++;
    tokenValue[0] = ch;
    tokenValue[1] = '\0';

    if (isspace(ch)) return SPCE;
    if (ch == '=') return ASSG;
    if (ch == ';') return SEMI;

    return ILLG;
}

int main() {
    const char input[] =
        "x = x;"
        "int u = 0;"
        "int i = 10;"
        "i = 100;"
    ;
    int state = 0;
    const char *cursor = input;

    char tokenValue[256];

    while (*cursor) {
        if (isspace(*cursor)) {
            cursor++;
            continue;
        }

        int input_class = getClass(&cursor, tokenValue);

        if (input_class == ILLG) {
            printf("Error: Invalid token '%c'\n", *cursor);
            return 1;
        }

        printf("Token: %s, Value: '%s'\n", tokenNames[input_class], tokenValue);

        int next_state = dfa[state][input_class];
        if (next_state == -1) {
            printf("Error: Invalid token '%s' at state %d\n", tokenValue, state);
            return 1;
        }

        state = next_state;

        if (input_class == SEMI) {
            state = 0; // Reset state after a semicolon
        }
    }

    if (state != 0) {
        printf("Error: Incomplete expression at state %d\n", state);
    }

    return 0;
}

