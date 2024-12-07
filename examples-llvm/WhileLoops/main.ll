target triple = "x86_64-pc-linux-gnu"

@.str = constant [4 x i8] c"%d\0A\00"
declare i32 @printf(ptr noundef, ...)

define dso_local i32 @main() {
    %1 = alloca i32
    %2 = alloca i32
    store i32 0, ptr %1
    store i32 1, ptr %2
    br label %3

    3:
        %4 = load i32, ptr %2
        %5 = icmp sle i32 %4, 3
        br i1 %5, label %6, label %10
    6:
        %7 = load i32, ptr %2
        %8 = add nsw i32 %7, 1
        store i32 %8, ptr %2
        %9 = call i32 (ptr, ...) @printf(ptr @.str, i32 %7)
        br label %3, !llvm.loop !{!"llvm.loop.mustprogress"}
    10:
        ret i32 0
}
