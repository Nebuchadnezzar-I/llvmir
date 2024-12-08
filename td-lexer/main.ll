; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IDNT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ASSG\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NUMB\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SEMI\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SPCE\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ILLG\00", align 1
@tokenNames = dso_local local_unnamed_addr global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@dfa = dso_local local_unnamed_addr constant [6 x [7 x i32]] [[7 x i32] [i32 1, i32 2, i32 -1, i32 -1, i32 -1, i32 0, i32 -1], [7 x i32] [i32 2, i32 2, i32 -1, i32 -1, i32 -1, i32 1, i32 -1], [7 x i32] [i32 -1, i32 2, i32 3, i32 -1, i32 -1, i32 2, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 3, i32 4, i32 -1, i32 3, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 5, i32 4, i32 -1], [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 5, i32 -1]], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@__const.main.input = private unnamed_addr constant [7585 x i8] c"int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;int u = 000;\00", align 16
@.str.8 = private unnamed_addr constant [27 x i8] c"Error: Invalid token '%c'\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Error: Invalid token '%s' at state %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Error: Incomplete expression at state %d\0A\00", align 1

; Function Attrs: nofree nounwind sspstrong memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @getClass(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(4) @.str.7, i64 noundef 3) #8
  %5 = icmp eq i32 %4, 0
  %6 = tail call ptr @__ctype_b_loc() #9
  br i1 %5, label %7, label %17

7:                                                ; preds = %2
  %8 = load ptr, ptr %6, align 8, !tbaa !5
  %9 = getelementptr inbounds i8, ptr %3, i64 3
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = sext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %8, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !10
  %14 = and i16 %13, 8192
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  store ptr %9, ptr %0, align 8, !tbaa !5
  store i32 7630441, ptr %1, align 1
  br label %88

17:                                               ; preds = %2, %7
  %18 = load ptr, ptr %6, align 8, !tbaa !5
  %19 = load i8, ptr %3, align 1, !tbaa !9
  %20 = sext i8 %19 to i64
  %21 = getelementptr inbounds i16, ptr %18, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !10
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %17
  %27 = and i16 %22, 2048
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %31, %29 ], [ %3, %26 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %0, align 8, !tbaa !5
  %32 = load ptr, ptr %6, align 8, !tbaa !5
  %33 = load i8, ptr %31, align 1, !tbaa !9
  %34 = sext i8 %33 to i64
  %35 = getelementptr inbounds i16, ptr %32, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !10
  %37 = and i16 %36, 2048
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %29, !llvm.loop !12

39:                                               ; preds = %29, %26
  %40 = phi ptr [ %3, %26 ], [ %31, %29 ]
  %41 = ptrtoint ptr %40 to i64
  %42 = ptrtoint ptr %3 to i64
  %43 = sub i64 %41, %42
  %44 = tail call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %3, i64 noundef %43) #10
  %45 = load ptr, ptr %0, align 8, !tbaa !5
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %46, %42
  %48 = getelementptr inbounds i8, ptr %1, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !9
  br label %88

49:                                               ; preds = %17
  %50 = and i32 %23, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %49
  %53 = and i16 %22, 8
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %57, %55 ], [ %3, %52 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %0, align 8, !tbaa !5
  %58 = load ptr, ptr %6, align 8, !tbaa !5
  %59 = load i8, ptr %57, align 1, !tbaa !9
  %60 = sext i8 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !10
  %63 = and i16 %62, 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %55, !llvm.loop !14

65:                                               ; preds = %55, %52
  %66 = phi ptr [ %3, %52 ], [ %57, %55 ]
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %3 to i64
  %69 = sub i64 %67, %68
  %70 = tail call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %3, i64 noundef %69) #10
  %71 = load ptr, ptr %0, align 8, !tbaa !5
  %72 = ptrtoint ptr %71 to i64
  %73 = sub i64 %72, %68
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  store i8 0, ptr %74, align 1, !tbaa !9
  br label %88

75:                                               ; preds = %49
  %76 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %76, ptr %0, align 8, !tbaa !5
  store i8 %19, ptr %1, align 1, !tbaa !9
  %77 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %77, align 1, !tbaa !9
  %78 = load ptr, ptr %6, align 8, !tbaa !5
  %79 = getelementptr inbounds i16, ptr %78, i64 %20
  %80 = load i16, ptr %79, align 2, !tbaa !10
  %81 = and i16 %80, 8192
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = icmp eq i8 %19, 59
  %85 = select i1 %84, i32 4, i32 6
  %86 = icmp eq i8 %19, 61
  %87 = select i1 %86, i32 2, i32 %85
  br label %88

88:                                               ; preds = %83, %75, %65, %39, %16
  %89 = phi i32 [ 0, %16 ], [ 3, %39 ], [ 1, %65 ], [ 5, %75 ], [ %87, %83 ]
  ret i32 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  %1 = alloca [7585 x i8], align 16
  %2 = alloca ptr, align 8
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 7585, ptr nonnull %1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7585) %1, ptr noundef nonnull align 16 dereferenceable(7585) @__const.main.input, i64 7585, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #10
  %4 = tail call ptr @__ctype_b_loc() #9
  br label %5

5:                                                ; preds = %0, %38
  %6 = phi i8 [ 105, %0 ], [ %42, %38 ]
  %7 = phi ptr [ %1, %0 ], [ %41, %38 ]
  %8 = phi i32 [ 0, %0 ], [ %40, %38 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %5, %18
  %11 = phi i8 [ %6, %5 ], [ %20, %18 ]
  %12 = phi ptr [ %7, %5 ], [ %19, %18 ]
  %13 = sext i8 %11 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !10
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %12, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %44, label %10, !llvm.loop !15

22:                                               ; preds = %10
  store ptr %12, ptr %2, align 8, !tbaa !5
  %23 = call i32 @getClass(ptr noundef nonnull %2, ptr noundef nonnull %3), !range !16
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load ptr, ptr %2, align 8, !tbaa !5
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = sext i8 %27 to i32
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %28)
  br label %49

30:                                               ; preds = %22
  %31 = sext i32 %8 to i64
  %32 = zext nneg i32 %23 to i64
  %33 = getelementptr inbounds [6 x [7 x i32]], ptr @dfa, i64 0, i64 %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !17
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %3, i32 noundef %8)
  br label %49

38:                                               ; preds = %30
  %39 = icmp eq i32 %34, 5
  %40 = select i1 %39, i32 0, i32 %34
  %41 = load ptr, ptr %2, align 8, !tbaa !5
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %5, !llvm.loop !15

44:                                               ; preds = %38, %18
  %45 = phi i32 [ %8, %18 ], [ %40, %38 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %45)
  br label %49

49:                                               ; preds = %36, %25, %44, %47
  %50 = phi i32 [ 0, %47 ], [ 0, %44 ], [ 1, %25 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 7585, ptr nonnull %1) #10
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

attributes #0 = { nofree nounwind sspstrong memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.1.8"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{i32 0, i32 7}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}
