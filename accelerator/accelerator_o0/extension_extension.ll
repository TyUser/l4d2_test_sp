; ModuleID = '/home/imac/alliedmodders/accelerator/extension/extension.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.Accelerator = type { %class.SDKExtension }
%class.SDKExtension = type { %"class.SourceMod::IExtensionInterface" }
%"class.SourceMod::IExtensionInterface" = type { i32 (...)** }
%"class.SourceMod::IWebternet" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::SMInterface" = type { i32 (...)** }
%"class.SourceMod::IGameConfig" = type { i32 (...)** }
%"class.google_breakpad::ExceptionHandler" = type { i1 (i8*)*, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)*, i8*, %"class.google_breakpad::scoped_ptr", %"class.google_breakpad::MinidumpDescriptor", i1 (i8*, i32, i8*)*, [2 x i32], %"class.std::list", %"class.std::list.3" }
%"class.google_breakpad::scoped_ptr" = type { %"class.google_breakpad::CrashGenerationClient"* }
%"class.google_breakpad::CrashGenerationClient" = type { i32 (...)** }
%"class.google_breakpad::MinidumpDescriptor" = type { i32, i32, %"class.std::basic_string", %"class.std::basic_string", i8*, i32, i32, i8, i8, %"struct.google_breakpad::MicrodumpExtraInfo" }
%"class.std::basic_string" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%"struct.google_breakpad::MicrodumpExtraInfo" = type { i8*, i8*, i8*, i8* }
%"class.std::list" = type { %"class.std::_List_base" }
%"class.std::_List_base" = type { %"struct.std::_List_base<google_breakpad::MappingEntry, std::allocator<google_breakpad::MappingEntry> >::_List_impl" }
%"struct.std::_List_base<google_breakpad::MappingEntry, std::allocator<google_breakpad::MappingEntry> >::_List_impl" = type { %"struct.std::__detail::_List_node_base" }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"class.std::list.3" = type { %"class.std::_List_base.4" }
%"class.std::_List_base.4" = type { %"struct.std::_List_base<google_breakpad::AppMemory, std::allocator<google_breakpad::AppMemory> >::_List_impl" }
%"struct.std::_List_base<google_breakpad::AppMemory, std::allocator<google_breakpad::AppMemory> >::_List_impl" = type { %"struct.std::__detail::_List_node_base" }
%struct.siginfo_t = type { i32, i32, i32, %union.anon }
%union.anon = type { [29 x i32] }
%"class.SourceMod::ISourceMod" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::ILibrarySys" = type { %"class.SourceMod::SMInterface" }
%class.UploadThread = type { %"class.SourceMod::IThread" }
%"class.SourceMod::IThread" = type { i32 (...)** }
%"class.SourceMod::IGameHelpers" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IShareSys" = type { i32 (...)** }
%"class.SourceMod::IExtension" = type { i32 (...)** }
%"class.SourceMod::IThreader" = type { %"class.SourceMod::SMInterface", %"class.SourceMod::IThreadCreator" }
%"class.SourceMod::IThreadCreator" = type { i32 (...)** }
%"class.SourceMod::IGameConfigManager" = type { %"class.SourceMod::SMInterface" }
%"class.SourceMod::IRootConsole" = type { %"class.SourceMod::SMInterface" }
%struct.sigaction = type { %union.anon.14, %struct.__sigset_t, i32, void ()* }
%union.anon.14 = type { void (i32)* }
%struct.__sigset_t = type { [32 x i32] }
%"class.SourceMod::IWebForm" = type { i32 (...)** }
%"class.SourceMod::MemoryDownloader" = type { %"class.SourceMod::ITransferHandler", i8*, i32, i32 }
%"class.SourceMod::ITransferHandler" = type { i32 (...)** }
%"class.SourceMod::IWebTransfer" = type { i32 (...)** }
%union.anon.15 = type { { i32, i32 } }
%class.ICommandLine = type opaque
%struct.anon.16 = type { i8*, i32 }
%class.VFuncEmptyClass = type { i8 }
%"class.std::allocator" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.edict_t = type opaque
%"class.SourceMod::IThreadHandle" = type { i32 (...)** }
%"class.SourceMod::IDirectory" = type { i32 (...)** }

@g_accelerator = hidden global %class.Accelerator zeroinitializer, align 4
@g_pExtensionIface = hidden global %class.SDKExtension* getelementptr inbounds (%class.Accelerator* @g_accelerator, i32 0, i32 0), align 4
@webternet = hidden global %"class.SourceMod::IWebternet"* null, align 4
@gameconfig = hidden global %"class.SourceMod::IGameConfig"* null, align 4
@GetSpew = hidden global void (i8*, i32)* null, align 4
@spewBuffer = hidden global [65536 x i8] zeroinitializer, align 1
@crashMap = hidden global [256 x i8] zeroinitializer, align 1
@crashGamePath = hidden global [512 x i8] zeroinitializer, align 1
@crashCommandLine = hidden global [1024 x i8] zeroinitializer, align 1
@crashSourceModPath = hidden global [512 x i8] zeroinitializer, align 1
@crashGameDirectory = hidden global [256 x i8] zeroinitializer, align 1
@steamInf = hidden global [1024 x i8] zeroinitializer, align 1
@dumpStoragePath = hidden global [512 x i8] zeroinitializer, align 1
@logPath = hidden global [512 x i8] zeroinitializer, align 1
@handler = hidden global %"class.google_breakpad::ExceptionHandler"* null, align 4
@SignalHandler = hidden global void (i32, %struct.siginfo_t*, i8*)* null, align 4
@_ZL17kExceptionSignals = internal constant [5 x i32] [i32 11, i32 6, i32 8, i32 4, i32 7], align 4
@g_pSM = external global %"class.SourceMod::ISourceMod"*
@.str = private unnamed_addr constant [16 x i8] c"MinidumpAccount\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"UserID\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"GameDirectory\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"ExtensionVersion\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"2.3.3\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"upload_file_minidump\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"%s.txt\00", align 1
@libsys = external global %"class.SourceMod::ILibrarySys"*
@.str7 = private unnamed_addr constant [21 x i8] c"upload_file_metadata\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"MinidumpUrl\00", align 1
@.str9 = private unnamed_addr constant [33 x i8] c"http://crash.limetech.org/submit\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@uploadThread = hidden global %class.UploadThread zeroinitializer, align 4
@__dso_handle = external global i8
@_ZZ10GetCmdLinevE16getCmdLineOffset = internal global i32 0, align 4
@.str12 = private unnamed_addr constant [11 x i8] c"GetCmdLine\00", align 1
@.str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gamehelpers = external global %"class.SourceMod::IGameHelpers"*
@sharesys = external global %"class.SourceMod::IShareSys"*
@myself = external global %"class.SourceMod::IExtension"*
@.str14 = private unnamed_addr constant [14 x i8] c"webternet.ext\00", align 1
@g_pShareSys = external global %"class.SourceMod::IShareSys"*
@.str15 = private unnamed_addr constant [11 x i8] c"IWebternet\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"Could not find interface: %s\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"data/dumps\00", align 1
@.str18 = private unnamed_addr constant [45 x i8] c"%s didn't exist and we couldn't create it :(\00", align 1
@.str19 = private unnamed_addr constant [21 x i8] c"logs/accelerator.log\00", align 1
@threader = external global %"class.SourceMod::IThreader"*
@gameconfs = external global %"class.SourceMod::IGameConfigManager"*
@.str20 = private unnamed_addr constant [18 x i8] c"accelerator.games\00", align 1
@smutils = external global %"class.SourceMod::ISourceMod"*
@.str21 = private unnamed_addr constant [113 x i8] c"WARNING: Failed to load gamedata file, console output and command line will not be included in crash reports: %s\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"GetSpew\00", align 1
@.str23 = private unnamed_addr constant [94 x i8] c"WARNING: GetSpew not found in gamedata, console output will not be included in crash reports.\00", align 1
@.str24 = private unnamed_addr constant [91 x i8] c"WARNING: Sigscan for GetSpew failed, console output will not be included in crash reports.\00", align 1
@.str25 = private unnamed_addr constant [10 x i8] c"steam.inf\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str27 = private unnamed_addr constant [34 x i8] c"Accelerator failed read steam.inf\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"\0ASteam_\00", align 1
@_ZTV11Accelerator = hidden unnamed_addr constant [26 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11Accelerator to i8*), i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZN12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%class.Accelerator*, %struct.edict_t*, i32, i32)* @_ZN11Accelerator14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*), i8* bitcast (i1 (%class.Accelerator*, i8*, i32, i1)* @_ZN11Accelerator10SDK_OnLoadEPcjb to i8*), i8* bitcast (void (%class.Accelerator*)* @_ZN11Accelerator12SDK_OnUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension15SDK_OnAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension17SDK_OnPauseChangeEb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS11Accelerator = hidden constant [14 x i8] c"11Accelerator\00"
@_ZTI12SDKExtension = external constant i8*
@_ZTI11Accelerator = hidden unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8]* @_ZTS11Accelerator, i32 0, i32 0), i8* bitcast (i8** @_ZTI12SDKExtension to i8*) }
@.str29 = private unnamed_addr constant [20 x i8] c"Wrote minidump to: \00", align 1
@.str30 = private unnamed_addr constant [30 x i8] c"Failed to write minidump to: \00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str33 = private unnamed_addr constant [31 x i8] c"Failed to open metadata file!\0A\00", align 1
@.str34 = private unnamed_addr constant [31 x i8] c"-------- CONFIG BEGIN --------\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"\0AMap=\00", align 1
@.str36 = private unnamed_addr constant [11 x i8] c"\0AGamePath=\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"\0ACommandLine=\00", align 1
@.str38 = private unnamed_addr constant [16 x i8] c"\0ASourceModPath=\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"\0AGameDirectory=\00", align 1
@.str40 = private unnamed_addr constant [19 x i8] c"\0AExtensionVersion=\00", align 1
@.str41 = private unnamed_addr constant [17 x i8] c"\0AExtensionBuild=\00", align 1
@.str42 = private unnamed_addr constant [11 x i8] c"97:f8ef2b6\00", align 1
@.str43 = private unnamed_addr constant [31 x i8] c"\0A-------- CONFIG END --------\0A\00", align 1
@.str44 = private unnamed_addr constant [41 x i8] c"-------- CONSOLE HISTORY BEGIN --------\0A\00", align 1
@.str45 = private unnamed_addr constant [39 x i8] c"-------- CONSOLE HISTORY END --------\0A\00", align 1
@_ZTV12UploadThread = linkonce_odr hidden unnamed_addr constant [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12UploadThread to i8*), i8* bitcast (void (%class.UploadThread*)* @_ZN12UploadThreadD2Ev to i8*), i8* bitcast (void (%class.UploadThread*)* @_ZN12UploadThreadD0Ev to i8*), i8* bitcast (void (%class.UploadThread*, %"class.SourceMod::IThreadHandle"*)* @_ZN12UploadThread9RunThreadEPN9SourceMod13IThreadHandleE to i8*), i8* bitcast (void (%class.UploadThread*, %"class.SourceMod::IThreadHandle"*, i1)* @_ZN12UploadThread11OnTerminateEPN9SourceMod13IThreadHandleEb to i8*)]
@_ZTS12UploadThread = linkonce_odr hidden constant [15 x i8] c"12UploadThread\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN9SourceMod7IThreadE = linkonce_odr hidden constant [21 x i8] c"N9SourceMod7IThreadE\00"
@_ZTIN9SourceMod7IThreadE = linkonce_odr hidden unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([21 x i8]* @_ZTSN9SourceMod7IThreadE, i32 0, i32 0) }
@_ZTI12UploadThread = linkonce_odr hidden unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8]* @_ZTS12UploadThread, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN9SourceMod7IThreadE to i8*) }
@rootconsole = external global %"class.SourceMod::IRootConsole"*
@.str46 = private unnamed_addr constant [54 x i8] c"Accelerator upload thread terminated. (canceled = %s)\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str48 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str49 = private unnamed_addr constant [35 x i8] c"Accelerator upload thread started.\00", align 1
@.str50 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str51 = private unnamed_addr constant [40 x i8] c"Failed to open Accelerator log file: %s\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c".dmp\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str54 = private unnamed_addr constant [36 x i8] c"Accelerator uploaded crash dump: %s\00", align 1
@.str55 = private unnamed_addr constant [25 x i8] c"Uploaded crash dump: %s\0A\00", align 1
@.str56 = private unnamed_addr constant [44 x i8] c"Accelerator failed to upload crash dump: %s\00", align 1
@.str57 = private unnamed_addr constant [33 x i8] c"Failed to upload crash dump: %s\0A\00", align 1
@.str58 = private unnamed_addr constant [61 x i8] c"Accelerator upload thread finished. (%d uploaded, %d failed)\00", align 1
@_ZTVN9SourceMod7IThreadE = linkonce_odr hidden unnamed_addr constant [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN9SourceMod7IThreadE to i8*), i8* bitcast (void (%"class.SourceMod::IThread"*)* @_ZN9SourceMod7IThreadD2Ev to i8*), i8* bitcast (void (%"class.SourceMod::IThread"*)* @_ZN9SourceMod7IThreadD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZN11AcceleratorC2Ev(%class.Accelerator* @g_accelerator)
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN11AcceleratorC2Ev(%class.Accelerator* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.Accelerator*, align 4
  store %class.Accelerator* %this, %class.Accelerator** %1, align 4
  %2 = load %class.Accelerator** %1
  %3 = bitcast %class.Accelerator* %2 to %class.SDKExtension*
  call void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* %3)
  %4 = bitcast %class.Accelerator* %2 to i8***
  store i8** getelementptr inbounds ([26 x i8*]* @_ZTV11Accelerator, i64 0, i64 2), i8*** %4
  ret void
}

; Function Attrs: nounwind
define hidden void @_Z11OnGameFrameb(i1 zeroext %simulating) #2 {
  %1 = alloca i8, align 1
  %weHaveBeenFuckedOver = alloca i8, align 1
  %oact = alloca %struct.sigaction, align 4
  %i = alloca i32, align 4
  %act = alloca %struct.sigaction, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %2 = zext i1 %simulating to i8
  store i8 %2, i8* %1, align 1
  store i8 0, i8* %weHaveBeenFuckedOver, align 1
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %18, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 5
  br i1 %5, label %6, label %21

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4
  %8 = getelementptr inbounds [5 x i32]* @_ZL17kExceptionSignals, i32 0, i32 %7
  %9 = load i32* %8, align 4
  %10 = call i32 @sigaction(i32 %9, %struct.sigaction* null, %struct.sigaction* %oact) #0
  %11 = getelementptr inbounds %struct.sigaction* %oact, i32 0, i32 0
  %12 = bitcast %union.anon.14* %11 to void (i32, %struct.siginfo_t*, i8*)**
  %13 = load void (i32, %struct.siginfo_t*, i8*)** %12, align 4
  %14 = load void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %15 = icmp ne void (i32, %struct.siginfo_t*, i8*)* %13, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %6
  store i8 1, i8* %weHaveBeenFuckedOver, align 1
  br label %21

; <label>:17                                      ; preds = %6
  br label %18

; <label>:18                                      ; preds = %17
  %19 = load i32* %i, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i, align 4
  br label %3

; <label>:21                                      ; preds = %16, %3
  %22 = load i8* %weHaveBeenFuckedOver, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %25, label %24

; <label>:24                                      ; preds = %21
  br label %57

; <label>:25                                      ; preds = %21
  %26 = bitcast %struct.sigaction* %act to i8*
  call void @llvm.memset.p0i8.i32(i8* %26, i8 0, i32 140, i32 4, i1 false)
  %27 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 1
  %28 = call i32 @sigemptyset(%struct.__sigset_t* %27) #0
  store i32 0, i32* %i1, align 4
  br label %29

; <label>:29                                      ; preds = %38, %25
  %30 = load i32* %i1, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %41

; <label>:32                                      ; preds = %29
  %33 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 1
  %34 = load i32* %i1, align 4
  %35 = getelementptr inbounds [5 x i32]* @_ZL17kExceptionSignals, i32 0, i32 %34
  %36 = load i32* %35, align 4
  %37 = call i32 @sigaddset(%struct.__sigset_t* %33, i32 %36) #0
  br label %38

; <label>:38                                      ; preds = %32
  %39 = load i32* %i1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i1, align 4
  br label %29

; <label>:41                                      ; preds = %29
  %42 = load void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %43 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 0
  %44 = bitcast %union.anon.14* %43 to void (i32, %struct.siginfo_t*, i8*)**
  store void (i32, %struct.siginfo_t*, i8*)* %42, void (i32, %struct.siginfo_t*, i8*)** %44, align 4
  %45 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 2
  store i32 134217732, i32* %45, align 4
  store i32 0, i32* %i2, align 4
  br label %46

; <label>:46                                      ; preds = %54, %41
  %47 = load i32* %i2, align 4
  %48 = icmp slt i32 %47, 5
  br i1 %48, label %49, label %57

; <label>:49                                      ; preds = %46
  %50 = load i32* %i2, align 4
  %51 = getelementptr inbounds [5 x i32]* @_ZL17kExceptionSignals, i32 0, i32 %50
  %52 = load i32* %51, align 4
  %53 = call i32 @sigaction(i32 %52, %struct.sigaction* %act, %struct.sigaction* null) #0
  br label %54

; <label>:54                                      ; preds = %49
  %55 = load i32* %i2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i2, align 4
  br label %46

; <label>:57                                      ; preds = %24, %46
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #0

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #2

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #2

; Function Attrs: nounwind
define hidden zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %path, i8* %response, i32 %maxlen) #2 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %form = alloca %"class.SourceMod::IWebForm"*, align 4
  %minidumpAccount = alloca i8*, align 4
  %metapath = alloca [512 x i8], align 1
  %data = alloca %"class.SourceMod::MemoryDownloader", align 4
  %xfer = alloca %"class.SourceMod::IWebTransfer"*, align 4
  %minidumpUrl = alloca i8*, align 4
  %uploaded = alloca i8, align 1
  %responseSize = alloca i32, align 4
  %4 = alloca i32
  store i8* %path, i8** %1, align 4
  store i8* %response, i8** %2, align 4
  store i32 %maxlen, i32* %3, align 4
  %5 = load %"class.SourceMod::IWebternet"** @webternet, align 4
  %6 = bitcast %"class.SourceMod::IWebternet"* %5 to %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)***
  %7 = load %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)*** %6
  %8 = getelementptr inbounds %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)** %7, i64 4
  %9 = load %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)** %8
  %10 = call %"class.SourceMod::IWebForm"* %9(%"class.SourceMod::IWebternet"* %5)
  store %"class.SourceMod::IWebForm"* %10, %"class.SourceMod::IWebForm"** %form, align 4
  %11 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %12 = bitcast %"class.SourceMod::ISourceMod"* %11 to i8* (%"class.SourceMod::ISourceMod"*, i8*)***
  %13 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)*** %12
  %14 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*, i8*)** %13, i64 24
  %15 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)** %14
  %16 = call i8* %15(%"class.SourceMod::ISourceMod"* %11, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0))
  store i8* %16, i8** %minidumpAccount, align 4
  %17 = load i8** %minidumpAccount, align 4
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %0
  %20 = load %"class.SourceMod::IWebForm"** %form, align 4
  %21 = bitcast %"class.SourceMod::IWebForm"* %20 to i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)***
  %22 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %21
  %23 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %22, i64 2
  %24 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %23
  %25 = load i8** %minidumpAccount, align 4
  %26 = call zeroext i1 %24(%"class.SourceMod::IWebForm"* %20, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* %25)
  br label %27

; <label>:27                                      ; preds = %19, %0
  %28 = load %"class.SourceMod::IWebForm"** %form, align 4
  %29 = bitcast %"class.SourceMod::IWebForm"* %28 to i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)***
  %30 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %29
  %31 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %30, i64 2
  %32 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %31
  %33 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %34 = bitcast %"class.SourceMod::ISourceMod"* %33 to i8* (%"class.SourceMod::ISourceMod"*)***
  %35 = load i8* (%"class.SourceMod::ISourceMod"*)*** %34
  %36 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %35, i64 13
  %37 = load i8* (%"class.SourceMod::ISourceMod"*)** %36
  %38 = call i8* %37(%"class.SourceMod::ISourceMod"* %33)
  %39 = call zeroext i1 %32(%"class.SourceMod::IWebForm"* %28, i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0), i8* %38)
  %40 = load %"class.SourceMod::IWebForm"** %form, align 4
  %41 = bitcast %"class.SourceMod::IWebForm"* %40 to i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)***
  %42 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %41
  %43 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %42, i64 2
  %44 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %43
  %45 = call zeroext i1 %44(%"class.SourceMod::IWebForm"* %40, i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0))
  %46 = load %"class.SourceMod::IWebForm"** %form, align 4
  %47 = bitcast %"class.SourceMod::IWebForm"* %46 to i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)***
  %48 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %47
  %49 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %48, i64 3
  %50 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %49
  %51 = load i8** %1, align 4
  %52 = call zeroext i1 %50(%"class.SourceMod::IWebForm"* %46, i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i8* %51)
  %53 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %54 = bitcast %"class.SourceMod::ISourceMod"* %53 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %55 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %54
  %56 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %55, i64 21
  %57 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %56
  %58 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  %59 = load i8** %1, align 4
  %60 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %57(%"class.SourceMod::ISourceMod"* %53, i8* %58, i32 512, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* %59)
  %61 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %62 = bitcast %"class.SourceMod::ILibrarySys"* %61 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %63 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %62
  %64 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %63, i64 6
  %65 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %64
  %66 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  %67 = call zeroext i1 %65(%"class.SourceMod::ILibrarySys"* %61, i8* %66)
  br i1 %67, label %68, label %76

; <label>:68                                      ; preds = %27
  %69 = load %"class.SourceMod::IWebForm"** %form, align 4
  %70 = bitcast %"class.SourceMod::IWebForm"* %69 to i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)***
  %71 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %70
  %72 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %71, i64 3
  %73 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %72
  %74 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  %75 = call zeroext i1 %73(%"class.SourceMod::IWebForm"* %69, i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0), i8* %74)
  br label %76

; <label>:76                                      ; preds = %68, %27
  call void @_ZN9SourceMod16MemoryDownloaderC1Ev(%"class.SourceMod::MemoryDownloader"* %data)
  %77 = load %"class.SourceMod::IWebternet"** @webternet, align 4
  %78 = bitcast %"class.SourceMod::IWebternet"* %77 to %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)***
  %79 = load %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)*** %78
  %80 = getelementptr inbounds %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)** %79, i64 3
  %81 = load %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)** %80
  %82 = call %"class.SourceMod::IWebTransfer"* %81(%"class.SourceMod::IWebternet"* %77)
  store %"class.SourceMod::IWebTransfer"* %82, %"class.SourceMod::IWebTransfer"** %xfer, align 4
  %83 = load %"class.SourceMod::IWebTransfer"** %xfer, align 4
  %84 = bitcast %"class.SourceMod::IWebTransfer"* %83 to i1 (%"class.SourceMod::IWebTransfer"*, i1)***
  %85 = load i1 (%"class.SourceMod::IWebTransfer"*, i1)*** %84
  %86 = getelementptr inbounds i1 (%"class.SourceMod::IWebTransfer"*, i1)** %85, i64 7
  %87 = load i1 (%"class.SourceMod::IWebTransfer"*, i1)** %86
  %88 = call zeroext i1 %87(%"class.SourceMod::IWebTransfer"* %83, i1 zeroext true)
  %89 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %90 = bitcast %"class.SourceMod::ISourceMod"* %89 to i8* (%"class.SourceMod::ISourceMod"*, i8*)***
  %91 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)*** %90
  %92 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*, i8*)** %91, i64 24
  %93 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)** %92
  %94 = call i8* %93(%"class.SourceMod::ISourceMod"* %89, i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0))
  store i8* %94, i8** %minidumpUrl, align 4
  %95 = load i8** %minidumpUrl, align 4
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

; <label>:97                                      ; preds = %76
  store i8* getelementptr inbounds ([33 x i8]* @.str9, i32 0, i32 0), i8** %minidumpUrl, align 4
  br label %98

; <label>:98                                      ; preds = %97, %76
  %99 = load %"class.SourceMod::IWebTransfer"** %xfer, align 4
  %100 = bitcast %"class.SourceMod::IWebTransfer"* %99 to i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)***
  %101 = load i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)*** %100
  %102 = getelementptr inbounds i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)** %101, i64 6
  %103 = load i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)** %102
  %104 = load i8** %minidumpUrl, align 4
  %105 = load %"class.SourceMod::IWebForm"** %form, align 4
  %106 = bitcast %"class.SourceMod::MemoryDownloader"* %data to %"class.SourceMod::ITransferHandler"*
  %107 = call zeroext i1 %103(%"class.SourceMod::IWebTransfer"* %99, i8* %104, %"class.SourceMod::IWebForm"* %105, %"class.SourceMod::ITransferHandler"* %106, i8* null)
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %uploaded, align 1
  %109 = load i8** %2, align 4
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %152

; <label>:111                                     ; preds = %98
  %112 = load i8* %uploaded, align 1
  %113 = trunc i8 %112 to i1
  br i1 %113, label %114, label %130

; <label>:114                                     ; preds = %111
  %115 = call i32 @_ZN9SourceMod16MemoryDownloader7GetSizeEv(%"class.SourceMod::MemoryDownloader"* %data)
  store i32 %115, i32* %responseSize, align 4
  %116 = load i32* %responseSize, align 4
  %117 = load i32* %3, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %122

; <label>:119                                     ; preds = %114
  %120 = load i32* %3, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %responseSize, align 4
  br label %122

; <label>:122                                     ; preds = %119, %114
  %123 = load i8** %2, align 4
  %124 = call i8* @_ZN9SourceMod16MemoryDownloader9GetBufferEv(%"class.SourceMod::MemoryDownloader"* %data)
  %125 = load i32* %responseSize, align 4
  %126 = call i8* @strncpy(i8* %123, i8* %124, i32 %125) #0
  %127 = load i32* %responseSize, align 4
  %128 = load i8** %2, align 4
  %129 = getelementptr inbounds i8* %128, i32 %127
  store i8 0, i8* %129, align 1
  br label %151

; <label>:130                                     ; preds = %111
  %131 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %132 = bitcast %"class.SourceMod::ISourceMod"* %131 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %133 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %132
  %134 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %133, i64 21
  %135 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %134
  %136 = load i8** %2, align 4
  %137 = load i32* %3, align 4
  %138 = load %"class.SourceMod::IWebTransfer"** %xfer, align 4
  %139 = bitcast %"class.SourceMod::IWebTransfer"* %138 to i8* (%"class.SourceMod::IWebTransfer"*)***
  %140 = load i8* (%"class.SourceMod::IWebTransfer"*)*** %139
  %141 = getelementptr inbounds i8* (%"class.SourceMod::IWebTransfer"*)** %140, i64 2
  %142 = load i8* (%"class.SourceMod::IWebTransfer"*)** %141
  %143 = call i8* %142(%"class.SourceMod::IWebTransfer"* %138)
  %144 = load %"class.SourceMod::IWebTransfer"** %xfer, align 4
  %145 = bitcast %"class.SourceMod::IWebTransfer"* %144 to i32 (%"class.SourceMod::IWebTransfer"*)***
  %146 = load i32 (%"class.SourceMod::IWebTransfer"*)*** %145
  %147 = getelementptr inbounds i32 (%"class.SourceMod::IWebTransfer"*)** %146, i64 3
  %148 = load i32 (%"class.SourceMod::IWebTransfer"*)** %147
  %149 = call i32 %148(%"class.SourceMod::IWebTransfer"* %144)
  %150 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %135(%"class.SourceMod::ISourceMod"* %131, i8* %136, i32 %137, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i8* %143, i32 %149)
  br label %151

; <label>:151                                     ; preds = %130, %122
  br label %152

; <label>:152                                     ; preds = %151, %98
  %153 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %154 = bitcast %"class.SourceMod::ILibrarySys"* %153 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %155 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %154
  %156 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %155, i64 6
  %157 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %156
  %158 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  %159 = call zeroext i1 %157(%"class.SourceMod::ILibrarySys"* %153, i8* %158)
  br i1 %159, label %160, label %163

; <label>:160                                     ; preds = %152
  %161 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  %162 = call i32 @unlink(i8* %161) #0
  br label %163

; <label>:163                                     ; preds = %160, %152
  %164 = load i8** %1, align 4
  %165 = call i32 @unlink(i8* %164) #0
  %166 = load i8* %uploaded, align 1
  %167 = trunc i8 %166 to i1
  store i32 1, i32* %4
  call void @_ZN9SourceMod16MemoryDownloaderD1Ev(%"class.SourceMod::MemoryDownloader"* %data) #0
  ret i1 %167
}

declare void @_ZN9SourceMod16MemoryDownloaderC1Ev(%"class.SourceMod::MemoryDownloader"*) #3

declare i32 @_ZN9SourceMod16MemoryDownloader7GetSizeEv(%"class.SourceMod::MemoryDownloader"*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #2

declare i8* @_ZN9SourceMod16MemoryDownloader9GetBufferEv(%"class.SourceMod::MemoryDownloader"*) #3

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @_ZN9SourceMod16MemoryDownloaderD1Ev(%"class.SourceMod::MemoryDownloader"*) #2

; Function Attrs: nounwind
define internal void @__cxx_global_var_init11() #0 section ".text.startup" {
  call void @_ZN12UploadThreadC2Ev(%class.UploadThread* @uploadThread) #0
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.UploadThread*)* @_ZN12UploadThreadD2Ev to void (i8*)*), i8* bitcast (%class.UploadThread* @uploadThread to i8*), i8* @__dso_handle) #0
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12UploadThreadC2Ev(%class.UploadThread* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.UploadThread*, align 4
  store %class.UploadThread* %this, %class.UploadThread** %1, align 4
  %2 = load %class.UploadThread** %1
  %3 = bitcast %class.UploadThread* %2 to %"class.SourceMod::IThread"*
  call void @_ZN9SourceMod7IThreadC2Ev(%"class.SourceMod::IThread"* %3) #0
  %4 = bitcast %class.UploadThread* %2 to i8***
  store i8** getelementptr inbounds ([6 x i8*]* @_ZTV12UploadThread, i64 0, i64 2), i8*** %4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12UploadThreadD2Ev(%class.UploadThread* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.UploadThread*, align 4
  store %class.UploadThread* %this, %class.UploadThread** %1, align 4
  %2 = load %class.UploadThread** %1
  %3 = bitcast %class.UploadThread* %2 to %"class.SourceMod::IThread"*
  call void @_ZN9SourceMod7IThreadD2Ev(%"class.SourceMod::IThread"* %3) #0
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #0

; Function Attrs: nounwind
define hidden i8* @_Z10GetCmdLinev() #2 {
  %1 = alloca i8*, align 4
  %cmdline = alloca i8*, align 4
  %vtable = alloca i8**, align 4
  %vfunc = alloca i8*, align 4
  %u = alloca %union.anon.15, align 4
  %2 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %20

; <label>:4                                       ; preds = %0
  %5 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %6 = icmp ne %"class.SourceMod::IGameConfig"* %5, null
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %4
  %8 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %9 = bitcast %"class.SourceMod::IGameConfig"* %8 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)***
  %10 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)*** %9
  %11 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)** %10, i64 0
  %12 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)** %11
  %13 = call zeroext i1 %12(%"class.SourceMod::IGameConfig"* %8, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i32* @_ZZ10GetCmdLinevE16getCmdLineOffset)
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %7, %4
  store i8* getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), i8** %1
  br label %63

; <label>:15                                      ; preds = %7
  %16 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %15
  store i8* getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), i8** %1
  br label %63

; <label>:19                                      ; preds = %15
  br label %20

; <label>:20                                      ; preds = %19, %0
  %21 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %22 = bitcast %"class.SourceMod::IGameHelpers"* %21 to %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)***
  %23 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)*** %22
  %24 = getelementptr inbounds %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %23, i64 27
  %25 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %24
  %26 = call %class.ICommandLine* %25(%"class.SourceMod::IGameHelpers"* %21)
  %27 = bitcast %class.ICommandLine* %26 to i8*
  store i8* %27, i8** %cmdline, align 4
  %28 = load i8** %cmdline, align 4
  %29 = bitcast i8* %28 to i8***
  %30 = load i8*** %29, align 4
  store i8** %30, i8*** %vtable, align 4
  %31 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %32 = load i8*** %vtable, align 4
  %33 = getelementptr inbounds i8** %32, i32 %31
  %34 = load i8** %33, align 4
  store i8* %34, i8** %vfunc, align 4
  %35 = load i8** %vfunc, align 4
  %36 = bitcast %union.anon.15* %u to %struct.anon.16*
  %37 = getelementptr inbounds %struct.anon.16* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 4
  %38 = bitcast %union.anon.15* %u to %struct.anon.16*
  %39 = getelementptr inbounds %struct.anon.16* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = bitcast %union.anon.15* %u to { i32, i32 }*
  %41 = load { i32, i32 }* %40, align 4
  %42 = load i8** %cmdline, align 4
  %43 = bitcast i8* %42 to %class.VFuncEmptyClass*
  %44 = extractvalue { i32, i32 } %41, 1
  %45 = bitcast %class.VFuncEmptyClass* %43 to i8*
  %46 = getelementptr inbounds i8* %45, i32 %44
  %47 = bitcast i8* %46 to %class.VFuncEmptyClass*
  %48 = extractvalue { i32, i32 } %41, 0
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %20
  %52 = bitcast %class.VFuncEmptyClass* %47 to i8**
  %53 = load i8** %52
  %54 = sub i32 %48, 1
  %55 = getelementptr i8* %53, i32 %54
  %56 = bitcast i8* %55 to i8* (%class.VFuncEmptyClass*)**
  %57 = load i8* (%class.VFuncEmptyClass*)** %56
  br label %60

; <label>:58                                      ; preds = %20
  %59 = inttoptr i32 %48 to i8* (%class.VFuncEmptyClass*)*
  br label %60

; <label>:60                                      ; preds = %58, %51
  %61 = phi i8* (%class.VFuncEmptyClass*)* [ %57, %51 ], [ %59, %58 ]
  %62 = call i8* %61(%class.VFuncEmptyClass* %47)
  store i8* %62, i8** %1
  br label %63

; <label>:63                                      ; preds = %60, %18, %14
  %64 = load i8** %1
  ret i8* %64
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN11Accelerator10SDK_OnLoadEPcjb(%class.Accelerator* %this, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #2 align 2 {
  %1 = alloca i1, align 1
  %2 = alloca %class.Accelerator*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %len = alloca i32, align 4
  %gameconfigError = alloca [256 x i8], align 1
  %useFastcall = alloca i8, align 1
  %descriptor = alloca %"class.google_breakpad::MinidumpDescriptor", align 4
  %6 = alloca %"class.std::basic_string", align 4
  %7 = alloca %"class.std::allocator", align 1
  %oact = alloca %struct.sigaction, align 4
  %steamInfPath = alloca [512 x i8], align 1
  %steamInfFile = alloca %struct._IO_FILE*, align 4
  %steamInfTemp = alloca [1024 x i8], align 1
  %iv1 = alloca i32, align 4
  %commentChars = alloca i32, align 4
  %valueChars = alloca i32, align 4
  %source = alloca i32, align 4
  %target = alloca i32, align 4
  %8 = alloca i32
  store %class.Accelerator* %this, %class.Accelerator** %2, align 4
  store i8* %error, i8** %3, align 4
  store i32 %maxlength, i32* %4, align 4
  %9 = zext i1 %late to i8
  store i8 %9, i8* %5, align 1
  %10 = load %class.Accelerator** %2
  %11 = load %"class.SourceMod::IShareSys"** @sharesys, align 4
  %12 = bitcast %"class.SourceMod::IShareSys"* %11 to void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)***
  %13 = load void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)*** %12
  %14 = getelementptr inbounds void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)** %13, i64 8
  %15 = load void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)** %14
  %16 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void %15(%"class.SourceMod::IShareSys"* %11, %"class.SourceMod::IExtension"* %16, i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), i1 zeroext true, i1 zeroext true)
  %17 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %18 = bitcast %"class.SourceMod::IShareSys"* %17 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %19 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %18
  %20 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %19, i64 1
  %21 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %20
  %22 = load %"class.SourceMod::IExtension"** @myself, align 4
  %23 = call zeroext i1 %21(%"class.SourceMod::IShareSys"* %17, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %22, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IWebternet"** @webternet to %"class.SourceMod::SMInterface"**))
  br i1 %23, label %44, label %24

; <label>:24                                      ; preds = %0
  %25 = load i8** %3, align 4
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %43

; <label>:27                                      ; preds = %24
  %28 = load i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

; <label>:30                                      ; preds = %27
  %31 = load i8** %3, align 4
  %32 = load i32* %4, align 4
  %33 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([29 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0)) #0
  store i32 %33, i32* %len, align 4
  %34 = load i32* %len, align 4
  %35 = load i32* %4, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %42

; <label>:37                                      ; preds = %30
  %38 = load i32* %4, align 4
  %39 = sub i32 %38, 1
  %40 = load i8** %3, align 4
  %41 = getelementptr inbounds i8* %40, i32 %39
  store i8 0, i8* %41, align 1
  br label %42

; <label>:42                                      ; preds = %37, %30
  br label %43

; <label>:43                                      ; preds = %42, %27, %24
  store i1 false, i1* %1
  br label %291

; <label>:44                                      ; preds = %0
  %45 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %46 = bitcast %"class.SourceMod::ISourceMod"* %45 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %47 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %46
  %48 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %47, i64 5
  %49 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %48
  %50 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %49(%"class.SourceMod::ISourceMod"* %45, i32 2, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0))
  %51 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %52 = bitcast %"class.SourceMod::ILibrarySys"* %51 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %53 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %52
  %54 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %53, i64 8
  %55 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %54
  %56 = call zeroext i1 %55(%"class.SourceMod::ILibrarySys"* %51, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0))
  br i1 %56, label %78, label %57

; <label>:57                                      ; preds = %44
  %58 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %59 = bitcast %"class.SourceMod::ILibrarySys"* %58 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %60 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %59
  %61 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %60, i64 12
  %62 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %61
  %63 = call zeroext i1 %62(%"class.SourceMod::ILibrarySys"* %58, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0))
  br i1 %63, label %77, label %64

; <label>:64                                      ; preds = %57
  %65 = load i8** %3, align 4
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

; <label>:67                                      ; preds = %64
  %68 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %69 = bitcast %"class.SourceMod::ISourceMod"* %68 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %70 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %69
  %71 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %70, i64 21
  %72 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %71
  %73 = load i8** %3, align 4
  %74 = load i32* %4, align 4
  %75 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %72(%"class.SourceMod::ISourceMod"* %68, i8* %73, i32 %74, i8* getelementptr inbounds ([45 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0))
  br label %76

; <label>:76                                      ; preds = %67, %64
  store i1 false, i1* %1
  br label %291

; <label>:77                                      ; preds = %57
  br label %78

; <label>:78                                      ; preds = %77, %44
  %79 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %80 = bitcast %"class.SourceMod::ISourceMod"* %79 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %81 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %80
  %82 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %81, i64 5
  %83 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %82
  %84 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %83(%"class.SourceMod::ISourceMod"* %79, i32 2, i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([21 x i8]* @.str19, i32 0, i32 0))
  %85 = load %"class.SourceMod::IThreader"** @threader, align 4
  %86 = bitcast %"class.SourceMod::IThreader"* %85 to i8*
  %87 = getelementptr inbounds i8* %86, i32 4
  %88 = bitcast i8* %87 to %"class.SourceMod::IThreadCreator"*
  %89 = bitcast %"class.SourceMod::IThreadCreator"* %88 to void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)***
  %90 = load void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)*** %89
  %91 = getelementptr inbounds void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)** %90, i64 2
  %92 = load void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)** %91
  call void %92(%"class.SourceMod::IThreadCreator"* %88, %"class.SourceMod::IThread"* getelementptr inbounds (%class.UploadThread* @uploadThread, i32 0, i32 0))
  br label %93

; <label>:93                                      ; preds = %78
  %94 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %95 = bitcast %"class.SourceMod::IGameConfigManager"* %94 to i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)***
  %96 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)*** %95
  %97 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %96, i64 3
  %98 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %97
  %99 = getelementptr inbounds [256 x i8]* %gameconfigError, i32 0, i32 0
  %100 = call zeroext i1 %98(%"class.SourceMod::IGameConfigManager"* %94, i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), %"class.SourceMod::IGameConfig"** @gameconfig, i8* %99, i32 256)
  br i1 %100, label %109, label %101

; <label>:101                                     ; preds = %93
  %102 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %103 = bitcast %"class.SourceMod::ISourceMod"* %102 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %104 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %103
  %105 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %104, i64 6
  %106 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %105
  %107 = load %"class.SourceMod::IExtension"** @myself, align 4
  %108 = getelementptr inbounds [256 x i8]* %gameconfigError, i32 0, i32 0
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %106(%"class.SourceMod::ISourceMod"* %102, %"class.SourceMod::IExtension"* %107, i8* getelementptr inbounds ([113 x i8]* @.str21, i32 0, i32 0), i8* %108)
  br label %137

; <label>:109                                     ; preds = %93
  store i8 0, i8* %useFastcall, align 1
  %110 = load i8* %useFastcall, align 1
  %111 = trunc i8 %110 to i1
  br i1 %111, label %126, label %112

; <label>:112                                     ; preds = %109
  %113 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %114 = bitcast %"class.SourceMod::IGameConfig"* %113 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %115 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %114
  %116 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %115, i64 3
  %117 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %116
  %118 = call zeroext i1 %117(%"class.SourceMod::IGameConfig"* %113, i8* getelementptr inbounds ([8 x i8]* @.str22, i32 0, i32 0), i8** bitcast (void (i8*, i32)** @GetSpew to i8**))
  br i1 %118, label %126, label %119

; <label>:119                                     ; preds = %112
  %120 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %121 = bitcast %"class.SourceMod::ISourceMod"* %120 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %122 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %121
  %123 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %122, i64 6
  %124 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %123
  %125 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %124(%"class.SourceMod::ISourceMod"* %120, %"class.SourceMod::IExtension"* %125, i8* getelementptr inbounds ([94 x i8]* @.str23, i32 0, i32 0))
  br label %137

; <label>:126                                     ; preds = %112, %109
  %127 = load void (i8*, i32)** @GetSpew, align 4
  %128 = icmp ne void (i8*, i32)* %127, null
  br i1 %128, label %136, label %129

; <label>:129                                     ; preds = %126
  %130 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %131 = bitcast %"class.SourceMod::ISourceMod"* %130 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %132 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %131
  %133 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %132, i64 6
  %134 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %133
  %135 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %134(%"class.SourceMod::ISourceMod"* %130, %"class.SourceMod::IExtension"* %135, i8* getelementptr inbounds ([91 x i8]* @.str24, i32 0, i32 0))
  br label %137

; <label>:136                                     ; preds = %126
  br label %137

; <label>:137                                     ; preds = %136, %129, %119, %101
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %7) #0
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %6, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), %"class.std::allocator"* %7)
  call void @_ZN15google_breakpad18MinidumpDescriptorC2ERKSs(%"class.google_breakpad::MinidumpDescriptor"* %descriptor, %"class.std::basic_string"* %6)
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %6) #0
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %7) #0
  %138 = call noalias i8* @_Znwj(i32 92) #9
  %139 = bitcast i8* %138 to %"class.google_breakpad::ExceptionHandler"*
  call void @_ZN15google_breakpad16ExceptionHandlerC1ERKNS_18MinidumpDescriptorEPFbPvEPFbS3_S4_bES4_bi(%"class.google_breakpad::ExceptionHandler"* %139, %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i1 (i8*)* null, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)* @_ZL12dumpCallbackRKN15google_breakpad18MinidumpDescriptorEPvb, i8* null, i1 zeroext true, i32 -1)
  store %"class.google_breakpad::ExceptionHandler"* %139, %"class.google_breakpad::ExceptionHandler"** @handler, align 4
  %140 = call i32 @sigaction(i32 11, %struct.sigaction* null, %struct.sigaction* %oact) #0
  %141 = getelementptr inbounds %struct.sigaction* %oact, i32 0, i32 0
  %142 = bitcast %union.anon.14* %141 to void (i32, %struct.siginfo_t*, i8*)**
  %143 = load void (i32, %struct.siginfo_t*, i8*)** %142, align 4
  store void (i32, %struct.siginfo_t*, i8*)* %143, void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %144 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %145 = bitcast %"class.SourceMod::ISourceMod"* %144 to void (%"class.SourceMod::ISourceMod"*, void (i1)*)***
  %146 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)*** %145
  %147 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %146, i64 19
  %148 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %147
  call void %148(%"class.SourceMod::ISourceMod"* %144, void (i1)* @_Z11OnGameFrameb)
  %149 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %150 = bitcast %"class.SourceMod::ISourceMod"* %149 to i8* (%"class.SourceMod::ISourceMod"*)***
  %151 = load i8* (%"class.SourceMod::ISourceMod"*)*** %150
  %152 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %151, i64 3
  %153 = load i8* (%"class.SourceMod::ISourceMod"*)** %152
  %154 = call i8* %153(%"class.SourceMod::ISourceMod"* %149)
  %155 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0), i8* %154, i32 511) #0
  %156 = call i8* @_Z10GetCmdLinev()
  %157 = call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0), i8* %156, i32 1023) #0
  %158 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %159 = bitcast %"class.SourceMod::ISourceMod"* %158 to i8* (%"class.SourceMod::ISourceMod"*)***
  %160 = load i8* (%"class.SourceMod::ISourceMod"*)*** %159
  %161 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %160, i64 4
  %162 = load i8* (%"class.SourceMod::ISourceMod"*)** %161
  %163 = call i8* %162(%"class.SourceMod::ISourceMod"* %158)
  %164 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0), i8* %163, i32 511) #0
  %165 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %166 = bitcast %"class.SourceMod::ISourceMod"* %165 to i8* (%"class.SourceMod::ISourceMod"*)***
  %167 = load i8* (%"class.SourceMod::ISourceMod"*)*** %166
  %168 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %167, i64 13
  %169 = load i8* (%"class.SourceMod::ISourceMod"*)** %168
  %170 = call i8* %169(%"class.SourceMod::ISourceMod"* %165)
  %171 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0), i8* %170, i32 255) #0
  %172 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %173 = bitcast %"class.SourceMod::ISourceMod"* %172 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %174 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %173
  %175 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %174, i64 5
  %176 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %175
  %177 = getelementptr inbounds [512 x i8]* %steamInfPath, i32 0, i32 0
  %178 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %176(%"class.SourceMod::ISourceMod"* %172, i32 1, i8* %177, i32 512, i8* getelementptr inbounds ([10 x i8]* @.str25, i32 0, i32 0))
  %179 = getelementptr inbounds [512 x i8]* %steamInfPath, i32 0, i32 0
  %180 = call %struct._IO_FILE* @fopen(i8* %179, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0))
  store %struct._IO_FILE* %180, %struct._IO_FILE** %steamInfFile, align 4
  %181 = load %struct._IO_FILE** %steamInfFile, align 4
  %182 = icmp ne %struct._IO_FILE* %181, null
  br i1 %182, label %183, label %282

; <label>:183                                     ; preds = %137
  %184 = bitcast [1024 x i8]* %steamInfTemp to i8*
  call void @llvm.memset.p0i8.i32(i8* %184, i8 0, i32 1024, i32 1, i1 false)
  %185 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 0
  %186 = load %struct._IO_FILE** %steamInfFile, align 4
  %187 = call i32 @fread(i8* %185, i32 1, i32 1023, %struct._IO_FILE* %186)
  store i32 %187, i32* %iv1, align 4
  %188 = load i32* %iv1, align 4
  %189 = icmp ult i32 %188, 1
  br i1 %189, label %190, label %197

; <label>:190                                     ; preds = %183
  %191 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %192 = bitcast %"class.SourceMod::ISourceMod"* %191 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %193 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %192
  %194 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %193, i64 7
  %195 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %194
  %196 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %195(%"class.SourceMod::ISourceMod"* %191, %"class.SourceMod::IExtension"* %196, i8* getelementptr inbounds ([34 x i8]* @.str27, i32 0, i32 0))
  br label %197

; <label>:197                                     ; preds = %190, %183
  %198 = load %struct._IO_FILE** %steamInfFile, align 4
  %199 = call i32 @fclose(%struct._IO_FILE* %198)
  store i32 0, i32* %commentChars, align 4
  store i32 0, i32* %valueChars, align 4
  store i32 0, i32* %source, align 4
  %200 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8]* @steamInf, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str28, i32 0, i32 0)) #0
  store i32 7, i32* %target, align 4
  br label %201

; <label>:201                                     ; preds = %271, %268, %264, %237, %217, %197
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i32* %source, align 4
  %204 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %203
  %205 = load i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

; <label>:208                                     ; preds = %202
  %209 = load i32* %source, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %source, align 4
  br label %281

; <label>:211                                     ; preds = %202
  %212 = load i32* %source, align 4
  %213 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %212
  %214 = load i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 47
  br i1 %216, label %217, label %222

; <label>:217                                     ; preds = %211
  %218 = load i32* %source, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %source, align 4
  %220 = load i32* %commentChars, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %commentChars, align 4
  br label %201

; <label>:222                                     ; preds = %211
  %223 = load i32* %commentChars, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %231

; <label>:225                                     ; preds = %222
  store i32 0, i32* %commentChars, align 4
  %226 = load i32* %target, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %target, align 4
  %228 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %226
  store i8 47, i8* %228, align 1
  %229 = load i32* %valueChars, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %valueChars, align 4
  br label %231

; <label>:231                                     ; preds = %225, %222
  %232 = load i32* %source, align 4
  %233 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %232
  %234 = load i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 13
  br i1 %236, label %237, label %240

; <label>:237                                     ; preds = %231
  %238 = load i32* %source, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %source, align 4
  br label %201

; <label>:240                                     ; preds = %231
  %241 = load i32* %source, align 4
  %242 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %241
  %243 = load i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 10
  br i1 %245, label %246, label %265

; <label>:246                                     ; preds = %240
  store i32 0, i32* %commentChars, align 4
  %247 = load i32* %source, align 4
  %248 = add i32 %247, 1
  store i32 %248, i32* %source, align 4
  %249 = load i32* %source, align 4
  %250 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %249
  %251 = load i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %246
  br label %281

; <label>:255                                     ; preds = %246
  %256 = load i32* %valueChars, align 4
  %257 = icmp ugt i32 %256, 0
  br i1 %257, label %258, label %264

; <label>:258                                     ; preds = %255
  store i32 0, i32* %valueChars, align 4
  %259 = load i32* %target, align 4
  %260 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %259
  %261 = call i8* @strcpy(i8* %260, i8* getelementptr inbounds ([8 x i8]* @.str28, i32 0, i32 0)) #0
  %262 = load i32* %target, align 4
  %263 = add i32 %262, 7
  store i32 %263, i32* %target, align 4
  br label %264

; <label>:264                                     ; preds = %258, %255
  br label %201

; <label>:265                                     ; preds = %240
  %266 = load i32* %commentChars, align 4
  %267 = icmp uge i32 %266, 2
  br i1 %267, label %268, label %271

; <label>:268                                     ; preds = %265
  %269 = load i32* %source, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %source, align 4
  br label %201

; <label>:271                                     ; preds = %265
  %272 = load i32* %source, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %source, align 4
  %274 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %272
  %275 = load i8* %274, align 1
  %276 = load i32* %target, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %target, align 4
  %278 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %276
  store i8 %275, i8* %278, align 1
  %279 = load i32* %valueChars, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %valueChars, align 4
  br label %201

; <label>:281                                     ; preds = %254, %208
  br label %282

; <label>:282                                     ; preds = %281, %137
  %283 = load i8* %5, align 1
  %284 = trunc i8 %283 to i1
  br i1 %284, label %285, label %290

; <label>:285                                     ; preds = %282
  %286 = bitcast %class.Accelerator* %10 to void (%class.Accelerator*, %struct.edict_t*, i32, i32)***
  %287 = load void (%class.Accelerator*, %struct.edict_t*, i32, i32)*** %286
  %288 = getelementptr inbounds void (%class.Accelerator*, %struct.edict_t*, i32, i32)** %287, i64 16
  %289 = load void (%class.Accelerator*, %struct.edict_t*, i32, i32)** %288
  call void %289(%class.Accelerator* %10, %struct.edict_t* null, i32 0, i32 0)
  br label %290

; <label>:290                                     ; preds = %285, %282
  store i1 true, i1* %1
  store i32 1, i32* %8
  call void @_ZN15google_breakpad18MinidumpDescriptorD2Ev(%"class.google_breakpad::MinidumpDescriptor"* %descriptor) #0
  br label %291

; <label>:291                                     ; preds = %290, %76, %43
  %292 = load i1* %1
  ret i1 %292
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN15google_breakpad18MinidumpDescriptorC2ERKSs(%"class.google_breakpad::MinidumpDescriptor"* %this, %"class.std::basic_string"* %directory) unnamed_addr #2 align 2 {
  %1 = alloca %"class.google_breakpad::MinidumpDescriptor"*, align 4
  %2 = alloca %"class.std::basic_string"*, align 4
  store %"class.google_breakpad::MinidumpDescriptor"* %this, %"class.google_breakpad::MinidumpDescriptor"** %1, align 4
  store %"class.std::basic_string"* %directory, %"class.std::basic_string"** %2, align 4
  %3 = load %"class.google_breakpad::MinidumpDescriptor"** %1
  %4 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 1
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 2
  %7 = load %"class.std::basic_string"** %2, align 4
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %6, %"class.std::basic_string"* %7)
  %8 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 3
  call void @_ZNSsC1Ev(%"class.std::basic_string"* %8)
  %9 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 4
  store i8* null, i8** %9, align 4
  %10 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 5
  store i32 -1, i32* %10, align 4
  %11 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 6
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 7
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 8
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %3, i32 0, i32 9
  call void @_ZN15google_breakpad18MicrodumpExtraInfoC2Ev(%"struct.google_breakpad::MicrodumpExtraInfo"* %14)
  ret void
}

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"*) #3

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #2

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #2

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #4

declare void @_ZN15google_breakpad16ExceptionHandlerC1ERKNS_18MinidumpDescriptorEPFbPvEPFbS3_S4_bES4_bi(%"class.google_breakpad::ExceptionHandler"*, %"class.google_breakpad::MinidumpDescriptor"*, i1 (i8*)*, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)*, i8*, i1 zeroext, i32) #3

; Function Attrs: nounwind
define internal zeroext i1 @_ZL12dumpCallbackRKN15google_breakpad18MinidumpDescriptorEPvb(%"class.google_breakpad::MinidumpDescriptor"* %descriptor, i8* %context, i1 zeroext %succeeded) #2 {
  %1 = alloca i1, align 1
  %2 = alloca %"class.google_breakpad::MinidumpDescriptor"*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8, align 1
  %extra = alloca i32, align 4
  store %"class.google_breakpad::MinidumpDescriptor"* %descriptor, %"class.google_breakpad::MinidumpDescriptor"** %2, align 4
  store i8* %context, i8** %3, align 4
  %5 = zext i1 %succeeded to i8
  store i8 %5, i8* %4, align 1
  %6 = load i8* %4, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = call i32 @_Z9sys_writeiPKvj(i32 1, i8* getelementptr inbounds ([20 x i8]* @.str29, i32 0, i32 0), i32 19)
  br label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 @_Z9sys_writeiPKvj(i32 1, i8* getelementptr inbounds ([30 x i8]* @.str30, i32 0, i32 0), i32 29)
  br label %12

; <label>:12                                      ; preds = %10, %8
  %13 = load %"class.google_breakpad::MinidumpDescriptor"** %2, align 4
  %14 = call i8* @_ZNK15google_breakpad18MinidumpDescriptor4pathEv(%"class.google_breakpad::MinidumpDescriptor"* %13)
  %15 = load %"class.google_breakpad::MinidumpDescriptor"** %2, align 4
  %16 = call i8* @_ZNK15google_breakpad18MinidumpDescriptor4pathEv(%"class.google_breakpad::MinidumpDescriptor"* %15)
  %17 = call i32 @my_strlen(i8* %16)
  %18 = call i32 @_Z9sys_writeiPKvj(i32 1, i8* %14, i32 %17)
  %19 = call i32 @_Z9sys_writeiPKvj(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str31, i32 0, i32 0), i32 1)
  %20 = load i8* %4, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %12
  %23 = load i8* %4, align 1
  %24 = trunc i8 %23 to i1
  store i1 %24, i1* %1
  br label %100

; <label>:25                                      ; preds = %12
  %26 = load %"class.google_breakpad::MinidumpDescriptor"** %2, align 4
  %27 = call i8* @_ZNK15google_breakpad18MinidumpDescriptor4pathEv(%"class.google_breakpad::MinidumpDescriptor"* %26)
  %28 = call i32 @my_strlcpy(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %27, i32 512)
  %29 = call i32 @my_strlcat(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), i32 512)
  %30 = call i32 @_Z8sys_openPKcii(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i32 65, i32 384)
  store i32 %30, i32* %extra, align 4
  %31 = load i32* %extra, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %25
  %34 = call i32 @_Z9sys_writeiPKvj(i32 1, i8* getelementptr inbounds ([31 x i8]* @.str33, i32 0, i32 0), i32 30)
  %35 = load i8* %4, align 1
  %36 = trunc i8 %35 to i1
  store i1 %36, i1* %1
  br label %100

; <label>:37                                      ; preds = %25
  %38 = load i32* %extra, align 4
  %39 = call i32 @_Z9sys_writeiPKvj(i32 %38, i8* getelementptr inbounds ([31 x i8]* @.str34, i32 0, i32 0), i32 30)
  %40 = load i32* %extra, align 4
  %41 = call i32 @_Z9sys_writeiPKvj(i32 %40, i8* getelementptr inbounds ([6 x i8]* @.str35, i32 0, i32 0), i32 5)
  %42 = load i32* %extra, align 4
  %43 = call i32 @my_strlen(i8* getelementptr inbounds ([256 x i8]* @crashMap, i32 0, i32 0))
  %44 = call i32 @_Z9sys_writeiPKvj(i32 %42, i8* getelementptr inbounds ([256 x i8]* @crashMap, i32 0, i32 0), i32 %43)
  %45 = load i32* %extra, align 4
  %46 = call i32 @_Z9sys_writeiPKvj(i32 %45, i8* getelementptr inbounds ([11 x i8]* @.str36, i32 0, i32 0), i32 10)
  %47 = load i32* %extra, align 4
  %48 = call i32 @my_strlen(i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0))
  %49 = call i32 @_Z9sys_writeiPKvj(i32 %47, i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0), i32 %48)
  %50 = load i32* %extra, align 4
  %51 = call i32 @_Z9sys_writeiPKvj(i32 %50, i8* getelementptr inbounds ([14 x i8]* @.str37, i32 0, i32 0), i32 13)
  %52 = load i32* %extra, align 4
  %53 = call i32 @my_strlen(i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0))
  %54 = call i32 @_Z9sys_writeiPKvj(i32 %52, i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0), i32 %53)
  %55 = load i32* %extra, align 4
  %56 = call i32 @_Z9sys_writeiPKvj(i32 %55, i8* getelementptr inbounds ([16 x i8]* @.str38, i32 0, i32 0), i32 15)
  %57 = load i32* %extra, align 4
  %58 = call i32 @my_strlen(i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0))
  %59 = call i32 @_Z9sys_writeiPKvj(i32 %57, i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0), i32 %58)
  %60 = load i32* %extra, align 4
  %61 = call i32 @_Z9sys_writeiPKvj(i32 %60, i8* getelementptr inbounds ([16 x i8]* @.str39, i32 0, i32 0), i32 15)
  %62 = load i32* %extra, align 4
  %63 = call i32 @my_strlen(i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0))
  %64 = call i32 @_Z9sys_writeiPKvj(i32 %62, i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0), i32 %63)
  %65 = load i32* %extra, align 4
  %66 = call i32 @_Z9sys_writeiPKvj(i32 %65, i8* getelementptr inbounds ([19 x i8]* @.str40, i32 0, i32 0), i32 18)
  %67 = load i32* %extra, align 4
  %68 = call i32 @my_strlen(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0))
  %69 = call i32 @_Z9sys_writeiPKvj(i32 %67, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 %68)
  %70 = load i32* %extra, align 4
  %71 = call i32 @_Z9sys_writeiPKvj(i32 %70, i8* getelementptr inbounds ([17 x i8]* @.str41, i32 0, i32 0), i32 16)
  %72 = load i32* %extra, align 4
  %73 = call i32 @my_strlen(i8* getelementptr inbounds ([11 x i8]* @.str42, i32 0, i32 0))
  %74 = call i32 @_Z9sys_writeiPKvj(i32 %72, i8* getelementptr inbounds ([11 x i8]* @.str42, i32 0, i32 0), i32 %73)
  %75 = load i32* %extra, align 4
  %76 = call i32 @my_strlen(i8* getelementptr inbounds ([1024 x i8]* @steamInf, i32 0, i32 0))
  %77 = call i32 @_Z9sys_writeiPKvj(i32 %75, i8* getelementptr inbounds ([1024 x i8]* @steamInf, i32 0, i32 0), i32 %76)
  %78 = load i32* %extra, align 4
  %79 = call i32 @_Z9sys_writeiPKvj(i32 %78, i8* getelementptr inbounds ([31 x i8]* @.str43, i32 0, i32 0), i32 30)
  %80 = load void (i8*, i32)** @GetSpew, align 4
  %81 = icmp ne void (i8*, i32)* %80, null
  br i1 %81, label %82, label %95

; <label>:82                                      ; preds = %37
  %83 = load void (i8*, i32)** @GetSpew, align 4
  call void %83(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0), i32 65536)
  %84 = call i32 @my_strlen(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0))
  %85 = icmp ugt i32 %84, 0
  br i1 %85, label %86, label %94

; <label>:86                                      ; preds = %82
  %87 = load i32* %extra, align 4
  %88 = call i32 @_Z9sys_writeiPKvj(i32 %87, i8* getelementptr inbounds ([41 x i8]* @.str44, i32 0, i32 0), i32 40)
  %89 = load i32* %extra, align 4
  %90 = call i32 @my_strlen(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0))
  %91 = call i32 @_Z9sys_writeiPKvj(i32 %89, i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0), i32 %90)
  %92 = load i32* %extra, align 4
  %93 = call i32 @_Z9sys_writeiPKvj(i32 %92, i8* getelementptr inbounds ([39 x i8]* @.str45, i32 0, i32 0), i32 38)
  br label %94

; <label>:94                                      ; preds = %86, %82
  br label %95

; <label>:95                                      ; preds = %94, %37
  %96 = load i32* %extra, align 4
  %97 = call i32 @_Z9sys_closei(i32 %96)
  %98 = load i8* %4, align 1
  %99 = trunc i8 %98 to i1
  store i1 %99, i1* %1
  br label %100

; <label>:100                                     ; preds = %95, %33, %22
  %101 = load i1* %1
  ret i1 %101
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN15google_breakpad18MinidumpDescriptorD2Ev(%"class.google_breakpad::MinidumpDescriptor"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.google_breakpad::MinidumpDescriptor"*, align 4
  store %"class.google_breakpad::MinidumpDescriptor"* %this, %"class.google_breakpad::MinidumpDescriptor"** %1, align 4
  %2 = load %"class.google_breakpad::MinidumpDescriptor"** %1
  %3 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %2, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %3) #0
  %4 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %2, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %4) #0
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN11Accelerator12SDK_OnUnloadEv(%class.Accelerator* %this) unnamed_addr #2 align 2 {
  %1 = alloca %class.Accelerator*, align 4
  store %class.Accelerator* %this, %class.Accelerator** %1, align 4
  %2 = load %class.Accelerator** %1
  %3 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %4 = bitcast %"class.SourceMod::ISourceMod"* %3 to void (%"class.SourceMod::ISourceMod"*, void (i1)*)***
  %5 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)*** %4
  %6 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %5, i64 20
  %7 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %6
  call void %7(%"class.SourceMod::ISourceMod"* %3, void (i1)* @_Z11OnGameFrameb)
  %8 = load %"class.google_breakpad::ExceptionHandler"** @handler, align 4
  %9 = icmp eq %"class.google_breakpad::ExceptionHandler"* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %0
  call void @_ZN15google_breakpad16ExceptionHandlerD1Ev(%"class.google_breakpad::ExceptionHandler"* %8) #0
  %11 = bitcast %"class.google_breakpad::ExceptionHandler"* %8 to i8*
  call void @_ZdlPv(i8* %11) #10
  br label %12

; <label>:12                                      ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind
declare void @_ZN15google_breakpad16ExceptionHandlerD1Ev(%"class.google_breakpad::ExceptionHandler"*) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: nounwind
define hidden void @_ZN11Accelerator14OnCoreMapStartEP7edict_tii(%class.Accelerator* %this, %struct.edict_t* %pEdictList, i32 %edictCount, i32 %clientMax) unnamed_addr #2 align 2 {
  %1 = alloca %class.Accelerator*, align 4
  %2 = alloca %struct.edict_t*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.Accelerator* %this, %class.Accelerator** %1, align 4
  store %struct.edict_t* %pEdictList, %struct.edict_t** %2, align 4
  store i32 %edictCount, i32* %3, align 4
  store i32 %clientMax, i32* %4, align 4
  %5 = load %class.Accelerator** %1
  %6 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %7 = bitcast %"class.SourceMod::IGameHelpers"* %6 to i8* (%"class.SourceMod::IGameHelpers"*)***
  %8 = load i8* (%"class.SourceMod::IGameHelpers"*)*** %7
  %9 = getelementptr inbounds i8* (%"class.SourceMod::IGameHelpers"*)** %8, i64 15
  %10 = load i8* (%"class.SourceMod::IGameHelpers"*)** %9
  %11 = call i8* %10(%"class.SourceMod::IGameHelpers"* %6)
  %12 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8]* @crashMap, i32 0, i32 0), i8* %11, i32 255) #0
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i32 8
}

declare zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1 zeroext) #3

declare void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension*, i1 zeroext) #3

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::SMInterface"* %pInterface) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %"class.SourceMod::SMInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %"class.SourceMod::SMInterface"* %pInterface, %"class.SourceMod::SMInterface"** %2, align 4
  %3 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i1 false
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::SMInterface"* %pInterface) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca %"class.SourceMod::SMInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store %"class.SourceMod::SMInterface"* %pInterface, %"class.SourceMod::SMInterface"** %2, align 4
  %3 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* %this, i8* %error, i32 %maxlength) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  store i8* %error, i8** %2, align 4
  store i32 %maxlength, i32* %3, align 4
  %4 = load %"class.SourceMod::IExtensionInterface"** %1
  ret i1 true
}

declare zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension*) #3

declare i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension*) #3

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IExtensionInterface"*, align 4
  store %"class.SourceMod::IExtensionInterface"* %this, %"class.SourceMod::IExtensionInterface"** %1, align 4
  %2 = load %"class.SourceMod::IExtensionInterface"** %1
  ret void
}

declare void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension*) #3

declare void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension*, i1 zeroext) #3

declare void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension*) #3

; Function Attrs: inlinehint nounwind
define internal i32 @_Z9sys_writeiPKvj(i32 %f, i8* %b, i32 %c) #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %__res = alloca i32, align 4
  store i32 %f, i32* %1, align 4
  store i8* %b, i8** %2, align 4
  store i32 %c, i32* %3, align 4
  %4 = load i32* %1, align 4
  %5 = load i8** %2, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = load i32* %3, align 4
  %8 = call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %4, i32 %6, i32 %7) #0, !srcloc !1
  store i32 %8, i32* %__res, align 4
  br label %9

; <label>:9                                       ; preds = %0
  %10 = load i32* %__res, align 4
  %11 = icmp uge i32 %10, -4095
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %9
  %13 = load i32* %__res, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32* @__errno_location() #11
  store i32 %14, i32* %15, align 4
  store i32 -1, i32* %__res, align 4
  br label %16

; <label>:16                                      ; preds = %12, %9
  %17 = load i32* %__res, align 4
  ret i32 %17
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind
define linkonce_odr hidden i8* @_ZNK15google_breakpad18MinidumpDescriptor4pathEv(%"class.google_breakpad::MinidumpDescriptor"* %this) #2 align 2 {
  %1 = alloca %"class.google_breakpad::MinidumpDescriptor"*, align 4
  store %"class.google_breakpad::MinidumpDescriptor"* %this, %"class.google_breakpad::MinidumpDescriptor"** %1, align 4
  %2 = load %"class.google_breakpad::MinidumpDescriptor"** %1
  %3 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %2, i32 0, i32 4
  %4 = load i8** %3, align 4
  ret i8* %4
}

declare i32 @my_strlen(i8*) #3

declare i32 @my_strlcpy(i8*, i8*, i32) #3

declare i32 @my_strlcat(i8*, i8*, i32) #3

; Function Attrs: inlinehint nounwind
define internal i32 @_Z8sys_openPKcii(i8* %p, i32 %f, i32 %m) #1 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %__res = alloca i32, align 4
  store i8* %p, i8** %1, align 4
  store i32 %f, i32* %2, align 4
  store i32 %m, i32* %3, align 4
  %4 = load i8** %1, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = load i32* %2, align 4
  %7 = load i32* %3, align 4
  %8 = call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 5, i32 %5, i32 %6, i32 %7) #0, !srcloc !2
  store i32 %8, i32* %__res, align 4
  br label %9

; <label>:9                                       ; preds = %0
  %10 = load i32* %__res, align 4
  %11 = icmp uge i32 %10, -4095
  br i1 %11, label %12, label %16

; <label>:12                                      ; preds = %9
  %13 = load i32* %__res, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32* @__errno_location() #11
  store i32 %14, i32* %15, align 4
  store i32 -1, i32* %__res, align 4
  br label %16

; <label>:16                                      ; preds = %12, %9
  %17 = load i32* %__res, align 4
  ret i32 %17
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nounwind
define internal i32 @_Z9sys_closei(i32 %f) #1 {
  %1 = alloca i32, align 4
  %__res = alloca i32, align 4
  store i32 %f, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 6, i32 %2) #0, !srcloc !3
  store i32 %3, i32* %__res, align 4
  br label %4

; <label>:4                                       ; preds = %0
  %5 = load i32* %__res, align 4
  %6 = icmp uge i32 %5, -4095
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %4
  %8 = load i32* %__res, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32* @__errno_location() #11
  store i32 %9, i32* %10, align 4
  store i32 -1, i32* %__res, align 4
  br label %11

; <label>:11                                      ; preds = %7, %4
  %12 = load i32* %__res, align 4
  ret i32 %12
                                                  ; No predecessors!
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #7

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #3

declare void @_ZNSsC1Ev(%"class.std::basic_string"*) #3

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN15google_breakpad18MicrodumpExtraInfoC2Ev(%"struct.google_breakpad::MicrodumpExtraInfo"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"struct.google_breakpad::MicrodumpExtraInfo"*, align 4
  store %"struct.google_breakpad::MicrodumpExtraInfo"* %this, %"struct.google_breakpad::MicrodumpExtraInfo"** %1, align 4
  %2 = load %"struct.google_breakpad::MicrodumpExtraInfo"** %1
  %3 = getelementptr inbounds %"struct.google_breakpad::MicrodumpExtraInfo"* %2, i32 0, i32 0
  store i8* null, i8** %3, align 4
  %4 = getelementptr inbounds %"struct.google_breakpad::MicrodumpExtraInfo"* %2, i32 0, i32 1
  store i8* null, i8** %4, align 4
  %5 = getelementptr inbounds %"struct.google_breakpad::MicrodumpExtraInfo"* %2, i32 0, i32 2
  store i8* null, i8** %5, align 4
  %6 = getelementptr inbounds %"struct.google_breakpad::MicrodumpExtraInfo"* %2, i32 0, i32 3
  store i8* null, i8** %6, align 4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN9SourceMod7IThreadC2Ev(%"class.SourceMod::IThread"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::IThread"*, align 4
  store %"class.SourceMod::IThread"* %this, %"class.SourceMod::IThread"** %1, align 4
  %2 = load %"class.SourceMod::IThread"** %1
  %3 = bitcast %"class.SourceMod::IThread"* %2 to i8***
  store i8** getelementptr inbounds ([6 x i8*]* @_ZTVN9SourceMod7IThreadE, i64 0, i64 2), i8*** %3
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12UploadThreadD0Ev(%class.UploadThread* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.UploadThread*, align 4
  store %class.UploadThread* %this, %class.UploadThread** %1, align 4
  %2 = load %class.UploadThread** %1
  call void @_ZN12UploadThreadD2Ev(%class.UploadThread* %2) #0
  %3 = bitcast %class.UploadThread* %2 to i8*
  call void @_ZdlPv(i8* %3) #10
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN12UploadThread9RunThreadEPN9SourceMod13IThreadHandleE(%class.UploadThread* %this, %"class.SourceMod::IThreadHandle"* %pHandle) unnamed_addr #2 align 2 {
  %1 = alloca %class.UploadThread*, align 4
  %2 = alloca %"class.SourceMod::IThreadHandle"*, align 4
  %log = alloca %struct._IO_FILE*, align 4
  %dumps = alloca %"class.SourceMod::IDirectory"*, align 4
  %count = alloca i32, align 4
  %failed = alloca i32, align 4
  %path = alloca [512 x i8], align 1
  %response = alloca [512 x i8], align 1
  %name = alloca i8*, align 4
  %namelen = alloca i32, align 4
  %uploaded = alloca i8, align 1
  store %class.UploadThread* %this, %class.UploadThread** %1, align 4
  store %"class.SourceMod::IThreadHandle"* %pHandle, %"class.SourceMod::IThreadHandle"** %2, align 4
  %3 = load %class.UploadThread** %1
  %4 = load %"class.SourceMod::IRootConsole"** @rootconsole, align 4
  %5 = bitcast %"class.SourceMod::IRootConsole"* %4 to void (%"class.SourceMod::IRootConsole"*, i8*, ...)***
  %6 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)*** %5
  %7 = getelementptr inbounds void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %6, i64 5
  %8 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %7
  call void (%"class.SourceMod::IRootConsole"*, i8*, ...)* %8(%"class.SourceMod::IRootConsole"* %4, i8* getelementptr inbounds ([35 x i8]* @.str49, i32 0, i32 0))
  %9 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str50, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %log, align 4
  %10 = load %struct._IO_FILE** %log, align 4
  %11 = icmp ne %struct._IO_FILE* %10, null
  br i1 %11, label %19, label %12

; <label>:12                                      ; preds = %0
  %13 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %14 = bitcast %"class.SourceMod::ISourceMod"* %13 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %15 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %14
  %16 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %15, i64 7
  %17 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %16
  %18 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %17(%"class.SourceMod::ISourceMod"* %13, %"class.SourceMod::IExtension"* %18, i8* getelementptr inbounds ([40 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0))
  br label %19

; <label>:19                                      ; preds = %12, %0
  %20 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %21 = bitcast %"class.SourceMod::ILibrarySys"* %20 to %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)***
  %22 = load %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)*** %21
  %23 = getelementptr inbounds %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)** %22, i64 4
  %24 = load %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)** %23
  %25 = call %"class.SourceMod::IDirectory"* %24(%"class.SourceMod::ILibrarySys"* %20, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0))
  store %"class.SourceMod::IDirectory"* %25, %"class.SourceMod::IDirectory"** %dumps, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %failed, align 4
  br label %26

; <label>:26                                      ; preds = %119, %64, %40, %19
  %27 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  %28 = bitcast %"class.SourceMod::IDirectory"* %27 to i1 (%"class.SourceMod::IDirectory"*)***
  %29 = load i1 (%"class.SourceMod::IDirectory"*)*** %28
  %30 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %29, i64 2
  %31 = load i1 (%"class.SourceMod::IDirectory"*)** %30
  %32 = call zeroext i1 %31(%"class.SourceMod::IDirectory"* %27)
  br i1 %32, label %33, label %125

; <label>:33                                      ; preds = %26
  %34 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  %35 = bitcast %"class.SourceMod::IDirectory"* %34 to i1 (%"class.SourceMod::IDirectory"*)***
  %36 = load i1 (%"class.SourceMod::IDirectory"*)*** %35
  %37 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %36, i64 6
  %38 = load i1 (%"class.SourceMod::IDirectory"*)** %37
  %39 = call zeroext i1 %38(%"class.SourceMod::IDirectory"* %34)
  br i1 %39, label %46, label %40

; <label>:40                                      ; preds = %33
  %41 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  %42 = bitcast %"class.SourceMod::IDirectory"* %41 to void (%"class.SourceMod::IDirectory"*)***
  %43 = load void (%"class.SourceMod::IDirectory"*)*** %42
  %44 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %43, i64 3
  %45 = load void (%"class.SourceMod::IDirectory"*)** %44
  call void %45(%"class.SourceMod::IDirectory"* %41)
  br label %26

; <label>:46                                      ; preds = %33
  %47 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  %48 = bitcast %"class.SourceMod::IDirectory"* %47 to i8* (%"class.SourceMod::IDirectory"*)***
  %49 = load i8* (%"class.SourceMod::IDirectory"*)*** %48
  %50 = getelementptr inbounds i8* (%"class.SourceMod::IDirectory"*)** %49, i64 4
  %51 = load i8* (%"class.SourceMod::IDirectory"*)** %50
  %52 = call i8* %51(%"class.SourceMod::IDirectory"* %47)
  store i8* %52, i8** %name, align 4
  %53 = load i8** %name, align 4
  %54 = call i32 @strlen(i8* %53) #12
  store i32 %54, i32* %namelen, align 4
  %55 = load i32* %namelen, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %64, label %57

; <label>:57                                      ; preds = %46
  %58 = load i32* %namelen, align 4
  %59 = sub nsw i32 %58, 4
  %60 = load i8** %name, align 4
  %61 = getelementptr inbounds i8* %60, i32 %59
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0)) #12
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

; <label>:64                                      ; preds = %57, %46
  %65 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  %66 = bitcast %"class.SourceMod::IDirectory"* %65 to void (%"class.SourceMod::IDirectory"*)***
  %67 = load void (%"class.SourceMod::IDirectory"*)*** %66
  %68 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %67, i64 3
  %69 = load void (%"class.SourceMod::IDirectory"*)** %68
  call void %69(%"class.SourceMod::IDirectory"* %65)
  br label %26

; <label>:70                                      ; preds = %57
  %71 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %72 = bitcast %"class.SourceMod::ISourceMod"* %71 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %73 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %72
  %74 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %73, i64 21
  %75 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %74
  %76 = getelementptr inbounds [512 x i8]* %path, i32 0, i32 0
  %77 = load i8** %name, align 4
  %78 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %75(%"class.SourceMod::ISourceMod"* %71, i8* %76, i32 512, i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %77)
  %79 = getelementptr inbounds [512 x i8]* %path, i32 0, i32 0
  %80 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  %81 = call zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %79, i8* %80, i32 512)
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %uploaded, align 1
  %83 = load i8* %uploaded, align 1
  %84 = trunc i8 %83 to i1
  br i1 %84, label %85, label %102

; <label>:85                                      ; preds = %70
  %86 = load i32* %count, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %count, align 4
  %88 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %89 = bitcast %"class.SourceMod::ISourceMod"* %88 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %90 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %89
  %91 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %90, i64 7
  %92 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %91
  %93 = load %"class.SourceMod::IExtension"** @myself, align 4
  %94 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %92(%"class.SourceMod::ISourceMod"* %88, %"class.SourceMod::IExtension"* %93, i8* getelementptr inbounds ([36 x i8]* @.str54, i32 0, i32 0), i8* %94)
  %95 = load %struct._IO_FILE** %log, align 4
  %96 = icmp ne %struct._IO_FILE* %95, null
  br i1 %96, label %97, label %101

; <label>:97                                      ; preds = %85
  %98 = load %struct._IO_FILE** %log, align 4
  %99 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  %100 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([25 x i8]* @.str55, i32 0, i32 0), i8* %99)
  br label %101

; <label>:101                                     ; preds = %97, %85
  br label %119

; <label>:102                                     ; preds = %70
  %103 = load i32* %failed, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %failed, align 4
  %105 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %106 = bitcast %"class.SourceMod::ISourceMod"* %105 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %107 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %106
  %108 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %107, i64 7
  %109 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %108
  %110 = load %"class.SourceMod::IExtension"** @myself, align 4
  %111 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %109(%"class.SourceMod::ISourceMod"* %105, %"class.SourceMod::IExtension"* %110, i8* getelementptr inbounds ([44 x i8]* @.str56, i32 0, i32 0), i8* %111)
  %112 = load %struct._IO_FILE** %log, align 4
  %113 = icmp ne %struct._IO_FILE* %112, null
  br i1 %113, label %114, label %118

; <label>:114                                     ; preds = %102
  %115 = load %struct._IO_FILE** %log, align 4
  %116 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  %117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([33 x i8]* @.str57, i32 0, i32 0), i8* %116)
  br label %118

; <label>:118                                     ; preds = %114, %102
  br label %119

; <label>:119                                     ; preds = %118, %101
  %120 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  %121 = bitcast %"class.SourceMod::IDirectory"* %120 to void (%"class.SourceMod::IDirectory"*)***
  %122 = load void (%"class.SourceMod::IDirectory"*)*** %121
  %123 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %122, i64 3
  %124 = load void (%"class.SourceMod::IDirectory"*)** %123
  call void %124(%"class.SourceMod::IDirectory"* %120)
  br label %26

; <label>:125                                     ; preds = %26
  %126 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %127 = bitcast %"class.SourceMod::ILibrarySys"* %126 to void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)***
  %128 = load void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)*** %127
  %129 = getelementptr inbounds void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)** %128, i64 5
  %130 = load void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)** %129
  %131 = load %"class.SourceMod::IDirectory"** %dumps, align 4
  call void %130(%"class.SourceMod::ILibrarySys"* %126, %"class.SourceMod::IDirectory"* %131)
  %132 = load %struct._IO_FILE** %log, align 4
  %133 = icmp ne %struct._IO_FILE* %132, null
  br i1 %133, label %134, label %137

; <label>:134                                     ; preds = %125
  %135 = load %struct._IO_FILE** %log, align 4
  %136 = call i32 @fclose(%struct._IO_FILE* %135)
  br label %137

; <label>:137                                     ; preds = %134, %125
  %138 = load %"class.SourceMod::IRootConsole"** @rootconsole, align 4
  %139 = bitcast %"class.SourceMod::IRootConsole"* %138 to void (%"class.SourceMod::IRootConsole"*, i8*, ...)***
  %140 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)*** %139
  %141 = getelementptr inbounds void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %140, i64 5
  %142 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %141
  %143 = load i32* %count, align 4
  %144 = load i32* %failed, align 4
  call void (%"class.SourceMod::IRootConsole"*, i8*, ...)* %142(%"class.SourceMod::IRootConsole"* %138, i8* getelementptr inbounds ([61 x i8]* @.str58, i32 0, i32 0), i32 %143, i32 %144)
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN12UploadThread11OnTerminateEPN9SourceMod13IThreadHandleEb(%class.UploadThread* %this, %"class.SourceMod::IThreadHandle"* %pHandle, i1 zeroext %cancel) unnamed_addr #2 align 2 {
  %1 = alloca %class.UploadThread*, align 4
  %2 = alloca %"class.SourceMod::IThreadHandle"*, align 4
  %3 = alloca i8, align 1
  store %class.UploadThread* %this, %class.UploadThread** %1, align 4
  store %"class.SourceMod::IThreadHandle"* %pHandle, %"class.SourceMod::IThreadHandle"** %2, align 4
  %4 = zext i1 %cancel to i8
  store i8 %4, i8* %3, align 1
  %5 = load %class.UploadThread** %1
  %6 = load %"class.SourceMod::IRootConsole"** @rootconsole, align 4
  %7 = bitcast %"class.SourceMod::IRootConsole"* %6 to void (%"class.SourceMod::IRootConsole"*, i8*, ...)***
  %8 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)*** %7
  %9 = getelementptr inbounds void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %8, i64 5
  %10 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %9
  %11 = load i8* %3, align 1
  %12 = trunc i8 %11 to i1
  %13 = select i1 %12, i8* getelementptr inbounds ([5 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str48, i32 0, i32 0)
  call void (%"class.SourceMod::IRootConsole"*, i8*, ...)* %10(%"class.SourceMod::IRootConsole"* %6, i8* getelementptr inbounds ([54 x i8]* @.str46, i32 0, i32 0), i8* %13)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #8

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod7IThreadD2Ev(%"class.SourceMod::IThread"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IThread"*, align 4
  store %"class.SourceMod::IThread"* %this, %"class.SourceMod::IThread"** %1, align 4
  %2 = load %"class.SourceMod::IThread"** %1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN9SourceMod7IThreadD0Ev(%"class.SourceMod::IThread"* %this) unnamed_addr #2 align 2 {
  %1 = alloca %"class.SourceMod::IThread"*, align 4
  store %"class.SourceMod::IThread"* %this, %"class.SourceMod::IThread"** %1, align 4
  %2 = load %"class.SourceMod::IThread"** %1
  call void @_ZN9SourceMod7IThreadD2Ev(%"class.SourceMod::IThread"* %2) #0
  %3 = bitcast %"class.SourceMod::IThread"* %2 to i8*
  call void @_ZdlPv(i8* %3) #10
  ret void
}

declare void @__cxa_pure_virtual()

declare void @_ZN12SDKExtensionC2Ev(%class.SDKExtension*) #3

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init11()
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!1 = metadata !{i32 -2144093037, i32 -2144092956, i32 -2144092439, i32 -2144092796}
!2 = metadata !{i32 -2144155172, i32 -2144155091, i32 -2144154578, i32 -2144154931}
!3 = metadata !{i32 -2144228211, i32 -2144228130, i32 -2144227675, i32 -2144227970}
