target triple = "x86_64-pc-linux-gnu"

define i32 @main() {
    %1 = alloca i32
    %2 = alloca i8
    store i32 0, ptr %1
    store i8 99, ptr %2
    ret i32 0
}
