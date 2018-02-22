; ModuleID = 'smsdk_ext.cpp'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.Color = type { [4 x i8] }
%class.Vector2D = type { float, float }
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

@_ZL25UNSPECIFIED_LOGGING_COLOR = internal global %class.Color zeroinitializer, align 1
@_ZL11vec2_origin = internal global %class.Vector2D zeroinitializer, align 4
@_ZL12vec2_invalid = internal global %class.Vector2D zeroinitializer, align 4
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
@.str8 = private unnamed_addr constant [4 x i8] c"V10\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"Feb 22 2018\00", align 1
@.str10 = private unnamed_addr constant [75 x i8] c"Fixes defibrillator re-revive clone bug (on servers higher than 8 players)\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"1.1 mod\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"L4D2 DefibFix\00", align 1
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
@_ZTVN9SourceMod19IExtensionInterfaceE = linkonce_odr hidden unnamed_addr constant [21 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %struct.edict_t*, i32, i32)* @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*)]
@_ZTVN8SourceMM10ISmmPluginE = linkonce_odr hidden unnamed_addr constant [19 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv to i8*), i8* bitcast (void (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPluginD2Ev to i8*), i8* bitcast (void (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPluginD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin6UnloadEPcj to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin5PauseEPcj to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin7UnpauseEPcj to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_smsdk_ext.cpp, i8* null }]

@_ZN12SDKExtensionC1Ev = hidden alias void (%class.SDKExtension*)* @_ZN12SDKExtensionC2Ev

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
define %"class.SourceMod::IExtensionInterface"* @GetSMExtAPI() #1 {
  %1 = load %class.SDKExtension** @g_pExtensionIface, align 4
  %2 = icmp eq %class.SDKExtension* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast %class.SDKExtension* %1 to i8*
  %5 = getelementptr inbounds i8* %4, i32 4
  %6 = bitcast i8* %5 to %"class.SourceMod::IExtensionInterface"*
  br label %7

; <label>:7                                       ; preds = %3, %0
  %8 = phi %"class.SourceMod::IExtensionInterface"* [ %6, %3 ], [ null, %0 ]
  ret %"class.SourceMod::IExtensionInterface"* %8
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to %"class.SourceMM::ISmmPlugin"*
  call void @_ZN8SourceMM10ISmmPluginC2Ev(%"class.SourceMM::ISmmPlugin"* %3) #0
  %4 = bitcast %class.SDKExtension* %2 to i8*
  %5 = getelementptr inbounds i8* %4, i64 4
  %6 = bitcast i8* %5 to %"class.SourceMod::IExtensionInterface"*
  call void @_ZN9SourceMod19IExtensionInterfaceC2Ev(%"class.SourceMod::IExtensionInterface"* %6) #0
  %7 = bitcast %class.SDKExtension* %2 to i8***
  store i8** getelementptr inbounds ([61 x i8*]* @_ZTV12SDKExtension, i64 0, i64 2), i8*** %7
  %8 = bitcast %class.SDKExtension* %2 to i8*
  %9 = getelementptr inbounds i8* %8, i32 4
  %10 = bitcast i8* %9 to i8***
  store i8** getelementptr inbounds ([61 x i8*]* @_ZTV12SDKExtension, i64 0, i64 42), i8*** %10
  %11 = getelementptr inbounds %class.SDKExtension* %2, i32 0, i32 2
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds %class.SDKExtension* %2, i32 0, i32 3
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %class.SDKExtension* %2, i32 0, i32 4
  store i8 0, i8* %13, align 1
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPluginC2Ev(%"class.SourceMM::ISmmPlugin"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  %2 = load %"class.SourceMM::ISmmPlugin"** %1
  %3 = bitcast %"class.SourceMM::ISmmPlugin"* %2 to i8***
  store i8** getelementptr inbounds ([19 x i8*]* @_ZTVN8SourceMM10ISmmPluginE, i64 0, i64 2), i8*** %3
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterfaceC2Ev(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  %3 = bitcast %"class.SourceMod::IExtensionInterface"* %2 to i8***
  store i8** getelementptr inbounds ([21 x i8*]* @_ZTVN9SourceMod19IExtensionInterfaceE, i64 0, i64 2), i8*** %3
  ret void
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %this, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
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
  %12 = getelementptr inbounds %class.SDKExtension* %9, i32 0, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %class.SDKExtension* %9, i32 0, i32 2
  %14 = load i8* %13, align 1
  %15 = trunc i8 %14 to i1
  br i1 %15, label %24, label %16

; <label>:16                                      ; preds = %0
  %17 = load i8** %5, align 4
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %16
  %20 = load i8** %5, align 4
  %21 = load i32* %6, align 4
  %22 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([22 x i8]* @.str, i32 0, i32 0)) #0
  br label %23

; <label>:23                                      ; preds = %19, %16
  store i1 false, i1* %1
  br label %150

; <label>:24                                      ; preds = %0
  %25 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %26 = bitcast %"class.SourceMod::IShareSys"* %25 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %27 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %26
  %28 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %27, i64 1
  %29 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %28
  %30 = load %"class.SourceMod::IExtension"** @myself, align 4
  %31 = call zeroext i1 %29(%"class.SourceMod::IShareSys"* %25, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 13, %"class.SourceMod::IExtension"* %30, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::ISourceMod"** @g_pSM to %"class.SourceMod::SMInterface"**))
  br i1 %31, label %52, label %32

; <label>:32                                      ; preds = %24
  %33 = load i8** %5, align 4
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %51

; <label>:35                                      ; preds = %32
  %36 = load i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

; <label>:38                                      ; preds = %35
  %39 = load i8** %5, align 4
  %40 = load i32* %6, align 4
  %41 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)) #0
  store i32 %41, i32* %len, align 4
  %42 = load i32* %len, align 4
  %43 = load i32* %6, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %50

; <label>:45                                      ; preds = %38
  %46 = load i32* %6, align 4
  %47 = sub i32 %46, 1
  %48 = load i8** %5, align 4
  %49 = getelementptr inbounds i8* %48, i32 %47
  store i8 0, i8* %49, align 1
  br label %50

; <label>:50                                      ; preds = %45, %38
  br label %51

; <label>:51                                      ; preds = %50, %35, %32
  store i1 false, i1* %1
  br label %150

; <label>:52                                      ; preds = %24
  %53 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  store %"class.SourceMod::ISourceMod"* %53, %"class.SourceMod::ISourceMod"** @smutils, align 4
  %54 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %55 = bitcast %"class.SourceMod::IShareSys"* %54 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %56 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %55
  %57 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %56, i64 1
  %58 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %57
  %59 = load %"class.SourceMod::IExtension"** @myself, align 4
  %60 = call zeroext i1 %58(%"class.SourceMod::IShareSys"* %54, i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0), i32 21, %"class.SourceMod::IExtension"* %59, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IPlayerManager"** @playerhelpers to %"class.SourceMod::SMInterface"**))
  br i1 %60, label %81, label %61

; <label>:61                                      ; preds = %52
  %62 = load i8** %5, align 4
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %80

; <label>:64                                      ; preds = %61
  %65 = load i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

; <label>:67                                      ; preds = %64
  %68 = load i8** %5, align 4
  %69 = load i32* %6, align 4
  %70 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0)) #0
  store i32 %70, i32* %len1, align 4
  %71 = load i32* %len1, align 4
  %72 = load i32* %6, align 4
  %73 = icmp uge i32 %71, %72
  br i1 %73, label %74, label %79

; <label>:74                                      ; preds = %67
  %75 = load i32* %6, align 4
  %76 = sub i32 %75, 1
  %77 = load i8** %5, align 4
  %78 = getelementptr inbounds i8* %77, i32 %76
  store i8 0, i8* %78, align 1
  br label %79

; <label>:79                                      ; preds = %74, %67
  br label %80

; <label>:80                                      ; preds = %79, %64, %61
  store i1 false, i1* %1
  br label %150

; <label>:81                                      ; preds = %52
  %82 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %83 = bitcast %"class.SourceMod::IShareSys"* %82 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %84 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %83
  %85 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %84, i64 1
  %86 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %85
  %87 = load %"class.SourceMod::IExtension"** @myself, align 4
  %88 = call zeroext i1 %86(%"class.SourceMod::IShareSys"* %82, i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0), i32 6, %"class.SourceMod::IExtension"* %87, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameConfigManager"** @gameconfs to %"class.SourceMod::SMInterface"**))
  br i1 %88, label %109, label %89

; <label>:89                                      ; preds = %81
  %90 = load i8** %5, align 4
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %108

; <label>:92                                      ; preds = %89
  %93 = load i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

; <label>:95                                      ; preds = %92
  %96 = load i8** %5, align 4
  %97 = load i32* %6, align 4
  %98 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %96, i32 %97, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str6, i32 0, i32 0)) #0
  store i32 %98, i32* %len2, align 4
  %99 = load i32* %len2, align 4
  %100 = load i32* %6, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %107

; <label>:102                                     ; preds = %95
  %103 = load i32* %6, align 4
  %104 = sub i32 %103, 1
  %105 = load i8** %5, align 4
  %106 = getelementptr inbounds i8* %105, i32 %104
  store i8 0, i8* %106, align 1
  br label %107

; <label>:107                                     ; preds = %102, %95
  br label %108

; <label>:108                                     ; preds = %107, %92, %89
  store i1 false, i1* %1
  br label %150

; <label>:109                                     ; preds = %81
  %110 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %111 = bitcast %"class.SourceMod::IShareSys"* %110 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %112 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %111
  %113 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %112, i64 1
  %114 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %113
  %115 = load %"class.SourceMod::IExtension"** @myself, align 4
  %116 = call zeroext i1 %114(%"class.SourceMod::IShareSys"* %110, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 11, %"class.SourceMod::IExtension"* %115, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IGameHelpers"** @gamehelpers to %"class.SourceMod::SMInterface"**))
  br i1 %116, label %137, label %117

; <label>:117                                     ; preds = %109
  %118 = load i8** %5, align 4
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %136

; <label>:120                                     ; preds = %117
  %121 = load i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

; <label>:123                                     ; preds = %120
  %124 = load i8** %5, align 4
  %125 = load i32* %6, align 4
  %126 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) #0
  store i32 %126, i32* %len3, align 4
  %127 = load i32* %len3, align 4
  %128 = load i32* %6, align 4
  %129 = icmp uge i32 %127, %128
  br i1 %129, label %130, label %135

; <label>:130                                     ; preds = %123
  %131 = load i32* %6, align 4
  %132 = sub i32 %131, 1
  %133 = load i8** %5, align 4
  %134 = getelementptr inbounds i8* %133, i32 %132
  store i8 0, i8* %134, align 1
  br label %135

; <label>:135                                     ; preds = %130, %123
  br label %136

; <label>:136                                     ; preds = %135, %120, %117
  store i1 false, i1* %1
  br label %150

; <label>:137                                     ; preds = %109
  %138 = bitcast %class.SDKExtension* %9 to i1 (%class.SDKExtension*, i8*, i32, i1)***
  %139 = load i1 (%class.SDKExtension*, i8*, i32, i1)*** %138
  %140 = getelementptr inbounds i1 (%class.SDKExtension*, i8*, i32, i1)** %139, i64 17
  %141 = load i1 (%class.SDKExtension*, i8*, i32, i1)** %140
  %142 = load i8** %5, align 4
  %143 = load i32* %6, align 4
  %144 = load i8* %7, align 1
  %145 = trunc i8 %144 to i1
  %146 = call zeroext i1 %141(%class.SDKExtension* %9, i8* %142, i32 %143, i1 zeroext %145)
  br i1 %146, label %147, label %149

; <label>:147                                     ; preds = %137
  %148 = getelementptr inbounds %class.SDKExtension* %9, i32 0, i32 3
  store i8 1, i8* %148, align 1
  store i1 true, i1* %1
  br label %150

; <label>:149                                     ; preds = %137
  store i1 false, i1* %1
  br label %150

; <label>:150                                     ; preds = %149, %147, %136, %108, %80, %51, %23
  %151 = load i1* %1
  ret i1 %151
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
define hidden zeroext i1 @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %this, %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IShareSys"* %sys, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca %"class.SourceMod::IExtension"*, align 4
  %3 = alloca %"class.SourceMod::IShareSys"*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  store %"class.SourceMod::IExtension"* %me, %"class.SourceMod::IExtension"** %2, align 4
  store %"class.SourceMod::IShareSys"* %sys, %"class.SourceMod::IShareSys"** %3, align 4
  store i8* %error, i8** %4, align 4
  store i32 %maxlength, i32* %5, align 4
  %7 = zext i1 %late to i8
  store i8 %7, i8* %6, align 1
  %8 = load %class.SDKExtension** %1
  %9 = bitcast %class.SDKExtension* %8 to i8*
  %10 = getelementptr inbounds i8* %9, i64 -4
  %11 = bitcast i8* %10 to %class.SDKExtension*
  %12 = load %"class.SourceMod::IExtension"** %2, align 4
  %13 = load %"class.SourceMod::IShareSys"** %3, align 4
  %14 = load i8** %4, align 4
  %15 = load i32* %5, align 4
  %16 = load i8* %6, align 1
  %17 = trunc i8 %16 to i1
  %18 = call zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension* %11, %"class.SourceMod::IExtension"* %12, %"class.SourceMod::IShareSys"* %13, i8* %14, i32 %15, i1 zeroext %17)
  ret i1 %18
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i1 true
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZThn4_N12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension* %5)
  ret i1 %6
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %state) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %3 = zext i1 %state to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.SDKExtension** %1
  %5 = getelementptr inbounds %class.SDKExtension* %4, i32 0, i32 4
  store i8 1, i8* %5, align 1
  %6 = bitcast %class.SDKExtension* %4 to void (%class.SDKExtension*, i1)***
  %7 = load void (%class.SDKExtension*, i1)*** %6
  %8 = getelementptr inbounds void (%class.SDKExtension*, i1)** %7, i64 20
  %9 = load void (%class.SDKExtension*, i1)** %8
  %10 = load i8* %2, align 1
  %11 = trunc i8 %10 to i1
  call void %9(%class.SDKExtension* %4, i1 zeroext %11)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %state) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %3 = zext i1 %state to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.SDKExtension** %1
  %5 = bitcast %class.SDKExtension* %4 to i8*
  %6 = getelementptr inbounds i8* %5, i64 -4
  %7 = bitcast i8* %6 to %class.SDKExtension*
  %8 = load i8* %2, align 1
  %9 = trunc i8 %8 to i1
  call void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension* %7, i1 zeroext %9)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to void (%class.SDKExtension*)***
  %4 = load void (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds void (%class.SDKExtension*)** %4, i64 19
  %6 = load void (%class.SDKExtension*)** %5
  call void %6(%class.SDKExtension* %2)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  call void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension* %5)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = getelementptr inbounds %class.SDKExtension* %2, i32 0, i32 3
  store i8 1, i8* %3, align 1
  %4 = bitcast %class.SDKExtension* %2 to void (%class.SDKExtension*)***
  %5 = load void (%class.SDKExtension*)*** %4
  %6 = getelementptr inbounds void (%class.SDKExtension*)** %5, i64 18
  %7 = load void (%class.SDKExtension*)** %6
  call void %7(%class.SDKExtension* %2)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZThn4_N12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  call void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension* %5)
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
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
define hidden void @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  call void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension* %5)
  ret void
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([75 x i8]* @.str10, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([14 x i8]* @.str12, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension16GetExtensionNameEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension15GetExtensionTagEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([21 x i8]* @.str14, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZThn4_N12SDKExtension15GetExtensionURLEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8*
  %4 = getelementptr inbounds i8* %3, i64 -4
  %5 = bitcast i8* %4 to %class.SDKExtension*
  %6 = call i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension* %5)
  ret i8* %6
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension10SDK_OnLoadEPcjb(%class.SDKExtension* %this, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
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
define hidden void @_ZN12SDKExtension12SDK_OnUnloadEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension* %this, i1 zeroext %paused) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %3 = zext i1 %paused to i8
  store i8 %3, i8* %2, align 1
  %4 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret void
}

; Function Attrs: nounwind
define i8* @CreateInterface(i8* %name, i32* %code) #1 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32*, align 4
  store i8* %name, i8** %2, align 4
  store i32* %code, i32** %3, align 4
  %4 = load i8** %2, align 4
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %18

; <label>:6                                       ; preds = %0
  %7 = load i8** %2, align 4
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0)) #5
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

; <label>:10                                      ; preds = %6
  %11 = load i32** %3, align 4
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = load i32** %3, align 4
  store i32 0, i32* %14, align 4
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load %class.SDKExtension** @g_pExtensionIface, align 4
  %17 = bitcast %class.SDKExtension* %16 to i8*
  store i8* %17, i8** %1
  br label %24

; <label>:18                                      ; preds = %6, %0
  %19 = load i32** %3, align 4
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %18
  %22 = load i32** %3, align 4
  store i32 1, i32* %22, align 4
  br label %23

; <label>:23                                      ; preds = %21, %18
  store i8* null, i8** %1
  br label %24

; <label>:24                                      ; preds = %23, %15
  %25 = load i8** %1
  ret i8* %25
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb(%class.SDKExtension* %this, i32 %id, %"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlen, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.SDKExtension*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %"class.SourceMM::ISmmAPI"*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %2, align 4
  store i32 %id, i32* %3, align 4
  store %"class.SourceMM::ISmmAPI"* %ismm, %"class.SourceMM::ISmmAPI"** %4, align 4
  store i8* %error, i8** %5, align 4
  store i32 %maxlen, i32* %6, align 4
  %8 = zext i1 %late to i8
  store i8 %8, i8* %7, align 1
  %9 = load %class.SDKExtension** %2
  %10 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  store %"class.SourceMM::ISmmAPI"* %10, %"class.SourceMM::ISmmAPI"** @g_SMAPI, align 4
  %11 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %12 = bitcast %"class.SourceMM::ISmmAPI"* %11 to i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)***
  %13 = load i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)*** %12
  %14 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)** %13, i64 13
  %15 = load i8* (%"class.SourceMM::ISmmAPI"*, i8*, i32*, i32*)** %14
  %16 = call i8* %15(%"class.SourceMM::ISmmAPI"* %11, i8* getelementptr inbounds ([12 x i8]* @.str16, i32 0, i32 0), i32* null, i32* null)
  %17 = bitcast i8* %16 to %"class.SourceHook::ISourceHook"*
  store %"class.SourceHook::ISourceHook"* %17, %"class.SourceHook::ISourceHook"** @g_SHPtr, align 4
  %18 = bitcast %class.SDKExtension* %9 to %"class.SourceMM::ISmmPlugin"*
  store %"class.SourceMM::ISmmPlugin"* %18, %"class.SourceMM::ISmmPlugin"** @g_PLAPI, align 4
  %19 = load i32* %3, align 4
  store i32 %19, i32* @g_PLID, align 4
  %20 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %21 = bitcast %"class.SourceMM::ISmmAPI"* %20 to i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)***
  %22 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %21
  %23 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %22, i64 19
  %24 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %23
  %25 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %26 = bitcast %"class.SourceMM::ISmmAPI"* %25 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)***
  %27 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*** %26
  %28 = getelementptr inbounds i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %27, i64 4
  %29 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %28
  %30 = call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %29(%"class.SourceMM::ISmmAPI"* %25, i1 zeroext true)
  %31 = call i8* %24(%"class.SourceMM::ISmmAPI"* %20, i8* (i8*, i32*)* %30, i8* getelementptr inbounds ([17 x i8]* @.str17, i32 0, i32 0), i32 0)
  %32 = bitcast i8* %31 to %class.IServerGameDLL*
  store %class.IServerGameDLL* %32, %class.IServerGameDLL** @gamedll, align 4
  %33 = load %class.IServerGameDLL** @gamedll, align 4
  %34 = icmp ne %class.IServerGameDLL* %33, null
  br i1 %34, label %51, label %35

; <label>:35                                      ; preds = %0
  %36 = load i8** %5, align 4
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %50

; <label>:38                                      ; preds = %35
  %39 = load i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

; <label>:41                                      ; preds = %38
  %42 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %43 = bitcast %"class.SourceMM::ISmmAPI"* %42 to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %44 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %43
  %45 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %44, i64 28
  %46 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %45
  %47 = load i8** %5, align 4
  %48 = load i32* %6, align 4
  %49 = call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %46(%"class.SourceMM::ISmmAPI"* %42, i8* %47, i32 %48, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str17, i32 0, i32 0))
  br label %50

; <label>:50                                      ; preds = %41, %38, %35
  store i1 false, i1* %1
  br label %95

; <label>:51                                      ; preds = %0
  %52 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %53 = bitcast %"class.SourceMM::ISmmAPI"* %52 to i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)***
  %54 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %53
  %55 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %54, i64 19
  %56 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %55
  %57 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %58 = bitcast %"class.SourceMM::ISmmAPI"* %57 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)***
  %59 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*** %58
  %60 = getelementptr inbounds i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %59, i64 1
  %61 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %60
  %62 = call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %61(%"class.SourceMM::ISmmAPI"* %57, i1 zeroext true)
  %63 = call i8* %56(%"class.SourceMM::ISmmAPI"* %52, i8* (i8*, i32*)* %62, i8* getelementptr inbounds ([17 x i8]* @.str18, i32 0, i32 0), i32 -1)
  %64 = bitcast i8* %63 to %class.IVEngineServer*
  store %class.IVEngineServer* %64, %class.IVEngineServer** @engine, align 4
  %65 = load %class.IVEngineServer** @engine, align 4
  %66 = icmp ne %class.IVEngineServer* %65, null
  br i1 %66, label %83, label %67

; <label>:67                                      ; preds = %51
  %68 = load i8** %5, align 4
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

; <label>:70                                      ; preds = %67
  %71 = load i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

; <label>:73                                      ; preds = %70
  %74 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %75 = bitcast %"class.SourceMM::ISmmAPI"* %74 to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %76 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %75
  %77 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %76, i64 28
  %78 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %77
  %79 = load i8** %5, align 4
  %80 = load i32* %6, align 4
  %81 = call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %78(%"class.SourceMM::ISmmAPI"* %74, i8* %79, i32 %80, i8* getelementptr inbounds ([29 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i32 0, i32 0))
  br label %82

; <label>:82                                      ; preds = %73, %70, %67
  store i1 false, i1* %1
  br label %95

; <label>:83                                      ; preds = %51
  %84 = getelementptr inbounds %class.SDKExtension* %9, i32 0, i32 2
  store i8 1, i8* %84, align 1
  %85 = bitcast %class.SDKExtension* %9 to i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)***
  %86 = load i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)*** %85
  %87 = getelementptr inbounds i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)** %86, i64 22
  %88 = load i1 (%class.SDKExtension*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)** %87
  %89 = load %"class.SourceMM::ISmmAPI"** %4, align 4
  %90 = load i8** %5, align 4
  %91 = load i32* %6, align 4
  %92 = load i8* %7, align 1
  %93 = trunc i8 %92 to i1
  %94 = call zeroext i1 %88(%class.SDKExtension* %9, %"class.SourceMM::ISmmAPI"* %89, i8* %90, i32 %91, i1 zeroext %93)
  store i1 %94, i1* %1
  br label %95

; <label>:95                                      ; preds = %83, %82, %50
  %96 = load i1* %1
  ret i1 %96
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension6UnloadEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.SDKExtension*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %2, align 4
  store i8* %error, i8** %3, align 4
  store i32 %maxlen, i32* %4, align 4
  %5 = load %class.SDKExtension** %2
  %6 = getelementptr inbounds %class.SDKExtension* %5, i32 0, i32 3
  %7 = load i8* %6, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %17, label %9

; <label>:9                                       ; preds = %0
  %10 = load i8** %3, align 4
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %9
  %13 = load i8** %3, align 4
  %14 = load i32* %4, align 4
  %15 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([46 x i8]* @.str19, i32 0, i32 0)) #0
  br label %16

; <label>:16                                      ; preds = %12, %9
  store i1 false, i1* %1
  br label %25

; <label>:17                                      ; preds = %0
  %18 = bitcast %class.SDKExtension* %5 to i1 (%class.SDKExtension*, i8*, i32)***
  %19 = load i1 (%class.SDKExtension*, i8*, i32)*** %18
  %20 = getelementptr inbounds i1 (%class.SDKExtension*, i8*, i32)** %19, i64 23
  %21 = load i1 (%class.SDKExtension*, i8*, i32)** %20
  %22 = load i8** %3, align 4
  %23 = load i32* %4, align 4
  %24 = call zeroext i1 %21(%class.SDKExtension* %5, i8* %22, i32 %23)
  store i1 %24, i1* %1
  br label %25

; <label>:25                                      ; preds = %17, %16
  %26 = load i1* %1
  ret i1 %26
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension5PauseEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.SDKExtension*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %2, align 4
  store i8* %error, i8** %3, align 4
  store i32 %maxlen, i32* %4, align 4
  %5 = load %class.SDKExtension** %2
  %6 = getelementptr inbounds %class.SDKExtension* %5, i32 0, i32 4
  %7 = load i8* %6, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %17, label %9

; <label>:9                                       ; preds = %0
  %10 = load i8** %3, align 4
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %9
  %13 = load i8** %3, align 4
  %14 = load i32* %4, align 4
  %15 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([44 x i8]* @.str20, i32 0, i32 0)) #0
  br label %16

; <label>:16                                      ; preds = %12, %9
  store i1 false, i1* %1
  br label %26

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %class.SDKExtension* %5, i32 0, i32 4
  store i8 0, i8* %18, align 1
  %19 = bitcast %class.SDKExtension* %5 to i1 (%class.SDKExtension*, i1, i8*, i32)***
  %20 = load i1 (%class.SDKExtension*, i1, i8*, i32)*** %19
  %21 = getelementptr inbounds i1 (%class.SDKExtension*, i1, i8*, i32)** %20, i64 24
  %22 = load i1 (%class.SDKExtension*, i1, i8*, i32)** %21
  %23 = load i8** %3, align 4
  %24 = load i32* %4, align 4
  %25 = call zeroext i1 %22(%class.SDKExtension* %5, i1 zeroext true, i8* %23, i32 %24)
  store i1 %25, i1* %1
  br label %26

; <label>:26                                      ; preds = %17, %16
  %27 = load i1* %1
  ret i1 %27
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension7UnpauseEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.SDKExtension*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %2, align 4
  store i8* %error, i8** %3, align 4
  store i32 %maxlen, i32* %4, align 4
  %5 = load %class.SDKExtension** %2
  %6 = getelementptr inbounds %class.SDKExtension* %5, i32 0, i32 4
  %7 = load i8* %6, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %17, label %9

; <label>:9                                       ; preds = %0
  %10 = load i8** %3, align 4
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %9
  %13 = load i8** %3, align 4
  %14 = load i32* %4, align 4
  %15 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([46 x i8]* @.str21, i32 0, i32 0)) #0
  br label %16

; <label>:16                                      ; preds = %12, %9
  store i1 false, i1* %1
  br label %26

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %class.SDKExtension* %5, i32 0, i32 4
  store i8 0, i8* %18, align 1
  %19 = bitcast %class.SDKExtension* %5 to i1 (%class.SDKExtension*, i1, i8*, i32)***
  %20 = load i1 (%class.SDKExtension*, i1, i8*, i32)*** %19
  %21 = getelementptr inbounds i1 (%class.SDKExtension*, i1, i8*, i32)** %20, i64 24
  %22 = load i1 (%class.SDKExtension*, i1, i8*, i32)** %21
  %23 = load i8** %3, align 4
  %24 = load i32* %4, align 4
  %25 = call zeroext i1 %22(%class.SDKExtension* %5, i1 zeroext false, i8* %23, i32 %24)
  store i1 %25, i1* %1
  br label %26

; <label>:26                                      ; preds = %17, %16
  %27 = load i1* %1
  ret i1 %27
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension9GetAuthorEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 33
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension7GetDateEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 36
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension14GetDescriptionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 35
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension10GetLicenseEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  ret i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0)
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension9GetLogTagEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 32
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension7GetNameEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 30
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension6GetURLEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 31
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden i8* @_ZN12SDKExtension10GetVersionEv(%class.SDKExtension* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to i8* (%class.SDKExtension*)***
  %4 = load i8* (%class.SDKExtension*)*** %3
  %5 = getelementptr inbounds i8* (%class.SDKExtension*)** %4, i64 34
  %6 = load i8* (%class.SDKExtension*)** %5
  %7 = call i8* %6(%class.SDKExtension* %2)
  ret i8* %7
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb(%class.SDKExtension* %this, %"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca %"class.SourceMM::ISmmAPI"*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  store %"class.SourceMM::ISmmAPI"* %ismm, %"class.SourceMM::ISmmAPI"** %2, align 4
  store i8* %error, i8** %3, align 4
  store i32 %maxlength, i32* %4, align 4
  %6 = zext i1 %late to i8
  store i8 %6, i8* %5, align 1
  %7 = load %class.SDKExtension** %1
  ret i1 true
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension19SDK_OnMetamodUnloadEPcj(%class.SDKExtension* %this, i8* %error, i32 %maxlength) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlength, i32* %3, align 4
  %4 = load %class.SDKExtension** %1
  ret i1 true
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN12SDKExtension24SDK_OnMetamodPauseChangeEbPcj(%class.SDKExtension* %this, i1 zeroext %paused, i8* %error, i32 %maxlength) unnamed_addr #1 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %5 = zext i1 %paused to i8
  store i8 %5, i8* %2, align 1
  store i8* %error, i8** %3, align 4
  store i32 %maxlength, i32* %4, align 4
  %6 = load %class.SDKExtension** %1
  ret i1 true
}

; Function Attrs: nounwind
define hidden void @__cxa_pure_virtual() #1 {
  ret void
}

; Function Attrs: nobuiltin nounwind
define noalias i8* @_Znwj(i32 %size) #4 {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call noalias i8* @malloc(i32 %2) #0
  ret i8* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #1

; Function Attrs: nobuiltin nounwind
define noalias i8* @_Znaj(i32 %size) #4 {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call noalias i8* @malloc(i32 %2) #0
  ret i8* %3
}

; Function Attrs: nobuiltin nounwind
define void @_ZdlPv(i8* %ptr) #4 {
  %1 = alloca i8*, align 4
  store i8* %ptr, i8** %1, align 4
  %2 = load i8** %1, align 4
  call void @free(i8* %2) #0
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nobuiltin nounwind
define void @_ZdaPv(i8* %ptr) #4 {
  %1 = alloca i8*, align 4
  store i8* %ptr, i8** %1, align 4
  %2 = load i8** %1, align 4
  call void @free(i8* %2) #0
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv(%"class.SourceMM::ISmmPlugin"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  %2 = load %"class.SourceMM::ISmmPlugin"** %1
  ret i32 15
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12SDKExtensionD2Ev(%class.SDKExtension* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  %3 = bitcast %class.SDKExtension* %2 to %"class.SourceMM::ISmmPlugin"*
  call void @_ZN8SourceMM10ISmmPluginD2Ev(%"class.SourceMM::ISmmPlugin"* %3)
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12SDKExtensionD0Ev(%class.SDKExtension* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class.SDKExtension*, align 4
  store %class.SDKExtension* %this, %class.SDKExtension** %1, align 4
  %2 = load %class.SDKExtension** %1
  call void @_ZN12SDKExtensionD2Ev(%class.SDKExtension* %2)
  %3 = bitcast %class.SDKExtension* %2 to i8*
  call void @_ZdlPv(i8* %3) #6
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv(%"class.SourceMM::ISmmPlugin"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  %2 = load %"class.SourceMM::ISmmPlugin"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj(%"class.SourceMM::ISmmPlugin"* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlen, i32* %3, align 4
  %4 = load %"class.SourceMM::ISmmPlugin"** %1
  ret i1 true
}

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i32 8
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::SMInterface"* %pInterface) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %"class.SourceMod::SMInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %"class.SourceMod::SMInterface"* %pInterface, %"class.SourceMod::SMInterface"** %2, align 4
  %3 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i1 false
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::SMInterface"* %pInterface) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %"class.SourceMod::SMInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %"class.SourceMod::SMInterface"* %pInterface, %"class.SourceMod::SMInterface"** %2, align 4
  %3 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* %this, i8* %error, i32 %maxlength) unnamed_addr #1 align 2 {
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
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii(%"class.SourceMod::IExtensionInterface"* %this, %struct.edict_t* %pEdictList, i32 %edictCount, i32 %clientMax) unnamed_addr #1 align 2 {
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
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface21OnDependenciesDroppedEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPluginD2Ev(%"class.SourceMM::ISmmPlugin"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  %2 = load %"class.SourceMM::ISmmPlugin"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPluginD0Ev(%"class.SourceMM::ISmmPlugin"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  %2 = load %"class.SourceMM::ISmmPlugin"** %1
  call void @_ZN8SourceMM10ISmmPluginD2Ev(%"class.SourceMM::ISmmPlugin"* %2)
  %3 = bitcast %"class.SourceMM::ISmmPlugin"* %2 to i8*
  call void @_ZdlPv(i8* %3) #7
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN8SourceMM10ISmmPlugin6UnloadEPcj(%"class.SourceMM::ISmmPlugin"* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlen, i32* %3, align 4
  %4 = load %"class.SourceMM::ISmmPlugin"** %1
  ret i1 true
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN8SourceMM10ISmmPlugin5PauseEPcj(%"class.SourceMM::ISmmPlugin"* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlen, i32* %3, align 4
  %4 = load %"class.SourceMM::ISmmPlugin"** %1
  ret i1 true
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN8SourceMM10ISmmPlugin7UnpauseEPcj(%"class.SourceMM::ISmmPlugin"* %this, i8* %error, i32 %maxlen) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlen, i32* %3, align 4
  %4 = load %"class.SourceMM::ISmmPlugin"** %1
  ret i1 true
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
define internal void @_GLOBAL__sub_I_smsdk_ext.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  call void @__cxx_global_var_init2()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { builtin }
attributes #7 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
