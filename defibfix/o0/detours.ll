; ModuleID = 'CDetour/detours.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.Color = type { [4 x i8] }
%class.Vector2D = type { float, float }
%"class.SourcePawn::ISourcePawnEngine" = type { i32 (...)** }
%"class.SourceMod::IGameConfig" = type { i32 (...)** }
%"class.SourceMod::ISourceMod" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::SMInterface" = type { i32 (...)** }
%"class.SourceMod::IExtension" = type { i32 (...)** }
%class.CDetour = type { i8, i8, %struct.patch_t, i8*, i8*, i8*, i8**, i8*, %"class.SourcePawn::ISourcePawnEngine"*, %"class.SourceMod::IGameConfig"* }
%struct.patch_t = type { [20 x i8], i32 }
%class.JitWriter = type { i32*, i32*, i8*, i8*, %"class.SourcePawn::ICompilation"* }
%"class.SourcePawn::ICompilation" = type { i32 (...)** }

@_ZL25UNSPECIFIED_LOGGING_COLOR = internal global %class.Color zeroinitializer, align 1
@_ZL11vec2_origin = internal global %class.Vector2D zeroinitializer, align 4
@_ZL12vec2_invalid = internal global %class.Vector2D zeroinitializer, align 4
@_ZN14CDetourManager8spengineE = hidden global %"class.SourcePawn::ISourcePawnEngine"* null, align 4
@_ZN14CDetourManager8gameconfE = hidden global %"class.SourceMod::IGameConfig"* null, align 4
@g_pSM = external global %"class.SourceMod::ISourceMod"*
@myself = external global %"class.SourceMod::IExtension"*
@.str = private unnamed_addr constant [39 x i8] c"Could not locate %s - Disabling detour\00", align 1
@.str3 = private unnamed_addr constant [68 x i8] c"Invalid detour address passed - Disabling detour to prevent crashes\00", align 1
@.str4 = private unnamed_addr constant [60 x i8] c"Sigscan for %s failed - Disabling detour to prevent crashes\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

@_ZN7CDetourC1EPvPS0_PKc = hidden alias void (%class.CDetour*, i8*, i8**, i8*)* @_ZN7CDetourC2EPvPS0_PKc
@_ZN7CDetourC1EPvPS0_S0_ = hidden alias void (%class.CDetour*, i8*, i8**, i8*)* @_ZN7CDetourC2EPvPS0_S0_

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZN5ColorC2Eiiii(%class.Color* @_ZL25UNSPECIFIED_LOGGING_COLOR, i32 0, i32 0, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN5ColorC2Eiiii(%class.Color* %this, i32 %r, i32 %g, i32 %b, i32 %a) unnamed_addr #1 align 2 {
  %1 = alloca %class.Color*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Color* %this, %class.Color** %1, align 4
  store i32 %r, i32* %2, align 4
  store i32 %g, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %a, i32* %5, align 4
  %6 = load %class.Color** %1
  %7 = load i32* %2, align 4
  %8 = load i32* %3, align 4
  %9 = load i32* %4, align 4
  %10 = load i32* %5, align 4
  call void @_ZN5Color8SetColorEiiii(%class.Color* %6, i32 %7, i32 %8, i32 %9, i32 %10)
  ret void
}

; Function Attrs: nounwind
define internal void @__cxx_global_var_init1() #0 section ".text.startup" {
  call void @_ZN8Vector2DC2Eff(%class.Vector2D* @_ZL11vec2_origin, float 0.000000e+00, float 0.000000e+00)
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN8Vector2DC2Eff(%class.Vector2D* %this, float %X, float %Y) unnamed_addr #2 align 2 {
  %1 = alloca %class.Vector2D*, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store %class.Vector2D* %this, %class.Vector2D** %1, align 4
  store float %X, float* %2, align 4
  store float %Y, float* %3, align 4
  %4 = load %class.Vector2D** %1
  %5 = load float* %2, align 4
  %6 = getelementptr inbounds %class.Vector2D* %4, i32 0, i32 0
  store float %5, float* %6, align 4
  %7 = load float* %3, align 4
  %8 = getelementptr inbounds %class.Vector2D* %4, i32 0, i32 1
  store float %7, float* %8, align 4
  ret void
}

; Function Attrs: nounwind
define internal void @__cxx_global_var_init2() #0 section ".text.startup" {
  call void @_ZN8Vector2DC2Eff(%class.Vector2D* @_ZL12vec2_invalid, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN14CDetourManager4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourceMod::IGameConfig"* %gameconf) #1 align 2 {
  %1 = alloca %"class.SourcePawn::ISourcePawnEngine"*, align 4
  %2 = alloca %"class.SourceMod::IGameConfig"*, align 4
  store %"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourcePawn::ISourcePawnEngine"** %1, align 4
  store %"class.SourceMod::IGameConfig"* %gameconf, %"class.SourceMod::IGameConfig"** %2, align 4
  %3 = load %"class.SourcePawn::ISourcePawnEngine"** %1, align 4
  store %"class.SourcePawn::ISourcePawnEngine"* %3, %"class.SourcePawn::ISourcePawnEngine"** @_ZN14CDetourManager8spengineE, align 4
  %4 = load %"class.SourceMod::IGameConfig"** %2, align 4
  store %"class.SourceMod::IGameConfig"* %4, %"class.SourceMod::IGameConfig"** @_ZN14CDetourManager8gameconfE, align 4
  ret void
}

; Function Attrs: nounwind
define hidden %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* %callbackfunction, i8** %trampoline, i8* %signame) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i8*, align 4
  %detour = alloca %class.CDetour*, align 4
  store i8* %callbackfunction, i8** %2, align 4
  store i8** %trampoline, i8*** %3, align 4
  store i8* %signame, i8** %4, align 4
  %5 = call noalias i8* @_Znwj(i32 56) #6
  %6 = bitcast i8* %5 to %class.CDetour*
  %7 = load i8** %2, align 4
  %8 = load i8*** %3, align 4
  %9 = load i8** %4, align 4
  call void @_ZN7CDetourC1EPvPS0_PKc(%class.CDetour* %6, i8* %7, i8** %8, i8* %9)
  store %class.CDetour* %6, %class.CDetour** %detour, align 4
  %10 = load %class.CDetour** %detour, align 4
  %11 = icmp ne %class.CDetour* %10, null
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %0
  %13 = load %class.CDetour** %detour, align 4
  %14 = load %"class.SourcePawn::ISourcePawnEngine"** @_ZN14CDetourManager8spengineE, align 4
  %15 = load %"class.SourceMod::IGameConfig"** @_ZN14CDetourManager8gameconfE, align 4
  %16 = call zeroext i1 @_ZN7CDetour4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%class.CDetour* %13, %"class.SourcePawn::ISourcePawnEngine"* %14, %"class.SourceMod::IGameConfig"* %15)
  br i1 %16, label %23, label %17

; <label>:17                                      ; preds = %12
  %18 = load %class.CDetour** %detour, align 4
  %19 = icmp eq %class.CDetour* %18, null
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %17
  %21 = bitcast %class.CDetour* %18 to i8*
  call void @_ZdlPv(i8* %21) #7
  br label %22

; <label>:22                                      ; preds = %20, %17
  store %class.CDetour* null, %class.CDetour** %1
  br label %26

; <label>:23                                      ; preds = %12
  %24 = load %class.CDetour** %detour, align 4
  store %class.CDetour* %24, %class.CDetour** %1
  br label %26

; <label>:25                                      ; preds = %0
  store %class.CDetour* null, %class.CDetour** %1
  br label %26

; <label>:26                                      ; preds = %25, %23, %22
  %27 = load %class.CDetour** %1
  ret %class.CDetour* %27
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #3

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN7CDetour4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%class.CDetour* %this, %"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourceMod::IGameConfig"* %gameconf) #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.CDetour*, align 4
  %3 = alloca %"class.SourcePawn::ISourcePawnEngine"*, align 4
  %4 = alloca %"class.SourceMod::IGameConfig"*, align 4
  store %class.CDetour* %this, %class.CDetour** %2, align 4
  store %"class.SourcePawn::ISourcePawnEngine"* %spengine, %"class.SourcePawn::ISourcePawnEngine"** %3, align 4
  store %"class.SourceMod::IGameConfig"* %gameconf, %"class.SourceMod::IGameConfig"** %4, align 4
  %5 = load %class.CDetour** %2
  %6 = load %"class.SourcePawn::ISourcePawnEngine"** %3, align 4
  %7 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 8
  store %"class.SourcePawn::ISourcePawnEngine"* %6, %"class.SourcePawn::ISourcePawnEngine"** %7, align 4
  %8 = load %"class.SourceMod::IGameConfig"** %4, align 4
  %9 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 9
  store %"class.SourceMod::IGameConfig"* %8, %"class.SourceMod::IGameConfig"** %9, align 4
  %10 = call zeroext i1 @_ZN7CDetour12CreateDetourEv(%class.CDetour* %5)
  br i1 %10, label %16, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 0
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 0
  %14 = load i8* %13, align 1
  %15 = trunc i8 %14 to i1
  store i1 %15, i1* %1
  br label %21

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 0
  store i8 1, i8* %17, align 1
  %18 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 0
  %19 = load i8* %18, align 1
  %20 = trunc i8 %19 to i1
  store i1 %20, i1* %1
  br label %21

; <label>:21                                      ; preds = %16, %11
  %22 = load i1* %1
  ret i1 %22
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: nounwind
define hidden %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_S0_(i8* %callbackfunction, i8** %trampoline, i8* %pAddress) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i8*, align 4
  %detour = alloca %class.CDetour*, align 4
  store i8* %callbackfunction, i8** %2, align 4
  store i8** %trampoline, i8*** %3, align 4
  store i8* %pAddress, i8** %4, align 4
  %5 = call noalias i8* @_Znwj(i32 56) #6
  %6 = bitcast i8* %5 to %class.CDetour*
  %7 = load i8** %2, align 4
  %8 = load i8*** %3, align 4
  %9 = load i8** %4, align 4
  call void @_ZN7CDetourC1EPvPS0_S0_(%class.CDetour* %6, i8* %7, i8** %8, i8* %9)
  store %class.CDetour* %6, %class.CDetour** %detour, align 4
  %10 = load %class.CDetour** %detour, align 4
  %11 = icmp ne %class.CDetour* %10, null
  br i1 %11, label %12, label %25

; <label>:12                                      ; preds = %0
  %13 = load %class.CDetour** %detour, align 4
  %14 = load %"class.SourcePawn::ISourcePawnEngine"** @_ZN14CDetourManager8spengineE, align 4
  %15 = load %"class.SourceMod::IGameConfig"** @_ZN14CDetourManager8gameconfE, align 4
  %16 = call zeroext i1 @_ZN7CDetour4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%class.CDetour* %13, %"class.SourcePawn::ISourcePawnEngine"* %14, %"class.SourceMod::IGameConfig"* %15)
  br i1 %16, label %23, label %17

; <label>:17                                      ; preds = %12
  %18 = load %class.CDetour** %detour, align 4
  %19 = icmp eq %class.CDetour* %18, null
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %17
  %21 = bitcast %class.CDetour* %18 to i8*
  call void @_ZdlPv(i8* %21) #7
  br label %22

; <label>:22                                      ; preds = %20, %17
  store %class.CDetour* null, %class.CDetour** %1
  br label %26

; <label>:23                                      ; preds = %12
  %24 = load %class.CDetour** %detour, align 4
  store %class.CDetour* %24, %class.CDetour** %1
  br label %26

; <label>:25                                      ; preds = %0
  store %class.CDetour* null, %class.CDetour** %1
  br label %26

; <label>:26                                      ; preds = %25, %23, %22
  %27 = load %class.CDetour** %1
  ret %class.CDetour* %27
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetourC2EPvPS0_PKc(%class.CDetour* %this, i8* %callbackfunction, i8** %trampoline, i8* %signame) unnamed_addr #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i8*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  store i8* %callbackfunction, i8** %2, align 4
  store i8** %trampoline, i8*** %3, align 4
  store i8* %signame, i8** %4, align 4
  %5 = load %class.CDetour** %1
  %6 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 2
  call void @_ZN7patch_tC2Ev(%struct.patch_t* %6)
  %7 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 0
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 3
  store i8* null, i8** %9, align 4
  %10 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 4
  store i8* null, i8** %10, align 4
  %11 = load i8** %4, align 4
  %12 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 7
  store i8* %11, i8** %12, align 4
  %13 = load i8** %2, align 4
  %14 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 5
  store i8* %13, i8** %14, align 4
  %15 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 8
  store %"class.SourcePawn::ISourcePawnEngine"* null, %"class.SourcePawn::ISourcePawnEngine"** %15, align 4
  %16 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 9
  store %"class.SourceMod::IGameConfig"* null, %"class.SourceMod::IGameConfig"** %16, align 4
  %17 = load i8*** %3, align 4
  %18 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 6
  store i8** %17, i8*** %18, align 4
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN7patch_tC2Ev(%struct.patch_t* %this) unnamed_addr #1 align 2 {
  %1 = alloca %struct.patch_t*, align 4
  store %struct.patch_t* %this, %struct.patch_t** %1, align 4
  %2 = load %struct.patch_t** %1
  %3 = getelementptr inbounds %struct.patch_t* %2, i32 0, i32 0
  %4 = getelementptr inbounds [20 x i8]* %3, i32 0, i32 0
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.patch_t* %2, i32 0, i32 1
  store i32 0, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetourC2EPvPS0_S0_(%class.CDetour* %this, i8* %callbackfunction, i8** %trampoline, i8* %pAddress) unnamed_addr #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i8*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  store i8* %callbackfunction, i8** %2, align 4
  store i8** %trampoline, i8*** %3, align 4
  store i8* %pAddress, i8** %4, align 4
  %5 = load %class.CDetour** %1
  %6 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 2
  call void @_ZN7patch_tC2Ev(%struct.patch_t* %6)
  %7 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 0
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 1
  store i8 0, i8* %8, align 1
  %9 = load i8** %4, align 4
  %10 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 3
  store i8* %9, i8** %10, align 4
  %11 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 4
  store i8* null, i8** %11, align 4
  %12 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 7
  store i8* null, i8** %12, align 4
  %13 = load i8** %2, align 4
  %14 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 5
  store i8* %13, i8** %14, align 4
  %15 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 8
  store %"class.SourcePawn::ISourcePawnEngine"* null, %"class.SourcePawn::ISourcePawnEngine"** %15, align 4
  %16 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 9
  store %"class.SourceMod::IGameConfig"* null, %"class.SourceMod::IGameConfig"** %16, align 4
  %17 = load i8*** %3, align 4
  %18 = getelementptr inbounds %class.CDetour* %5, i32 0, i32 6
  store i8** %17, i8*** %18, align 4
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN7CDetour12CreateDetourEv(%class.CDetour* %this) #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.CDetour*, align 4
  %i = alloca i32, align 4
  %wr = alloca %class.JitWriter, align 4
  %jit = alloca %class.JitWriter*, align 4
  %CodeSize = alloca i32, align 4
  %call = alloca i32, align 4
  store %class.CDetour* %this, %class.CDetour** %2, align 4
  %3 = load %class.CDetour** %2
  %4 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 7
  %5 = load i8** %4, align 4
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %27

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 9
  %9 = load %"class.SourceMod::IGameConfig"** %8, align 4
  %10 = bitcast %"class.SourceMod::IGameConfig"* %9 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %11 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %10
  %12 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %11, i64 3
  %13 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %12
  %14 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 7
  %15 = load i8** %14, align 4
  %16 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %17 = call zeroext i1 %13(%"class.SourceMod::IGameConfig"* %9, i8* %15, i8** %16)
  br i1 %17, label %27, label %18

; <label>:18                                      ; preds = %7
  %19 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %20 = bitcast %"class.SourceMod::ISourceMod"* %19 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %21 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %20
  %22 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %21, i64 7
  %23 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %22
  %24 = load %"class.SourceMod::IExtension"** @myself, align 4
  %25 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 7
  %26 = load i8** %25, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %23(%"class.SourceMod::ISourceMod"* %19, %"class.SourceMod::IExtension"* %24, i8* getelementptr inbounds ([39 x i8]* @.str, i32 0, i32 0), i8* %26)
  store i1 false, i1* %1
  br label %151

; <label>:27                                      ; preds = %7, %0
  %28 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %29 = load i8** %28, align 4
  %30 = icmp ne i8* %29, null
  br i1 %30, label %38, label %31

; <label>:31                                      ; preds = %27
  %32 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %33 = bitcast %"class.SourceMod::ISourceMod"* %32 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %34 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %33
  %35 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %34, i64 7
  %36 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %35
  %37 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %36(%"class.SourceMod::ISourceMod"* %32, %"class.SourceMod::IExtension"* %37, i8* getelementptr inbounds ([68 x i8]* @.str3, i32 0, i32 0))
  store i1 false, i1* %1
  br label %151

; <label>:38                                      ; preds = %27
  br label %39

; <label>:39                                      ; preds = %38
  %40 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %41 = load i8** %40, align 4
  %42 = icmp ne i8* %41, null
  br i1 %42, label %52, label %43

; <label>:43                                      ; preds = %39
  %44 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %45 = bitcast %"class.SourceMod::ISourceMod"* %44 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %46 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %45
  %47 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %46, i64 7
  %48 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %47
  %49 = load %"class.SourceMod::IExtension"** @myself, align 4
  %50 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 7
  %51 = load i8** %50, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %48(%"class.SourceMod::ISourceMod"* %44, %"class.SourceMod::IExtension"* %49, i8* getelementptr inbounds ([60 x i8]* @.str4, i32 0, i32 0), i8* %51)
  store i1 false, i1* %1
  br label %151

; <label>:52                                      ; preds = %39
  %53 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %54 = load i8** %53, align 4
  %55 = call i32 @copy_bytes(i8* %54, i8* null, i32 6)
  %56 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 2
  %57 = getelementptr inbounds %struct.patch_t* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %i, align 4
  br label %58

; <label>:58                                      ; preds = %74, %52
  %59 = load i32* %i, align 4
  %60 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 2
  %61 = getelementptr inbounds %struct.patch_t* %60, i32 0, i32 1
  %62 = load i32* %61, align 4
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %77

; <label>:64                                      ; preds = %58
  %65 = load i32* %i, align 4
  %66 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %67 = load i8** %66, align 4
  %68 = getelementptr inbounds i8* %67, i32 %65
  %69 = load i8* %68, align 1
  %70 = load i32* %i, align 4
  %71 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 2
  %72 = getelementptr inbounds %struct.patch_t* %71, i32 0, i32 0
  %73 = getelementptr inbounds [20 x i8]* %72, i32 0, i32 %70
  store i8 %69, i8* %73, align 1
  br label %74

; <label>:74                                      ; preds = %64
  %75 = load i32* %i, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %i, align 4
  br label %58

; <label>:77                                      ; preds = %58
  store %class.JitWriter* %wr, %class.JitWriter** %jit, align 4
  store i32 0, i32* %CodeSize, align 4
  %78 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  store i8* null, i8** %78, align 4
  %79 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 3
  store i8* null, i8** %79, align 4
  br label %80

; <label>:80                                      ; preds = %113, %77
  %81 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  %82 = load i8** %81, align 4
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %93

; <label>:84                                      ; preds = %80
  %85 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %86 = load i8** %85, align 4
  %87 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 3
  %88 = load i8** %87, align 4
  %89 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 2
  %90 = getelementptr inbounds %struct.patch_t* %89, i32 0, i32 1
  %91 = load i32* %90, align 4
  %92 = call i32 @copy_bytes(i8* %86, i8* %88, i32 %91)
  br label %93

; <label>:93                                      ; preds = %84, %80
  %94 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 2
  %95 = getelementptr inbounds %struct.patch_t* %94, i32 0, i32 1
  %96 = load i32* %95, align 4
  %97 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 3
  %98 = load i8** %97, align 4
  %99 = getelementptr inbounds i8* %98, i32 %96
  store i8* %99, i8** %97, align 4
  %100 = load %class.JitWriter** %jit, align 4
  %101 = call i32 @_Z15IA32_Jump_Imm32P9JitWriteri(%class.JitWriter* %100, i32 0)
  store i32 %101, i32* %call, align 4
  %102 = load %class.JitWriter** %jit, align 4
  %103 = load i32* %call, align 4
  %104 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 3
  %105 = load i8** %104, align 4
  %106 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 2
  %107 = getelementptr inbounds %struct.patch_t* %106, i32 0, i32 1
  %108 = load i32* %107, align 4
  %109 = getelementptr inbounds i8* %105, i32 %108
  call void @_Z21IA32_Write_Jump32_AbsP9JitWriterjPv(%class.JitWriter* %102, i32 %103, i8* %109)
  %110 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  %111 = load i8** %110, align 4
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %138

; <label>:113                                     ; preds = %93
  %114 = call i32 @_ZN9JitWriter13get_outputposEv(%class.JitWriter* %wr)
  store i32 %114, i32* %CodeSize, align 4
  %115 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 8
  %116 = load %"class.SourcePawn::ISourcePawnEngine"** %115, align 4
  %117 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %116 to i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)***
  %118 = load i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)*** %117
  %119 = getelementptr inbounds i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)** %118, i64 10
  %120 = load i8* (%"class.SourcePawn::ISourcePawnEngine"*, i32)** %119
  %121 = load i32* %CodeSize, align 4
  %122 = call i8* %120(%"class.SourcePawn::ISourcePawnEngine"* %116, i32 %121)
  %123 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  store i8* %122, i8** %123, align 4
  %124 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 8
  %125 = load %"class.SourcePawn::ISourcePawnEngine"** %124, align 4
  %126 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %125 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %127 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %126
  %128 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %127, i64 11
  %129 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %128
  %130 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  %131 = load i8** %130, align 4
  call void %129(%"class.SourcePawn::ISourcePawnEngine"* %125, i8* %131)
  %132 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  %133 = load i8** %132, align 4
  %134 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 3
  store i8* %133, i8** %134, align 4
  %135 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  %136 = load i8** %135, align 4
  %137 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 4
  store i8* %136, i8** %137, align 4
  br label %80

; <label>:138                                     ; preds = %93
  %139 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 8
  %140 = load %"class.SourcePawn::ISourcePawnEngine"** %139, align 4
  %141 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %140 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %142 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %141
  %143 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %142, i64 12
  %144 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %143
  %145 = getelementptr inbounds %class.JitWriter* %wr, i32 0, i32 2
  %146 = load i8** %145, align 4
  call void %144(%"class.SourcePawn::ISourcePawnEngine"* %140, i8* %146)
  %147 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 4
  %148 = load i8** %147, align 4
  %149 = getelementptr inbounds %class.CDetour* %3, i32 0, i32 6
  %150 = load i8*** %149, align 4
  store i8* %148, i8** %150, align 4
  store i1 true, i1* %1
  br label %151

; <label>:151                                     ; preds = %138, %43, %31, %18
  %152 = load i1* %1
  ret i1 %152
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour7DestroyEv(%class.CDetour* %this) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  %2 = load %class.CDetour** %1
  call void @_ZN7CDetour12DeleteDetourEv(%class.CDetour* %2)
  %3 = icmp eq %class.CDetour* %2, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast %class.CDetour* %2 to i8*
  call void @_ZdlPv(i8* %5) #7
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour12DeleteDetourEv(%class.CDetour* %this) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  %2 = load %class.CDetour** %1
  %3 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 1
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @_ZN7CDetour13DisableDetourEv(%class.CDetour* %2)
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 4
  %9 = load i8** %8, align 4
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 8
  %13 = load %"class.SourcePawn::ISourcePawnEngine"** %12, align 4
  %14 = bitcast %"class.SourcePawn::ISourcePawnEngine"* %13 to void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)***
  %15 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)*** %14
  %16 = getelementptr inbounds void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %15, i64 13
  %17 = load void (%"class.SourcePawn::ISourcePawnEngine"*, i8*)** %16
  %18 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 4
  %19 = load i8** %18, align 4
  call void %17(%"class.SourcePawn::ISourcePawnEngine"* %13, i8* %19)
  %20 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 4
  store i8* null, i8** %20, align 4
  br label %21

; <label>:21                                      ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN7CDetour9IsEnabledEv(%class.CDetour* %this) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  %2 = load %class.CDetour** %1
  %3 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 0
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

declare i32 @copy_bytes(i8*, i8*, i32) #5

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden i32 @_Z15IA32_Jump_Imm32P9JitWriteri(%class.JitWriter* %jit, i32 %disp) #2 {
  %1 = alloca %class.JitWriter*, align 4
  %2 = alloca i32, align 4
  %ptr = alloca i32, align 4
  store %class.JitWriter* %jit, %class.JitWriter** %1, align 4
  store i32 %disp, i32* %2, align 4
  %3 = load %class.JitWriter** %1, align 4
  call void @_ZN9JitWriter11write_ubyteEh(%class.JitWriter* %3, i8 zeroext -23)
  %4 = load %class.JitWriter** %1, align 4
  %5 = call i32 @_ZN9JitWriter13get_outputposEv(%class.JitWriter* %4)
  store i32 %5, i32* %ptr, align 4
  %6 = load %class.JitWriter** %1, align 4
  %7 = load i32* %2, align 4
  call void @_ZN9JitWriter11write_int32Ei(%class.JitWriter* %6, i32 %7)
  %8 = load i32* %ptr, align 4
  ret i32 %8
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_Z21IA32_Write_Jump32_AbsP9JitWriterjPv(%class.JitWriter* %jit, i32 %jmp, i8* %target) #2 {
  %1 = alloca %class.JitWriter*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %oldptr = alloca i8*, align 4
  %diff = alloca i32, align 4
  store %class.JitWriter* %jit, %class.JitWriter** %1, align 4
  store i32 %jmp, i32* %2, align 4
  store i8* %target, i8** %3, align 4
  %4 = load %class.JitWriter** %1, align 4
  %5 = getelementptr inbounds %class.JitWriter* %4, i32 0, i32 3
  %6 = load i8** %5, align 4
  store i8* %6, i8** %oldptr, align 4
  %7 = load i8** %3, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = load %class.JitWriter** %1, align 4
  %10 = getelementptr inbounds %class.JitWriter* %9, i32 0, i32 2
  %11 = load i8** %10, align 4
  %12 = ptrtoint i8* %11 to i32
  %13 = load i32* %2, align 4
  %14 = add i32 %12, %13
  %15 = add i32 %14, 4
  %16 = sub i32 %8, %15
  store i32 %16, i32* %diff, align 4
  %17 = load %class.JitWriter** %1, align 4
  %18 = getelementptr inbounds %class.JitWriter* %17, i32 0, i32 2
  %19 = load i8** %18, align 4
  %20 = load i32* %2, align 4
  %21 = getelementptr inbounds i8* %19, i32 %20
  %22 = load %class.JitWriter** %1, align 4
  %23 = getelementptr inbounds %class.JitWriter* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 4
  %24 = load %class.JitWriter** %1, align 4
  %25 = load i32* %diff, align 4
  call void @_ZN9JitWriter11write_int32Ei(%class.JitWriter* %24, i32 %25)
  %26 = load i8** %oldptr, align 4
  %27 = load %class.JitWriter** %1, align 4
  %28 = getelementptr inbounds %class.JitWriter* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden i32 @_ZN9JitWriter13get_outputposEv(%class.JitWriter* %this) #2 align 2 {
  %1 = alloca %class.JitWriter*, align 4
  store %class.JitWriter* %this, %class.JitWriter** %1, align 4
  %2 = load %class.JitWriter** %1
  %3 = getelementptr inbounds %class.JitWriter* %2, i32 0, i32 3
  %4 = load i8** %3, align 4
  %5 = getelementptr inbounds %class.JitWriter* %2, i32 0, i32 2
  %6 = load i8** %5, align 4
  %7 = ptrtoint i8* %4 to i32
  %8 = ptrtoint i8* %6 to i32
  %9 = sub i32 %7, %8
  ret i32 %9
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour13DisableDetourEv(%class.CDetour* %this) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  %2 = load %class.CDetour** %1
  %3 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 1
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 3
  %8 = load i8** %7, align 4
  %9 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 2
  call void @_Z10ApplyPatchPviPK7patch_tPS0_(i8* %8, i32 0, %struct.patch_t* %9, %struct.patch_t* null)
  %10 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 1
  store i8 0, i8* %10, align 1
  br label %11

; <label>:11                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %this) #1 align 2 {
  %1 = alloca %class.CDetour*, align 4
  store %class.CDetour* %this, %class.CDetour** %1, align 4
  %2 = load %class.CDetour** %1
  %3 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 1
  %4 = load i8* %3, align 1
  %5 = trunc i8 %4 to i1
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 3
  %8 = load i8** %7, align 4
  %9 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 5
  %10 = bitcast i8** %9 to i8*
  call void @_Z11DoGatePatchPhPv(i8* %8, i8* %10)
  %11 = getelementptr inbounds %class.CDetour* %2, i32 0, i32 1
  store i8 1, i8* %11, align 1
  br label %12

; <label>:12                                      ; preds = %6, %0
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_Z11DoGatePatchPhPv(i8* %target, i8* %callback) #2 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  store i8* %target, i8** %1, align 4
  store i8* %callback, i8** %2, align 4
  %3 = load i8** %1, align 4
  call void @_Z15SetMemPatchablePvj(i8* %3, i32 20)
  %4 = load i8** %1, align 4
  %5 = getelementptr inbounds i8* %4, i32 0
  store i8 -1, i8* %5, align 1
  %6 = load i8** %1, align 4
  %7 = getelementptr inbounds i8* %6, i32 1
  store i8 37, i8* %7, align 1
  %8 = load i8** %2, align 4
  %9 = load i8** %1, align 4
  %10 = getelementptr inbounds i8* %9, i32 2
  %11 = bitcast i8* %10 to i8**
  store i8* %8, i8** %11, align 4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_Z10ApplyPatchPviPK7patch_tPS0_(i8* %address, i32 %offset, %struct.patch_t* %patch, %struct.patch_t* %restore) #2 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.patch_t*, align 4
  %4 = alloca %struct.patch_t*, align 4
  %addr = alloca i8*, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i8* %address, i8** %1, align 4
  store i32 %offset, i32* %2, align 4
  store %struct.patch_t* %patch, %struct.patch_t** %3, align 4
  store %struct.patch_t* %restore, %struct.patch_t** %4, align 4
  %5 = load i8** %1, align 4
  call void @_Z13ProtectMemoryPvii(i8* %5, i32 20, i32 7)
  %6 = load i8** %1, align 4
  %7 = load i32* %2, align 4
  %8 = getelementptr inbounds i8* %6, i32 %7
  store i8* %8, i8** %addr, align 4
  %9 = load %struct.patch_t** %4, align 4
  %10 = icmp ne %struct.patch_t* %9, null
  br i1 %10, label %11, label %36

; <label>:11                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %12

; <label>:12                                      ; preds = %27, %11
  %13 = load i32* %i, align 4
  %14 = load %struct.patch_t** %3, align 4
  %15 = getelementptr inbounds %struct.patch_t* %14, i32 0, i32 1
  %16 = load i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %30

; <label>:18                                      ; preds = %12
  %19 = load i32* %i, align 4
  %20 = load i8** %addr, align 4
  %21 = getelementptr inbounds i8* %20, i32 %19
  %22 = load i8* %21, align 1
  %23 = load i32* %i, align 4
  %24 = load %struct.patch_t** %4, align 4
  %25 = getelementptr inbounds %struct.patch_t* %24, i32 0, i32 0
  %26 = getelementptr inbounds [20 x i8]* %25, i32 0, i32 %23
  store i8 %22, i8* %26, align 1
  br label %27

; <label>:27                                      ; preds = %18
  %28 = load i32* %i, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %12

; <label>:30                                      ; preds = %12
  %31 = load %struct.patch_t** %3, align 4
  %32 = getelementptr inbounds %struct.patch_t* %31, i32 0, i32 1
  %33 = load i32* %32, align 4
  %34 = load %struct.patch_t** %4, align 4
  %35 = getelementptr inbounds %struct.patch_t* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

; <label>:36                                      ; preds = %30, %0
  store i32 0, i32* %i1, align 4
  br label %37

; <label>:37                                      ; preds = %52, %36
  %38 = load i32* %i1, align 4
  %39 = load %struct.patch_t** %3, align 4
  %40 = getelementptr inbounds %struct.patch_t* %39, i32 0, i32 1
  %41 = load i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %55

; <label>:43                                      ; preds = %37
  %44 = load i32* %i1, align 4
  %45 = load %struct.patch_t** %3, align 4
  %46 = getelementptr inbounds %struct.patch_t* %45, i32 0, i32 0
  %47 = getelementptr inbounds [20 x i8]* %46, i32 0, i32 %44
  %48 = load i8* %47, align 1
  %49 = load i32* %i1, align 4
  %50 = load i8** %addr, align 4
  %51 = getelementptr inbounds i8* %50, i32 %49
  store i8 %48, i8* %51, align 1
  br label %52

; <label>:52                                      ; preds = %43
  %53 = load i32* %i1, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %i1, align 4
  br label %37

; <label>:55                                      ; preds = %37
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_Z13ProtectMemoryPvii(i8* %addr, i32 %length, i32 %prot) #2 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %addr2 = alloca i8*, align 4
  store i8* %addr, i8** %1, align 4
  store i32 %length, i32* %2, align 4
  store i32 %prot, i32* %3, align 4
  %4 = load i8** %1, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = and i32 %5, -4096
  %7 = inttoptr i32 %6 to i8*
  store i8* %7, i8** %addr2, align 4
  %8 = load i8** %addr2, align 4
  %9 = call i32 @sysconf(i32 30) #0
  %10 = load i32* %3, align 4
  %11 = call i32 @mprotect(i8* %8, i32 %9, i32 %10) #0
  ret void
}

; Function Attrs: nounwind
declare i32 @mprotect(i8*, i32, i32) #1

; Function Attrs: nounwind
declare i32 @sysconf(i32) #1

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_Z15SetMemPatchablePvj(i8* %address, i32 %size) #2 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  store i8* %address, i8** %1, align 4
  store i32 %size, i32* %2, align 4
  %3 = load i8** %1, align 4
  %4 = load i32* %2, align 4
  call void @_Z13ProtectMemoryPvii(i8* %3, i32 %4, i32 7)
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN9JitWriter11write_int32Ei(%class.JitWriter* %this, i32 %c) #2 align 2 {
  %1 = alloca %class.JitWriter*, align 4
  %2 = alloca i32, align 4
  store %class.JitWriter* %this, %class.JitWriter** %1, align 4
  store i32 %c, i32* %2, align 4
  %3 = load %class.JitWriter** %1
  %4 = getelementptr inbounds %class.JitWriter* %3, i32 0, i32 2
  %5 = load i8** %4, align 4
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load i32* %2, align 4
  %9 = getelementptr inbounds %class.JitWriter* %3, i32 0, i32 3
  %10 = load i8** %9, align 4
  %11 = bitcast i8* %10 to i32*
  store i32 %8, i32* %11, align 4
  br label %12

; <label>:12                                      ; preds = %7, %0
  %13 = getelementptr inbounds %class.JitWriter* %3, i32 0, i32 3
  %14 = load i8** %13, align 4
  %15 = getelementptr inbounds i8* %14, i32 4
  store i8* %15, i8** %13, align 4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN9JitWriter11write_ubyteEh(%class.JitWriter* %this, i8 zeroext %c) #2 align 2 {
  %1 = alloca %class.JitWriter*, align 4
  %2 = alloca i8, align 1
  store %class.JitWriter* %this, %class.JitWriter** %1, align 4
  store i8 %c, i8* %2, align 1
  %3 = load %class.JitWriter** %1
  %4 = getelementptr inbounds %class.JitWriter* %3, i32 0, i32 2
  %5 = load i8** %4, align 4
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = load i8* %2, align 1
  %9 = getelementptr inbounds %class.JitWriter* %3, i32 0, i32 3
  %10 = load i8** %9, align 4
  store i8 %8, i8* %10, align 1
  br label %11

; <label>:11                                      ; preds = %7, %0
  %12 = getelementptr inbounds %class.JitWriter* %3, i32 0, i32 3
  %13 = load i8** %12, align 4
  %14 = getelementptr inbounds i8* %13, i32 1
  store i8* %14, i8** %12, align 4
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN5Color8SetColorEiiii(%class.Color* %this, i32 %r, i32 %g, i32 %b, i32 %a) #1 align 2 {
  %1 = alloca %class.Color*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Color* %this, %class.Color** %1, align 4
  store i32 %r, i32* %2, align 4
  store i32 %g, i32* %3, align 4
  store i32 %b, i32* %4, align 4
  store i32 %a, i32* %5, align 4
  %6 = load %class.Color** %1
  %7 = load i32* %2, align 4
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %class.Color* %6, i32 0, i32 0
  %10 = getelementptr inbounds [4 x i8]* %9, i32 0, i32 0
  store i8 %8, i8* %10, align 1
  %11 = load i32* %3, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %class.Color* %6, i32 0, i32 0
  %14 = getelementptr inbounds [4 x i8]* %13, i32 0, i32 1
  store i8 %12, i8* %14, align 1
  %15 = load i32* %4, align 4
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %class.Color* %6, i32 0, i32 0
  %18 = getelementptr inbounds [4 x i8]* %17, i32 0, i32 2
  store i8 %16, i8* %18, align 1
  %19 = load i32* %5, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %class.Color* %6, i32 0, i32 0
  %22 = getelementptr inbounds [4 x i8]* %21, i32 0, i32 3
  store i8 %20, i8* %22, align 1
  ret void
}

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  call void @__cxx_global_var_init2()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin }
attributes #7 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
