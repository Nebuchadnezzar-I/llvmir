target triple = "x86_64-pc-linux-gnu"

declare i32 @printf(ptr)
@.str =  constant [4 x i8] c"One\00"
@.str.1 = constant [4 x i8] c"Two\00"

define dso_local i32 @main() #0 {
    %1 = alloca i32
    %2 = alloca i32

    store i32 0, ptr %1
    store i32 0, ptr %2

    %3 = load i32, ptr %2

    switch i32 %3, label %8 [
        i32 1, label %4
        i32 2, label %6
    ]

    4:
        %5 = call i32 (ptr) @printf(ptr @.str)
        br label %9
    6:
        %7 = call i32 (ptr) @printf(ptr @.str.1)
        br label %8
    8:
        br label %9
    9:
        ret i32 0
}
