; ModuleID = '/home/imac/alliedmodders/sourcemod/public/smsdk_ext.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.SourceMod::IExtension" = type { i32 (...)** }
%"class.SourceMod::IShareSys" = type { i32 (...)** }
%"class.SourceMod::ISourceMod" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::SMInterface" = type { i32 (...)** }
%"class.SourceMod::IGameConfigManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IGameHelpers" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IThreader" = type { %"class.SourceMod::SMInterface", %"class.SourceMod::IThreadCreator" }
%"class.SourceMod::IThreadCreator" = type { i32 (...)** }
%"class.SourceMod::ILibrarySys" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IPluginManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IRootConsole" = type { %"class.SourceMod::SMInterface" }
%class.SDKExtension = type { %"class.SourceMod::IExtensionInterface" }
%"class.SourceMod::IExtensionInterface" = type { i32 (...)** }
%struct.edict_t = type opaque

@myself = hidden global %"class.SourceMod::IExtension"* null, align 4
@g_pShareSys = hidden global %"class.SourceMod::IShareSys"* null, align 4
@sharesys = hidden global %"class.SourceMod::IShareSys"* null, align 4
@g_pSM = hidden global %"class.SourceMod::ISourceMod"* null, align 4
@smutils = hidden global %"class.SourceMod::ISourceMod"* null, align 4
@gameconfs = hidden global %"class.SourceMod::IGameConfigManager"* null, align 4
@gamehelpers = hidden global %"class.SourceMod::IGameHelpers"* null, align 4
@threader = hidden global %"class.SourceMod::IThreader"* null, align 4
@libsys = hidden global %"class.SourceMod::ILibrarySys"* null, align 4
@plsys = hidden global %"class.SourceMod::IPluginManager"* null, align 4
@rootconsole = hidden global %"class.SourceMod::IRootConsole"* null, align 4
@g_pExtensionIface = external global %class.SDKExtension*
@_ZTV12SDKExtension = hidden unnamed_addr constant [26 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12SDKExtension to i8*), i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZN12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %struct.edict_t*, i32, i32)* @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32, i1)* @_ZN12SDKExtension10SDK_OnLoadEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension12SDK_OnUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension15SDK_OnAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension17SDK_OnPauseChangeEb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv to i8*)]
@.str = private unnamed_addr constant [11 x i8] c"ISourceMod\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Could not find interface: %s\00", align 1
@.str2 = private unnamed_addr constant [19 x i8] c"IGameConfigManager\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"IGameHelpers\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"IThreader\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"ILibrarySys\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"IPluginManager\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"IRootConsole\00", align 1
@.str8 = private unnamed_addr constant [23 x i8] c"Asher \22asherkin\22 Baker\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"Jan 22 2018\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"SRCDS Crash Handler\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"2.3.3\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"Accelerator\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"CRASH\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"https://crash.limetech.org/\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS12SDKExtension = hidden constant [15 x i8] c"12SDKExtension\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN9SourceMod19IExtensionInterfaceE = linkonce_odr hidden constant [34 x i8] c"N9SourceMod19IExtensionInterfaceE\00"
@_ZTIN9SourceMod19IExtensionInterfaceE = linkonce_odr hidden unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([34 x i8]* @_ZTSN9SourceMod19IExtensionInterfaceE, i32 0, i32 0) }
@_ZTI12SDKExtension = hidden unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8]* @_ZTS12SDKExtension, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN9SourceMod19IExtensionInterfaceE to i8*) }
@_ZTVN9SourceMod19IExtensionInterfaceE = linkonce_odr hidden unnamed_addr constant [21 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN9SourceMod19IExtensionInterfaceE to i8*), i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %struct.edict_t*, i32, i32)* @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*)]

@_ZN12SDKExtensionC1Ev = hidden alias void (%class.SDKExtension*)* @_ZN12SDKExtensionC2Ev

; Function Attrs: nounwind
define %"class.SourceMod::IExtensionInterface"* @GetSMExtAPI() #0 {
  %1 = load %class.SDKExtension** @g_pExtensionIface, align 4
  %2 = bitcast %class.SDKExtension* %1 to %"class.SourceMod::IExtensionInterface"*
  ret %"class.SourceMod::IExtensionInterface"* %2
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to %"class.SourceMod::IExtensionInterface"*
  call void @_ZN9SourceMod19IExtensionInterfaceC2Ev(%"class.SourceMod::IExtensionInterface"* %3) #3
  %4 = bitcast %class.SDKExtension* %2 to i8***
  store i8** getelementptr inbounds ([26 x i8*]* @_ZTV12SDKExtension, i64 0, i64 2), i8*** %4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterfaceC2Ev(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  %3 = bitcast %"class.SourceMod::IExtensionInterface"* %2 to i8***
  store i8** getelementptr inbounds ([21 x i8*]* @_ZTVN9SourceMod19IExtensionInterfaceE, i64 0, i64 2), i8*** %3
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %this, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #0 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.SDKExtension*, align 4
  %3 = alloca %"class.SourceMod::IExtension"*, align 4
  %4 = alloca %"class.SourceMod::IShareSys"*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %len = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %len4 = alloca i32, align 4
  %len5 = alloca i32, align 4
  %len6 = alloca i32, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %2, align 4
  store %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IExtension"** %3, align 4
  store %"class.SourceMod::IShareSys"* %sys, %"class.SourceMod::IShareSys"** %4, align 4
  store i8* %error, i8** %5, align 4
  store i32 %maxlength, i32* %6, align 4
  %8 = zext i1 %late to i8
  store i8 %8, i8* %7, align 1
  %9 = load %class.SDKExtension** %2
  %10 = load %"class.SourceMod::IShareSys"** %4, align 4
  store %"class.SourceMod::IShareSys"* %10, %"class.SourceMod::IShareSys"** @sharesys, align 4
  store %"class.SourceMod::IShareSys"* %10, %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %11 = load %"class.SourceMod::IExtension"** %3, align 4
  store %"class.SourceMod::IExtension"* %11, %"class.SourceMod::IExtension"** @myself, align 4
  %12 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %13 = bitcast %"class.SourceMod::IShareSys"* %12 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %14 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %13
  %15 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %14, i64 1
  %16 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %15
  %17 = load %"class.SourceMod::IExtension"** @myself, align 4
  %18 = call zeroext i1 %16(%"class.SourceMod::IShareSys"* %12, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i32 13, %"class.SourceMod::IExtension"* %17, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::ISourceMod"** @g_pSM to %"class.SourceMod::SMInterface"**))
  br i1 %18, label %39, label %19

; <label>:19                                      ; preds = %0
  %20 = load i8** %5, align 4
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %38

; <label>:22                                      ; preds = %19
  %23 = load i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

; <label>:25                                      ; preds = %22
  %26 = load i8** %5, align 4
  %27 = load i32* %6, align 4
  %28 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)) #3
  store i32 %28, i32* %len, align 4
  %29 = load i32* %len, align 4
  %30 = load i32* %6, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %25
  %33 = load i32* %6, align 4
  %34 = sub i32 %33, 1
  %35 = load i8** %5, align 4
  %36 = getelementptr inbounds i8* %35, i32 %34
  store i8 0, i8* %36, align 1
  br label %37

; <label>:37                                      ; preds = %32, %25
  br label %38

; <label>:38                                      ; preds = %37, %22, %19
  store i1 false, i1* %1
  br label %220

; <label>:39                                      ; preds = %0
  %40 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  store %"class.SourceMod::ISourceMod"* %40, %"class.SourceMod::ISourceMod"** @smutils, align 4
  %41 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %42 = bitcast %"class.SourceMod::IShareSys"* %41 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %43 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %42
  %44 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %43, i64 1
  %45 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %44
  %46 = load %"class.SourceMod::IExtension"** @myself, align 4
  %47 = call zeroext i1 %45(%"class.SourceMod::IShareSys"* %41, i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i32 6, %"class.SourceMod::IExtension"* %46, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameConfigManager"** @gameconfs to %"class.SourceMod::SMInterface"**))
  br i1 %47, label %68, label %48

; <label>:48                                      ; preds = %39
  %49 = load i8** %5, align 4
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %67

; <label>:51                                      ; preds = %48
  %52 = load i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

; <label>:54                                      ; preds = %51
  %55 = load i8** %5, align 4
  %56 = load i32* %6, align 4
  %57 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %55, i32 %56, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0)) #3
  store i32 %57, i32* %len1, align 4
  %58 = load i32* %len1, align 4
  %59 = load i32* %6, align 4
  %60 = icmp uge i32 %58, %59
  br i1 %60, label %61, label %66

; <label>:61                                      ; preds = %54
  %62 = load i32* %6, align 4
  %63 = sub i32 %62, 1
  %64 = load i8** %5, align 4
  %65 = getelementptr inbounds i8* %64, i32 %63
  store i8 0, i8* %65, align 1
  br label %66

; <label>:66                                      ; preds = %61, %54
  br label %67

; <label>:67                                      ; preds = %66, %51, %48
  store i1 false, i1* %1
  br label %220

; <label>:68                                      ; preds = %39
  %69 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %70 = bitcast %"class.SourceMod::IShareSys"* %69 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %71 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %70
  %72 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %71, i64 1
  %73 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %72
  %74 = load %"class.SourceMod::IExtension"** @myself, align 4
  %75 = call zeroext i1 %73(%"class.SourceMod::IShareSys"* %69, i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 11, %"class.SourceMod::IExtension"* %74, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameHelpers"** @gamehelpers to %"class.SourceMod::SMInterface"**))
  br i1 %75, label %96, label %76

; <label>:76                                      ; preds = %68
  %77 = load i8** %5, align 4
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %95

; <label>:79                                      ; preds = %76
  %80 = load i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

; <label>:82                                      ; preds = %79
  %83 = load i8** %5, align 4
  %84 = load i32* %6, align 4
  %85 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)) #3
  store i32 %85, i32* %len2, align 4
  %86 = load i32* %len2, align 4
  %87 = load i32* %6, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %94

; <label>:89                                      ; preds = %82
  %90 = load i32* %6, align 4
  %91 = sub i32 %90, 1
  %92 = load i8** %5, align 4
  %93 = getelementptr inbounds i8* %92, i32 %91
  store i8 0, i8* %93, align 1
  br label %94

; <label>:94                                      ; preds = %89, %82
  br label %95

; <label>:95                                      ; preds = %94, %79, %76
  store i1 false, i1* %1
  br label %220

; <label>:96                                      ; preds = %68
  %97 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %98 = bitcast %"class.SourceMod::IShareSys"* %97 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %99 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %98
  %100 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %99, i64 1
  %101 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %100
  %102 = load %"class.SourceMod::IExtension"** @myself, align 4
  %103 = call zeroext i1 %101(%"class.SourceMod::IShareSys"* %97, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %102, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IThreader"** @threader to %"class.SourceMod::SMInterface"**))
  br i1 %103, label %124, label %104

; <label>:104                                     ; preds = %96
  %105 = load i8** %5, align 4
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %123

; <label>:107                                     ; preds = %104
  %108 = load i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

; <label>:110                                     ; preds = %107
  %111 = load i8** %5, align 4
  %112 = load i32* %6, align 4
  %113 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) #3
  store i32 %113, i32* %len3, align 4
  %114 = load i32* %len3, align 4
  %115 = load i32* %6, align 4
  %116 = icmp uge i32 %114, %115
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %110
  %118 = load i32* %6, align 4
  %119 = sub i32 %118, 1
  %120 = load i8** %5, align 4
  %121 = getelementptr inbounds i8* %120, i32 %119
  store i8 0, i8* %121, align 1
  br label %122

; <label>:122                                     ; preds = %117, %110
  br label %123

; <label>:123                                     ; preds = %122, %107, %104
  store i1 false, i1* %1
  br label %220

; <label>:124                                     ; preds = %96
  %125 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %126 = bitcast %"class.SourceMod::IShareSys"* %125 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %127 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %126
  %128 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %127, i64 1
  %129 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %128
  %130 = load %"class.SourceMod::IExtension"** @myself, align 4
  %131 = call zeroext i1 %129(%"class.SourceMod::IShareSys"* %125, i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i32 5, %"class.SourceMod::IExtension"* %130, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::ILibrarySys"** @libsys to %"class.SourceMod::SMInterface"**))
  br i1 %131, label %152, label %132

; <label>:132                                     ; preds = %124
  %133 = load i8** %5, align 4
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %151

; <label>:135                                     ; preds = %132
  %136 = load i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

; <label>:138                                     ; preds = %135
  %139 = load i8** %5, align 4
  %140 = load i32* %6, align 4
  %141 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %139, i32 %140, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) #3
  store i32 %141, i32* %len4, align 4
  %142 = load i32* %len4, align 4
  %143 = load i32* %6, align 4
  %144 = icmp uge i32 %142, %143
  br i1 %144, label %145, label %150

; <label>:145                                     ; preds = %138
  %146 = load i32* %6, align 4
  %147 = sub i32 %146, 1
  %148 = load i8** %5, align 4
  %149 = getelementptr inbounds i8* %148, i32 %147
  store i8 0, i8* %149, align 1
  br label %150

; <label>:150                                     ; preds = %145, %138
  br label %151

; <label>:151                                     ; preds = %150, %135, %132
  store i1 false, i1* %1
  br label %220

; <label>:152                                     ; preds = %124
  %153 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %154 = bitcast %"class.SourceMod::IShareSys"* %153 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %155 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %154
  %156 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %155, i64 1
  %157 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %156
  %158 = load %"class.SourceMod::IExtension"** @myself, align 4
  %159 = call zeroext i1 %157(%"class.SourceMod::IShareSys"* %153, i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i32 8, %"class.SourceMod::IExtension"* %158, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IPluginManager"** @plsys to %"class.SourceMod::SMInterface"**))
  br i1 %159, label %180, label %160

; <label>:160                                     ; preds = %152
  %161 = load i8** %5, align 4
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %179

; <label>:163                                     ; preds = %160
  %164 = load i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

; <label>:166                                     ; preds = %163
  %167 = load i8** %5, align 4
  %168 = load i32* %6, align 4
  %169 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %167, i32 %168, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0)) #3
  store i32 %169, i32* %len5, align 4
  %170 = load i32* %len5, align 4
  %171 = load i32* %6, align 4
  %172 = icmp uge i32 %170, %171
  br i1 %172, label %173, label %178

; <label>:173                                     ; preds = %166
  %174 = load i32* %6, align 4
  %175 = sub i32 %174, 1
  %176 = load i8** %5, align 4
  %177 = getelementptr inbounds i8* %176, i32 %175
  store i8 0, i8* %177, align 1
  br label %178

; <label>:178                                     ; preds = %173, %166
  br label %179

; <label>:179                                     ; preds = %178, %163, %160
  store i1 false, i1* %1
  br label %220

; <label>:180                                     ; preds = %152
  %181 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %182 = bitcast %"class.SourceMod::IShareSys"* %181 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %183 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %182
  %184 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %183, i64 1
  %185 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %184
  %186 = load %"class.SourceMod::IExtension"** @myself, align 4
  %187 = call zeroext i1 %185(%"class.SourceMod::IShareSys"* %181, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %186, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IRootConsole"** @rootconsole to %"class.SourceMod::SMInterface"**))
  br i1 %187, label %208, label %188

; <label>:188                                     ; preds = %180
  %189 = load i8** %5, align 4
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %207

; <label>:191                                     ; preds = %188
  %192 = load i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

; <label>:194                                     ; preds = %191
  %195 = load i8** %5, align 4
  %196 = load i32* %6, align 4
  %197 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %195, i32 %196, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) #3
  store i32 %197, i32* %len6, align 4
  %198 = load i32* %len6, align 4
  %199 = load i32* %6, align 4
  %200 = icmp uge i32 %198, %199
  br i1 %200, label %201, label %206

; <label>:201                                     ; preds = %194
  %202 = load i32* %6, align 4
  %203 = sub i32 %202, 1
  %204 = load i8** %5, align 4
  %205 = getelementptr inbounds i8* %204, i32 %203
  store i8 0, i8* %205, align 1
  br label %206

; <label>:206                                     ; preds = %201, %194
  br label %207

; <label>:207                                     ; preds = %206, %191, %188
  store i1 false, i1* %1
  br label %220

; <label>:208                                     ; preds = %180
  %209 = bitcast %class.SDKExtension* %9 to i1 (%class.SDKExtension*, i8*, i32, i1)***
  %210 = load i1 (%class.SDKExtension*, i8*, i32, i1)*** %209
  %211 = getelementptr inbounds i1 (%class.SDKExtension*, i8*, i32, i1)** %210, i64 19
  %212 = load i1 (%class.SDKExtension*, i8*, i32, i1)** %211
  %213 = load i8** %5, align 4
  %214 = load i32* %6, align 4
  %215 = load i8* %7, align 1
  %216 = trunc i8 %215 to i1
  %217 = call zeroext i1 %212(%class.SDKExtension* %9, i8* %213, i32 %214, i1 zeroext %216)
  br i1 %217, label %218, label %219

; <label>:218                                     ; preds = %208
  store i1 true, i1* %1
  br label %220

; <label>:219                                     ; preds = %208
  store i1 false, i1* %1
  br label %220

; <label>:220                                     ; preds = %219, %218, %207, %179, %151, %123, %95, %67, %38
  %221 = load i1* %1
  ret i1 %221
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #0

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i1 false
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %state) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %3 = zext i1 %state to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.SDKExtension** %1
  %5 = bitcast %class.SDKExtension* %4 to void (%class.SDKExtension*, i1)***
  %6 = load void (%class.SDKExtension*, i1)*** %5
  %7 = getelementptr inbounds void (%class.SDKExtension*, i1)** %6, i64 22
  %8 = load void (%class.SDKExtension*, i1)** %7
  %9 = load i8* %2, align 1
  %10 = trunc i8 %9 to i1
  call void %8(%class.SDKExtension* %4, i1 zeroext %10)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to void (%class.SDKExtension*)***
  %4 = load void (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds void (%class.SDKExtension*)** %4, i64 21
  %6 = load void (%class.SDKExtension*)** %5
  call void %6(%class.SDKExtension* %2)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to void (%class.SDKExtension*)***
  %4 = load void (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds void (%class.SDKExtension*)** %4, i64 20
  %6 = load void (%class.SDKExtension*)** %5
  call void %6(%class.SDKExtension* %2)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to void (%class.SDKExtension*)***
  %4 = load void (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds void (%class.SDKExtension*)** %4, i64 23
  %6 = load void (%class.SDKExtension*)** %5
  call void %6(%class.SDKExtension* %2)
  ret void
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([23 x i8]* @.str8, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([20 x i8]* @.str10, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([28 x i8]* @.str14, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension10SDK_OnLoadEPcjb(%class.SDKExtension* %this, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlength, i32* %3, align 4
  %5 = zext i1 %late to i8
  store i8 %5, i8* %4, align 1
  %6 = load %class.SDKExtension** %1
  ret i1 true
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension12SDK_OnUnloadEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %paused) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %3 = zext i1 %paused to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @__cxa_pure_virtual() #0 {
  ret void
}

; Function Attrs: nobuiltin nounwind
define hidden noalias i8* @_Znwj(i32 %size) #2 {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call noalias i8* @malloc(i32 %2) #3
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #0

; Function Attrs: nobuiltin nounwind
define hidden noalias i8* @_Znaj(i32 %size) #2 {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call noalias i8* @malloc(i32 %2) #3
  ret i8* %3
}

; Function Attrs: nobuiltin nounwind
define hidden void @_ZdlPv(i8* %ptr) #2 {
  %1 = alloca i8*, align 4
  store i8* %ptr, i8** %1, align 4
  %2 = load i8** %1, align 4
  call void @free(i8* %2) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nobuiltin nounwind
define hidden void @_ZdaPv(i8* %ptr) #2 {
  %1 = alloca i8*, align 4
  store i8* %ptr, i8** %1, align 4
  %2 = load i8** %1, align 4
  call void @free(i8* %2) #3
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i32 8
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::SMInterface"* %pInterface) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %"class.SourceMod::SMInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %"class.SourceMod::SMInterface"* %pInterface, %"class.SourceMod::SMInterface"** %2, align 4
  %3 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i1 false
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::SMInterface"* %pInterface) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %"class.SourceMod::SMInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %"class.SourceMod::SMInterface"* %pInterface, %"class.SourceMod::SMInterface"** %2, align 4
  %3 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* %this, i8* %error, i32 %maxlength) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlength, i32* %3, align 4
  %4 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i1 true
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii(%"class.SourceMod::IExtensionInterface"* %this, %struct.edict_t* %pEdictList, i32 %edictCount, i32 %clientMax) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %struct.edict_t*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %struct.edict_t* %pEdictList, %struct.edict_t** %2, align 4
  store i32 %edictCount, i32* %3, align 4
  store i32 %clientMax, i32* %4, align 4
  %5 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface21OnDependenciesDroppedEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
