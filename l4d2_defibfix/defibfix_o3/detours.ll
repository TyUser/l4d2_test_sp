; ModuleID = 'CDetour/detours.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.SourcePawn::ISourcePawnEngine" = type { i32 (...)** }
%"class.SourceMod::IGameConfig" = type { i32 (...)** }
%"class.SourceMod::ISourceMod" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::SMInterface" = type { i32 (...)** }
%"class.SourceMod::IExtension" = type { i32 (...)** }
%class.CDetour = type { i8, i8, %struct.patch_t, i8*, i8*, i8*, i8**, i8*, %"class.SourcePawn::ISourcePawnEngine"*, %"class.SourceMod::IGameConfig"* }
%struct.patch_t = type { [20 x i8], i32 }

@_ZN14CDetourManager8spengineE = hidden global %"class.SourcePawn::ISourcePawnEngine"* null, align 4
@_ZN14CDetourManager8gameconfE = hidden global %"class.SourceMod::IGameConfig"* null, align 4
@g_pSM = external global %"class.SourceMod::ISourceMod"*
@myself = external global %"class.SourceMod::IExtension"*
@.str = private unnamed_addr constant [39 x i8] c"Could not locate %s - Disabling detour\00", align 1
@.str3 = private unnamed_addr constant [68 x i8] c"Invalid detour address passed - Disabling detour to prevent crashes\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()* }] zeroinitializer

@_ZN7CDetourC1EPvPS0_PKc = hidden alias void (%class.CDetour*, i8*, i8**, i8*)* @_ZN7CDetourC2EPvPS0_PKc
@_ZN7CDetourC1EPvPS0_S0_ = hidden alias void (%class.CDetour*, i8*, i8**, i8*)* @_ZN7CDetourC2EPvPS0_S0_

; Function Attrs: nounwind
define hidden void @_ZN14CDetourManager4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourceMod::IGameConfig"* %gameconf) #0 align 2 {
  store %"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourcePawn::ISourcePawnEngine"** @_ZN14CDetourManager8spengineE, align 4
  store %"class.SourceMod::IGameConfig"* %gameconf, %"class.SourceMod::IGameConfig"** @_ZN14CDetourManager8gameconfE, align 4
  ret void
}

; Function Attrs: nounwind
define hidden %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* %callbackfunction, i8** %trampoline, i8* %signame) #0 align 2 {
  %1 = tail call noalias i8* @_Znwj(i32 56) #5
  %2 = bitcast i8* %1 to %class.CDetour*
  %3 = getelementptr inbounds i8* %1, i32 4
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds i8* %1, i32 24
  %5 = bitcast i8* %4 to i32*
  store i32 0, i32* %5, align 4
  store i8 0, i8* %1, align 1
  %6 = getelementptr inbounds i8* %1, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds i8* %1, i32 28
  %8 = bitcast i8* %7 to i8**
  store i8* null, i8** %8, align 4
  %9 = getelementptr inbounds i8* %1, i32 32
  %10 = bitcast i8* %9 to i8**
  store i8* null, i8** %10, align 4
  %11 = getelementptr inbounds i8* %1, i32 44
  %12 = bitcast i8* %11 to i8**
  store i8* %signame, i8** %12, align 4
  %13 = getelementptr inbounds i8* %1, i32 36
  %14 = bitcast i8* %13 to i8**
  store i8* %callbackfunction, i8** %14, align 4
  %15 = getelementptr inbounds i8* %1, i32 48
  %16 = bitcast i8* %15 to %"class.SourcePawn::ISourcePawnEngine"**
  %17 = getelementptr inbounds i8* %1, i32 52
  %18 = bitcast i8* %17 to %"class.SourceMod::IGameConfig"**
  %19 = getelementptr inbounds i8* %1, i32 40
  %20 = bitcast i8* %19 to i8***
  store i8** %trampoline, i8*** %20, align 4
  %21 = load %"class.SourcePawn::ISourcePawnEngine"** @_ZN14CDetourManager8spengineE, align 4
  %22 = load %"class.SourceMod::IGameConfig"** @_ZN14CDetourManager8gameconfE, align 4
  store %"class.SourcePawn::ISourcePawnEngine"* %21, %"class.SourcePawn::ISourcePawnEngine"** %16, align 4
  store %"class.SourceMod::IGameConfig"* %22, %"class.SourceMod::IGameConfig"** %18, align 4
  %23 = tail call zeroext i1 @_ZN7CDetour12CreateDetourEv(%class.CDetour* %2) #6
  %..i = zext i1 %23 to i8
  store i8 %..i, i8* %1, align 1
  br i1 %23, label %25, label %24

; <label>:24                                      ; preds = %0
  tail call void @_ZdlPv(i8* %1) #5
  br label %25

; <label>:25                                      ; preds = %0, %24
  %.0 = phi %class.CDetour* [ null, %24 ], [ %2, %0 ]
  ret %class.CDetour* %.0
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #1

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN7CDetour4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%class.CDetour* %this, %"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourceMod::IGameConfig"* %gameconf) #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 8
  store %"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourcePawn::ISourcePawnEngine"** %1, align 4
  %2 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 9
  store %"class.SourceMod::IGameConfig"* %gameconf, %"class.SourceMod::IGameConfig"** %2, align 4
  %3 = tail call zeroext i1 @_ZN7CDetour12CreateDetourEv(%class.CDetour* %this)
  %4 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 0
  %. = zext i1 %3 to i8
  store i8 %., i8* %4, align 1
  ret i1 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #2

; Function Attrs: nounwind
define hidden %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_S0_(i8* %callbackfunction, i8** %trampoline, i8* %pAddress) #0 align 2 {
  %1 = tail call noalias i8* @_Znwj(i32 56) #5
  %2 = bitcast i8* %1 to %class.CDetour*
  %3 = getelementptr inbounds i8* %1, i32 4
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds i8* %1, i32 24
  %5 = bitcast i8* %4 to i32*
  store i32 0, i32* %5, align 4
  store i8 0, i8* %1, align 1
  %6 = getelementptr inbounds i8* %1, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds i8* %1, i32 28
  %8 = bitcast i8* %7 to i8**
  store i8* %pAddress, i8** %8, align 4
  %9 = getelementptr inbounds i8* %1, i32 32
  %10 = bitcast i8* %9 to i8**
  store i8* null, i8** %10, align 4
  %11 = getelementptr inbounds i8* %1, i32 44
  %12 = bitcast i8* %11 to i8**
  store i8* null, i8** %12, align 4
  %13 = getelementptr inbounds i8* %1, i32 36
  %14 = bitcast i8* %13 to i8**
  store i8* %callbackfunction, i8** %14, align 4
  %15 = getelementptr inbounds i8* %1, i32 48
  %16 = bitcast i8* %15 to %"class.SourcePawn::ISourcePawnEngine"**
  %17 = getelementptr inbounds i8* %1, i32 52
  %18 = bitcast i8* %17 to %"class.SourceMod::IGameConfig"**
  %19 = getelementptr inbounds i8* %1, i32 40
  %20 = bitcast i8* %19 to i8***
  store i8** %trampoline, i8*** %20, align 4
  %21 = load %"class.SourcePawn::ISourcePawnEngine"** @_ZN14CDetourManager8spengineE, align 4
  %22 = load %"class.SourceMod::IGameConfig"** @_ZN14CDetourManager8gameconfE, align 4
  store %"class.SourcePawn::ISourcePawnEngine"* %21, %"class.SourcePawn::ISourcePawnEngine"** %16, align 4
  store %"class.SourceMod::IGameConfig"* %22, %"class.SourceMod::IGameConfig"** %18, align 4
  %23 = tail call zeroext i1 @_ZN7CDetour12CreateDetourEv(%class.CDetour* %2) #6
  %..i = zext i1 %23 to i8
  store i8 %..i, i8* %1, align 1
  br i1 %23, label %25, label %24

; <label>:24                                      ; preds = %0
  tail call void @_ZdlPv(i8* %1) #5
  br label %25

; <label>:25                                      ; preds = %0, %24
  %.0 = phi %class.CDetour* [ null, %24 ], [ %2, %0 ]
  ret %class.CDetour* %.0
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetourC2EPvPS0_PKc(%class.CDetour* nocapture %this, i8* %callbackfunction, i8** %trampoline, i8* %signame) unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 0, i32 0
  store i8 0, i8* %1, align 1
  %2 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 1
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 0
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 1
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  store i8* null, i8** %5, align 4
  %6 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 4
  store i8* null, i8** %6, align 4
  %7 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 7
  store i8* %signame, i8** %7, align 4
  %8 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 5
  store i8* %callbackfunction, i8** %8, align 4
  %9 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 8
  store %"class.SourcePawn::ISourcePawnEngine"* null, %"class.SourcePawn::ISourcePawnEngine"** %9, align 4
  %10 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 9
  store %"class.SourceMod::IGameConfig"* null, %"class.SourceMod::IGameConfig"** %10, align 4
  %11 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 6
  store i8** %trampoline, i8*** %11, align 4
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetourC2EPvPS0_S0_(%class.CDetour* nocapture %this, i8* %callbackfunction, i8** %trampoline, i8* %pAddress) unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 0, i32 0
  store i8 0, i8* %1, align 1
  %2 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 1
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 0
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 1
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  store i8* %pAddress, i8** %5, align 4
  %6 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 4
  store i8* null, i8** %6, align 4
  %7 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 7
  store i8* null, i8** %7, align 4
  %8 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 5
  store i8* %callbackfunction, i8** %8, align 4
  %9 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 8
  store %"class.SourcePawn::ISourcePawnEngine"* null, %"class.SourcePawn::ISourcePawnEngine"** %9, align 4
  %10 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 9
  store %"class.SourceMod::IGameConfig"* null, %"class.SourceMod::IGameConfig"** %10, align 4
  %11 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 6
  store i8** %trampoline, i8*** %11, align 4
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN7CDetour12CreateDetourEv(%class.CDetour* %this) #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 7
  %2 = load i8** %1, align 4
  %3 = icmp eq i8* %2, null
  br i1 %3, label %._crit_edge6, label %4

._crit_edge6:                                     ; preds = %0
  %.pre7 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  br label %21

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 9
  %6 = load %"class.SourceMod::IGameConfig"** %5, align 4
  %7 = bitcast %"class.SourceMod::IGameConfig"* %6 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %8 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %7, align 4
  %9 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %8, i32 3
  %10 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %9, align 4
  %11 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  %12 = tail call zeroext i1 %10(%"class.SourceMod::IGameConfig"* %6, i8* %2, i8** %11) #6
  br i1 %12, label %21, label %13

; <label>:13                                      ; preds = %4
  %14 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %15 = bitcast %"class.SourceMod::ISourceMod"* %14 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %16 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %15, align 4
  %17 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %16, i32 7
  %18 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %17, align 4
  %19 = load %"class.SourceMod::IExtension"** @myself, align 4
  %20 = load i8** %1, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %18(%"class.SourceMod::ISourceMod"* %14, %"class.SourceMod::IExtension"* %19, i8* getelementptr inbounds ([39 x i8]* @.str, i32 0, i32 0), i8* %20) #6
  br label %81

; <label>:21                                      ; preds = %._crit_edge6, %4
  %.pre-phi = phi i8** [ %.pre7, %._crit_edge6 ], [ %11, %4 ]
  %22 = load i8** %.pre-phi, align 4
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %31

; <label>:24                                      ; preds = %21
  %25 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %26 = bitcast %"class.SourceMod::ISourceMod"* %25 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %27 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %26, align 4
  %28 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %27, i32 7
  %29 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %28, align 4
  %30 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %29(%"class.SourceMod::ISourceMod"* %25, %"class.SourceMod::IExtension"* %30, i8* getelementptr inbounds ([68 x i8]* @.str3, i32 0, i32 0)) #6
  br label %81

; <label>:31                                      ; preds = %21
  %32 = tail call i32 @copy_bytes(i8* %22, i8* null, i32 6) #6
  %33 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 1
  store i32 %32, i32* %33, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %31
  %35 = phi i32 [ 0, %31 ], [ %43, %.lr.ph ]
  %36 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 8
  %37 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 4
  br label %45

.lr.ph:                                           ; preds = %31, %.lr.ph
  %i.05 = phi i32 [ %42, %.lr.ph ], [ 0, %31 ]
  %38 = load i8** %.pre-phi, align 4
  %39 = getelementptr inbounds i8* %38, i32 %i.05
  %40 = load i8* %39, align 1
  %41 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 0, i32 %i.05
  store i8 %40, i8* %41, align 1
  %42 = add i32 %i.05, 1
  %43 = load i32* %33, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %.lr.ph, label %.preheader

; <label>:45                                      ; preds = %._crit_edge, %.preheader
  %46 = phi i32 [ %.pre, %._crit_edge ], [ %35, %.preheader ]
  %.offs3 = add i32 %46, 5
  %47 = load %"class.SourcePawn::ISourcePawnEngine"** %36, align 4
  %48 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %47 to i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)***
  %49 = load i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)*** %48, align 4
  %50 = getelementptr inbounds i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)** %49, i32 10
  %51 = load i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)** %50, align 4
  %52 = tail call i8* %51(%"class.SourcePawn::ISourcePawnEngine"* %47, i32 %.offs3) #6
  %53 = load %"class.SourcePawn::ISourcePawnEngine"** %36, align 4
  %54 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %53 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %55 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %54, align 4
  %56 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %55, i32 11
  %57 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %56, align 4
  tail call void %57(%"class.SourcePawn::ISourcePawnEngine"* %53, i8* %52) #6
  store i8* %52, i8** %37, align 4
  %58 = icmp eq i8* %52, null
  br i1 %58, label %._crit_edge, label %59

._crit_edge:                                      ; preds = %45
  %.pre = load i32* %33, align 4
  br label %45

; <label>:59                                      ; preds = %45
  %60 = load i8** %.pre-phi, align 4
  %61 = load i32* %33, align 4
  %62 = tail call i32 @copy_bytes(i8* %60, i8* %52, i32 %61) #6
  %63 = load i32* %33, align 4
  %64 = getelementptr inbounds i8* %52, i32 %63
  store i8 -23, i8* %64, align 1
  %.sum = add i32 %63, 1
  %65 = getelementptr inbounds i8* %52, i32 %.sum
  %66 = bitcast i8* %65 to i32*
  store i32 0, i32* %66, align 4
  %67 = load i8** %.pre-phi, align 4
  %68 = load i32* %33, align 4
  %69 = getelementptr inbounds i8* %67, i32 %68
  %70 = ptrtoint i8* %52 to i32
  %71 = ptrtoint i8* %69 to i32
  %.neg1.i = sub i32 -5, %70
  %.neg2.i = sub i32 %.neg1.i, %63
  %72 = add i32 %.neg2.i, %71
  store i32 %72, i32* %66, align 4
  %73 = load %"class.SourcePawn::ISourcePawnEngine"** %36, align 4
  %74 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %73 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %75 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %74, align 4
  %76 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %75, i32 12
  %77 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %76, align 4
  tail call void %77(%"class.SourcePawn::ISourcePawnEngine"* %73, i8* %52) #6
  %78 = load i8** %37, align 4
  %79 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 6
  %80 = load i8*** %79, align 4
  store i8* %78, i8** %80, align 4
  br label %81

; <label>:81                                      ; preds = %59, %24, %13
  %.0 = phi i1 [ true, %59 ], [ false, %24 ], [ false, %13 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour7DestroyEv(%class.CDetour* %this) #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 1
  %2 = load i8* %1, align 1, !range !1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %20, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  %6 = load i8** %5, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = and i32 %7, -4096
  %9 = inttoptr i32 %8 to i8*
  %10 = tail call i32 @sysconf(i32 30) #6
  %11 = tail call i32 @mprotect(i8* %9, i32 %10, i32 7) #6
  %.pre.i.i.i = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 1
  %12 = load i32* %.pre.i.i.i, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %_ZN7CDetour13DisableDetourEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %4, %.lr.ph.i.i.i
  %i1.03.i.i.i = phi i32 [ %17, %.lr.ph.i.i.i ], [ 0, %4 ]
  %14 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 0, i32 %i1.03.i.i.i
  %15 = load i8* %14, align 1
  %16 = getelementptr inbounds i8* %6, i32 %i1.03.i.i.i
  store i8 %15, i8* %16, align 1
  %17 = add i32 %i1.03.i.i.i, 1
  %18 = load i32* %.pre.i.i.i, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %.lr.ph.i.i.i, label %_ZN7CDetour13DisableDetourEv.exit.i

_ZN7CDetour13DisableDetourEv.exit.i:              ; preds = %.lr.ph.i.i.i, %4
  store i8 0, i8* %1, align 1
  br label %20

; <label>:20                                      ; preds = %_ZN7CDetour13DisableDetourEv.exit.i, %0
  %21 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 4
  %22 = load i8** %21, align 4
  %23 = icmp eq i8* %22, null
  br i1 %23, label %_ZN7CDetour12DeleteDetourEv.exit, label %_ZN7CDetour12DeleteDetourEv.exit.thread

_ZN7CDetour12DeleteDetourEv.exit.thread:          ; preds = %20
  %24 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 8
  %25 = load %"class.SourcePawn::ISourcePawnEngine"** %24, align 4
  %26 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %25 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %27 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %26, align 4
  %28 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %27, i32 13
  %29 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %28, align 4
  tail call void %29(%"class.SourcePawn::ISourcePawnEngine"* %25, i8* %22) #6
  br label %31

_ZN7CDetour12DeleteDetourEv.exit:                 ; preds = %20
  %30 = icmp eq %class.CDetour* %this, null
  br i1 %30, label %33, label %31

; <label>:31                                      ; preds = %_ZN7CDetour12DeleteDetourEv.exit.thread, %_ZN7CDetour12DeleteDetourEv.exit
  %32 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 0
  tail call void @_ZdlPv(i8* %32) #5
  br label %33

; <label>:33                                      ; preds = %31, %_ZN7CDetour12DeleteDetourEv.exit
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour12DeleteDetourEv(%class.CDetour* nocapture %this) #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 1
  %2 = load i8* %1, align 1, !range !1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %20, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  %6 = load i8** %5, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = and i32 %7, -4096
  %9 = inttoptr i32 %8 to i8*
  %10 = tail call i32 @sysconf(i32 30) #6
  %11 = tail call i32 @mprotect(i8* %9, i32 %10, i32 7) #6
  %.pre.i.i = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 1
  %12 = load i32* %.pre.i.i, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %_ZN7CDetour13DisableDetourEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %4, %.lr.ph.i.i
  %i1.03.i.i = phi i32 [ %17, %.lr.ph.i.i ], [ 0, %4 ]
  %14 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 0, i32 %i1.03.i.i
  %15 = load i8* %14, align 1
  %16 = getelementptr inbounds i8* %6, i32 %i1.03.i.i
  store i8 %15, i8* %16, align 1
  %17 = add i32 %i1.03.i.i, 1
  %18 = load i32* %.pre.i.i, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %.lr.ph.i.i, label %_ZN7CDetour13DisableDetourEv.exit

_ZN7CDetour13DisableDetourEv.exit:                ; preds = %.lr.ph.i.i, %4
  store i8 0, i8* %1, align 1
  br label %20

; <label>:20                                      ; preds = %0, %_ZN7CDetour13DisableDetourEv.exit
  %21 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 4
  %22 = load i8** %21, align 4
  %23 = icmp eq i8* %22, null
  br i1 %23, label %31, label %24

; <label>:24                                      ; preds = %20
  %25 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 8
  %26 = load %"class.SourcePawn::ISourcePawnEngine"** %25, align 4
  %27 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %26 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %28 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %27, align 4
  %29 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %28, i32 13
  %30 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %29, align 4
  tail call void %30(%"class.SourcePawn::ISourcePawnEngine"* %26, i8* %22) #6
  store i8* null, i8** %21, align 4
  br label %31

; <label>:31                                      ; preds = %20, %24
  ret void
}

; Function Attrs: nounwind readonly
define hidden zeroext i1 @_ZN7CDetour9IsEnabledEv(%class.CDetour* nocapture readonly %this) #3 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 0
  %2 = load i8* %1, align 1, !range !1
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

declare i32 @copy_bytes(i8*, i8*, i32) #4

; Function Attrs: nounwind
define hidden void @_ZN7CDetour13DisableDetourEv(%class.CDetour* nocapture %this) #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 1
  %2 = load i8* %1, align 1, !range !1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %20, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  %6 = load i8** %5, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = and i32 %7, -4096
  %9 = inttoptr i32 %8 to i8*
  %10 = tail call i32 @sysconf(i32 30) #6
  %11 = tail call i32 @mprotect(i8* %9, i32 %10, i32 7) #6
  %.pre.i = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 1
  %12 = load i32* %.pre.i, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %_Z10ApplyPatchPviPK7patch_tPS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %4, %.lr.ph.i
  %i1.03.i = phi i32 [ %17, %.lr.ph.i ], [ 0, %4 ]
  %14 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 2, i32 0, i32 %i1.03.i
  %15 = load i8* %14, align 1
  %16 = getelementptr inbounds i8* %6, i32 %i1.03.i
  store i8 %15, i8* %16, align 1
  %17 = add i32 %i1.03.i, 1
  %18 = load i32* %.pre.i, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %.lr.ph.i, label %_Z10ApplyPatchPviPK7patch_tPS0_.exit

_Z10ApplyPatchPviPK7patch_tPS0_.exit:             ; preds = %.lr.ph.i, %4
  store i8 0, i8* %1, align 1
  br label %20

; <label>:20                                      ; preds = %0, %_Z10ApplyPatchPviPK7patch_tPS0_.exit
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %this) #0 align 2 {
  %1 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 1
  %2 = load i8* %1, align 1, !range !1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %17

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 3
  %6 = load i8** %5, align 4
  %7 = getelementptr inbounds %class.CDetour* %this, i32 0, i32 5
  %8 = bitcast i8** %7 to i8*
  %9 = ptrtoint i8* %6 to i32
  %10 = and i32 %9, -4096
  %11 = inttoptr i32 %10 to i8*
  %12 = tail call i32 @sysconf(i32 30) #6
  %13 = tail call i32 @mprotect(i8* %11, i32 %12, i32 7) #6
  store i8 -1, i8* %6, align 1
  %14 = getelementptr inbounds i8* %6, i32 1
  store i8 37, i8* %14, align 1
  %15 = getelementptr inbounds i8* %6, i32 2
  %16 = bitcast i8* %15 to i8**
  store i8* %8, i8** %16, align 4
  store i8 1, i8* %1, align 1
  br label %17

; <label>:17                                      ; preds = %0, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @mprotect(i8*, i32, i32) #0

; Function Attrs: nounwind
declare i32 @sysconf(i32) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!1 = metadata !{i8 0, i8 2}
