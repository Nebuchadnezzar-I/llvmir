target triple = "x86_64-pc-linux-gnu"

declare i32 @printf(ptr , ...)

@.str = constant [28 x i8] c"Size of my_data union: %lu\0A\00"
%union.my_data = type { i32, [16 x i8] }

define i32 @main() {
    %1 = alloca i32
    %2 = alloca %union.my_data
    store i32 0, ptr %1

    %3 = call i32 (ptr, ...) @printf(ptr @.str, i64 20)
    ret i32 0
}
