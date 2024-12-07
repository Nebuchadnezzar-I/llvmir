target triple = "x86_64-pc-linux-gnu"

define i32 @main() {
    %1 = alloca i32, align 4        ; int
    %2 = alloca i32, align 4        ; unsigned int
    %4 = alloca i8, align 1         ; char

    %5 = alloca i16, align 2        ; short
    %6 = alloca i64, align 8        ; long
    %7 = alloca float, align 4      ; float

    %8 = alloca double, align 8     ; double
    %9 = alloca i8, align 1         ; bool

    ret i32 0
}
