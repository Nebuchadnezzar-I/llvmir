target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@__const.main.numbers = constant [3 x i32] [i32 5, i32 10, i32 15]
@.str =  constant [22 x i8] c"Sum of the array: %d\0A\00"

define dso_local i32 @sum(i32 noundef %0, ...) #0 {
    %2 = alloca i32
    %3 = alloca i32
    %4 = alloca i32
    %5 = alloca i32
    %6 = alloca [1 x %struct.__va_list_tag]
    %7 = alloca i32
    store i32 %0, ptr %2
    store i32 0, ptr %3
    %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0
    call void @llvm.va_start(ptr %8)
    store i32 0, ptr %7
    br label %9

    9:
        %10 = load i32, ptr %7, align 4
        %11 = load i32, ptr %2, align 4
        %12 = icmp slt i32 %10, %11
        br i1 %12, label %13, label %36
    13:
        %14 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0
        %15 = getelementptr inbounds %struct.__va_list_tag, ptr %14, i32 0, i32 0
        %16 = load i32, ptr %15
        %17 = icmp ule i32 %16, 40
        br i1 %17, label %18, label %23
    18:
        %19 = getelementptr inbounds %struct.__va_list_tag, ptr %14, i32 0, i32 3
        %20 = load ptr, ptr %19
        %21 = getelementptr i8, ptr %20, i32 %16
        %22 = add i32 %16, 8
        store i32 %22, ptr %15
        br label %27
    23:
        %24 = getelementptr inbounds %struct.__va_list_tag, ptr %14, i32 0, i32 2
        %25 = load ptr, ptr %24, align 8
        %26 = getelementptr i8, ptr %25, i32 8
        store ptr %26, ptr %24, align 8
        br label %27
    27:
        %28 = phi ptr [ %21, %18 ], [ %25, %23 ]
        %29 = load i32, ptr %28, align 4
        store i32 %29, ptr %5, align 4
        %30 = load i32, ptr %5, align 4
        %31 = load i32, ptr %3, align 4
        %32 = add nsw i32 %31, %30
        store i32 %32, ptr %3, align 4
        br label %33
    33:
        %34 = load i32, ptr %7, align 4
        %35 = add nsw i32 %34, 1
        store i32 %35, ptr %7, align 4
        br label %9, !llvm.loop !7
    36:
        %37 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0
        call void @llvm.va_end(ptr %37)
        %38 = load i32, ptr %3, align 4
        ret i32 %38
}

declare void @llvm.va_start(ptr) #1
declare void @llvm.va_end(ptr) #1

define dso_local i32 @main() #0 {
    %1 = alloca i32, align 4
    %2 = alloca [3 x i32], align 4
    %3 = alloca i32, align 4

    store i32 0, ptr %1, align 4
    call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 @__const.main.numbers, i64 12, i1 false)

    %4 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 0
    %5 = load i32, ptr %4, align 4
    %6 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
    %7 = load i32, ptr %6, align 4
    %8 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
    %9 = load i32, ptr %8, align 4

    %10 = call i32 (i32, ...) @sum(i32 noundef 3, i32 noundef %5, i32 noundef %7, i32 noundef %9)

    store i32 %10, ptr %3, align 4

    %11 = load i32, ptr %3, align 4
    %12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
    ret i32 0
}

declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg)
declare i32 @printf(ptr noundef, ...)

!7 = !{!"llvm.loop.mustprogress"}
