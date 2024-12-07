; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dfa = dso_local local_unnamed_addr constant [6 x [7 x i32]] [[7 x i32] [i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1], [7 x i32] [i32 -1, i32 2, i32 -1, i32 -1, i32 -1, i32 1, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 3, i32 -1, i32 -1, i32 2, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 -1, i32 4, i32 -1, i32 3, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 -1, i32 4, i32 5, i32 4, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 5, i32 -1]], align 16
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@__const.main.input = private unnamed_addr constant [12 x i8] c"int t = 20;\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Error: Invalid token '%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Error: Invalid token '%c' at state %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"State %d -> '%c' -> State %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Error: Incomplete statement at state %d\0A\00", align 1
@str = private unnamed_addr constant [42 x i8] c"Successfully parsed variable declaration.\00", align 1
@str.7 = private unnamed_addr constant [15 x i8] c"Keyword: 'int'\00", align 1

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @getClass(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !5
  %6 = tail call ptr @__ctype_b_loc() #7
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = sext i8 %5 to i64
  %9 = getelementptr inbounds i16, ptr %7, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = and i32 %11, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = and i32 %11, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = icmp eq i8 %5, 59
  %22 = select i1 %21, i32 4, i32 6
  %23 = icmp eq i8 %5, 61
  %24 = select i1 %23, i32 2, i32 %22
  br label %25

25:                                               ; preds = %20, %4, %14, %17, %1
  %26 = phi i32 [ 0, %1 ], [ 5, %4 ], [ 1, %14 ], [ 3, %17 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = tail call ptr @__ctype_b_loc() #7
  br label %2

2:                                                ; preds = %0, %52
  %3 = phi i8 [ 105, %0 ], [ %55, %52 ]
  %4 = phi i32 [ 0, %0 ], [ %54, %52 ]
  %5 = phi ptr [ @__const.main.input, %0 ], [ %53, %52 ]
  %6 = load ptr, ptr %1, align 8, !tbaa !8
  br label %7

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %3, %2 ], [ %17, %15 ]
  %9 = phi ptr [ %5, %2 ], [ %16, %15 ]
  %10 = sext i8 %8 to i64
  %11 = getelementptr inbounds i16, ptr %6, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !10
  %13 = and i16 %12, 8192
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %57, label %7, !llvm.loop !12

19:                                               ; preds = %7
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = zext i16 %12 to i32
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = and i32 %23, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  switch i8 %8, label %30 [
    i8 61, label %40
    i8 59, label %39
  ]

30:                                               ; preds = %29
  %31 = sext i8 %8 to i32
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %31)
  br label %64

33:                                               ; preds = %19
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  %35 = getelementptr inbounds i8, ptr %9, i64 3
  %36 = sext i32 %4 to i64
  %37 = getelementptr inbounds [6 x [7 x i32]], ptr @dfa, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !14
  br label %52, !llvm.loop !12

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %29, %39, %26, %22
  %41 = phi i64 [ 3, %26 ], [ 1, %22 ], [ 2, %29 ], [ 4, %39 ]
  %42 = sext i32 %4 to i64
  %43 = getelementptr inbounds [6 x [7 x i32]], ptr @dfa, i64 0, i64 %42, i64 %41
  %44 = load i32, ptr %43, align 4, !tbaa !14
  %45 = icmp eq i32 %44, -1
  %46 = sext i8 %8 to i32
  br i1 %45, label %47, label %49

47:                                               ; preds = %40
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %46, i32 noundef %4)
  br label %64

49:                                               ; preds = %40
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %4, i32 noundef %46, i32 noundef %44)
  %51 = getelementptr inbounds i8, ptr %9, i64 1
  br label %52

52:                                               ; preds = %49, %33
  %53 = phi ptr [ %35, %33 ], [ %51, %49 ]
  %54 = phi i32 [ %38, %33 ], [ %44, %49 ]
  %55 = load i8, ptr %53, align 1, !tbaa !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %2

57:                                               ; preds = %52, %15
  %58 = phi i32 [ %4, %15 ], [ %54, %52 ]
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %64

62:                                               ; preds = %57
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %58)
  br label %64

64:                                               ; preds = %47, %30, %60, %62
  %65 = phi i32 [ 0, %62 ], [ 0, %60 ], [ 1, %30 ], [ 1, %47 ]
  ret i32 %65
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { mustprogress nofree nounwind sspstrong willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.1.8"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
