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

@_ZN12SDKExtensionC1Ev = hidden alias void (%class.SDKExtension*)* @_ZN12SDKExtensionC2Ev

; Function Attrs: nounwind readonly
define %"class.SourceMod::IExtensionInterface"* @GetSMExtAPI() #0 {
  %1 = load %class.SDKExtension** @g_pExtensionIface, align 4
  %2 = getelementptr inbounds %class.SDKExtension* %1, i32 0, i32 0
  ret %"class.SourceMod::IExtensionInterface"* %2
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* nocapture %this) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([26 x i8*]* @_ZTV12SDKExtension, i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %this, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  store %"class.SourceMod::IShareSys"* %sys, %"class.SourceMod::IShareSys"** @sharesys, align 4
  store %"class.SourceMod::IShareSys"* %sys, %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  store %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IExtension"** @myself, align 4
  %1 = bitcast %"class.SourceMod::IShareSys"* %sys to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %2 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %1, align 4
  %3 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %2, i32 1
  %4 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %3, align 4
  %5 = tail call zeroext i1 %4(%"class.SourceMod::IShareSys"* %sys, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i32 13, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::ISourceMod"** @g_pSM to %"class.SourceMod::SMInterface"**)) #4
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp ne i8* %error, null
  %8 = icmp ne i32 %maxlength, 0
  %or.cond = and i1 %7, %8
  br i1 %or.cond, label %9, label %124

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)) #4
  %11 = icmp ult i32 %10, %maxlength
  br i1 %11, label %124, label %12

; <label>:12                                      ; preds = %9
  %13 = add i32 %maxlength, -1
  %14 = getelementptr inbounds i8* %error, i32 %13
  store i8 0, i8* %14, align 1
  br label %124

; <label>:15                                      ; preds = %0
  %16 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  store %"class.SourceMod::ISourceMod"* %16, %"class.SourceMod::ISourceMod"** @smutils, align 4
  %17 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %18 = bitcast %"class.SourceMod::IShareSys"* %17 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %19 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %18, align 4
  %20 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %19, i32 1
  %21 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %20, align 4
  %22 = load %"class.SourceMod::IExtension"** @myself, align 4
  %23 = tail call zeroext i1 %21(%"class.SourceMod::IShareSys"* %17, i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0), i32 6, %"class.SourceMod::IExtension"* %22, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameConfigManager"** @gameconfs to %"class.SourceMod::SMInterface"**)) #4
  br i1 %23, label %33, label %24

; <label>:24                                      ; preds = %15
  %25 = icmp ne i8* %error, null
  %26 = icmp ne i32 %maxlength, 0
  %or.cond9 = and i1 %25, %26
  br i1 %or.cond9, label %27, label %124

; <label>:27                                      ; preds = %24
  %28 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str2, i32 0, i32 0)) #4
  %29 = icmp ult i32 %28, %maxlength
  br i1 %29, label %124, label %30

; <label>:30                                      ; preds = %27
  %31 = add i32 %maxlength, -1
  %32 = getelementptr inbounds i8* %error, i32 %31
  store i8 0, i8* %32, align 1
  br label %124

; <label>:33                                      ; preds = %15
  %34 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %35 = bitcast %"class.SourceMod::IShareSys"* %34 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %36 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %35, align 4
  %37 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %36, i32 1
  %38 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %37, align 4
  %39 = load %"class.SourceMod::IExtension"** @myself, align 4
  %40 = tail call zeroext i1 %38(%"class.SourceMod::IShareSys"* %34, i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 11, %"class.SourceMod::IExtension"* %39, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameHelpers"** @gamehelpers to %"class.SourceMod::SMInterface"**)) #4
  br i1 %40, label %50, label %41

; <label>:41                                      ; preds = %33
  %42 = icmp ne i8* %error, null
  %43 = icmp ne i32 %maxlength, 0
  %or.cond11 = and i1 %42, %43
  br i1 %or.cond11, label %44, label %124

; <label>:44                                      ; preds = %41
  %45 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)) #4
  %46 = icmp ult i32 %45, %maxlength
  br i1 %46, label %124, label %47

; <label>:47                                      ; preds = %44
  %48 = add i32 %maxlength, -1
  %49 = getelementptr inbounds i8* %error, i32 %48
  store i8 0, i8* %49, align 1
  br label %124

; <label>:50                                      ; preds = %33
  %51 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %52 = bitcast %"class.SourceMod::IShareSys"* %51 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %53 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %52, align 4
  %54 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %53, i32 1
  %55 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %54, align 4
  %56 = load %"class.SourceMod::IExtension"** @myself, align 4
  %57 = tail call zeroext i1 %55(%"class.SourceMod::IShareSys"* %51, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %56, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IThreader"** @threader to %"class.SourceMod::SMInterface"**)) #4
  br i1 %57, label %67, label %58

; <label>:58                                      ; preds = %50
  %59 = icmp ne i8* %error, null
  %60 = icmp ne i32 %maxlength, 0
  %or.cond13 = and i1 %59, %60
  br i1 %or.cond13, label %61, label %124

; <label>:61                                      ; preds = %58
  %62 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) #4
  %63 = icmp ult i32 %62, %maxlength
  br i1 %63, label %124, label %64

; <label>:64                                      ; preds = %61
  %65 = add i32 %maxlength, -1
  %66 = getelementptr inbounds i8* %error, i32 %65
  store i8 0, i8* %66, align 1
  br label %124

; <label>:67                                      ; preds = %50
  %68 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %69 = bitcast %"class.SourceMod::IShareSys"* %68 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %70 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %69, align 4
  %71 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %70, i32 1
  %72 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %71, align 4
  %73 = load %"class.SourceMod::IExtension"** @myself, align 4
  %74 = tail call zeroext i1 %72(%"class.SourceMod::IShareSys"* %68, i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i32 5, %"class.SourceMod::IExtension"* %73, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::ILibrarySys"** @libsys to %"class.SourceMod::SMInterface"**)) #4
  br i1 %74, label %84, label %75

; <label>:75                                      ; preds = %67
  %76 = icmp ne i8* %error, null
  %77 = icmp ne i32 %maxlength, 0
  %or.cond15 = and i1 %76, %77
  br i1 %or.cond15, label %78, label %124

; <label>:78                                      ; preds = %75
  %79 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0)) #4
  %80 = icmp ult i32 %79, %maxlength
  br i1 %80, label %124, label %81

; <label>:81                                      ; preds = %78
  %82 = add i32 %maxlength, -1
  %83 = getelementptr inbounds i8* %error, i32 %82
  store i8 0, i8* %83, align 1
  br label %124

; <label>:84                                      ; preds = %67
  %85 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %86 = bitcast %"class.SourceMod::IShareSys"* %85 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %87 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %86, align 4
  %88 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %87, i32 1
  %89 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %88, align 4
  %90 = load %"class.SourceMod::IExtension"** @myself, align 4
  %91 = tail call zeroext i1 %89(%"class.SourceMod::IShareSys"* %85, i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i32 8, %"class.SourceMod::IExtension"* %90, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IPluginManager"** @plsys to %"class.SourceMod::SMInterface"**)) #4
  br i1 %91, label %101, label %92

; <label>:92                                      ; preds = %84
  %93 = icmp ne i8* %error, null
  %94 = icmp ne i32 %maxlength, 0
  %or.cond17 = and i1 %93, %94
  br i1 %or.cond17, label %95, label %124

; <label>:95                                      ; preds = %92
  %96 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0)) #4
  %97 = icmp ult i32 %96, %maxlength
  br i1 %97, label %124, label %98

; <label>:98                                      ; preds = %95
  %99 = add i32 %maxlength, -1
  %100 = getelementptr inbounds i8* %error, i32 %99
  store i8 0, i8* %100, align 1
  br label %124

; <label>:101                                     ; preds = %84
  %102 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %103 = bitcast %"class.SourceMod::IShareSys"* %102 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %104 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %103, align 4
  %105 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %104, i32 1
  %106 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %105, align 4
  %107 = load %"class.SourceMod::IExtension"** @myself, align 4
  %108 = tail call zeroext i1 %106(%"class.SourceMod::IShareSys"* %102, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %107, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IRootConsole"** @rootconsole to %"class.SourceMod::SMInterface"**)) #4
  br i1 %108, label %118, label %109

; <label>:109                                     ; preds = %101
  %110 = icmp ne i8* %error, null
  %111 = icmp ne i32 %maxlength, 0
  %or.cond19 = and i1 %110, %111
  br i1 %or.cond19, label %112, label %124

; <label>:112                                     ; preds = %109
  %113 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) #4
  %114 = icmp ult i32 %113, %maxlength
  br i1 %114, label %124, label %115

; <label>:115                                     ; preds = %112
  %116 = add i32 %maxlength, -1
  %117 = getelementptr inbounds i8* %error, i32 %116
  store i8 0, i8* %117, align 1
  br label %124

; <label>:118                                     ; preds = %101
  %119 = bitcast %class.SDKExtension* %this to i1 (%class.SDKExtension*, i8*, i32, i1)***
  %120 = load i1 (%class.SDKExtension*, i8*, i32, i1)*** %119, align 4
  %121 = getelementptr inbounds i1 (%class.SDKExtension*, i8*, i32, i1)** %120, i32 19
  %122 = load i1 (%class.SDKExtension*, i8*, i32, i1)** %121, align 4
  %123 = tail call zeroext i1 %122(%class.SDKExtension* %this, i8* %error, i32 %maxlength, i1 zeroext %late) #4
  br label %124

; <label>:124                                     ; preds = %118, %109, %115, %112, %92, %98, %95, %75, %81, %78, %58, %64, %61, %41, %47, %44, %24, %30, %27, %6, %12, %9
  %.0 = phi i1 [ false, %9 ], [ false, %12 ], [ false, %6 ], [ false, %27 ], [ false, %30 ], [ false, %24 ], [ false, %44 ], [ false, %47 ], [ false, %41 ], [ false, %61 ], [ false, %64 ], [ false, %58 ], [ false, %78 ], [ false, %81 ], [ false, %75 ], [ false, %95 ], [ false, %98 ], [ false, %92 ], [ false, %112 ], [ false, %115 ], [ false, %109 ], [ %123, %118 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i32, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i1 false
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %state) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*, i1)***
  %2 = load void (%class.SDKExtension*, i1)*** %1, align 4
  %3 = getelementptr inbounds void (%class.SDKExtension*, i1)** %2, i32 22
  %4 = load void (%class.SDKExtension*, i1)** %3, align 4
  tail call void %4(%class.SDKExtension* %this, i1 zeroext %state) #4
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*)***
  %2 = load void (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds void (%class.SDKExtension*)** %2, i32 21
  %4 = load void (%class.SDKExtension*)** %3, align 4
  tail call void %4(%class.SDKExtension* %this) #4
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*)***
  %2 = load void (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds void (%class.SDKExtension*)** %2, i32 20
  %4 = load void (%class.SDKExtension*)** %3, align 4
  tail call void %4(%class.SDKExtension* %this) #4
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*)***
  %2 = load void (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds void (%class.SDKExtension*)** %2, i32 23
  %4 = load void (%class.SDKExtension*)** %3, align 4
  tail call void %4(%class.SDKExtension* %this) #4
  ret void
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([23 x i8]* @.str8, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([20 x i8]* @.str10, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([28 x i8]* @.str14, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZN12SDKExtension10SDK_OnLoadEPcjb(%class.SDKExtension* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind readnone
define hidden void @_ZN12SDKExtension12SDK_OnUnloadEv(%class.SDKExtension* nocapture %this) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define hidden void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension* nocapture %this, i1 zeroext %paused) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define hidden void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension* nocapture %this) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define hidden void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension* nocapture %this) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define hidden void @__cxa_pure_virtual() #2 {
  ret void
}

; Function Attrs: nobuiltin nounwind
define hidden noalias i8* @_Znwj(i32 %size) #3 {
  %1 = tail call noalias i8* @malloc(i32 %size) #4
  ret i8* %1
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #1

; Function Attrs: nobuiltin nounwind
define hidden noalias i8* @_Znaj(i32 %size) #3 {
  %1 = tail call noalias i8* @malloc(i32 %size) #4
  ret i8* %1
}

; Function Attrs: nobuiltin nounwind
define hidden void @_ZdlPv(i8* nocapture %ptr) #3 {
  tail call void @free(i8* %ptr) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nobuiltin nounwind
define hidden void @_ZdaPv(i8* nocapture %ptr) #3 {
  tail call void @free(i8* %ptr) #4
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i32 8
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, %"class.SourceMod::SMInterface"* nocapture readnone %pInterface) unnamed_addr #2 align 2 {
  ret i1 false
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture %this, %"class.SourceMod::SMInterface"* nocapture %pInterface) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlength) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii(%"class.SourceMod::IExtensionInterface"* nocapture %this, %struct.edict_t* nocapture %pEdictList, i32 %edictCount, i32 %clientMax) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* nocapture %this) unnamed_addr #2 align 2 {
  ret void
}

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
