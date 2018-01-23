; ModuleID = 'extension.ll'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
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
%class.DefibFix = type { %class.SDKExtension }
%class.SDKExtension = type { %"class.SourceMM::ISmmPlugin", %"class.SourceMod::IExtensionInterface", i8, i8, i8 }
%"class.SourceMM::ISmmPlugin" = type { i32 (...)** }
%"class.SourceMod::IExtensionInterface" = type { i32 (...)** }
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
%class.DefibrillatorOnStartActionClass = type { i8 }
%struct.edict_t = type { %class.CBaseEdict }
%class.CBaseEdict = type { i32, i32, %class.IServerNetworkable*, %class.IServerUnknown* }
%class.IServerNetworkable = type { i32 (...)** }
%class.IServerUnknown = type { %class.IHandleEntity }
%class.IHandleEntity = type { i32 (...)** }
%class.DefibrillatorOnActionCompleteClass = type { i8 }
%class.ICollideable = type { i32 (...)** }
%"class.SourceMM::ISmmAPI" = type { i32 (...)** }
%"class.SourceMod::IShareSys" = type { i32 (...)** }

@_ZL25UNSPECIFIED_LOGGING_COLOR = internal global %class.Color zeroinitializer, align 4
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
@g_pExtensionIface = hidden global %class.SDKExtension* getelementptr inbounds (%class.DefibFix* @g_DefibFix, i32 0, i32 0), align 4
@ig_defib = hidden global i32 0, align 4
@ig_noob = hidden global i32 0, align 4
@playerhelpers = external global %"class.SourceMod::IPlayerManager"*
@g_pSM = external global %"class.SourceMod::ISourceMod"*
@myself = external global %"class.SourceMod::IExtension"*
@.str = private unnamed_addr constant [13 x i8] c"Dead %d [%s]\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"\D0\92\D1\8B\D0\B1\D1\80\D0\B0\D0\BD %d\00", align 1
@GetPlayerByCharacter_Actual = hidden global i8* (i32)* null, align 4
@.str5 = private unnamed_addr constant [28 x i8] c"\D0\92\D0\BE\D1\81\D0\BA\D1\80\D0\B5\D1\88\D0\B0\D0\B5\D1\82\D1\81\D1\8F %d\00", align 1
@gamehelpers = external global %"class.SourceMod::IGameHelpers"*
@.str6 = private unnamed_addr constant [13 x i8] c"\D0\9E\D1\88\D0\B8\D0\B1\D0\BA\D0\B0\00", align 1
@_ZN31DefibrillatorOnStartActionClass33DefibrillatorOnStartAction_ActualE = hidden global { i32, i32 } zeroinitializer, align 8
@.str7 = private unnamed_addr constant [40 x i8] c"\D0\9D\D0\B0\D1\87\D0\B0\D0\BB\D0\BE \D0\B4\D0\B5\D1\84\D0\B8\D0\B1\D1\80\D0\B8\D0\BB\D0\BB\D1\8F\D1\86\D0\B8\D0\B8\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"\D0\A2\D1\80\D1\83\D0\BF \D1\83\D0\B4\D0\B0\D0\BB\D1\8F\D0\B5\D1\82\D1\81\D1\8F\00", align 1
@engine = external global %class.IVEngineServer*
@_ZN34DefibrillatorOnActionCompleteClass36DefibrillatorOnActionComplete_ActualE = hidden global { i32, i32 } zeroinitializer, align 8
@.str9 = private unnamed_addr constant [46 x i8] c"\D0\9E\D0\BA\D0\BE\D0\BD\D1\87\D0\B0\D0\BD\D0\B8\D0\B5 \D0\B4\D0\B5\D1\84\D0\B8\D0\B1\D1\80\D0\B8\D0\BB\D0\BB\D1\8F\D1\86\D0\B8\D0\B8\00", align 1
@CSurvivorDeathModel__Create_Actual = hidden global %class.CBaseEntity* (%class.CBasePlayer*)* null, align 4
@.str10 = private unnamed_addr constant [17 x i8] c"VEngineServer022\00", align 1
@.str11 = private unnamed_addr constant [29 x i8] c"Could not find interface: %s\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"ServerGameEnts001\00", align 1
@gameconfs = external global %"class.SourceMod::IGameConfigManager"*
@.str13 = private unnamed_addr constant [9 x i8] c"defibfix\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"Could not read defibfix.txt: %s\00", align 1
@.str15 = private unnamed_addr constant [32 x i8] c"Cannot SetupHooks or GetOffset.\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"CBaseEntity::SetAbsOrigin\00", align 1
@.str17 = private unnamed_addr constant [21 x i8] c"GetPlayerByCharacter\00", align 1
@.str18 = private unnamed_addr constant [27 x i8] c"DefibrillatorOnStartAction\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"DefibrillatorOnActionComplete\00", align 1
@.str20 = private unnamed_addr constant [28 x i8] c"CSurvivorDeathModel::Create\00", align 1
@_ZTV8DefibFix = hidden unnamed_addr constant [61 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv to i8*), i8* bitcast (void (%class.DefibFix*)* @_ZN8DefibFixD2Ev to i8*), i8* bitcast (void (%class.DefibFix*)* @_ZN8DefibFixD0Ev to i8*), i8* bitcast (i1 (%class.SDKExtension*, i32, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)* @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb to i8*), i8* bitcast (void (%"class.SourceMM::ISmmPlugin"*)* @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv to i8*), i8* bitcast (i1 (%"class.SourceMM::ISmmPlugin"*, i8*, i32)* @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension6UnloadEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension5PauseEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension7UnpauseEPcj to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension9GetAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension7GetNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension14GetDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension6GetURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension10GetLicenseEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension10GetVersionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension7GetDateEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension9GetLogTagEv to i8*), i8* bitcast (i1 (%class.DefibFix*, i8*, i32, i1)* @_ZN8DefibFix10SDK_OnLoadEPcjb to i8*), i8* bitcast (void (%class.DefibFix*)* @_ZN8DefibFix12SDK_OnUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension15SDK_OnAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension17SDK_OnPauseChangeEb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv to i8*), i8* bitcast (i1 (%class.DefibFix*, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1)* @_ZN8DefibFix17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb to i8*), i8* bitcast (i1 (%class.SDKExtension*, i8*, i32)* @_ZN12SDKExtension19SDK_OnMetamodUnloadEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, i1, i8*, i32)* @_ZN12SDKExtension24SDK_OnMetamodPauseChangeEbPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZN12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnDependenciesDroppedEv to i8*), i8* inttoptr (i32 -4 to i8*), i8* null, i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZThn4_N12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZThn4_N12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %struct.edict_t*, i32, i32)* @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*)]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: inlinehint nounwind readnone
define linkonce_odr hidden void @_ZN8DefibFixD2Ev(%class.DefibFix* nocapture %this) unnamed_addr #0 align 2 {
  ret void
}

; Function Attrs: nounwind
define hidden i32 @_Z12HxPlayerDeadv() #1 {
  br label %1

; <label>:1                                       ; preds = %76, %0
  %iDead1.05 = phi i32 [ -1, %0 ], [ %iDead1.2, %76 ]
  %i.03 = phi i32 [ 1, %0 ], [ %77, %76 ]
  %iDead3.02 = phi i32 [ -1, %0 ], [ %iDead3.2, %76 ]
  %iDead2.01 = phi i32 [ -1, %0 ], [ %iDead2.2, %76 ]
  %2 = load %"class.SourceMod::IPlayerManager"** @playerhelpers, align 4
  %3 = bitcast %"class.SourceMod::IPlayerManager"* %2 to %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)***
  %4 = load %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)*** %3, align 4
  %5 = getelementptr inbounds %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)** %4, i32 5
  %6 = load %"class.SourceMod::IGamePlayer"* (%"class.SourceMod::IPlayerManager"*, i32)** %5, align 4
  %7 = tail call %"class.SourceMod::IGamePlayer"* %6(%"class.SourceMod::IPlayerManager"* %2, i32 %i.03) #2
  %8 = icmp eq %"class.SourceMod::IGamePlayer"* %7, null
  br i1 %8, label %76, label %9

; <label>:9                                       ; preds = %1
  %10 = bitcast %"class.SourceMod::IGamePlayer"* %7 to i1 (%"class.SourceMod::IGamePlayer"*)***
  %11 = load i1 (%"class.SourceMod::IGamePlayer"*)*** %10, align 4
  %12 = getelementptr inbounds i1 (%"class.SourceMod::IGamePlayer"*)** %11, i32 4
  %13 = load i1 (%"class.SourceMod::IGamePlayer"*)** %12, align 4
  %14 = tail call zeroext i1 %13(%"class.SourceMod::IGamePlayer"* %7) #2
  br i1 %14, label %15, label %76

; <label>:15                                      ; preds = %9
  %16 = bitcast %"class.SourceMod::IGamePlayer"* %7 to %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)***
  %17 = load %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)*** %16, align 4
  %18 = getelementptr inbounds %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)** %17, i32 11
  %19 = load %class.IPlayerInfo* (%"class.SourceMod::IGamePlayer"*)** %18, align 4
  %20 = tail call %class.IPlayerInfo* %19(%"class.SourceMod::IGamePlayer"* %7) #2
  %21 = icmp eq %class.IPlayerInfo* %20, null
  br i1 %21, label %76, label %22

; <label>:22                                      ; preds = %15
  %23 = bitcast %class.IPlayerInfo* %20 to i32 (%class.IPlayerInfo*)***
  %24 = load i32 (%class.IPlayerInfo*)*** %23, align 4
  %25 = getelementptr inbounds i32 (%class.IPlayerInfo*)** %24, i32 3
  %26 = load i32 (%class.IPlayerInfo*)** %25, align 4
  %27 = tail call i32 %26(%class.IPlayerInfo* %20) #2
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %76

; <label>:29                                      ; preds = %22
  %30 = bitcast %class.IPlayerInfo* %20 to i1 (%class.IPlayerInfo*)***
  %31 = load i1 (%class.IPlayerInfo*)*** %30, align 4
  %32 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %31, i32 14
  %33 = load i1 (%class.IPlayerInfo*)** %32, align 4
  %34 = tail call zeroext i1 %33(%class.IPlayerInfo* %20) #2
  br i1 %34, label %35, label %53

; <label>:35                                      ; preds = %29
  %36 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %37 = bitcast %"class.SourceMod::ISourceMod"* %36 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %38 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %37, align 4
  %39 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %38, i32 6
  %40 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %39, align 4
  %41 = load %"class.SourceMod::IExtension"** @myself, align 4
  %42 = bitcast %class.IPlayerInfo* %20 to i8* (%class.IPlayerInfo*)***
  %43 = load i8* (%class.IPlayerInfo*)*** %42, align 4
  %44 = load i8* (%class.IPlayerInfo*)** %43, align 4
  %45 = tail call i8* %44(%class.IPlayerInfo* %20) #2
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %40(%"class.SourceMod::ISourceMod"* %36, %"class.SourceMod::IExtension"* %41, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i32 %i.03, i8* %45) #2
  %46 = load i1 (%class.IPlayerInfo*)*** %30, align 4
  %47 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %46, i32 11
  %48 = load i1 (%class.IPlayerInfo*)** %47, align 4
  %49 = tail call zeroext i1 %48(%class.IPlayerInfo* %20) #2
  br i1 %49, label %53, label %50

; <label>:50                                      ; preds = %35
  %51 = load i32* @ig_noob, align 4
  %52 = icmp eq i32 %51, %i.03
  %iDead1.0.i.0 = select i1 %52, i32 %iDead1.05, i32 %i.03
  br label %53

; <label>:53                                      ; preds = %50, %35, %29
  %iDead2.1 = phi i32 [ %iDead2.01, %29 ], [ %iDead2.01, %35 ], [ %i.03, %50 ]
  %iDead3.1 = phi i32 [ %iDead3.02, %29 ], [ %i.03, %35 ], [ %iDead3.02, %50 ]
  %iDead1.1 = phi i32 [ %iDead1.05, %29 ], [ %iDead1.05, %35 ], [ %iDead1.0.i.0, %50 ]
  %54 = load i1 (%class.IPlayerInfo*)*** %30, align 4
  %55 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %54, i32 12
  %56 = load i1 (%class.IPlayerInfo*)** %55, align 4
  %57 = tail call zeroext i1 %56(%class.IPlayerInfo* %20) #2
  br i1 %57, label %58, label %76

; <label>:58                                      ; preds = %53
  %59 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %60 = bitcast %"class.SourceMod::ISourceMod"* %59 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %61 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %60, align 4
  %62 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %61, i32 6
  %63 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %62, align 4
  %64 = load %"class.SourceMod::IExtension"** @myself, align 4
  %65 = bitcast %class.IPlayerInfo* %20 to i8* (%class.IPlayerInfo*)***
  %66 = load i8* (%class.IPlayerInfo*)*** %65, align 4
  %67 = load i8* (%class.IPlayerInfo*)** %66, align 4
  %68 = tail call i8* %67(%class.IPlayerInfo* %20) #2
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %63(%"class.SourceMod::ISourceMod"* %59, %"class.SourceMod::IExtension"* %64, i8* getelementptr inbounds ([13 x i8]* @.str, i32 0, i32 0), i32 %i.03, i8* %68) #2
  %69 = load i1 (%class.IPlayerInfo*)*** %30, align 4
  %70 = getelementptr inbounds i1 (%class.IPlayerInfo*)** %69, i32 11
  %71 = load i1 (%class.IPlayerInfo*)** %70, align 4
  %72 = tail call zeroext i1 %71(%class.IPlayerInfo* %20) #2
  br i1 %72, label %76, label %73

; <label>:73                                      ; preds = %58
  %74 = load i32* @ig_noob, align 4
  %75 = icmp eq i32 %74, %i.03
  %iDead1.1.i.0 = select i1 %75, i32 %iDead1.1, i32 %i.03
  br label %76

; <label>:76                                      ; preds = %73, %58, %15, %1, %9, %22, %53
  %iDead2.2 = phi i32 [ %iDead2.1, %53 ], [ %iDead2.01, %22 ], [ %iDead2.01, %15 ], [ %iDead2.01, %9 ], [ %iDead2.01, %1 ], [ %iDead2.1, %58 ], [ %i.03, %73 ]
  %iDead3.2 = phi i32 [ %iDead3.1, %53 ], [ %iDead3.02, %22 ], [ %iDead3.02, %15 ], [ %iDead3.02, %9 ], [ %iDead3.02, %1 ], [ %i.03, %58 ], [ %iDead3.1, %73 ]
  %iDead1.2 = phi i32 [ %iDead1.1, %53 ], [ %iDead1.05, %22 ], [ %iDead1.05, %15 ], [ %iDead1.05, %9 ], [ %iDead1.05, %1 ], [ %iDead1.1, %58 ], [ %iDead1.1.i.0, %73 ]
  %77 = add nsw i32 %i.03, 1
  %exitcond = icmp eq i32 %77, 33
  br i1 %exitcond, label %78, label %1

; <label>:78                                      ; preds = %76
  %79 = icmp sgt i32 %iDead1.2, 0
  br i1 %79, label %80, label %87

; <label>:80                                      ; preds = %78
  %81 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %82 = bitcast %"class.SourceMod::ISourceMod"* %81 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %83 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %82, align 4
  %84 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %83, i32 6
  %85 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %84, align 4
  %86 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %85(%"class.SourceMod::ISourceMod"* %81, %"class.SourceMod::IExtension"* %86, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 %iDead1.2) #2
  br label %97

; <label>:87                                      ; preds = %78
  %88 = icmp sgt i32 %iDead2.2, 0
  %89 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %90 = bitcast %"class.SourceMod::ISourceMod"* %89 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %91 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %90, align 4
  %92 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %91, i32 6
  %93 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %92, align 4
  %94 = load %"class.SourceMod::IExtension"** @myself, align 4
  br i1 %88, label %95, label %96

; <label>:95                                      ; preds = %87
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %93(%"class.SourceMod::ISourceMod"* %89, %"class.SourceMod::IExtension"* %94, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 %iDead2.2) #2
  br label %97

; <label>:96                                      ; preds = %87
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %93(%"class.SourceMod::ISourceMod"* %89, %"class.SourceMod::IExtension"* %94, i8* getelementptr inbounds ([16 x i8]* @.str4, i32 0, i32 0), i32 %iDead3.2) #2
  br label %97

; <label>:97                                      ; preds = %96, %95, %80
  %.0 = phi i32 [ %iDead1.2, %80 ], [ %iDead2.2, %95 ], [ %iDead3.2, %96 ]
  ret i32 %.0
}

; Function Attrs: nounwind
define hidden i8* @_Z20GetPlayerByCharacteri(i32 %charaster) #1 {
  %1 = load i32* @ig_defib, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %27, label %3

; <label>:3                                       ; preds = %0
  store i32 0, i32* @ig_defib, align 4
  %4 = tail call i32 @_Z12HxPlayerDeadv()
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

; <label>:6                                       ; preds = %3
  store i32 %4, i32* @ig_noob, align 4
  %7 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %8 = bitcast %"class.SourceMod::ISourceMod"* %7 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %9 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %8, align 4
  %10 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %9, i32 6
  %11 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %10, align 4
  %12 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %11(%"class.SourceMod::ISourceMod"* %7, %"class.SourceMod::IExtension"* %12, i8* getelementptr inbounds ([28 x i8]* @.str5, i32 0, i32 0), i32 %4) #2
  %13 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %14 = bitcast %"class.SourceMod::IGameHelpers"* %13 to %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)***
  %15 = load %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)*** %14, align 4
  %16 = getelementptr inbounds %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)** %15, i32 17
  %17 = load %class.CBaseEntity* (%"class.SourceMod::IGameHelpers"*, i32)** %16, align 4
  %18 = tail call %class.CBaseEntity* %17(%"class.SourceMod::IGameHelpers"* %13, i32 %4) #2
  %19 = bitcast %class.CBaseEntity* %18 to i8*
  br label %30

; <label>:20                                      ; preds = %3
  %21 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %22 = bitcast %"class.SourceMod::ISourceMod"* %21 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %23 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %22, align 4
  %24 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %23, i32 6
  %25 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %24, align 4
  %26 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %25(%"class.SourceMod::ISourceMod"* %21, %"class.SourceMod::IExtension"* %26, i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) #2
  br label %30

; <label>:27                                      ; preds = %0
  %28 = load i8* (i32)** @GetPlayerByCharacter_Actual, align 4
  %29 = tail call i8* %28(i32 %charaster) #2
  br label %30

; <label>:30                                      ; preds = %27, %20, %6
  %.0 = phi i8* [ %19, %6 ], [ null, %20 ], [ %29, %27 ]
  ret i8* %.0
}

; Function Attrs: nounwind
define hidden i8* @_ZN31DefibrillatorOnStartActionClass26DefibrillatorOnStartActionEiPvS0_i(%class.DefibrillatorOnStartActionClass* %this, i32 %reserved, i8* %player, i8* %entity, i32 %reserved2) #1 align 2 {
  %1 = load %class.IServerGameEnts** @gameents, align 4
  %2 = bitcast %class.IServerGameEnts* %1 to %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)***
  %3 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)*** %2, align 4
  %4 = getelementptr inbounds %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %3, i32 4
  %5 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %4, align 4
  %6 = bitcast i8* %entity to %class.CBaseEntity*
  %7 = tail call %struct.edict_t* %5(%class.IServerGameEnts* %1, %class.CBaseEntity* %6) #2
  %8 = icmp eq %struct.edict_t* %7, null
  br i1 %8, label %30, label %9

; <label>:9                                       ; preds = %0
  %10 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %11 = bitcast %"class.SourceMod::ISourceMod"* %10 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %12 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %11, align 4
  %13 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %12, i32 6
  %14 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %13, align 4
  %15 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %14(%"class.SourceMod::ISourceMod"* %10, %"class.SourceMod::IExtension"* %15, i8* getelementptr inbounds ([40 x i8]* @.str7, i32 0, i32 0)) #2
  %16 = tail call i32 @_Z12HxPlayerDeadv()
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %30

; <label>:18                                      ; preds = %9
  %19 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %20 = bitcast %"class.SourceMod::ISourceMod"* %19 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %21 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %20, align 4
  %22 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %21, i32 6
  %23 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %22, align 4
  %24 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %23(%"class.SourceMod::ISourceMod"* %19, %"class.SourceMod::IExtension"* %24, i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0)) #2
  %25 = load %class.IVEngineServer** @engine, align 4
  %26 = bitcast %class.IVEngineServer* %25 to void (%class.IVEngineServer*, %struct.edict_t*)***
  %27 = load void (%class.IVEngineServer*, %struct.edict_t*)*** %26, align 4
  %28 = getelementptr inbounds void (%class.IVEngineServer*, %struct.edict_t*)** %27, i32 23
  %29 = load void (%class.IVEngineServer*, %struct.edict_t*)** %28, align 4
  tail call void %29(%class.IVEngineServer* %25, %struct.edict_t* %7) #2
  br label %30

; <label>:30                                      ; preds = %0, %9, %18
  %31 = load { i32, i32 }* @_ZN31DefibrillatorOnStartActionClass33DefibrillatorOnStartAction_ActualE, align 8
  %32 = extractvalue { i32, i32 } %31, 1
  %33 = getelementptr inbounds %class.DefibrillatorOnStartActionClass* %this, i32 %32, i32 0
  %34 = bitcast i8* %33 to %class.DefibrillatorOnStartActionClass*
  %35 = extractvalue { i32, i32 } %31, 0
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

; <label>:38                                      ; preds = %30
  %39 = bitcast i8* %33 to i8**
  %40 = load i8** %39, align 4
  %41 = add i32 %35, -1
  %42 = getelementptr i8* %40, i32 %41
  %43 = bitcast i8* %42 to i8* (%class.DefibrillatorOnStartActionClass*, i32, i8*, i8*, i32)**
  %44 = load i8* (%class.DefibrillatorOnStartActionClass*, i32, i8*, i8*, i32)** %43, align 4
  br label %47

; <label>:45                                      ; preds = %30
  %46 = inttoptr i32 %35 to i8* (%class.DefibrillatorOnStartActionClass*, i32, i8*, i8*, i32)*
  br label %47

; <label>:47                                      ; preds = %45, %38
  %48 = phi i8* (%class.DefibrillatorOnStartActionClass*, i32, i8*, i8*, i32)* [ %44, %38 ], [ %46, %45 ]
  %49 = tail call i8* %48(%class.DefibrillatorOnStartActionClass* %34, i32 %reserved, i8* %player, i8* %entity, i32 %reserved2) #2
  ret i8* %49
}

; Function Attrs: nounwind
define hidden i8* @_ZN34DefibrillatorOnActionCompleteClass29DefibrillatorOnActionCompleteEPvS0_(%class.DefibrillatorOnActionCompleteClass* %this, i8* %player, i8* %entity) #1 align 2 {
  %1 = load %class.IServerGameEnts** @gameents, align 4
  %2 = bitcast %class.IServerGameEnts* %1 to %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)***
  %3 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)*** %2, align 4
  %4 = getelementptr inbounds %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %3, i32 4
  %5 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %4, align 4
  %6 = bitcast i8* %entity to %class.CBaseEntity*
  %7 = tail call %struct.edict_t* %5(%class.IServerGameEnts* %1, %class.CBaseEntity* %6) #2
  %8 = icmp eq %struct.edict_t* %7, null
  br i1 %8, label %16, label %9

; <label>:9                                       ; preds = %0
  %10 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %11 = bitcast %"class.SourceMod::ISourceMod"* %10 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %12 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %11, align 4
  %13 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %12, i32 6
  %14 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %13, align 4
  %15 = load %"class.SourceMod::IExtension"** @myself, align 4
  tail call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %14(%"class.SourceMod::ISourceMod"* %10, %"class.SourceMod::IExtension"* %15, i8* getelementptr inbounds ([46 x i8]* @.str9, i32 0, i32 0)) #2
  store i32 1, i32* @ig_defib, align 4
  br label %16

; <label>:16                                      ; preds = %0, %9
  %17 = load { i32, i32 }* @_ZN34DefibrillatorOnActionCompleteClass36DefibrillatorOnActionComplete_ActualE, align 8
  %18 = extractvalue { i32, i32 } %17, 1
  %19 = getelementptr inbounds %class.DefibrillatorOnActionCompleteClass* %this, i32 %18, i32 0
  %20 = bitcast i8* %19 to %class.DefibrillatorOnActionCompleteClass*
  %21 = extractvalue { i32, i32 } %17, 0
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

; <label>:24                                      ; preds = %16
  %25 = bitcast i8* %19 to i8**
  %26 = load i8** %25, align 4
  %27 = add i32 %21, -1
  %28 = getelementptr i8* %26, i32 %27
  %29 = bitcast i8* %28 to i8* (%class.DefibrillatorOnActionCompleteClass*, i8*, i8*)**
  %30 = load i8* (%class.DefibrillatorOnActionCompleteClass*, i8*, i8*)** %29, align 4
  br label %33

; <label>:31                                      ; preds = %16
  %32 = inttoptr i32 %21 to i8* (%class.DefibrillatorOnActionCompleteClass*, i8*, i8*)*
  br label %33

; <label>:33                                      ; preds = %31, %24
  %34 = phi i8* (%class.DefibrillatorOnActionCompleteClass*, i8*, i8*)* [ %30, %24 ], [ %32, %31 ]
  %35 = tail call i8* %34(%class.DefibrillatorOnActionCompleteClass* %20, i8* %player, i8* %entity) #2
  ret i8* %35
}

; Function Attrs: nounwind
define hidden %class.CBaseEntity* @_Z27CSurvivorDeathModel__CreateP11CBasePlayer(%class.CBasePlayer* %bplayer) #1 {
  %PlayerOrigin = alloca %class.Vector, align 4
  %1 = load %class.IServerGameEnts** @gameents, align 4
  %2 = bitcast %class.IServerGameEnts* %1 to %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)***
  %3 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)*** %2, align 4
  %4 = getelementptr inbounds %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %3, i32 4
  %5 = load %struct.edict_t* (%class.IServerGameEnts*, %class.CBaseEntity*)** %4, align 4
  %6 = bitcast %class.CBasePlayer* %bplayer to %class.CBaseEntity*
  %7 = call %struct.edict_t* %5(%class.IServerGameEnts* %1, %class.CBaseEntity* %6) #2
  %8 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %9 = bitcast %"class.SourceMod::IGameHelpers"* %8 to i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)***
  %10 = load i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)*** %9, align 4
  %11 = getelementptr inbounds i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)** %10, i32 12
  %12 = load i32 (%"class.SourceMod::IGameHelpers"*, %struct.edict_t*)** %11, align 4
  %13 = call i32 %12(%"class.SourceMod::IGameHelpers"* %8, %struct.edict_t* %7) #2
  %14 = load %class.CBaseEntity* (%class.CBasePlayer*)** @CSurvivorDeathModel__Create_Actual, align 4
  %15 = call %class.CBaseEntity* %14(%class.CBasePlayer* %bplayer) #2
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %_ZN10CBaseEdict16GetIServerEntityEv.exit.i, label %33

_ZN10CBaseEdict16GetIServerEntityEv.exit.i:       ; preds = %0
  %17 = getelementptr inbounds %struct.edict_t* %7, i32 0, i32 0, i32 3
  %18 = load %class.IServerUnknown** %17, align 4
  %19 = bitcast %class.IServerUnknown* %18 to %class.ICollideable* (%class.IServerUnknown*)***
  %20 = load %class.ICollideable* (%class.IServerUnknown*)*** %19, align 4
  %21 = getelementptr inbounds %class.ICollideable* (%class.IServerUnknown*)** %20, i32 4
  %22 = load %class.ICollideable* (%class.IServerUnknown*)** %21, align 4
  %23 = call %class.ICollideable* %22(%class.IServerUnknown* %18) #2
  %24 = bitcast %class.ICollideable* %23 to %class.Vector* (%class.ICollideable*)***
  %25 = load %class.Vector* (%class.ICollideable*)*** %24, align 4
  %26 = getelementptr inbounds %class.Vector* (%class.ICollideable*)** %25, i32 8
  %27 = load %class.Vector* (%class.ICollideable*)** %26, align 4
  %28 = call %class.Vector* %27(%class.ICollideable* %23) #2
  %29 = bitcast %class.Vector* %PlayerOrigin to i8*
  %30 = bitcast %class.Vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 12, i32 4, i1 false)
  %31 = load i8* (%class.CBaseEntity*, %class.Vector*)** @CBaseEntity__SetAbsOrigin, align 4
  %32 = call i8* %31(%class.CBaseEntity* %15, %class.Vector* %PlayerOrigin) #2
  br label %33

; <label>:33                                      ; preds = %_ZN10CBaseEdict16GetIServerEntityEv.exit.i, %0
  ret %class.CBaseEntity* %15
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN8DefibFix17SDK_OnMetamodLoadEPN8SourceMM7ISmmAPIEPcjb(%class.DefibFix* nocapture readnone %this, %"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %1 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)***
  %2 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %1, align 4
  %3 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %2, i32 19
  %4 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %3, align 4
  %5 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %2, i32 1
  %6 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %5, align 4
  %7 = bitcast i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)* %6 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*
  %8 = tail call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %7(%"class.SourceMM::ISmmAPI"* %ismm, i1 zeroext true) #2
  %9 = tail call i8* %4(%"class.SourceMM::ISmmAPI"* %ismm, i8* (i8*, i32*)* %8, i8* getelementptr inbounds ([17 x i8]* @.str10, i32 0, i32 0), i32 -1) #2
  %10 = bitcast i8* %9 to %class.IVEngineServer*
  store %class.IVEngineServer* %10, %class.IVEngineServer** @engine, align 4
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %21

; <label>:12                                      ; preds = %0
  %13 = icmp ne i8* %error, null
  %14 = icmp ne i32 %maxlength, 0
  %or.cond = and i1 %13, %14
  br i1 %or.cond, label %15, label %41

; <label>:15                                      ; preds = %12
  %16 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %17 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %16, align 4
  %18 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %17, i32 28
  %19 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %18, align 4
  %20 = tail call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %19(%"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str10, i32 0, i32 0)) #2
  br label %41

; <label>:21                                      ; preds = %0
  %22 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)*** %1, align 4
  %23 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %22, i32 19
  %24 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %23, align 4
  %25 = getelementptr inbounds i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %22, i32 4
  %26 = load i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)** %25, align 4
  %27 = bitcast i8* (%"class.SourceMM::ISmmAPI"*, i8* (i8*, i32*)*, i8*, i32)* %26 to i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)*
  %28 = tail call i8* (i8*, i32*)* (%"class.SourceMM::ISmmAPI"*, i1)* %27(%"class.SourceMM::ISmmAPI"* %ismm, i1 zeroext true) #2
  %29 = tail call i8* %24(%"class.SourceMM::ISmmAPI"* %ismm, i8* (i8*, i32*)* %28, i8* getelementptr inbounds ([18 x i8]* @.str12, i32 0, i32 0), i32 0) #2
  %30 = bitcast i8* %29 to %class.IServerGameEnts*
  store %class.IServerGameEnts* %30, %class.IServerGameEnts** @gameents, align 4
  %31 = icmp eq i8* %29, null
  br i1 %31, label %32, label %41

; <label>:32                                      ; preds = %21
  %33 = icmp ne i8* %error, null
  %34 = icmp ne i32 %maxlength, 0
  %or.cond3 = and i1 %33, %34
  br i1 %or.cond3, label %35, label %41

; <label>:35                                      ; preds = %32
  %36 = bitcast %"class.SourceMM::ISmmAPI"* %ismm to i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)***
  %37 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)*** %36, align 4
  %38 = getelementptr inbounds i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %37, i32 28
  %39 = load i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)** %38, align 4
  %40 = tail call i32 (%"class.SourceMM::ISmmAPI"*, i8*, i32, i8*, ...)* %39(%"class.SourceMM::ISmmAPI"* %ismm, i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str12, i32 0, i32 0)) #2
  br label %41

; <label>:41                                      ; preds = %21, %32, %35, %12, %15
  %.0 = phi i1 [ false, %15 ], [ false, %12 ], [ false, %35 ], [ false, %32 ], [ true, %21 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN8DefibFix10SDK_OnLoadEPcjb(%class.DefibFix* nocapture readnone %this, i8* nocapture %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #1 align 2 {
  %conf_error = alloca [255 x i8], align 1
  store i32 0, i32* @ig_defib, align 4
  store i32 0, i32* @ig_noob, align 4
  %1 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %2 = bitcast %"class.SourceMod::IGameConfigManager"* %1 to i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)***
  %3 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)*** %2, align 4
  %4 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %3, i32 3
  %5 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %4, align 4
  %6 = getelementptr inbounds [255 x i8]* %conf_error, i32 0, i32 0
  %7 = call zeroext i1 %5(%"class.SourceMod::IGameConfigManager"* %1, i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0), %"class.SourceMod::IGameConfig"** @g_pGameConf, i8* %6, i32 255) #2
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([32 x i8]* @.str14, i32 0, i32 0), i8* %6) #2
  br label %14

; <label>:10                                      ; preds = %0
  %11 = call zeroext i1 @_ZN8DefibFix10SetupHooksEv(%class.DefibFix* %this)
  br i1 %11, label %14, label %12

; <label>:12                                      ; preds = %10
  %13 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([32 x i8]* @.str15, i32 0, i32 0)) #2
  br label %14

; <label>:14                                      ; preds = %10, %12, %8
  %.0 = phi i1 [ false, %12 ], [ false, %8 ], [ true, %10 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i32, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN8DefibFix10SetupHooksEv(%class.DefibFix* nocapture readnone %this) #1 align 2 {
  %1 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %2 = bitcast %"class.SourceMod::ISourceMod"* %1 to %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)***
  %3 = load %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)*** %2, align 4
  %4 = getelementptr inbounds %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)** %3, i32 14
  %5 = load %"class.SourcePawn::ISourcePawnEngine"* (%"class.SourceMod::ISourceMod"*)** %4, align 4
  %6 = tail call %"class.SourcePawn::ISourcePawnEngine"* %5(%"class.SourceMod::ISourceMod"* %1) #2
  %7 = load %"class.SourceMod::IGameConfig"** @g_pGameConf, align 4
  tail call void @_ZN14CDetourManager4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%"class.SourcePawn::ISourcePawnEngine"* %6, %"class.SourceMod::IGameConfig"* %7) #2
  %8 = load %"class.SourceMod::IGameConfig"** @g_pGameConf, align 4
  %9 = bitcast %"class.SourceMod::IGameConfig"* %8 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %10 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %9, align 4
  %11 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %10, i32 3
  %12 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %11, align 4
  %13 = tail call zeroext i1 %12(%"class.SourceMod::IGameConfig"* %8, i8* getelementptr inbounds ([26 x i8]* @.str16, i32 0, i32 0), i8** bitcast (i8* (%class.CBaseEntity*, %class.Vector*)** @CBaseEntity__SetAbsOrigin to i8**)) #2
  %14 = tail call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* bitcast (i8* (i32)* @_Z20GetPlayerByCharacteri to i8*), i8** bitcast (i8* (i32)** @GetPlayerByCharacter_Actual to i8**), i8* getelementptr inbounds ([21 x i8]* @.str17, i32 0, i32 0)) #2
  store %class.CDetour* %14, %class.CDetour** @hg_getPlayer, align 4
  %15 = tail call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* bitcast (i8* (%class.DefibrillatorOnStartActionClass*, i32, i8*, i8*, i32)* @_ZN31DefibrillatorOnStartActionClass26DefibrillatorOnStartActionEiPvS0_i to i8*), i8** bitcast ({ i32, i32 }* @_ZN31DefibrillatorOnStartActionClass33DefibrillatorOnStartAction_ActualE to i8**), i8* getelementptr inbounds ([27 x i8]* @.str18, i32 0, i32 0)) #2
  store %class.CDetour* %15, %class.CDetour** @hg_defibStart, align 4
  %16 = tail call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* bitcast (i8* (%class.DefibrillatorOnActionCompleteClass*, i8*, i8*)* @_ZN34DefibrillatorOnActionCompleteClass29DefibrillatorOnActionCompleteEPvS0_ to i8*), i8** bitcast ({ i32, i32 }* @_ZN34DefibrillatorOnActionCompleteClass36DefibrillatorOnActionComplete_ActualE to i8**), i8* getelementptr inbounds ([30 x i8]* @.str19, i32 0, i32 0)) #2
  store %class.CDetour* %16, %class.CDetour** @hg_defibEnd, align 4
  %17 = tail call %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8* bitcast (%class.CBaseEntity* (%class.CBasePlayer*)* @_Z27CSurvivorDeathModel__CreateP11CBasePlayer to i8*), i8** bitcast (%class.CBaseEntity* (%class.CBasePlayer*)** @CSurvivorDeathModel__Create_Actual to i8**), i8* getelementptr inbounds ([28 x i8]* @.str20, i32 0, i32 0)) #2
  store %class.CDetour* %17, %class.CDetour** @hg_deadPlayer, align 4
  %18 = load %class.CDetour** @hg_getPlayer, align 4
  %19 = icmp ne %class.CDetour* %18, null
  %20 = load %class.CDetour** @hg_defibStart, align 4
  %21 = icmp ne %class.CDetour* %20, null
  %or.cond = and i1 %19, %21
  %22 = load %class.CDetour** @hg_defibEnd, align 4
  %23 = icmp ne %class.CDetour* %22, null
  %or.cond3 = and i1 %or.cond, %23
  %24 = icmp ne %class.CDetour* %17, null
  %or.cond5 = and i1 %or.cond3, %24
  %25 = load i8* (%class.CBaseEntity*, %class.Vector*)** @CBaseEntity__SetAbsOrigin, align 4
  %26 = icmp ne i8* (%class.CBaseEntity*, %class.Vector*)* %25, null
  %or.cond7 = and i1 %or.cond5, %26
  br i1 %or.cond7, label %27, label %31

; <label>:27                                      ; preds = %0
  tail call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %18) #2
  %28 = load %class.CDetour** @hg_defibStart, align 4
  tail call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %28) #2
  %29 = load %class.CDetour** @hg_defibEnd, align 4
  tail call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %29) #2
  %30 = load %class.CDetour** @hg_deadPlayer, align 4
  tail call void @_ZN7CDetour12EnableDetourEv(%class.CDetour* %30) #2
  br label %_ZN8DefibFix11RemoveHooksEv.exit

; <label>:31                                      ; preds = %0
  %32 = icmp eq %class.CDetour* %18, null
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %31
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %18) #2
  store %class.CDetour* null, %class.CDetour** @hg_getPlayer, align 4
  %.pre = load %class.CDetour** @hg_defibStart, align 4
  br label %34

; <label>:34                                      ; preds = %33, %31
  %35 = phi %class.CDetour* [ %.pre, %33 ], [ %20, %31 ]
  %36 = icmp eq %class.CDetour* %35, null
  br i1 %36, label %38, label %37

; <label>:37                                      ; preds = %34
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %35) #2
  store %class.CDetour* null, %class.CDetour** @hg_defibStart, align 4
  br label %38

; <label>:38                                      ; preds = %37, %34
  %39 = load %class.CDetour** @hg_defibEnd, align 4
  %40 = icmp eq %class.CDetour* %39, null
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %38
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %39) #2
  store %class.CDetour* null, %class.CDetour** @hg_defibEnd, align 4
  br label %42

; <label>:42                                      ; preds = %41, %38
  %43 = load %class.CDetour** @hg_deadPlayer, align 4
  %44 = icmp eq %class.CDetour* %43, null
  br i1 %44, label %_ZN8DefibFix11RemoveHooksEv.exit, label %45

; <label>:45                                      ; preds = %42
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %43) #2
  store %class.CDetour* null, %class.CDetour** @hg_deadPlayer, align 4
  br label %_ZN8DefibFix11RemoveHooksEv.exit

_ZN8DefibFix11RemoveHooksEv.exit:                 ; preds = %45, %42, %27
  %.0 = phi i1 [ true, %27 ], [ false, %42 ], [ false, %45 ]
  ret i1 %.0
}

; Function Attrs: nounwind
define hidden void @_ZN8DefibFix12SDK_OnUnloadEv(%class.DefibFix* nocapture readnone %this) unnamed_addr #1 align 2 {
  %1 = load %class.CDetour** @hg_getPlayer, align 4
  %2 = icmp eq %class.CDetour* %1, null
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %1) #2
  store %class.CDetour* null, %class.CDetour** @hg_getPlayer, align 4
  br label %4

; <label>:4                                       ; preds = %3, %0
  %5 = load %class.CDetour** @hg_defibStart, align 4
  %6 = icmp eq %class.CDetour* %5, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %4
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %5) #2
  store %class.CDetour* null, %class.CDetour** @hg_defibStart, align 4
  br label %8

; <label>:8                                       ; preds = %7, %4
  %9 = load %class.CDetour** @hg_defibEnd, align 4
  %10 = icmp eq %class.CDetour* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %8
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %9) #2
  store %class.CDetour* null, %class.CDetour** @hg_defibEnd, align 4
  br label %12

; <label>:12                                      ; preds = %11, %8
  %13 = load %class.CDetour** @hg_deadPlayer, align 4
  %14 = icmp eq %class.CDetour* %13, null
  br i1 %14, label %_ZN8DefibFix11RemoveHooksEv.exit, label %15

; <label>:15                                      ; preds = %12
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %13) #2
  store %class.CDetour* null, %class.CDetour** @hg_deadPlayer, align 4
  br label %_ZN8DefibFix11RemoveHooksEv.exit

_ZN8DefibFix11RemoveHooksEv.exit:                 ; preds = %12, %15
  %16 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %17 = bitcast %"class.SourceMod::IGameConfigManager"* %16 to void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)***
  %18 = load void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)*** %17, align 4
  %19 = getelementptr inbounds void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)** %18, i32 4
  %20 = load void (%"class.SourceMod::IGameConfigManager"*, %"class.SourceMod::IGameConfig"*)** %19, align 4
  %21 = load %"class.SourceMod::IGameConfig"** @g_pGameConf, align 4
  tail call void %20(%"class.SourceMod::IGameConfigManager"* %16, %"class.SourceMod::IGameConfig"* %21) #2
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN8DefibFix11RemoveHooksEv(%class.DefibFix* nocapture readnone %this) #1 align 2 {
  %1 = load %class.CDetour** @hg_getPlayer, align 4
  %2 = icmp eq %class.CDetour* %1, null
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %1) #2
  store %class.CDetour* null, %class.CDetour** @hg_getPlayer, align 4
  br label %4

; <label>:4                                       ; preds = %0, %3
  %5 = load %class.CDetour** @hg_defibStart, align 4
  %6 = icmp eq %class.CDetour* %5, null
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %4
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %5) #2
  store %class.CDetour* null, %class.CDetour** @hg_defibStart, align 4
  br label %8

; <label>:8                                       ; preds = %4, %7
  %9 = load %class.CDetour** @hg_defibEnd, align 4
  %10 = icmp eq %class.CDetour* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %8
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %9) #2
  store %class.CDetour* null, %class.CDetour** @hg_defibEnd, align 4
  br label %12

; <label>:12                                      ; preds = %8, %11
  %13 = load %class.CDetour** @hg_deadPlayer, align 4
  %14 = icmp eq %class.CDetour* %13, null
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %12
  tail call void @_ZN7CDetour7DestroyEv(%class.CDetour* %13) #2
  store %class.CDetour* null, %class.CDetour** @hg_deadPlayer, align 4
  br label %16

; <label>:16                                      ; preds = %12, %15
  ret void
}

declare void @_ZN14CDetourManager4InitEPN10SourcePawn17ISourcePawnEngineEPN9SourceMod11IGameConfigE(%"class.SourcePawn::ISourcePawnEngine"*, %"class.SourceMod::IGameConfig"*) #3

declare %class.CDetour* @_ZN14CDetourManager12CreateDetourEPvPS0_PKc(i8*, i8**, i8*) #3

declare void @_ZN7CDetour12EnableDetourEv(%class.CDetour*) #3

declare void @_ZN7CDetour7DestroyEv(%class.CDetour*) #3

; Function Attrs: nounwind readnone
define linkonce_odr hidden i32 @_ZN8SourceMM10ISmmPlugin13GetApiVersionEv(%"class.SourceMM::ISmmPlugin"* nocapture readnone %this) unnamed_addr #4 align 2 {
  ret i32 15
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN8DefibFixD0Ev(%class.DefibFix* %this) unnamed_addr #5 align 2 {
  %1 = bitcast %class.DefibFix* %this to i8*
  tail call void @_ZdlPv(i8* %1) #7
  ret void
}

declare zeroext i1 @_ZN12SDKExtension4LoadEiPN8SourceMM7ISmmAPIEPcjb(%class.SDKExtension*, i32, %"class.SourceMM::ISmmAPI"*, i8*, i32, i1 zeroext) #3

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN8SourceMM10ISmmPlugin16AllPluginsLoadedEv(%"class.SourceMM::ISmmPlugin"* nocapture %this) unnamed_addr #4 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN8SourceMM10ISmmPlugin12QueryRunningEPcj(%"class.SourceMM::ISmmPlugin"* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlen) unnamed_addr #4 align 2 {
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

; Function Attrs: nounwind readnone
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this) unnamed_addr #4 align 2 {
  ret i32 8
}

declare zeroext i1 @_ZThn4_N12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1 zeroext) #3

declare void @_ZThn4_N12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension*) #3

declare void @_ZThn4_N12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension*) #3

declare void @_ZThn4_N12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension*, i1 zeroext) #3

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, %"class.SourceMod::SMInterface"* nocapture readnone %pInterface) unnamed_addr #4 align 2 {
  ret i1 false
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture %this, %"class.SourceMod::SMInterface"* nocapture %pInterface) unnamed_addr #4 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlength) unnamed_addr #4 align 2 {
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

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface14OnCoreMapStartEP7edict_tii(%"class.SourceMod::IExtensionInterface"* nocapture %this, %struct.edict_t* nocapture %pEdictList, i32 %edictCount, i32 %clientMax) unnamed_addr #4 align 2 {
  ret void
}

declare void @_ZThn4_N12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension*) #3

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* nocapture %this) unnamed_addr #4 align 2 {
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #6

declare void @_ZN12SDKExtensionC2Ev(%class.SDKExtension*) #3

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #2 section ".text.startup" {
  store i32 0, i32* bitcast (%class.Color* @_ZL25UNSPECIFIED_LOGGING_COLOR to i32*), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%class.Vector2D* @_ZL11vec2_origin, i32 0, i32 0), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%class.Vector2D* @_ZL11vec2_origin, i32 0, i32 1), align 4
  store float 0x47EFFFFFE0000000, float* getelementptr inbounds (%class.Vector2D* @_ZL12vec2_invalid, i32 0, i32 0), align 4
  store float 0x47EFFFFFE0000000, float* getelementptr inbounds (%class.Vector2D* @_ZL12vec2_invalid, i32 0, i32 1), align 4
  tail call void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* getelementptr inbounds (%class.DefibFix* @g_DefibFix, i32 0, i32 0)) #2
  store i32 (...)** bitcast (i8** getelementptr inbounds ([61 x i8*]* @_ZTV8DefibFix, i32 0, i32 2) to i32 (...)**), i32 (...)*** getelementptr inbounds (%class.DefibFix* @g_DefibFix, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 (...)** bitcast (i8** getelementptr inbounds ([61 x i8*]* @_ZTV8DefibFix, i32 0, i32 42) to i32 (...)**), i32 (...)*** getelementptr inbounds (%class.DefibFix* @g_DefibFix, i32 0, i32 0, i32 1, i32 0), align 4
  ret void
}

attributes #0 = { inlinehint nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
