; ModuleID = 'extension.cpp'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.Color = type { [4 x i8] }
%class.Vector2D = type { float, float }
%class.CDetour = type { i8, i8, %struct.patch_t, i8*, i8*, i8*, i8**, i8*, %"class.SourcePawn::ISourcePawnEngine"*, %"class.SourceMod::IGameConfig"* }
%struct.patch_t = type { [20 x i8], i32 }
%"class.SourcePawn::ISourcePawnEngine" = type { i32 (...)** }
%"class.SourceMod::IGameConfig" = type { i32 (...)** }
%class.CBaseEntity = type opaque
%class.Vector = type { float, float, float }
%class.IServerGameEnts = type { i32 (...)** }
%class.DefibFix = type { %class.SDKExtension.base, i8 }
%class.SDKExtension.base = type <{ %"class.SourceMM::ISmmPlugin", %"class.SourceMod::IExtensionInterface", i8, i8, i8 }>
%"class.SourceMM::ISmmPlugin" = type { i32 (...)** }
%"class.SourceMod::IExtensionInterface" = type { i32 (...)** }
%class.SDKExtension = type { %"class.SourceMM::ISmmPlugin", %"class.SourceMod::IExtensionInterface", i8, i8, i8 }
%"class.SourceMod::IPlayerManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::SMInterface" = type { i32 (...)** }
%"class.SourceMod::ISourceMod" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IExtension" = type { i32 (...)** }
%"class.SourceMod::IGameHelpers" = type { %"class.SourceMod::SMInterface" }
%class.IVEngineServer = type { i32 (...)** }
%class.CBasePlayer = type { i8 }
%"class.SourceMod::IGameConfigManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IGamePlayer" = type { i32 (...)** }
%class.IPlayerInfo = type { i32 (...)** }
%class.HxDefibStartClass = type { i8 }
%struct.edict_t = type { %class.CBaseEdict }
%class.CBaseEdict = type { i32, i32, %class.IServerNetworkable*, %class.IServerUnknown* }
%class.IServerNetworkable = type { i32 (...)** }
%class.IServerUnknown = type { %class.IHandleEntity }
%class.IHandleEntity = type { i32 (...)** }
%class.HxDefibEndClass = type { i8 }
%class.ICollideable = type { i32 (...)** }
%class.IServerEntity = type { %class.IServerUnknown }
%"class.SourceMM::ISmmAPI" = type { i32 (...)** }
%"class.SourceMod::IShareSys" = type { i32 (...)** }

@_ZL25UNSPECIFIED_LOGGING_COLOR = internal global %class.Color zeroinitializer, align 1
@_ZL11vec2_origin = internal global %class.Vector2D zeroinitializer, align 4
@_ZL12vec2_invalid = internal global %class.Vector2D zeroinitializer, align 4
@hg_getPlayer = hidden global %class.CDetour* null, align 4
@hg_defibStart = hidden global %class.CDetour* null, align 4
@hg_defibEnd = hidden global %class.CDetour* null, align 4
@hg_deadPlayer = hidden global %class.CDetour* null, align 4
@CBaseEntity__SetAbsOrigin = hidden global i8* (%class.CBaseEntity*, %class.Vector*)* null, align 4
@g_pGameConf = hidden global %"class.SourceMod::IGameConfig"* null, align 4
@gameents = hidden global %class.IServerGameEnts* null, align 4
@g_DefibFix = hidden global %class.DefibFix zeroinitializer, align 4
@__dso_handle = external global i8
@g_pExtensionIface = hidden global %class.SDKExtension* bitcast (%class.DefibFix* @g_DefibFix to %class.SDKExtension*), align 4
@ig_defib = hidden global i32 0, align 4
@ig_noob = hidden global i32 0, align 4
@playerhelpers = external global %"class.SourceMod::IPlayerManager"*
@g_pSM = external global %"class.SourceMod::ISourceMod"*
@myself = external global %"class.SourceMod::IExtension"*
@.str = private unnamed_addr constant [13 x i8] c"Dead %d [%s]\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"\D0\92\D1\8B\D0\B1\D1\80\D0\B0\D0\BD %d\00", align 1
@HxPlayerSpawn_Actual = hidden global i8* (i32)* null, align 4
@.str5 = private unnamed_addr constant [28 x i8] c"\D0\92\D0\BE\D1\81\D0\BA\D1\80\D0\B5\D1\88\D0\B0\D0\B5\D1\82\D1\81\D1\8F %d\00", align 1
@gamehelpers = external global %"class.SourceMod::IGameHelpers"*
@.str6 = private unnamed_addr constant [13 x i8] c"\D0\9E\D1\88\D0\B8\D0\B1\D0\BA\D0\B0\00", align 1
@_ZN17HxDefibStartClass19HxDefibStart_ActualE = hidden global { i32, i32 } zeroinitializer, align 4
@.str7 = private unnamed_addr constant [40 x i8] c"\D0\9D\D0\B0\D1\87\D0\B0\D0\BB\D0\BE \D0\B4\D0\B5\D1\84\D0\B8\D0\B1\D1\80\D0\B8\D0\BB\D0\BB\D1\8F\D1\86\D0\B8\D0\B8\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"\D0\A2\D1\80\D1\83\D0\BF \D1\83\D0\B4\D0\B0\D0\BB\D1\8F\D0\B5\D1\82\D1\81\D1\8F\00", align 1
@engine = external global %class.IVEngineServer*
@_ZN15HxDefibEndClass17HxDefibEnd_ActualE = hidden global { i32, i32 } zeroinitializer, align 4
@.str9 = private unnamed_addr constant [46 x i8] c"\D0\9E\D0\BA\D0\BE\D0\BD\D1\87\D0\B0\D0\BD\D0\B8\D0\B5 \D0\B4\D0\B5\D1\84\D0\B8\D0\B1\D1\80\D0\B8\D0\BB\D0\BB\D1\8F\D1\86\D0\B8\D0\B8\00", align 1
@HxDeathModel_Actual = hidden global %class.CBaseEntity* (%class.CBasePlayer*)* null, align 4
@.str10 = private unnamed_addr constant [26 x i8] c"CBaseEntity::SetAbsOrigin\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"GetPlayerByCharacter\00", align 1
@.str12 = private unnamed_addr constant [27 x i8] c"DefibrillatorOnStartAction\00", align 1
@.str13 = private unnamed_addr constant [30 x i8] c"DefibrillatorOnActionComplete\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"CSurvivorDeathModel::Create\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"VEngineServer022\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"Could not find interface: %s\00", align 1
@.str17 = private unnamed_addr constant [18 x i8] c"ServerGameEnts001\00", align 1
@gameconfs = external global %"class.SourceMod::IGameConfigManager"*
@.str18 = private unnamed_addr constant [9 x i8] c"defibfix\00", align 1
@.str19 = private unnamed_addr constant [37 x i8] c"\D0\9F\D1\80\D0\BE\D0\B1\D0\BB\D0\B5\D0\BC\D0\B0 \D1\81 defibfix.txt: %s\00", align 1
@.str20 = private unnamed_addr constant [27 x i8] c"\D0\9F\D1\80\D0\BE\D0\B1\D0\BB\D0\B5\D0\BC\D0\B0 \D1\81 Offset\00", align 1
@_ZTV8DefibFix = hidden unnamed_addr constant [61 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv to i8*), i8* bitcast (void (%class.DefibFix*)* @_ZN8DefibFixD2Ev to i8*), i8* bitcast (void (%class.DefibFix*)* @_ZN8DefibFixD0Ev to i8*), i8* bitcast (i1 (%class.SDKExtension*, i32, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)* @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb to i8*), i8* bitcast (void (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension6UnloadEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension5PauseEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension7UnpauseEPcj to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension9GetAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension7GetNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension14GetDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension6GetURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension10GetLicenseEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension10GetVersionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension7GetDateEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension9GetLogTagEv to i8*), i8* bitcast (i1 (%class.DefibFix*, i8*, i32, i1)* @_ZN8DefibFix10SDK_OnLoadEPcjb to i8*), i8* bitcast (void (%class.DefibFix*)* @_ZN8DefibFix12SDK_OnUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension15SDK_OnAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension17SDK_OnPauseChangeEb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv to i8*), i8* bitcast (i1 (%class.DefibFix*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)* @_ZN8DefibFix17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension19SDK_OnMetamodUnloadEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i1, i8*, i32)* @_ZN12SDKExtension24SDK_OnMetamodPauseChangeEbPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZN12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnDependenciesDroppedEv to i8*), i8* inttoptr (i32 -4 to i8*), i8* null, i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZThn4_N12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %struct.edict_t*, i32, i32)* @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*)]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_extension.cpp, i8* null }]

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
define internal void @__cxx_global_var_init3() #0 section ".text.startup" {
  call void @_ZN8DefibFixC2Ev(%class.DefibFix* @g_DefibFix)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.DefibFix*)* @_ZN8DefibFixD2Ev to void (i8*)*), i8* bitcast (%class.DefibFix* @g_DefibFix to i8*), i8* @__dso_handle) #0
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN8DefibFixC2Ev(%class.DefibFix* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class.DefibFix*, align 4
  store %class.DefibFix* %this, %class.DefibFix** %1, align 4
  %2 = load %class.DefibFix** %1
  %3 = bitcast %class.DefibFix* %2 to %class.SDKExtension*
  call void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* %3)
  %4 = bitcast %class.DefibFix* %2 to i8***
  store i8** getelementptr inbounds ([61 x i8*]* @_ZTV8DefibFix, i64 0, i64 2), i8*** %4
  %5 = bitcast %class.DefibFix* %2 to i8*
  %6 = getelementptr inbounds i8* %5, i32 4
  %7 = bitcast i8* %6 to i8***
  store i8** getelementptr inbounds ([61 x i8*]* @_ZTV8DefibFix, i64 0, i64 42), i8*** %7
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN8DefibFixD2Ev(%class.DefibFix* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class.DefibFix*, align 4
  store %class.DefibFix* %this, %class.DefibFix** %1, align 4
  %2 = load %class.DefibFix** %1
  %3 = bitcast %class.DefibFix* %2 to %class.SDKExtension*
  call void @_ZN12SDKExtensionD2Ev(%class.SDKExtension* %3)
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #0

; Function Attrs: nounwind
define hidden i32 @_Z9HxGetDeadv() #1 {
  %1 = alloca i32, align 4
  %iDead1 = alloca i32, align 4
  %iDead2 = alloca i32, align 4
  %iDead3 = alloca i32, align 4
  %i = alloca i32, align 4
  %player = alloca %"class.SourceMod::IGamePlayer"*, align 4
  %info = alloca %class.IPlayerInfo*, align 4
  store i32 -1, i32* %iDead1, align 4
  store i32 -1, i32* %iDead2, align 4
  store i32 -1, i32* %iDead3, align 4
  store i32 1, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %119, %0
  %3 = load i32* %i, align 4
  %4 = icmp sle i32 %3, 32
  br i1 %4, label %5, label %122

; <label>:5                                       ; preds = %2
  %6 = load %"class.SourceMod::IPlayerManager"** @playerhelpers, align 4
  %7 = bitcast %"class.SourceMod::IPlayerManager"* %6 to %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)***
  %8 = load %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)*** %7
  %9 = getelementptr inbounds %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)** %8, i64 5
  %10 = load %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)** %9
  %11 = load i32* %i, align 4
  %12 = call %"class.SourceMod::IGamePlayer"* %10(%"class.SourceMod::IPlayerManager"* %6, i32 %11)
  store %"class.SourceMod::IGamePlayer"* %12, %"class.SourceMod::IGamePlayer"** %player, align 4
  %13 = load %"class.SourceMod::IGamePlayer"** %player, align 4
  %14 = icmp ne %"class.SourceMod::IGamePlayer"* %13, null
  br i1 %14, label %15, label %119

; <label>:15                                      ; preds = %5
  %16 = load %"class.SourceMod::IGamePlayer"** %player, align 4
  %17 = bitcast %"class.SourceMod::IGamePlayer"* %16 to i1 (%"class.SourceMod::IGamePlayer"*)***
  %18 = load i1 (%"class.SourceMod::IGamePlayer"*)*** %17
  %19 = getelementptr inbounds i1 (%"class.SourceMod::IGamePlayer"*)** %18, i64 4
  %20 = load i1 (%"class.SourceMod::IGamePlayer"*)** %19
  %21 = call zeroext i1 %20(%"class.SourceMod::IGamePlayer"* %16)
  br i1 %21, label %22, label %118

; <label>:22                                      ; preds = %15
  %23 = load %"class.SourceMod::IGamePlayer"** %player, align 4
  %24 = bitcast %"class.SourceMod::IGamePlayer"* %23 to %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)***
  %25 = load %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)*** %24
  %26 = getelementptr inbounds %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)** %25, i64 11
  %27 = load %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)** %26
  %28 = call %class.IPlayerInfo* %27(%"class.SourceMod::IGamePlayer"* %23)
  store %class.IPlayerInfo* %28, %class.IPlayerInfo** %info, align 4
  %29 = load %class.IPlayerInfo** %info, align 4
  %30 = icmp ne %class.IPlayerInfo* %29, null
  br i1 %30, label %31, label %117

; <label>:31                                      ; preds = %22
  %32 = load %class.IPlayerInfo** %info, align 4
  %33 = bitcast %class.IPlayerInfo* %32 to i32 (%class.IPlayerInfo*)***
  %34 = load i32 (%class.IPlayerInfo*)*** %33
  %35 = getelementptr inbounds i32 (%class.IPlayerInfo*)** %34, i64 3
  %36 = load i32 (%class.IPlayerInfo*)** %35
  %37 = call i32 %36(%class.IPlayerInfo* %32)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %116

; <label>:39                                      ; preds = %31
  %40 = load %class.IPlayerInfo** %info, align 4
  %41 = bitcast %class.IPlayerInfo* %40 to i1 (%class.IPlayerInfo*)***
  %42 = load i1 (%class.IPlayerInfo*)*** %41
  %43 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %42, i64 14
  %44 = load i1 (%class.IPlayerInfo*)** %43
  %45 = call zeroext i1 %44(%class.IPlayerInfo* %40)
  br i1 %45, label %46, label %77

; <label>:46                                      ; preds = %39
  %47 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %48 = bitcast %"class.SourceMod::ISourceMod"* %47 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %49 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %48
  %50 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %49, i64 6
  %51 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %50
  %52 = load %"class.SourceMod::IExtension"** @myself, align 4
  %53 = load i32* %i, align 4
  %54 = load %class.IPlayerInfo** %info, align 4
  %55 = bitcast %class.IPlayerInfo* %54 to i8* (%class.IPlayerInfo*)***
  %56 = load i8* (%class.IPlayerInfo*)*** %55
  %57 = getelementptr inbounds i8* (%class.IPlayerInfo*)** %56, i64 0
  %58 = load i8* (%class.IPlayerInfo*)** %57
  %59 = call i8* %58(%class.IPlayerInfo* %54)
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %51(%"class.SourceMod::ISourceMod"* %47, %"class.SourceMod::IExtension"* %52, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i32 %53, i8* %59)
  %60 = load %class.IPlayerInfo** %info, align 4
  %61 = bitcast %class.IPlayerInfo* %60 to i1 (%class.IPlayerInfo*)***
  %62 = load i1 (%class.IPlayerInfo*)*** %61
  %63 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %62, i64 11
  %64 = load i1 (%class.IPlayerInfo*)** %63
  %65 = call zeroext i1 %64(%class.IPlayerInfo* %60)
  br i1 %65, label %66, label %68

; <label>:66                                      ; preds = %46
  %67 = load i32* %i, align 4
  store i32 %67, i32* %iDead3, align 4
  br label %76

; <label>:68                                      ; preds = %46
  %69 = load i32* %i, align 4
  store i32 %69, i32* %iDead2, align 4
  %70 = load i32* @ig_noob, align 4
  %71 = load i32* %i, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %68
  %74 = load i32* %i, align 4
  store i32 %74, i32* %iDead1, align 4
  br label %75

; <label>:75                                      ; preds = %73, %68
  br label %76

; <label>:76                                      ; preds = %75, %66
  br label %77

; <label>:77                                      ; preds = %76, %39
  %78 = load %class.IPlayerInfo** %info, align 4
  %79 = bitcast %class.IPlayerInfo* %78 to i1 (%class.IPlayerInfo*)***
  %80 = load i1 (%class.IPlayerInfo*)*** %79
  %81 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %80, i64 12
  %82 = load i1 (%class.IPlayerInfo*)** %81
  %83 = call zeroext i1 %82(%class.IPlayerInfo* %78)
  br i1 %83, label %84, label %115

; <label>:84                                      ; preds = %77
  %85 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %86 = bitcast %"class.SourceMod::ISourceMod"* %85 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %87 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %86
  %88 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %87, i64 6
  %89 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %88
  %90 = load %"class.SourceMod::IExtension"** @myself, align 4
  %91 = load i32* %i, align 4
  %92 = load %class.IPlayerInfo** %info, align 4
  %93 = bitcast %class.IPlayerInfo* %92 to i8* (%class.IPlayerInfo*)***
  %94 = load i8* (%class.IPlayerInfo*)*** %93
  %95 = getelementptr inbounds i8* (%class.IPlayerInfo*)** %94, i64 0
  %96 = load i8* (%class.IPlayerInfo*)** %95
  %97 = call i8* %96(%class.IPlayerInfo* %92)
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %89(%"class.SourceMod::ISourceMod"* %85, %"class.SourceMod::IExtension"* %90, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i32 %91, i8* %97)
  %98 = load %class.IPlayerInfo** %info, align 4
  %99 = bitcast %class.IPlayerInfo* %98 to i1 (%class.IPlayerInfo*)***
  %100 = load i1 (%class.IPlayerInfo*)*** %99
  %101 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %100, i64 11
  %102 = load i1 (%class.IPlayerInfo*)** %101
  %103 = call zeroext i1 %102(%class.IPlayerInfo* %98)
  br i1 %103, label %104, label %106

; <label>:104                                     ; preds = %84
  %105 = load i32* %i, align 4
  store i32 %105, i32* %iDead3, align 4
  br label %114

; <label>:106                                     ; preds = %84
  %107 = load i32* %i, align 4
  store i32 %107, i32* %iDead2, align 4
  %108 = load i32* @ig_noob, align 4
  %109 = load i32* %i, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %106
  %112 = load i32* %i, align 4
  store i32 %112, i32* %iDead1, align 4
  br label %113

; <label>:113                                     ; preds = %111, %106
  br label %114

; <label>:114                                     ; preds = %113, %104
  br label %115

; <label>:115                                     ; preds = %114, %77
  br label %116

; <label>:116                                     ; preds = %115, %31
  br label %117

; <label>:117                                     ; preds = %116, %22
  br label %118

; <label>:118                                     ; preds = %117, %15
  br label %119

; <label>:119                                     ; preds = %118, %5
  %120 = load i32* %i, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4
  br label %2

; <label>:122                                     ; preds = %2
  %123 = load i32* %iDead1, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %134

; <label>:125                                     ; preds = %122
  %126 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %127 = bitcast %"class.SourceMod::ISourceMod"* %126 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %128 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %127
  %129 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %128, i64 6
  %130 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %129
  %131 = load %"class.SourceMod::IExtension"** @myself, align 4
  %132 = load i32* %iDead1, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %130(%"class.SourceMod::ISourceMod"* %126, %"class.SourceMod::IExtension"* %131, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 %132)
  %133 = load i32* %iDead1, align 4
  store i32 %133, i32* %1
  br label %155

; <label>:134                                     ; preds = %122
  %135 = load i32* %iDead2, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %146

; <label>:137                                     ; preds = %134
  %138 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %139 = bitcast %"class.SourceMod::ISourceMod"* %138 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %140 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %139
  %141 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %140, i64 6
  %142 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %141
  %143 = load %"class.SourceMod::IExtension"** @myself, align 4
  %144 = load i32* %iDead2, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %142(%"class.SourceMod::ISourceMod"* %138, %"class.SourceMod::IExtension"* %143, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 %144)
  %145 = load i32* %iDead2, align 4
  store i32 %145, i32* %1
  br label %155

; <label>:146                                     ; preds = %134
  %147 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %148 = bitcast %"class.SourceMod::ISourceMod"* %147 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %149 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %148
  %150 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %149, i64 6
  %151 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %150
  %152 = load %"class.SourceMod::IExtension"** @myself, align 4
  %153 = load i32* %iDead3, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %151(%"class.SourceMod::ISourceMod"* %147, %"class.SourceMod::IExtension"* %152, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 %153)
  %154 = load i32* %iDead3, align 4
  store i32 %154, i32* %1
  br label %155

; <label>:155                                     ; preds = %146, %137, %125
  %156 = load i32* %1
  ret i32 %156
}

; Function Attrs: nounwind
define hidden i8* @_Z13HxPlayerSpawni(i32 %charaster) #1 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %iDead = alloca i32, align 4
  store i32 %charaster, i32* %2, align 4
  %3 = load i32* @ig_defib, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %33

; <label>:5                                       ; preds = %0
  store i32 0, i32* @ig_defib, align 4
  %6 = call i32 @_Z9HxGetDeadv()
  store i32 %6, i32* %iDead, align 4
  %7 = load i32* %iDead, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

; <label>:9                                       ; preds = %5
  %10 = load i32* %iDead, align 4
  store i32 %10, i32* @ig_noob, align 4
  %11 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %12 = bitcast %"class.SourceMod::ISourceMod"* %11 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %13 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %12
  %14 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %13, i64 6
  %15 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %14
  %16 = load %"class.SourceMod::IExtension"** @myself, align 4
  %17 = load i32* %iDead, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %15(%"class.SourceMod::ISourceMod"* %11, %"class.SourceMod::IExtension"* %16, i8* getelementptr inbounds ([28 x i8]* @.str5, i32 0, i32 0), i32 %17)
  %18 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %19 = bitcast %"class.SourceMod::IGameHelpers"* %18 to %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)***
  %20 = load %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)*** %19
  %21 = getelementptr inbounds %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)** %20, i64 17
  %22 = load %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)** %21
  %23 = load i32* %iDead, align 4
  %24 = call %class.CBaseEntity* %22(%"class.SourceMod::IGameHelpers"* %18, i32 %23)
  %25 = bitcast %class.CBaseEntity* %24 to i8*
  store i8* %25, i8** %1
  br label %37

; <label>:26                                      ; preds = %5
  %27 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %28 = bitcast %"class.SourceMod::ISourceMod"* %27 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %29 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %28
  %30 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %29, i64 6
  %31 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %30
  %32 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %31(%"class.SourceMod::ISourceMod"* %27, %"class.SourceMod::IExtension"* %32, i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0))
  store i8* null, i8** %1
  br label %37

; <label>:33                                      ; preds = %0
  %34 = load i8* (i32)** @HxPlayerSpawn_Actual, align 4
  %35 = load i32* %2, align 4
  %36 = call i8* %34(i32 %35)
  store i8* %36, i8** %1
  br label %37

; <label>:37                                      ; preds = %33, %26, %9
  %38 = load i8** %1
  ret i8* %38
}

; Function Attrs: nounwind
define hidden i8* @_ZN17HxDefibStartClass12HxDefibStartEiPvS0_i(%class.HxDefibStartClass* %this, i32 %reserved, i8* %player, i8* %entity, i32 %reserved2) #1 align 2 {
  %1 = alloca %class.HxDefibStartClass*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %edict = alloca %struct.edict_t*, align 4
  store %class.HxDefibStartClass* %this, %class.HxDefibStartClass** %1, align 4
  store i32 %reserved, i32* %2, align 4
  store i8* %player, i8** %3, align 4
  store i8* %entity, i8** %4, align 4
  store i32 %reserved2, i32* %5, align 4
  %6 = load %class.HxDefibStartClass** %1
  %7 = load %class.IServerGameEnts** @gameents, align 4
  %8 = bitcast %class.IServerGameEnts* %7 to %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)***
  %9 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)*** %8
  %10 = getelementptr inbounds %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %9, i64 4
  %11 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %10
  %12 = load i8** %4, align 4
  %13 = bitcast i8* %12 to %class.CBaseEntity*
  %14 = call %struct.edict_t* %11(%class.IServerGameEnts* %7, %class.CBaseEntity* %13)
  store %struct.edict_t* %14, %struct.edict_t** %edict, align 4
  %15 = load %struct.edict_t** %edict, align 4
  %16 = icmp ne %struct.edict_t* %15, null
  br i1 %16, label %17, label %40

; <label>:17                                      ; preds = %0
  %18 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %19 = bitcast %"class.SourceMod::ISourceMod"* %18 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %20 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %19
  %21 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %20, i64 6
  %22 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %21
  %23 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %22(%"class.SourceMod::ISourceMod"* %18, %"class.SourceMod::IExtension"* %23, i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0))
  %24 = call i32 @_Z9HxGetDeadv()
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %39

; <label>:26                                      ; preds = %17
  %27 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %28 = bitcast %"class.SourceMod::ISourceMod"* %27 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %29 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %28
  %30 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %29, i64 6
  %31 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %30
  %32 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %31(%"class.SourceMod::ISourceMod"* %27, %"class.SourceMod::IExtension"* %32, i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0))
  %33 = load %class.IVEngineServer** @engine, align 4
  %34 = bitcast %class.IVEngineServer* %33 to void (%class.IVEngineServer*, %struct.edict_t*)***
  %35 = load void (%class.IVEngineServer*, %struct.edict_t*)*** %34
  %36 = getelementptr inbounds void (%class.IVEngineServer*, %struct.edict_t*)** %35, i64 23
  %37 = load void (%class.IVEngineServer*, %struct.edict_t*)** %36
  %38 = load %struct.edict_t** %edict, align 4
  call void %37(%class.IVEngineServer* %33, %struct.edict_t* %38)
  br label %39

; <label>:39                                      ; preds = %26, %17
  br label %40

; <label>:40                                      ; preds = %39, %0
  %41 = load { i32, i32 }* @_ZN17HxDefibStartClass19HxDefibStart_ActualE, align 4
  %42 = extractvalue { i32, i32 } %41, 1
  %43 = bitcast %class.HxDefibStartClass* %6 to i8*
  %44 = getelementptr inbounds i8* %43, i32 %42
  %45 = bitcast i8* %44 to %class.HxDefibStartClass*
  %46 = extractvalue { i32, i32 } %41, 0
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

; <label>:49                                      ; preds = %40
  %50 = bitcast %class.HxDefibStartClass* %45 to i8**
  %51 = load i8** %50
  %52 = sub i32 %46, 1
  %53 = getelementptr i8* %51, i32 %52
  %54 = bitcast i8* %53 to i8* (%class.HxDefibStartClass*, i32, i8*, i8*, i32)**
  %55 = load i8* (%class.HxDefibStartClass*, i32, i8*, i8*, i32)** %54
  br label %58

; <label>:56                                      ; preds = %40
  %57 = inttoptr i32 %46 to i8* (%class.HxDefibStartClass*, i32, i8*, i8*, i32)*
  br label %58

; <label>:58                                      ; preds = %56, %49
  %59 = phi i8* (%class.HxDefibStartClass*, i32, i8*, i8*, i32)* [ %55, %49 ], [ %57, %56 ]
  %60 = load i32* %2, align 4
  %61 = load i8** %3, align 4
  %62 = load i8** %4, align 4
  %63 = load i32* %5, align 4
  %64 = call i8* %59(%class.HxDefibStartClass* %45, i32 %60, i8* %61, i8* %62, i32 %63)
  ret i8* %64
}

; Function Attrs: nounwind
define hidden i8* @_ZN15HxDefibEndClass10HxDefibEndEPvS0_(%class.HxDefibEndClass* %this, i8* %player, i8* %entity) #1 align 2 {
  %1 = alloca %class.HxDefibEndClass*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %edict = alloca %struct.edict_t*, align 4
  store %class.HxDefibEndClass* %this, %class.HxDefibEndClass** %1, align 4
  store i8* %player, i8** %2, align 4
  store i8* %entity, i8** %3, align 4
  %4 = load %class.HxDefibEndClass** %1
  %5 = load %class.IServerGameEnts** @gameents, align 4
  %6 = bitcast %class.IServerGameEnts* %5 to %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)***
  %7 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)*** %6
  %8 = getelementptr inbounds %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %7, i64 4
  %9 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %8
  %10 = load i8** %3, align 4
  %11 = bitcast i8* %10 to %class.CBaseEntity*
  %12 = call %struct.edict_t* %9(%class.IServerGameEnts* %5, %class.CBaseEntity* %11)
  store %struct.edict_t* %12, %struct.edict_t** %edict, align 4
  %13 = load %struct.edict_t** %edict, align 4
  %14 = icmp ne %struct.edict_t* %13, null
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %0
  %16 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %17 = bitcast %"class.SourceMod::ISourceMod"* %16 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %18 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %17
  %19 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %18, i64 6
  %20 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %19
  %21 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %20(%"class.SourceMod::ISourceMod"* %16, %"class.SourceMod::IExtension"* %21, i8* getelementptr inbounds ([46 x i8]* @.str9, i32 0, i32 0))
  store i32 1, i32* @ig_defib, align 4
  br label %22

; <label>:22                                      ; preds = %15, %0
  %23 = load { i32, i32 }* @_ZN15HxDefibEndClass17HxDefibEnd_ActualE, align 4
  %24 = extractvalue { i32, i32 } %23, 1
  %25 = bitcast %class.HxDefibEndClass* %4 to i8*
  %26 = getelementptr inbounds i8* %25, i32 %24
  %27 = bitcast i8* %26 to %class.HxDefibEndClass*
  %28 = extractvalue { i32, i32 } %23, 0
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

; <label>:31                                      ; preds = %22
  %32 = bitcast %class.HxDefibEndClass* %27 to i8**
  %33 = load i8** %32
  %34 = sub i32 %28, 1
  %35 = getelementptr i8* %33, i32 %34
  %36 = bitcast i8* %35 to i8* (%class.HxDefibEndClass*, i8*, i8*)**
  %37 = load i8* (%class.HxDefibEndClass*, i8*, i8*)** %36
  br label %40

; <label>:38                                      ; preds = %22
  %39 = inttoptr i32 %28 to i8* (%class.HxDefibEndClass*, i8*, i8*)*
  br label %40

; <label>:40                                      ; preds = %38, %31
  %41 = phi i8* (%class.HxDefibEndClass*, i8*, i8*)* [ %37, %31 ], [ %39, %38 ]
  %42 = load i8** %2, align 4
  %43 = load i8** %3, align 4
  %44 = call i8* %41(%class.HxDefibEndClass* %27, i8* %42, i8* %43)
  ret i8* %44
}

; Function Attrs: nounwind
define hidden %class.CBaseEntity* @_Z12HxDeathModelP11CBasePlayer(%class.CBasePlayer* %bplayer) #1 {
  %1 = alloca %class.CBasePlayer*, align 4
  %pEdict = alloca %struct.edict_t*, align 4
  %client = alloca i32, align 4
  %result = alloca %class.CBaseEntity*, align 4
  %PlayerOrigin = alloca %class.Vector, align 4
  store %class.CBasePlayer* %bplayer, %class.CBasePlayer** %1, align 4
  %2 = load %class.IServerGameEnts** @gameents, align 4
  %3 = bitcast %class.IServerGameEnts* %2 to %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)***
  %4 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)*** %3
  %5 = getelementptr inbounds %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %4, i64 4
  %6 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %5
  %7 = load %class.CBasePlayer** %1, align 4
  %8 = bitcast %class.CBasePlayer* %7 to %class.CBaseEntity*
  %9 = call %struct.edict_t* %6(%class.IServerGameEnts* %2, %class.CBaseEntity* %8)
  store %struct.edict_t* %9, %struct.edict_t** %pEdict, align 4
  %10 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %11 = bitcast %"class.SourceMod::IGameHelpers"* %10 to i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)***
  %12 = load i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)*** %11
  %13 = getelementptr inbounds i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)** %12, i64 12
  %14 = load i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)** %13
  %15 = load %struct.edict_t** %pEdict, align 4
  %16 = call i32 %14(%"class.SourceMod::IGameHelpers"* %10, %struct.edict_t* %15)
  store i32 %16, i32* %client, align 4
  %17 = load %class.CBaseEntity* (%class.CBasePlayer*)** @HxDeathModel_Actual, align 4
  %18 = load %class.CBasePlayer** %1, align 4
  %19 = call %class.CBaseEntity* %17(%class.CBasePlayer* %18)
  store %class.CBaseEntity* %19, %class.CBaseEntity** %result, align 4
  %20 = load i32* %client, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

; <label>:22                                      ; preds = %0
  %23 = load %struct.edict_t** %pEdict, align 4
  %24 = call %class.ICollideable* @_ZN7edict_t14GetCollideableEv(%struct.edict_t* %23)
  %25 = bitcast %class.ICollideable* %24 to %class.Vector* (%class.ICollideable*)***
  %26 = load %class.Vector* (%class.ICollideable*)*** %25
  %27 = getelementptr inbounds %class.Vector* (%class.ICollideable*)** %26, i64 8
  %28 = load %class.Vector* (%class.ICollideable*)** %27
  %29 = call dereferenceable(12) %class.Vector* %28(%class.ICollideable* %24)
  %30 = bitcast %class.Vector* %PlayerOrigin to i8*
  %31 = bitcast %class.Vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %30, i8* %31, i32 12, i32 4, i1 false)
  %32 = load i8* (%class.CBaseEntity*, %class.Vector*)** @CBaseEntity__SetAbsOrigin, align 4
  %33 = load %class.CBaseEntity** %result, align 4
  %34 = call i8* %32(%class.CBaseEntity* %33, %class.Vector* %PlayerOrigin)
  br label %35

; <label>:35                                      ; preds = %22, %0
  %36 = load %class.CBaseEntity** %result, align 4
  ret %class.CBaseEntity* %36
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden %class.ICollideable* @_ZN7edict_t14GetCollideableEv(%struct.edict_t* %this) #2 align 2 {
  %1 = alloca %class.ICollideable*, align 4
  %2 = alloca %struct.edict_t*, align 4
  %pEnt = alloca %class.IServerEntity*, align 4
  store %struct.edict_t* %this, %struct.edict_t** %2, align 4
  %3 = load %struct.edict_t** %2
  %4 = bitcast %struct.edict_t* %3 to %class.CBaseEdict*
  %5 = call %class.IServerEntity* @_ZN10CBaseEdict16GetIServerEntityEv(%class.CBaseEdict* %4)
  store %class.IServerEntity* %5, %class.IServerEntity** %pEnt, align 4
  %6 = load %class.IServerEntity** %pEnt, align 4
  %7 = icmp ne %class.IServerEntity* %6, null
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %0
  %9 = load %class.IServerEntity** %pEnt, align 4
  %10 = bitcast %class.IServerEntity* %9 to %class.IServerUnknown*
  %11 = bitcast %class.IServerUnknown* %10 to %class.ICollideable* (%class.IServerUnknown*)***
  %12 = load %class.ICollideable* (%class.IServerUnknown*)*** %11
  %13 = getelementptr inbounds %class.ICollideable* (%class.IServerUnknown*)** %12, i64 4
  %14 = load %class.ICollideable* (%class.IServerUnknown*)** %13
  %15 = call %class.ICollideable* %14(%class.IServerUnknown* %10)
  store %class.ICollideable* %15, %class.ICollideable** %1
  br label %17

; <label>:16                                      ; preds = %0
  store %class.ICollideable* null, %class.ICollideable** %1
  br label %17

; <label>:17                                      ; preds = %16, %8
  %18 = load %class.ICollideable** %1
  ret %class.ICollideable* %18
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind
define hidden void @_Z12HxDestroyAllv() #1 {
  %1 = load %class.CDetour** @hg_getPlayer, align 4
  %2 = icmp ne %class.CDetour* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = load %class.CDetour** @hg_getPlayer, align 4
  call void @_ZN7CDetour7DestroyEv(%class.CDetour* %4)
  store %class.CDetour* null, %class.CDetour** @hg_getPlayer, align 4
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = load %class.CDetour** @hg_defibStart, align 4
  %7 = icmp ne %class.CDetour* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = load %class.CDetour** @hg_defibStart, align 4
  call void @_ZN7CDetour7DestroyEv(%class.CDetour* %9)
  store %class.CDetour* null, %class.CDetour** @hg_defibStart, align 4
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load %class.CDetour** @hg_defibEnd, align 4
  %12 = icmp ne %class.CDetour* %11, null
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = load %class.CDetour** @hg_defibEnd, align 4
  call void @_ZN7CDetour7DestroyEv(%class.CDetour* %14)
  store %class.CDetour* null, %class.CDetour** @hg_defibEnd, align 4
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load %class.CDetour** @hg_deadPlayer, align 4
  %17 = icmp ne %class.CDetour* %16, null
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = load %class.CDetour** @hg_deadPlayer, align 4
  call void @_ZN7CDetour7DestroyEv(%class.CDetour* %19)
  store %class.CDetour* null, %class.CDetour** @hg_deadPlayer, align 4
  br label %20

; <label>:20                                      ; preds = %18, %15
  ret void
}

declare void @_ZN7CDetour7DestroyEv(%class.CDetour*) #3

; Function Attrs: nounwind
define hidden zeroext i1 @_Z7HxStartv() #1 {
  %1 = alloca i1, align 1
  %2 = alloca { i32, i32 }, align 4
  %3 = alloca { i32, i32 }, align 4
  %4 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %5 = bitcast %"class.SourceMod::ISourceMod"* %4 to %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)***
  %6 = load %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)*** %5
  %7 = getelementptr inbounds %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)** %6, i64 14
  %8 = load %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)** %7
  %9 = call %"class.SourcePawn::ISourcePawnEngine"* %8(%"class.SourceMod::ISourceMod"* %4)
  %10 = load %"class.SourceMod::IGameConfig"** @g_pGameConf, align 4
  call void @_ZN14CDetourManager4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%"class.SourcePawn::ISourcePawnEngine"* %9, %"class.SourceMod::IGameConfig"* %10)
  %11 = load %"class.SourceMod::IGameConfig"** @g_pGameConf, align 4
  %12 = bitcast %"class.SourceMod::IGameConfig"* %11 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %13 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %12
  %14 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %13, i64 3
  %15 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %14
  %16 = call zeroext i1 %15(%"class.SourceMod::IGameConfig"* %11, i8* getelementptr inbounds ([26 x i8]* @.str10, i32 0, i32 0), i8** bitcast (i8* (%class.CBaseEntity*, %class.Vector*)** @CBaseEntity__SetAbsOrigin to i8**))
  %17 = call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* bitcast (i8* (i32)* @_Z13HxPlayerSpawni to i8*), i8** bitcast (i8* (i32)** @HxPlayerSpawn_Actual to i8**), i8* getelementptr inbounds ([21 x i8]* @.str11, i32 0, i32 0))
  store %class.CDetour* %17, %class.CDetour** @hg_getPlayer, align 4
  store { i32, i32 } { i32 ptrtoint (i8* (%class.HxDefibStartClass*, i32, i8*, i8*, i32)* @_ZN17HxDefibStartClass12HxDefibStartEiPvS0_i to i32), i32 0 }, { i32, i32 }* %2, align 4
  %18 = call i8* @_Z11GetCodeAddrM12GenericClassFvvE({ i32, i32 }* byval align 4 %2)
  %19 = call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* %18, i8** bitcast ({ i32, i32 }* @_ZN17HxDefibStartClass19HxDefibStart_ActualE to i8**), i8* getelementptr inbounds ([27 x i8]* @.str12, i32 0, i32 0))
  store %class.CDetour* %19, %class.CDetour** @hg_defibStart, align 4
  store { i32, i32 } { i32 ptrtoint (i8* (%class.HxDefibEndClass*, i8*, i8*)* @_ZN15HxDefibEndClass10HxDefibEndEPvS0_ to i32), i32 0 }, { i32, i32 }* %3, align 4
  %20 = call i8* @_Z11GetCodeAddrM12GenericClassFvvE({ i32, i32 }* byval align 4 %3)
  %21 = call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* %20, i8** bitcast ({ i32, i32 }* @_ZN15HxDefibEndClass17HxDefibEnd_ActualE to i8**), i8* getelementptr inbounds ([30 x i8]* @.str13, i32 0, i32 0))
  store %class.CDetour* %21, %class.CDetour** @hg_defibEnd, align 4
  %22 = call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* bitcast (%class.CBaseEntity* (%class.CBasePlayer*)* @_Z12HxDeathModelP11CBasePlayer to i8*), i8** bitcast (%class.CBaseEntity* (%class.CBasePlayer*)** @HxDeathModel_Actual to i8**), i8* getelementptr inbounds ([28 x i8]* @.str14, i32 0, i32 0))
  store %class.CDetour* %22, %class.CDetour** @hg_deadPlayer, align 4
  %23 = load i8* (%class.CBaseEntity*, %class.Vector*)** @CBaseEntity__SetAbsOrigin, align 4
  %24 = icmp ne i8* (%class.CBaseEntity*, %class.Vector*)* %23, null
  br i1 %24, label %25, label %42

; <label>:25                                      ; preds = %0
  %26 = load %class.CDetour** @hg_getPlayer, align 4
  %27 = icmp ne %class.CDetour* %26, null
  br i1 %27, label %28, label %42

; <label>:28                                      ; preds = %25
  %29 = load %class.CDetour** @hg_defibStart, align 4
  %30 = icmp ne %class.CDetour* %29, null
  br i1 %30, label %31, label %42

; <label>:31                                      ; preds = %28
  %32 = load %class.CDetour** @hg_defibEnd, align 4
  %33 = icmp ne %class.CDetour* %32, null
  br i1 %33, label %34, label %42

; <label>:34                                      ; preds = %31
  %35 = load %class.CDetour** @hg_deadPlayer, align 4
  %36 = icmp ne %class.CDetour* %35, null
  br i1 %36, label %37, label %42

; <label>:37                                      ; preds = %34
  %38 = load %class.CDetour** @hg_getPlayer, align 4
  call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %38)
  %39 = load %class.CDetour** @hg_defibStart, align 4
  call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %39)
  %40 = load %class.CDetour** @hg_defibEnd, align 4
  call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %40)
  %41 = load %class.CDetour** @hg_deadPlayer, align 4
  call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %41)
  store i1 true, i1* %1
  br label %43

; <label>:42                                      ; preds = %34, %31, %28, %25, %0
  call void @_Z12HxDestroyAllv()
  store i1 false, i1* %1
  br label %43

; <label>:43                                      ; preds = %42, %37
  %44 = load i1* %1
  ret i1 %44
}

declare void @_ZN14CDetourManager4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%"class.SourcePawn::ISourcePawnEngine"*, %"class.SourceMod::IGameConfig"*) #3

declare %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8*, i8**, i8*) #3

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden i8* @_Z11GetCodeAddrM12GenericClassFvvE({ i32, i32 }* byval align 4) #2 {
  %2 = alloca { i32, i32 }, align 4
  %mfp = load { i32, i32 }* %0, align 4
  store { i32, i32 } %mfp, { i32, i32 }* %2, align 4
  %3 = bitcast { i32, i32 }* %2 to i8**
  %4 = load i8** %3, align 4
  ret i8* %4
}

declare void @_ZN7CDetour12EnableDetourEv(%class.CDetour*) #3

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN8DefibFix17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb(%class.DefibFix* %this, %"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.DefibFix*, align 4
  %3 = alloca %"class.SourceMM::ISmmAPI"*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %maxlen = alloca i32, align 4
  store %class.DefibFix* %this, %class.DefibFix** %2, align 4
  store %"class.SourceMM::ISmmAPI"* %ismm, %"class.SourceMM::ISmmAPI"** %3, align 4
  store i8* %error, i8** %4, align 4
  store i32 %maxlength, i32* %5, align 4
  %7 = zext i1 %late to i8
  store i8 %7, i8* %6, align 1
  %8 = load %class.DefibFix** %2
  %9 = load i32* %5, align 4
  store i32 %9, i32* %maxlen, align 4
  %10 = load %"class.SourceMM::ISmmAPI"** %3, align 4
  %11 = bitcast %"class.SourceMM::ISmmAPI"* %10 to i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)***
  %12 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %11
  %13 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %12, i64 19
  %14 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %13
  %15 = load %"class.SourceMM::ISmmAPI"** %3, align 4
  %16 = bitcast %"class.SourceMM::ISmmAPI"* %15 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)***
  %17 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*** %16
  %18 = getelementptr inbounds i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %17, i64 1
  %19 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %18
  %20 = call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %19(%"class.SourceMM::ISmmAPI"* %15, i1 zeroext true)
  %21 = call i8* %14(%"class.SourceMM::ISmmAPI"* %10, i8* (i8*, i32*)* %20, i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), i32 -1)
  %22 = bitcast i8* %21 to %class.IVEngineServer*
  store %class.IVEngineServer* %22, %class.IVEngineServer** @engine, align 4
  %23 = load %class.IVEngineServer** @engine, align 4
  %24 = icmp ne %class.IVEngineServer* %23, null
  br i1 %24, label %41, label %25

; <label>:25                                      ; preds = %0
  %26 = load i8** %4, align 4
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %40

; <label>:28                                      ; preds = %25
  %29 = load i32* %maxlen, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

; <label>:31                                      ; preds = %28
  %32 = load %"class.SourceMM::ISmmAPI"** %3, align 4
  %33 = bitcast %"class.SourceMM::ISmmAPI"* %32 to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %34 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %33
  %35 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %34, i64 28
  %36 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %35
  %37 = load i8** %4, align 4
  %38 = load i32* %maxlen, align 4
  %39 = call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %36(%"class.SourceMM::ISmmAPI"* %32, i8* %37, i32 %38, i8* getelementptr inbounds ([29 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0))
  br label %40

; <label>:40                                      ; preds = %31, %28, %25
  store i1 false, i1* %1
  br label %74

; <label>:41                                      ; preds = %0
  %42 = load %"class.SourceMM::ISmmAPI"** %3, align 4
  %43 = bitcast %"class.SourceMM::ISmmAPI"* %42 to i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)***
  %44 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %43
  %45 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %44, i64 19
  %46 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %45
  %47 = load %"class.SourceMM::ISmmAPI"** %3, align 4
  %48 = bitcast %"class.SourceMM::ISmmAPI"* %47 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)***
  %49 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*** %48
  %50 = getelementptr inbounds i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %49, i64 4
  %51 = load i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)** %50
  %52 = call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %51(%"class.SourceMM::ISmmAPI"* %47, i1 zeroext true)
  %53 = call i8* %46(%"class.SourceMM::ISmmAPI"* %42, i8* (i8*, i32*)* %52, i8* getelementptr inbounds ([18 x i8]* @.str17, i32 0, i32 0), i32 0)
  %54 = bitcast i8* %53 to %class.IServerGameEnts*
  store %class.IServerGameEnts* %54, %class.IServerGameEnts** @gameents, align 4
  %55 = load %class.IServerGameEnts** @gameents, align 4
  %56 = icmp ne %class.IServerGameEnts* %55, null
  br i1 %56, label %73, label %57

; <label>:57                                      ; preds = %41
  %58 = load i8** %4, align 4
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %72

; <label>:60                                      ; preds = %57
  %61 = load i32* %maxlen, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

; <label>:63                                      ; preds = %60
  %64 = load %"class.SourceMM::ISmmAPI"** %3, align 4
  %65 = bitcast %"class.SourceMM::ISmmAPI"* %64 to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %66 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %65
  %67 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %66, i64 28
  %68 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %67
  %69 = load i8** %4, align 4
  %70 = load i32* %maxlen, align 4
  %71 = call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %68(%"class.SourceMM::ISmmAPI"* %64, i8* %69, i32 %70, i8* getelementptr inbounds ([29 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str17, i32 0, i32 0))
  br label %72

; <label>:72                                      ; preds = %63, %60, %57
  store i1 false, i1* %1
  br label %74

; <label>:73                                      ; preds = %41
  store i1 true, i1* %1
  br label %74

; <label>:74                                      ; preds = %73, %72, %40
  %75 = load i1* %1
  ret i1 %75
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN8DefibFix10SDK_OnLoadEPcjb(%class.DefibFix* %this, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.DefibFix*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %conf_error = alloca [255 x i8], align 1
  store %class.DefibFix* %this, %class.DefibFix** %2, align 4
  store i8* %error, i8** %3, align 4
  store i32 %maxlength, i32* %4, align 4
  %6 = zext i1 %late to i8
  store i8 %6, i8* %5, align 1
  %7 = load %class.DefibFix** %2
  store i32 0, i32* @ig_defib, align 4
  store i32 0, i32* @ig_noob, align 4
  %8 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %9 = bitcast %"class.SourceMod::IGameConfigManager"* %8 to i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)***
  %10 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)*** %9
  %11 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %10, i64 3
  %12 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %11
  %13 = getelementptr inbounds [255 x i8]* %conf_error, i32 0, i32 0
  %14 = call zeroext i1 %12(%"class.SourceMod::IGameConfigManager"* %8, i8* getelementptr inbounds ([9 x i8]* @.str18, i32 0, i32 0), %"class.SourceMod::IGameConfig"** @g_pGameConf, i8* %13, i32 255)
  br i1 %14, label %20, label %15

; <label>:15                                      ; preds = %0
  %16 = load i8** %3, align 4
  %17 = load i32* %4, align 4
  %18 = getelementptr inbounds [255 x i8]* %conf_error, i32 0, i32 0
  %19 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([37 x i8]* @.str19, i32 0, i32 0), i8* %18) #0
  store i1 false, i1* %1
  br label %27

; <label>:20                                      ; preds = %0
  %21 = call zeroext i1 @_Z7HxStartv()
  br i1 %21, label %26, label %22

; <label>:22                                      ; preds = %20
  %23 = load i8** %3, align 4
  %24 = load i32* %4, align 4
  %25 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([27 x i8]* @.str20, i32 0, i32 0)) #0
  store i1 false, i1* %1
  br label %27

; <label>:26                                      ; preds = %20
  store i1 true, i1* %1
  br label %27

; <label>:27                                      ; preds = %26, %22, %15
  %28 = load i1* %1
  ret i1 %28
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
define hidden void @_ZN8DefibFix12SDK_OnUnloadEv(%class.DefibFix* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.DefibFix*, align 4
  store %class.DefibFix* %this, %class.DefibFix** %1, align 4
  %2 = load %class.DefibFix** %1
  call void @_Z12HxDestroyAllv()
  %3 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %4 = bitcast %"class.SourceMod::IGameConfigManager"* %3 to void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)***
  %5 = load void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)*** %4
  %6 = getelementptr inbounds void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)** %5, i64 4
  %7 = load void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)** %6
  %8 = load %"class.SourceMod::IGameConfig"** @g_pGameConf, align 4
  call void %7(%"class.SourceMod::IGameConfigManager"* %3, %"class.SourceMod::IGameConfig"* %8)
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
define linkonce_odr hidden void @_ZN8DefibFixD0Ev(%class.DefibFix* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class.DefibFix*, align 4
  store %class.DefibFix* %this, %class.DefibFix** %1, align 4
  %2 = load %class.DefibFix** %1
  call void @_ZN8DefibFixD2Ev(%class.DefibFix* %2)
  %3 = bitcast %class.DefibFix* %2 to i8*
  call void @_ZdlPv(i8* %3) #5
  ret void
}

declare zeroext i1 @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb(%class.SDKExtension*, i32, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1 zeroext) #3

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

declare zeroext i1 @_ZN12SDKExtension6UnloadEPcj(%class.SDKExtension*, i8*, i32) #3

declare zeroext i1 @_ZN12SDKExtension5PauseEPcj(%class.SDKExtension*, i8*, i32) #3

declare zeroext i1 @_ZN12SDKExtension7UnpauseEPcj(%class.SDKExtension*, i8*, i32) #3

declare i8* @_ZN12SDKExtension9GetAuthorEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension7GetNameEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension14GetDescriptionEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension6GetURLEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension10GetLicenseEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension10GetVersionEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension7GetDateEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension9GetLogTagEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension*, i1 zeroext) #3

declare void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension*) #3

declare zeroext i1 @_ZN12SDKExtension19SDK_OnMetamodUnloadEPcj(%class.SDKExtension*, i8*, i32) #3

declare zeroext i1 @_ZN12SDKExtension24SDK_OnMetamodPauseChangeEbPcj(%class.SDKExtension*, i1 zeroext, i8*, i32) #3

declare zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1 zeroext) #3

declare void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension*) #3

declare zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension*, i1 zeroext) #3

declare i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension*) #3

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i32 8
}

declare zeroext i1 @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1 zeroext) #3

declare void @_ZThn4_N12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension*) #3

declare void @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension*) #3

declare void @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension*, i1 zeroext) #3

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

declare zeroext i1 @_ZThn4_N12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension16GetExtensionNameEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension15GetExtensionURLEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension15GetExtensionTagEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension*) #3

declare i8* @_ZThn4_N12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension*) #3

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

declare void @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension*) #3

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #4

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden %class.IServerEntity* @_ZN10CBaseEdict16GetIServerEntityEv(%class.CBaseEdict* %this) #2 align 2 {
  %1 = alloca %class.IServerEntity*, align 4
  %2 = alloca %class.CBaseEdict*, align 4
  store %class.CBaseEdict* %this, %class.CBaseEdict** %2, align 4
  %3 = load %class.CBaseEdict** %2
  %4 = getelementptr inbounds %class.CBaseEdict* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %class.CBaseEdict* %3, i32 0, i32 3
  %10 = load %class.IServerUnknown** %9, align 4
  %11 = bitcast %class.IServerUnknown* %10 to %class.IServerEntity*
  store %class.IServerEntity* %11, %class.IServerEntity** %1
  br label %13

; <label>:12                                      ; preds = %0
  store %class.IServerEntity* null, %class.IServerEntity** %1
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load %class.IServerEntity** %1
  ret %class.IServerEntity* %14
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

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPluginD2Ev(%"class.SourceMM::ISmmPlugin"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMM::ISmmPlugin"*, align 4
  store %"class.SourceMM::ISmmPlugin"* %this, %"class.SourceMM::ISmmPlugin"** %1, align 4
  %2 = load %"class.SourceMM::ISmmPlugin"** %1
  ret void
}

declare void @_ZN12SDKExtensionC2Ev(%class.SDKExtension*) #3

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
define internal void @_GLOBAL__sub_I_extension.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init1()
  call void @__cxx_global_var_init2()
  call void @__cxx_global_var_init3()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
