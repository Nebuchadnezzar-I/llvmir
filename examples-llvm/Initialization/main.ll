target triple = "x86_64-pc-linux-gnu"

declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1 immarg)
@__const.main.greet_1 = constant [6 x i8] c"Hello\00"
@__const.main.greet_2 = constant [6 x i8] c"Hello\00"
@.str = constant [6 x i8] c"Hello\00"

define i32 @main() {
    %3 = alloca [6 x i8]
    %4 = alloca [6 x i8]
    %5 = alloca ptr

    call void @llvm.memcpy.p0.p0.i64(
        ptr %3, ptr @__const.main.greet_1, i64 6, i1 false
    )

    call void @llvm.memcpy.p0.p0.i64(
        ptr %4, ptr @__const.main.greet_2, i64 6, i1 false
    )

    store ptr @.str, ptr %5, align 8

    ret i32 0
}
