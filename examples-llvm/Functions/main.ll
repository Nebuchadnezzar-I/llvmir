target triple = "x86_64-pc-linux-gnu"

define i32 @getNumber(ptr %0) {
    %2 = alloca ptr
    store ptr %0, ptr %2
    %3 = load ptr, ptr %2
    %4 = load i32, ptr %3

    ret i32 %4
}

define i32 @main() {
    %2 = alloca i32
    store i32 10, ptr %2
    %3 = call i32 @getNumber(ptr %2)

    ret i32 0
}
