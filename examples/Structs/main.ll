target triple = "x86_64-pc-linux-gnu"

declare i32 @printf(ptr noundef, ...)

%struct.my_str = type { i32, i32 }
@.str = constant [9 x i8] c"Data: %i\00"

define i32 @main() {
    %1 = alloca i32
    %2 = alloca %struct.my_str
    store i32 0, ptr %1

    %3 = getelementptr inbounds %struct.my_str, ptr %2, i32 0, i32 0
    store i32 10, ptr %3

    %4 = getelementptr inbounds %struct.my_str, ptr %2, i32 0, i32 1
    store i32 11, ptr %4

    %5 = getelementptr inbounds %struct.my_str, ptr %2, i32 0, i32 0
    %6 = load i32, ptr %5

    %7 = call i32 (ptr, ...) @printf(ptr @.str, i32 %6)

    ret i32 0
}
