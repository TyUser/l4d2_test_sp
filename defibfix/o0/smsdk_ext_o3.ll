; ModuleID = 'smsdk_ext.ll'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.SourceMod::IExtension" = type { i32 (...)** }
%"class.SourceMod::IShareSys" = type { i32 (...)** }
%"class.SourceMod::ISourceMod" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::SMInterface" = type { i32 (...)** }
%"class.SourceMod::IPlayerManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IGameConfigManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IGameHelpers" = type { %"class.SourceMod::SMInterface" }
%class.SDKExtension = type { %"class.SourceMM::ISmmPlugin", %"class.SourceMod::IExtensionInterface", i8, i8, i8 }
%"class.SourceMM::ISmmPlugin" = type { i32 (...)** }
%"class.SourceMod::IExtensionInterface" = type { i32 (...)** }
%"class.SourceHook::ISourceHook" = type { i32 (...)** }
%"class.SourceMM::ISmmAPI" = type { i32 (...)** }
%class.IVEngineServer = type { i32 (...)** }
%class.IServerGameDLL = type { i32 (...)** }
%struct.edict_t = type { %class.CBaseEdict }
%class.CBaseEdict = type { i32, i32, %class.IServerNetworkable*, %class.IServerUnknown* }
%class.IServerNetworkable = type { i32 (...)** }
%class.IServerUnknown = type { %class.IHandleEntity }
%class.IHandleEntity = type { i32 (...)** }

@myself = hidden global %"class.SourceMod::IExtension"* null, align 4
@g_pShareSys = hidden global %"class.SourceMod::IShareSys"* null, align 4
@sharesys = hidden global %"class.SourceMod::IShareSys"* null, align 4
@g_pSM = hidden global %"class.SourceMod::ISourceMod"* null, align 4
@smutils = hidden global %"class.SourceMod::ISourceMod"* null, align 4
@playerhelpers = hidden global %"class.SourceMod::IPlayerManager"* null, align 4
@gameconfs = hidden global %"class.SourceMod::IGameConfigManager"* null, align 4
@gamehelpers = hidden global %"class.SourceMod::IGameHelpers"* null, align 4
@g_pExtensionIface = external global %class.SDKExtension*
@_ZTV12SDKExtension = hidden unnamed_addr constant [61 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtensionD2Ev to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtensionD0Ev to i8*), i8* bitcast (i1 (%class.SDKExtension*, i32, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)* @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb to i8*), i8* bitcast (void (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension6UnloadEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension5PauseEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension7UnpauseEPcj to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension9GetAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension7GetNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension14GetDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension6GetURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension10GetLicenseEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension10GetVersionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension7GetDateEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension9GetLogTagEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32, i1)* @_ZN12SDKExtension10SDK_OnLoadEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension12SDK_OnUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension15SDK_OnAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension17SDK_OnPauseChangeEb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)* @_ZN12SDKExtension17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension19SDK_OnMetamodUnloadEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i1, i8*, i32)* @_ZN12SDKExtension24SDK_OnMetamodPauseChangeEbPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZN12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnDependenciesDroppedEv to i8*), i8* inttoptr (i32 -4 to i8*), i8* null, i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZThn4_N12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %struct.edict_t*, i32, i32)* @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*)]
@.str = private unnamed_addr constant [22 x i8] c"Metamod attach failed\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"ISourceMod\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c"Could not find interface: %s\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"IPlayerManager\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"IGameConfigManager\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"IGameHelpers\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"V10, Accelerator\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"Jan 22 2018\00", align 1
@.str10 = private unnamed_addr constant [75 x i8] c"Fixes defibrillator re-revive clone bug (on servers higher than 8 players)\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"1.0.1\00", align 1
@.str12 = private unnamed_addr constant [19 x i8] c"DefibFix Extension\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"DefibFix\00", align 1
@.str14 = private unnamed_addr constant [21 x i8] c"http://www.v10.name/\00", align 1
@g_PLID = hidden global i32 0, align 4
@g_PLAPI = hidden global %"class.SourceMM::ISmmPlugin"* null, align 4
@g_SHPtr = hidden global %"class.SourceHook::ISourceHook"* null, align 4
@g_SMAPI = hidden global %"class.SourceMM::ISmmAPI"* null, align 4
@engine = hidden global %class.IVEngineServer* null, align 4
@gamedll = hidden global %class.IServerGameDLL* null, align 4
@.str15 = private unnamed_addr constant [11 x i8] c"ISmmPlugin\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"ISourceHook\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"ServerGameDLL005\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"VEngineServer022\00", align 1
@.str19 = private unnamed_addr constant [46 x i8] c"This extension must be unloaded by SourceMod.\00", align 1
@.str20 = private unnamed_addr constant [44 x i8] c"This extension must be paused by SourceMod.\00", align 1
@.str21 = private unnamed_addr constant [46 x i8] c"This extension must be unpaused by SourceMod.\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()* }] zeroinitializer

@_ZN12SDKExtensionC1Ev = hidden alias void (%class.SDKExtension*)* @_ZN12SDKExtensionC2Ev

; Function Attrs: nounwind readonly
define %"class.SourceMod::IExtensionInterface"* @GetSMExtAPI() #0 {
  %1 = load %class.SDKExtension** @g_pExtensionIface, align 4
  %2 = icmp eq %class.SDKExtension* %1, null
  %3 = getelementptr inbounds %class.SDKExtension* %1, i32 0, i32 1
  %. = select i1 %2, %"class.SourceMod::IExtensionInterface"* null, %"class.SourceMod::IExtensionInterface"* %3
  ret %"class.SourceMod::IExtensionInterface"* %.
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* nocapture %this) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 0, i32 0
  %2 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 1, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([61 x i8*]* @_ZTV12SDKExtension, i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4
  store i32 (...)** bitcast (i8** getelementptr inbounds ([61 x i8*]* @_ZTV12SDKExtension, i32 0, i32 42) to i32 (...)**), i32 (...)*** %2, align 4
  %3 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 2
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 3
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 4
  store i8 0, i8* %5, align 1
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %this, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  store %"class.SourceMod::IShareSys"* %sys, %"class.SourceMod::IShareSys"** @sharesys, align 4
  store %"class.SourceMod::IShareSys"* %sys, %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  store %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IExtension"** @myself, align 4
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 3
  store i8 1, i8* %1, align 1
  %2 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 2
  %3 = load i8* %2, align 1
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = icmp eq i8* %error, null
  br i1 %7, label %86, label %8

; <label>:8                                       ; preds = %6
  %9 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0)) #6
  br label %86

; <label>:10                                      ; preds = %0
  %11 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %12 = bitcast %"class.SourceMod::IShareSys"* %11 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %13 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %12, align 4
  %14 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %13, i32 1
  %15 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %14, align 4
  %16 = load %"class.SourceMod::IExtension"** @myself, align 4
  %17 = tail call zeroext i1 %15(%"class.SourceMod::IShareSys"* %11, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 13, %"class.SourceMod::IExtension"* %16, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::ISourceMod"** @g_pSM to %"class.SourceMod::SMInterface"**)) #6
  br i1 %17, label %27, label %18

; <label>:18                                      ; preds = %10
  %19 = icmp ne i8* %error, null
  %20 = icmp ne i32 %maxlength, 0
  %or.cond = and i1 %19, %20
  br i1 %or.cond, label %21, label %86

; <label>:21                                      ; preds = %18
  %22 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) #6
  %23 = icmp ult i32 %22, %maxlength
  br i1 %23, label %86, label %24

; <label>:24                                      ; preds = %21
  %25 = add i32 %maxlength, -1
  %26 = getelementptr inbounds i8* %error, i32 %25
  store i8 0, i8* %26, align 1
  br label %86

; <label>:27                                      ; preds = %10
  %28 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  store %"class.SourceMod::ISourceMod"* %28, %"class.SourceMod::ISourceMod"** @smutils, align 4
  %29 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %30 = bitcast %"class.SourceMod::IShareSys"* %29 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %31 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %30, align 4
  %32 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %31, i32 1
  %33 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %32, align 4
  %34 = load %"class.SourceMod::IExtension"** @myself, align 4
  %35 = tail call zeroext i1 %33(%"class.SourceMod::IShareSys"* %29, i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0), i32 21, %"class.SourceMod::IExtension"* %34, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IPlayerManager"** @playerhelpers to %"class.SourceMod::SMInterface"**)) #6
  br i1 %35, label %45, label %36

; <label>:36                                      ; preds = %27
  %37 = icmp ne i8* %error, null
  %38 = icmp ne i32 %maxlength, 0
  %or.cond3 = and i1 %37, %38
  br i1 %or.cond3, label %39, label %86

; <label>:39                                      ; preds = %36
  %40 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) #6
  %41 = icmp ult i32 %40, %maxlength
  br i1 %41, label %86, label %42

; <label>:42                                      ; preds = %39
  %43 = add i32 %maxlength, -1
  %44 = getelementptr inbounds i8* %error, i32 %43
  store i8 0, i8* %44, align 1
  br label %86

; <label>:45                                      ; preds = %27
  %46 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %47 = bitcast %"class.SourceMod::IShareSys"* %46 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %48 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %47, align 4
  %49 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %48, i32 1
  %50 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %49, align 4
  %51 = load %"class.SourceMod::IExtension"** @myself, align 4
  %52 = tail call zeroext i1 %50(%"class.SourceMod::IShareSys"* %46, i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0), i32 6, %"class.SourceMod::IExtension"* %51, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameConfigManager"** @gameconfs to %"class.SourceMod::SMInterface"**)) #6
  br i1 %52, label %62, label %53

; <label>:53                                      ; preds = %45
  %54 = icmp ne i8* %error, null
  %55 = icmp ne i32 %maxlength, 0
  %or.cond5 = and i1 %54, %55
  br i1 %or.cond5, label %56, label %86

; <label>:56                                      ; preds = %53
  %57 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0)) #6
  %58 = icmp ult i32 %57, %maxlength
  br i1 %58, label %86, label %59

; <label>:59                                      ; preds = %56
  %60 = add i32 %maxlength, -1
  %61 = getelementptr inbounds i8* %error, i32 %60
  store i8 0, i8* %61, align 1
  br label %86

; <label>:62                                      ; preds = %45
  %63 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %64 = bitcast %"class.SourceMod::IShareSys"* %63 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %65 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %64, align 4
  %66 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %65, i32 1
  %67 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %66, align 4
  %68 = load %"class.SourceMod::IExtension"** @myself, align 4
  %69 = tail call zeroext i1 %67(%"class.SourceMod::IShareSys"* %63, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 11, %"class.SourceMod::IExtension"* %68, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameHelpers"** @gamehelpers to %"class.SourceMod::SMInterface"**)) #6
  br i1 %69, label %79, label %70

; <label>:70                                      ; preds = %62
  %71 = icmp ne i8* %error, null
  %72 = icmp ne i32 %maxlength, 0
  %or.cond7 = and i1 %71, %72
  br i1 %or.cond7, label %73, label %86

; <label>:73                                      ; preds = %70
  %74 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) #6
  %75 = icmp ult i32 %74, %maxlength
  br i1 %75, label %86, label %76

; <label>:76                                      ; preds = %73
  %77 = add i32 %maxlength, -1
  %78 = getelementptr inbounds i8* %error, i32 %77
  store i8 0, i8* %78, align 1
  br label %86

; <label>:79                                      ; preds = %62
  %80 = bitcast %class.SDKExtension* %this to i1 (%class.SDKExtension*, i8*, i32, i1)***
  %81 = load i1 (%class.SDKExtension*, i8*, i32, i1)*** %80, align 4
  %82 = getelementptr inbounds i1 (%class.SDKExtension*, i8*, i32, i1)** %81, i32 17
  %83 = load i1 (%class.SDKExtension*, i8*, i32, i1)** %82, align 4
  %84 = tail call zeroext i1 %83(%class.SDKExtension* %this, i8* %error, i32 %maxlength, i1 zeroext %late) #6
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %79
  store i8 1, i8* %1, align 1
  br label %86

; <label>:86                                      ; preds = %79, %70, %76, %73, %53, %59, %56, %36, %42, %39, %18, %24, %21, %8, %6, %85
  %.0 = phi i1 [ true, %85 ], [ false, %6 ], [ false, %8 ], [ false, %21 ], [ false, %24 ], [ false, %18 ], [ false, %39 ], [ false, %42 ], [ false, %36 ], [ false, %56 ], [ false, %59 ], [ false, %53 ], [ false, %73 ], [ false, %76 ], [ false, %70 ], [ false, %79 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i32, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
define hidden zeroext i1 @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %this, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 -1, i32 2
  %2 = bitcast i8* %1 to %class.SDKExtension*
  %3 = tail call zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %2, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late)
  ret i1 %3
}

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZThn4_N12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %state) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 4
  store i8 1, i8* %1, align 1
  %2 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*, i1)***
  %3 = load void (%class.SDKExtension*, i1)*** %2, align 4
  %4 = getelementptr inbounds void (%class.SDKExtension*, i1)** %3, i32 20
  %5 = load void (%class.SDKExtension*, i1)** %4, align 4
  tail call void %5(%class.SDKExtension* %this, i1 zeroext %state) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %state) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 -1, i32 2
  %2 = bitcast i8* %1 to %class.SDKExtension*
  %3 = getelementptr inbounds i8* %1, i32 10
  store i8 1, i8* %3, align 1
  %4 = bitcast i8* %1 to void (%class.SDKExtension*, i1)***
  %5 = load void (%class.SDKExtension*, i1)*** %4, align 4
  %6 = getelementptr inbounds void (%class.SDKExtension*, i1)** %5, i32 20
  %7 = load void (%class.SDKExtension*, i1)** %6, align 4
  tail call void %7(%class.SDKExtension* %2, i1 zeroext %state) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*)***
  %2 = load void (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds void (%class.SDKExtension*)** %2, i32 19
  %4 = load void (%class.SDKExtension*)** %3, align 4
  tail call void %4(%class.SDKExtension* %this) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 -1, i32 2
  %2 = bitcast i8* %1 to %class.SDKExtension*
  %3 = bitcast i8* %1 to void (%class.SDKExtension*)***
  %4 = load void (%class.SDKExtension*)*** %3, align 4
  %5 = getelementptr inbounds void (%class.SDKExtension*)** %4, i32 19
  %6 = load void (%class.SDKExtension*)** %5, align 4
  tail call void %6(%class.SDKExtension* %2) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 3
  store i8 1, i8* %1, align 1
  %2 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*)***
  %3 = load void (%class.SDKExtension*)*** %2, align 4
  %4 = getelementptr inbounds void (%class.SDKExtension*)** %3, i32 18
  %5 = load void (%class.SDKExtension*)** %4, align 4
  tail call void %5(%class.SDKExtension* %this) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 -1, i32 2
  %2 = bitcast i8* %1 to %class.SDKExtension*
  %3 = getelementptr inbounds i8* %1, i32 9
  store i8 1, i8* %3, align 1
  %4 = bitcast i8* %1 to void (%class.SDKExtension*)***
  %5 = load void (%class.SDKExtension*)*** %4, align 4
  %6 = getelementptr inbounds void (%class.SDKExtension*)** %5, i32 18
  %7 = load void (%class.SDKExtension*)** %6, align 4
  tail call void %7(%class.SDKExtension* %2) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to void (%class.SDKExtension*)***
  %2 = load void (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds void (%class.SDKExtension*)** %2, i32 21
  %4 = load void (%class.SDKExtension*)** %3, align 4
  tail call void %4(%class.SDKExtension* %this) #6
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 -1, i32 2
  %2 = bitcast i8* %1 to %class.SDKExtension*
  %3 = bitcast i8* %1 to void (%class.SDKExtension*)***
  %4 = load void (%class.SDKExtension*)*** %3, align 4
  %5 = getelementptr inbounds void (%class.SDKExtension*)** %4, i32 21
  %6 = load void (%class.SDKExtension*)** %5, align 4
  tail call void %6(%class.SDKExtension* %2) #6
  ret void
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([17 x i8]* @.str8, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([17 x i8]* @.str8, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([75 x i8]* @.str10, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([75 x i8]* @.str10, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([19 x i8]* @.str12, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension16GetExtensionNameEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([19 x i8]* @.str12, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension15GetExtensionTagEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([21 x i8]* @.str14, i32 0, i32 0)
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZThn4_N12SDKExtension15GetExtensionURLEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([21 x i8]* @.str14, i32 0, i32 0)
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

; Function Attrs: nounwind
define i8* @CreateInterface(i8* readonly %name, i32* %code) #1 {
  %1 = icmp eq i8* %name, null
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @strcmp(i8* %name, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0)) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %2
  %6 = icmp eq i32* %code, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %5
  store i32 0, i32* %code, align 4
  br label %8

; <label>:8                                       ; preds = %5, %7
  %9 = load %class.SDKExtension** @g_pExtensionIface, align 4
  %10 = bitcast %class.SDKExtension* %9 to i8*
  br label %14

; <label>:11                                      ; preds = %2, %0
  %12 = icmp eq i32* %code, null
  br i1 %12, label %14, label %13

; <label>:13                                      ; preds = %11
  store i32 1, i32* %code, align 4
  br label %14

; <label>:14                                      ; preds = %13, %11, %8
  %.0 = phi i8* [ %10, %8 ], [ null, %11 ], [ null, %13 ]
  ret i8* %.0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #0

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb(%class.SDKExtension* %this, i32 %id, %"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlen, i1 zeroext %late) unnamed_addr #1 align 2 {
  store %"class.SourceMM::ISmmAPI"* %ismm, %"class.SourceMM::ISmmAPI"** @g_SMAPI, align 4
  %1 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)***
  %2 = load i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)** %2, i32 13
  %4 = load i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)** %3, align 4
  %5 = tail call i8* %4(%"class.SourceMM::ISmmAPI"* %ismm, i8* getelementptr inbounds ([12 x i8]* @.str16, i32 0, i32 0), i32* null, i32* null) #6
  %6 = bitcast i8* %5 to %"class.SourceHook::ISourceHook"*
  store %"class.SourceHook::ISourceHook"* %6, %"class.SourceHook::ISourceHook"** @g_SHPtr, align 4
  %7 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 0
  store %"class.SourceMM::ISmmPlugin"* %7, %"class.SourceMM::ISmmPlugin"** @g_PLAPI, align 4
  store i32 %id, i32* @g_PLID, align 4
  %8 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)***
  %9 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %8, align 4
  %10 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %9, i32 19
  %11 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %10, align 4
  %12 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %9, i32 4
  %13 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %12, align 4
  %14 = bitcast i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)* %13 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*
  %15 = tail call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %14(%"class.SourceMM::ISmmAPI"* %ismm, i1 zeroext true) #6
  %16 = tail call i8* %11(%"class.SourceMM::ISmmAPI"* %ismm, i8* (i8*, i32*)* %15, i8* getelementptr inbounds ([17 x i8]* @.str17, i32 0, i32 0), i32 0) #6
  %17 = bitcast i8* %16 to %class.IServerGameDLL*
  store %class.IServerGameDLL* %17, %class.IServerGameDLL** @gamedll, align 4
  %18 = icmp eq i8* %16, null
  br i1 %18, label %19, label %28

; <label>:19                                      ; preds = %0
  %20 = icmp ne i8* %error, null
  %21 = icmp ne i32 %maxlen, 0
  %or.cond = and i1 %20, %21
  br i1 %or.cond, label %22, label %55

; <label>:22                                      ; preds = %19
  %23 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %24 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %23, align 4
  %25 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %24, i32 28
  %26 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %25, align 4
  %27 = tail call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %26(%"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlen, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str17, i32 0, i32 0)) #6
  br label %55

; <label>:28                                      ; preds = %0
  %29 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %8, align 4
  %30 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %29, i32 19
  %31 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %30, align 4
  %32 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %29, i32 1
  %33 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %32, align 4
  %34 = bitcast i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)* %33 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*
  %35 = tail call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %34(%"class.SourceMM::ISmmAPI"* %ismm, i1 zeroext true) #6
  %36 = tail call i8* %31(%"class.SourceMM::ISmmAPI"* %ismm, i8* (i8*, i32*)* %35, i8* getelementptr inbounds ([17 x i8]* @.str18, i32 0, i32 0), i32 -1) #6
  %37 = bitcast i8* %36 to %class.IVEngineServer*
  store %class.IVEngineServer* %37, %class.IVEngineServer** @engine, align 4
  %38 = icmp eq i8* %36, null
  br i1 %38, label %39, label %48

; <label>:39                                      ; preds = %28
  %40 = icmp ne i8* %error, null
  %41 = icmp ne i32 %maxlen, 0
  %or.cond3 = and i1 %40, %41
  br i1 %or.cond3, label %42, label %55

; <label>:42                                      ; preds = %39
  %43 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %44 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %43, align 4
  %45 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %44, i32 28
  %46 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %45, align 4
  %47 = tail call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %46(%"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlen, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i32 0, i32 0)) #6
  br label %55

; <label>:48                                      ; preds = %28
  %49 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 2
  store i8 1, i8* %49, align 1
  %50 = bitcast %class.SDKExtension* %this to i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)***
  %51 = load i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)*** %50, align 4
  %52 = getelementptr inbounds i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)** %51, i32 22
  %53 = load i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)** %52, align 4
  %54 = tail call zeroext i1 %53(%class.SDKExtension* %this, %"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlen, i1 zeroext %late) #6
  br label %55

; <label>:55                                      ; preds = %39, %42, %19, %22, %48
  %.0 = phi i1 [ %54, %48 ], [ false, %22 ], [ false, %19 ], [ false, %42 ], [ false, %39 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension6UnloadEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 3
  %2 = load i8* %1, align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %error, null
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %5
  %8 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlen, i8* getelementptr inbounds ([46 x i8]* @.str19, i32 0, i32 0)) #6
  br label %15

; <label>:9                                       ; preds = %0
  %10 = bitcast %class.SDKExtension* %this to i1 (%class.SDKExtension*, i8*, i32)***
  %11 = load i1 (%class.SDKExtension*, i8*, i32)*** %10, align 4
  %12 = getelementptr inbounds i1 (%class.SDKExtension*, i8*, i32)** %11, i32 23
  %13 = load i1 (%class.SDKExtension*, i8*, i32)** %12, align 4
  %14 = tail call zeroext i1 %13(%class.SDKExtension* %this, i8* %error, i32 %maxlen) #6
  br label %15

; <label>:15                                      ; preds = %7, %5, %9
  %.0 = phi i1 [ %14, %9 ], [ false, %5 ], [ false, %7 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension5PauseEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 4
  %2 = load i8* %1, align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %error, null
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %5
  %8 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlen, i8* getelementptr inbounds ([44 x i8]* @.str20, i32 0, i32 0)) #6
  br label %15

; <label>:9                                       ; preds = %0
  store i8 0, i8* %1, align 1
  %10 = bitcast %class.SDKExtension* %this to i1 (%class.SDKExtension*, i1, i8*, i32)***
  %11 = load i1 (%class.SDKExtension*, i1, i8*, i32)*** %10, align 4
  %12 = getelementptr inbounds i1 (%class.SDKExtension*, i1, i8*, i32)** %11, i32 24
  %13 = load i1 (%class.SDKExtension*, i1, i8*, i32)** %12, align 4
  %14 = tail call zeroext i1 %13(%class.SDKExtension* %this, i1 zeroext true, i8* %error, i32 %maxlen) #6
  br label %15

; <label>:15                                      ; preds = %7, %5, %9
  %.0 = phi i1 [ %14, %9 ], [ false, %5 ], [ false, %7 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension7UnpauseEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = getelementptr inbounds %class.SDKExtension* %this, i32 0, i32 4
  %2 = load i8* %1, align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %error, null
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %5
  %8 = tail call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlen, i8* getelementptr inbounds ([46 x i8]* @.str21, i32 0, i32 0)) #6
  br label %15

; <label>:9                                       ; preds = %0
  store i8 0, i8* %1, align 1
  %10 = bitcast %class.SDKExtension* %this to i1 (%class.SDKExtension*, i1, i8*, i32)***
  %11 = load i1 (%class.SDKExtension*, i1, i8*, i32)*** %10, align 4
  %12 = getelementptr inbounds i1 (%class.SDKExtension*, i1, i8*, i32)** %11, i32 24
  %13 = load i1 (%class.SDKExtension*, i1, i8*, i32)** %12, align 4
  %14 = tail call zeroext i1 %13(%class.SDKExtension* %this, i1 zeroext false, i8* %error, i32 %maxlen) #6
  br label %15

; <label>:15                                      ; preds = %7, %5, %9
  %.0 = phi i1 [ %14, %9 ], [ false, %5 ], [ false, %7 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension9GetAuthorEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 33
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension7GetDateEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 36
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension14GetDescriptionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 35
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind readnone
define hidden i8* @_ZN12SDKExtension10GetLicenseEv(%class.SDKExtension* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension9GetLogTagEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 32
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension7GetNameEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 30
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension6GetURLEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 31
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension10GetVersionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8* (%class.SDKExtension*)***
  %2 = load i8* (%class.SDKExtension*)*** %1, align 4
  %3 = getelementptr inbounds i8* (%class.SDKExtension*)** %2, i32 34
  %4 = load i8* (%class.SDKExtension*)** %3, align 4
  %5 = tail call i8* %4(%class.SDKExtension* %this) #6
  ret i8* %5
}

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZN12SDKExtension17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb(%class.SDKExtension* nocapture readnone %this, %"class.SourceMM::ISmmAPI"* nocapture readnone %ismm, i8* nocapture readnone %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZN12SDKExtension19SDK_OnMetamodUnloadEPcj(%class.SDKExtension* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlength) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind readnone
define hidden zeroext i1 @_ZN12SDKExtension24SDK_OnMetamodPauseChangeEbPcj(%class.SDKExtension* nocapture readnone %this, i1 zeroext %paused, i8* nocapture readnone %error, i32 %maxlength) unnamed_addr #2 align 2 {
  ret i1 true
}

; Function Attrs: nounwind readnone
define hidden void @__cxa_pure_virtual() #2 {
  ret void
}

; Function Attrs: nobuiltin nounwind
define noalias i8* @_Znwj(i32 %size) #3 {
  %1 = tail call noalias i8* @malloc(i32 %size) #6
  ret i8* %1
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #1

; Function Attrs: nobuiltin nounwind
define noalias i8* @_Znaj(i32 %size) #3 {
  %1 = tail call noalias i8* @malloc(i32 %size) #6
  ret i8* %1
}

; Function Attrs: nobuiltin nounwind
define void @_ZdlPv(i8* nocapture %ptr) #3 {
  tail call void @free(i8* %ptr) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nobuiltin nounwind
define void @_ZdaPv(i8* nocapture %ptr) #3 {
  tail call void @free(i8* %ptr) #6
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden i32 @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv(%"class.SourceMM::ISmmPlugin"* nocapture readnone %this) unnamed_addr #2 align 2 {
  ret i32 15
}

; Function Attrs: inlinehint nounwind readnone
define linkonce_odr hidden void @_ZN12SDKExtensionD2Ev(%class.SDKExtension* nocapture %this) unnamed_addr #4 align 2 {
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12SDKExtensionD0Ev(%class.SDKExtension* nocapture %this) unnamed_addr #5 align 2 {
  %1 = bitcast %class.SDKExtension* %this to i8*
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv(%"class.SourceMM::ISmmPlugin"* nocapture %this) unnamed_addr #2 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj(%"class.SourceMM::ISmmPlugin"* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlen) unnamed_addr #2 align 2 {
  ret i1 true
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

attributes #0 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
