target triple = "x86_64-pc-linux-gnu"

@.str = constant [12 x i8] c"Hello World\00"
declare i32 @printf(ptr)

define dso_local i32 @main() {
    %1 = alloca i32
    store i32 0, ptr %1
    %2 = call i32 (ptr) @printf(ptr @.str)
    ret i32 0
}
