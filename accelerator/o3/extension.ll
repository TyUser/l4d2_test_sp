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
%"class.SourceMod::MemoryDownloader" = type { %"class.SourceMod::ITransferHandler", i8*, i32, i32 }
%"class.SourceMod::ITransferHandler" = type { i32 (...)** }
%"class.SourceMod::IWebForm" = type { i32 (...)** }
%"class.SourceMod::IWebTransfer" = type { i32 (...)** }
%class.ICommandLine = type opaque
%class.VFuncEmptyClass = type { i8 }
%"class.std::allocator" = type { i8 }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep" = type { %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" }
%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep_base" = type { i32, i32, i32 }
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
@steamInf = hidden global [1024 x i8] zeroinitializer, align 8
@dumpStoragePath = hidden global [512 x i8] zeroinitializer, align 1
@logPath = hidden global [512 x i8] zeroinitializer, align 1
@handler = hidden global %"class.google_breakpad::ExceptionHandler"* null, align 4
@SignalHandler = hidden global void (i32, %struct.siginfo_t*, i8*)* null, align 4
@_ZL17kExceptionSignals = internal unnamed_addr constant [5 x i32] [i32 11, i32 6, i32 8, i32 4, i32 7], align 4
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
@_ZTV11Accelerator = hidden unnamed_addr constant [26 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11Accelerator to i8*), i8* bitcast (i32 (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv to i8*), i8* bitcast (i1 (%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1)* @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension17OnExtensionUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnExtensionsAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension22OnExtensionPauseChangeEb to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*, %"class.SourceMod::SMInterface"*)* @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE to i8*), i8* bitcast (i1 (%"class.SourceMod::IExtensionInterface"*, i8*, i32)* @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj to i8*), i8* bitcast (i1 (%class.SDKExtension*)* @_ZN12SDKExtension18IsMetamodExtensionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension16GetExtensionNameEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionURLEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension15GetExtensionTagEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension18GetExtensionAuthorEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension21GetExtensionVerStringEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension23GetExtensionDescriptionEv to i8*), i8* bitcast (i8* (%class.SDKExtension*)* @_ZN12SDKExtension22GetExtensionDateStringEv to i8*), i8* bitcast (void (%class.Accelerator*, %struct.edict_t*, i32, i32)* @_ZN11Accelerator14OnCoreMapStartEP7edict_tii to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension21OnDependenciesDroppedEv to i8*), i8* bitcast (void (%"class.SourceMod::IExtensionInterface"*)* @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv to i8*), i8* bitcast (i1 (%class.Accelerator*, i8*, i32, i1)* @_ZN11Accelerator10SDK_OnLoadEPcjb to i8*), i8* bitcast (void (%class.Accelerator*)* @_ZN11Accelerator12SDK_OnUnloadEv to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension15SDK_OnAllLoadedEv to i8*), i8* bitcast (void (%class.SDKExtension*, i1)* @_ZN12SDKExtension17SDK_OnPauseChangeEb to i8*), i8* bitcast (void (%class.SDKExtension*)* @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS11Accelerator = hidden constant [14 x i8] c"11Accelerator\00"
@_ZTI12SDKExtension = external constant i8*
@_ZTI11Accelerator = hidden unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8]* @_ZTS11Accelerator, i32 0, i32 0), i8* bitcast (i8** @_ZTI12SDKExtension to i8*) }
@_ZNSs4_Rep20_S_empty_rep_storageE = external global [0 x i32]
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
@_ZTV12UploadThread = linkonce_odr hidden unnamed_addr constant [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12UploadThread to i8*), i8* bitcast (void (%"class.SourceMod::IThread"*)* @_ZN9SourceMod7IThreadD2Ev to i8*), i8* bitcast (void (%class.UploadThread*)* @_ZN12UploadThreadD0Ev to i8*), i8* bitcast (void (%class.UploadThread*, %"class.SourceMod::IThreadHandle"*)* @_ZN12UploadThread9RunThreadEPN9SourceMod13IThreadHandleE to i8*), i8* bitcast (void (%class.UploadThread*, %"class.SourceMod::IThreadHandle"*, i1)* @_ZN12UploadThread11OnTerminateEPN9SourceMod13IThreadHandleEb to i8*)]
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
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind
define hidden void @_Z11OnGameFrameb(i1 zeroext %simulating) #0 {
  %oact = alloca %struct.sigaction, align 4
  %act = alloca %struct.sigaction, align 4
  %1 = bitcast %struct.sigaction* %oact to i8*
  call void @llvm.lifetime.start(i64 140, i8* %1) #1
  %2 = bitcast %struct.sigaction* %oact to void (i32, %struct.siginfo_t*, i8*)**
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i32 %12, 5
  br i1 %4, label %5, label %.critedge

; <label>:5                                       ; preds = %0, %3
  %i.06 = phi i32 [ 0, %0 ], [ %12, %3 ]
  %6 = getelementptr inbounds [5 x i32]* @_ZL17kExceptionSignals, i32 0, i32 %i.06
  %7 = load i32* %6, align 4
  %8 = call i32 @sigaction(i32 %7, %struct.sigaction* null, %struct.sigaction* %oact) #1
  %9 = load void (i32, %struct.siginfo_t*, i8*)** %2, align 4
  %10 = load void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %11 = icmp eq void (i32, %struct.siginfo_t*, i8*)* %9, %10
  %12 = add nsw i32 %i.06, 1
  br i1 %11, label %3, label %.critedge.loopexit7

.critedge.loopexit7:                              ; preds = %5
  %13 = bitcast %struct.sigaction* %act to i8*
  call void @llvm.lifetime.start(i64 140, i8* %13) #1
  call void @llvm.memset.p0i8.i32(i8* %13, i8 0, i32 140, i32 4, i1 false)
  %14 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 1
  %15 = call i32 @sigemptyset(%struct.__sigset_t* %14) #1
  %16 = call i32 @sigaddset(%struct.__sigset_t* %14, i32 11) #1
  %17 = call i32 @sigaddset(%struct.__sigset_t* %14, i32 6) #1
  %18 = call i32 @sigaddset(%struct.__sigset_t* %14, i32 8) #1
  %19 = call i32 @sigaddset(%struct.__sigset_t* %14, i32 4) #1
  %20 = call i32 @sigaddset(%struct.__sigset_t* %14, i32 7) #1
  %21 = load void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %22 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 0, i32 0
  %.c = bitcast void (i32, %struct.siginfo_t*, i8*)* %21 to void (i32)*
  store void (i32)* %.c, void (i32)** %22, align 4
  %23 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 2
  store i32 134217732, i32* %23, align 4
  %24 = call i32 @sigaction(i32 11, %struct.sigaction* %act, %struct.sigaction* null) #1
  %25 = call i32 @sigaction(i32 6, %struct.sigaction* %act, %struct.sigaction* null) #1
  %26 = call i32 @sigaction(i32 8, %struct.sigaction* %act, %struct.sigaction* null) #1
  %27 = call i32 @sigaction(i32 4, %struct.sigaction* %act, %struct.sigaction* null) #1
  %28 = call i32 @sigaction(i32 7, %struct.sigaction* %act, %struct.sigaction* null) #1
  br label %.critedge

.critedge:                                        ; preds = %3, %.critedge.loopexit7
  call void @llvm.lifetime.end(i64 140, i8* %1) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #0

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
define hidden zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %path, i8* %response, i32 %maxlen) #0 {
  %metapath = alloca [512 x i8], align 1
  %data = alloca %"class.SourceMod::MemoryDownloader", align 4
  %1 = load %"class.SourceMod::IWebternet"** @webternet, align 4
  %2 = bitcast %"class.SourceMod::IWebternet"* %1 to %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)***
  %3 = load %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)*** %2, align 4
  %4 = getelementptr inbounds %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)** %3, i32 4
  %5 = load %"class.SourceMod::IWebForm"* (%"class.SourceMod::IWebternet"*)** %4, align 4
  %6 = call %"class.SourceMod::IWebForm"* %5(%"class.SourceMod::IWebternet"* %1) #1
  %7 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %8 = bitcast %"class.SourceMod::ISourceMod"* %7 to i8* (%"class.SourceMod::ISourceMod"*, i8*)***
  %9 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)*** %8, align 4
  %10 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*, i8*)** %9, i32 24
  %11 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)** %10, align 4
  %12 = call i8* %11(%"class.SourceMod::ISourceMod"* %7, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0)) #1
  %13 = icmp eq i8* %12, null
  %.pre = bitcast %"class.SourceMod::IWebForm"* %6 to i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)***
  br i1 %13, label %._crit_edge, label %14

; <label>:14                                      ; preds = %0
  %15 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %.pre, align 4
  %16 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %15, i32 2
  %17 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %16, align 4
  %18 = call zeroext i1 %17(%"class.SourceMod::IWebForm"* %6, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* %12) #1
  br label %._crit_edge

._crit_edge:                                      ; preds = %0, %14
  %19 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %.pre, align 4
  %20 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %19, i32 2
  %21 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %20, align 4
  %22 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %23 = bitcast %"class.SourceMod::ISourceMod"* %22 to i8* (%"class.SourceMod::ISourceMod"*)***
  %24 = load i8* (%"class.SourceMod::ISourceMod"*)*** %23, align 4
  %25 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %24, i32 13
  %26 = load i8* (%"class.SourceMod::ISourceMod"*)** %25, align 4
  %27 = call i8* %26(%"class.SourceMod::ISourceMod"* %22) #1
  %28 = call zeroext i1 %21(%"class.SourceMod::IWebForm"* %6, i8* getelementptr inbounds ([14 x i8]* @.str2, i32 0, i32 0), i8* %27) #1
  %29 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %.pre, align 4
  %30 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %29, i32 2
  %31 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %30, align 4
  %32 = call zeroext i1 %31(%"class.SourceMod::IWebForm"* %6, i8* getelementptr inbounds ([17 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) #1
  %33 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %.pre, align 4
  %34 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %33, i32 3
  %35 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %34, align 4
  %36 = call zeroext i1 %35(%"class.SourceMod::IWebForm"* %6, i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i8* %path) #1
  %37 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  call void @llvm.lifetime.start(i64 512, i8* %37) #1
  %38 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %39 = bitcast %"class.SourceMod::ISourceMod"* %38 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %40 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %39, align 4
  %41 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %40, i32 21
  %42 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %41, align 4
  %43 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %42(%"class.SourceMod::ISourceMod"* %38, i8* %37, i32 512, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* %path) #1
  %44 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %45 = bitcast %"class.SourceMod::ILibrarySys"* %44 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %46 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %45, align 4
  %47 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %46, i32 6
  %48 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %47, align 4
  %49 = call zeroext i1 %48(%"class.SourceMod::ILibrarySys"* %44, i8* %37) #1
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %._crit_edge
  %51 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %.pre, align 4
  %52 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %51, i32 3
  %53 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %52, align 4
  %54 = call zeroext i1 %53(%"class.SourceMod::IWebForm"* %6, i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0), i8* %37) #1
  br label %55

; <label>:55                                      ; preds = %50, %._crit_edge
  call void @_ZN9SourceMod16MemoryDownloaderC1Ev(%"class.SourceMod::MemoryDownloader"* %data) #1
  %56 = load %"class.SourceMod::IWebternet"** @webternet, align 4
  %57 = bitcast %"class.SourceMod::IWebternet"* %56 to %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)***
  %58 = load %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)*** %57, align 4
  %59 = getelementptr inbounds %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)** %58, i32 3
  %60 = load %"class.SourceMod::IWebTransfer"* (%"class.SourceMod::IWebternet"*)** %59, align 4
  %61 = call %"class.SourceMod::IWebTransfer"* %60(%"class.SourceMod::IWebternet"* %56) #1
  %62 = bitcast %"class.SourceMod::IWebTransfer"* %61 to i1 (%"class.SourceMod::IWebTransfer"*, i1)***
  %63 = load i1 (%"class.SourceMod::IWebTransfer"*, i1)*** %62, align 4
  %64 = getelementptr inbounds i1 (%"class.SourceMod::IWebTransfer"*, i1)** %63, i32 7
  %65 = load i1 (%"class.SourceMod::IWebTransfer"*, i1)** %64, align 4
  %66 = call zeroext i1 %65(%"class.SourceMod::IWebTransfer"* %61, i1 zeroext true) #1
  %67 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %68 = bitcast %"class.SourceMod::ISourceMod"* %67 to i8* (%"class.SourceMod::ISourceMod"*, i8*)***
  %69 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)*** %68, align 4
  %70 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*, i8*)** %69, i32 24
  %71 = load i8* (%"class.SourceMod::ISourceMod"*, i8*)** %70, align 4
  %72 = call i8* %71(%"class.SourceMod::ISourceMod"* %67, i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) #1
  %73 = icmp ne i8* %72, null
  %. = select i1 %73, i8* %72, i8* getelementptr inbounds ([33 x i8]* @.str9, i32 0, i32 0)
  %74 = bitcast %"class.SourceMod::IWebTransfer"* %61 to i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)***
  %75 = load i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)*** %74, align 4
  %76 = getelementptr inbounds i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)** %75, i32 6
  %77 = load i1 (%"class.SourceMod::IWebTransfer"*, i8*, %"class.SourceMod::IWebForm"*, %"class.SourceMod::ITransferHandler"*, i8*)** %76, align 4
  %78 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %data, i32 0, i32 0
  %79 = call zeroext i1 %77(%"class.SourceMod::IWebTransfer"* %61, i8* %., %"class.SourceMod::IWebForm"* %6, %"class.SourceMod::ITransferHandler"* %78, i8* null) #1
  %80 = icmp eq i8* %response, null
  br i1 %80, label %106, label %81

; <label>:81                                      ; preds = %55
  br i1 %79, label %82, label %89

; <label>:82                                      ; preds = %81
  %83 = call i32 @_ZN9SourceMod16MemoryDownloader7GetSizeEv(%"class.SourceMod::MemoryDownloader"* %data) #1
  %84 = icmp slt i32 %83, %maxlen
  %85 = add nsw i32 %maxlen, -1
  %.1 = select i1 %84, i32 %83, i32 %85
  %86 = call i8* @_ZN9SourceMod16MemoryDownloader9GetBufferEv(%"class.SourceMod::MemoryDownloader"* %data) #1
  %87 = call i8* @strncpy(i8* %response, i8* %86, i32 %.1) #1
  %88 = getelementptr inbounds i8* %response, i32 %.1
  store i8 0, i8* %88, align 1
  br label %106

; <label>:89                                      ; preds = %81
  %90 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %91 = bitcast %"class.SourceMod::ISourceMod"* %90 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %92 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %91, align 4
  %93 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %92, i32 21
  %94 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %93, align 4
  %95 = bitcast %"class.SourceMod::IWebTransfer"* %61 to i8* (%"class.SourceMod::IWebTransfer"*)***
  %96 = load i8* (%"class.SourceMod::IWebTransfer"*)*** %95, align 4
  %97 = getelementptr inbounds i8* (%"class.SourceMod::IWebTransfer"*)** %96, i32 2
  %98 = load i8* (%"class.SourceMod::IWebTransfer"*)** %97, align 4
  %99 = call i8* %98(%"class.SourceMod::IWebTransfer"* %61) #1
  %100 = bitcast %"class.SourceMod::IWebTransfer"* %61 to i32 (%"class.SourceMod::IWebTransfer"*)***
  %101 = load i32 (%"class.SourceMod::IWebTransfer"*)*** %100, align 4
  %102 = getelementptr inbounds i32 (%"class.SourceMod::IWebTransfer"*)** %101, i32 3
  %103 = load i32 (%"class.SourceMod::IWebTransfer"*)** %102, align 4
  %104 = call i32 %103(%"class.SourceMod::IWebTransfer"* %61) #1
  %105 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %94(%"class.SourceMod::ISourceMod"* %90, i8* %response, i32 %maxlen, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i8* %99, i32 %104) #1
  br label %106

; <label>:106                                     ; preds = %55, %82, %89
  %107 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %108 = bitcast %"class.SourceMod::ILibrarySys"* %107 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %109 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %108, align 4
  %110 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %109, i32 6
  %111 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %110, align 4
  %112 = call zeroext i1 %111(%"class.SourceMod::ILibrarySys"* %107, i8* %37) #1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %106
  %114 = call i32 @unlink(i8* %37) #1
  br label %115

; <label>:115                                     ; preds = %113, %106
  %116 = call i32 @unlink(i8* %path) #1
  call void @_ZN9SourceMod16MemoryDownloaderD1Ev(%"class.SourceMod::MemoryDownloader"* %data) #1
  call void @llvm.lifetime.end(i64 512, i8* %37) #1
  ret i1 %79
}

declare void @_ZN9SourceMod16MemoryDownloaderC1Ev(%"class.SourceMod::MemoryDownloader"*) #2

declare i32 @_ZN9SourceMod16MemoryDownloader7GetSizeEv(%"class.SourceMod::MemoryDownloader"*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i32) #0

declare i8* @_ZN9SourceMod16MemoryDownloader9GetBufferEv(%"class.SourceMod::MemoryDownloader"*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) #0

; Function Attrs: nounwind
declare void @_ZN9SourceMod16MemoryDownloaderD1Ev(%"class.SourceMod::MemoryDownloader"*) #0

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod7IThreadD2Ev(%"class.SourceMod::IThread"* nocapture %this) unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: nounwind
define hidden i8* @_Z10GetCmdLinev() #0 {
  %1 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %5 = icmp eq %"class.SourceMod::IGameConfig"* %4, null
  br i1 %5, label %40, label %6

; <label>:6                                       ; preds = %3
  %7 = bitcast %"class.SourceMod::IGameConfig"* %4 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)***
  %8 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)*** %7, align 4
  %9 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)** %8, align 4
  %10 = tail call zeroext i1 %9(%"class.SourceMod::IGameConfig"* %4, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i32* @_ZZ10GetCmdLinevE16getCmdLineOffset) #1
  %.not = xor i1 %10, true
  %11 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %12 = icmp eq i32 %11, 0
  %or.cond = or i1 %12, %.not
  br i1 %or.cond, label %40, label %13

; <label>:13                                      ; preds = %6, %0
  %14 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %15 = bitcast %"class.SourceMod::IGameHelpers"* %14 to %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)***
  %16 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)*** %15, align 4
  %17 = getelementptr inbounds %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %16, i32 27
  %18 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %17, align 4
  %19 = tail call %class.ICommandLine* %18(%"class.SourceMod::IGameHelpers"* %14) #1
  %20 = bitcast %class.ICommandLine* %19 to i8***
  %21 = load i8*** %20, align 4
  %22 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %23 = getelementptr inbounds i8** %21, i32 %22
  %24 = load i8** %23, align 4
  %25 = ptrtoint i8* %24 to i32
  %26 = bitcast %class.ICommandLine* %19 to %class.VFuncEmptyClass*
  %27 = and i32 %25, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

; <label>:29                                      ; preds = %13
  %30 = bitcast i8** %21 to i8*
  %31 = add i32 %25, -1
  %32 = getelementptr i8* %30, i32 %31
  %33 = bitcast i8* %32 to i8* (%class.VFuncEmptyClass*)**
  %34 = load i8* (%class.VFuncEmptyClass*)** %33, align 4
  br label %37

; <label>:35                                      ; preds = %13
  %36 = bitcast i8* %24 to i8* (%class.VFuncEmptyClass*)*
  br label %37

; <label>:37                                      ; preds = %35, %29
  %38 = phi i8* (%class.VFuncEmptyClass*)* [ %34, %29 ], [ %36, %35 ]
  %39 = tail call i8* %38(%class.VFuncEmptyClass* %26) #1
  br label %40

; <label>:40                                      ; preds = %6, %3, %37
  %.0 = phi i8* [ %39, %37 ], [ getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), %3 ], [ getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), %6 ]
  ret i8* %.0
}

; Function Attrs: nounwind
define hidden zeroext i1 @_ZN11Accelerator10SDK_OnLoadEPcjb(%class.Accelerator* %this, i8* %error, i32 %maxlength, i1 zeroext %late) unnamed_addr #0 align 2 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::allocator", align 1
  %gameconfigError = alloca [256 x i8], align 1
  %descriptor = alloca %"class.google_breakpad::MinidumpDescriptor", align 4
  %7 = alloca %"class.std::basic_string", align 4
  %8 = alloca %"class.std::allocator", align 1
  %oact = alloca %struct.sigaction, align 4
  %steamInfPath = alloca [512 x i8], align 1
  %steamInfTemp = alloca [1024 x i8], align 1
  %9 = load %"class.SourceMod::IShareSys"** @sharesys, align 4
  %10 = bitcast %"class.SourceMod::IShareSys"* %9 to void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)***
  %11 = load void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)*** %10, align 4
  %12 = getelementptr inbounds void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)** %11, i32 8
  %13 = load void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)** %12, align 4
  %14 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void %13(%"class.SourceMod::IShareSys"* %9, %"class.SourceMod::IExtension"* %14, i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), i1 zeroext true, i1 zeroext true) #1
  %15 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %16 = bitcast %"class.SourceMod::IShareSys"* %15 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %17 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %16, align 4
  %18 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %17, i32 1
  %19 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %18, align 4
  %20 = load %"class.SourceMod::IExtension"** @myself, align 4
  %21 = call zeroext i1 %19(%"class.SourceMod::IShareSys"* %15, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %20, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IWebternet"** @webternet to %"class.SourceMod::SMInterface"**)) #1
  br i1 %21, label %31, label %22

; <label>:22                                      ; preds = %0
  %23 = icmp ne i8* %error, null
  %24 = icmp ne i32 %maxlength, 0
  %or.cond = and i1 %23, %24
  br i1 %or.cond, label %25, label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit

; <label>:25                                      ; preds = %22
  %26 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0)) #1
  %27 = icmp ult i32 %26, %maxlength
  br i1 %27, label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit, label %28

; <label>:28                                      ; preds = %25
  %29 = add i32 %maxlength, -1
  %30 = getelementptr inbounds i8* %error, i32 %29
  store i8 0, i8* %30, align 1
  br label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit

; <label>:31                                      ; preds = %0
  %32 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %33 = bitcast %"class.SourceMod::ISourceMod"* %32 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %34 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %33, align 4
  %35 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %34, i32 5
  %36 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %35, align 4
  %37 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %36(%"class.SourceMod::ISourceMod"* %32, i32 2, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0)) #1
  %38 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %39 = bitcast %"class.SourceMod::ILibrarySys"* %38 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %40 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %39, align 4
  %41 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %40, i32 8
  %42 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %41, align 4
  %43 = call zeroext i1 %42(%"class.SourceMod::ILibrarySys"* %38, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  br i1 %43, label %60, label %44

; <label>:44                                      ; preds = %31
  %45 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %46 = bitcast %"class.SourceMod::ILibrarySys"* %45 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %47 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %46, align 4
  %48 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %47, i32 12
  %49 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %48, align 4
  %50 = call zeroext i1 %49(%"class.SourceMod::ILibrarySys"* %45, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  br i1 %50, label %60, label %51

; <label>:51                                      ; preds = %44
  %52 = icmp eq i8* %error, null
  br i1 %52, label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit, label %53

; <label>:53                                      ; preds = %51
  %54 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %55 = bitcast %"class.SourceMod::ISourceMod"* %54 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %56 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %55, align 4
  %57 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %56, i32 21
  %58 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %57, align 4
  %59 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %58(%"class.SourceMod::ISourceMod"* %54, i8* %error, i32 %maxlength, i8* getelementptr inbounds ([45 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  br label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit

; <label>:60                                      ; preds = %44, %31
  %61 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %62 = bitcast %"class.SourceMod::ISourceMod"* %61 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %63 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %62, align 4
  %64 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %63, i32 5
  %65 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %64, align 4
  %66 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %65(%"class.SourceMod::ISourceMod"* %61, i32 2, i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([21 x i8]* @.str19, i32 0, i32 0)) #1
  %67 = load %"class.SourceMod::IThreader"** @threader, align 4
  %68 = getelementptr inbounds %"class.SourceMod::IThreader"* %67, i32 0, i32 1
  %69 = bitcast %"class.SourceMod::IThreadCreator"* %68 to void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)***
  %70 = load void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)*** %69, align 4
  %71 = getelementptr inbounds void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)** %70, i32 2
  %72 = load void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)** %71, align 4
  call void %72(%"class.SourceMod::IThreadCreator"* %68, %"class.SourceMod::IThread"* getelementptr inbounds (%class.UploadThread* @uploadThread, i32 0, i32 0)) #1
  %73 = getelementptr inbounds [256 x i8]* %gameconfigError, i32 0, i32 0
  call void @llvm.lifetime.start(i64 256, i8* %73) #1
  %74 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %75 = bitcast %"class.SourceMod::IGameConfigManager"* %74 to i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)***
  %76 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)*** %75, align 4
  %77 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %76, i32 3
  %78 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %77, align 4
  %79 = call zeroext i1 %78(%"class.SourceMod::IGameConfigManager"* %74, i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), %"class.SourceMod::IGameConfig"** @gameconfig, i8* %73, i32 256) #1
  br i1 %79, label %87, label %80

; <label>:80                                      ; preds = %60
  %81 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %82 = bitcast %"class.SourceMod::ISourceMod"* %81 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %83 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %82, align 4
  %84 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %83, i32 6
  %85 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %84, align 4
  %86 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %85(%"class.SourceMod::ISourceMod"* %81, %"class.SourceMod::IExtension"* %86, i8* getelementptr inbounds ([113 x i8]* @.str21, i32 0, i32 0), i8* %73) #1
  br label %111

; <label>:87                                      ; preds = %60
  %88 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %89 = bitcast %"class.SourceMod::IGameConfig"* %88 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %90 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %89, align 4
  %91 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %90, i32 3
  %92 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %91, align 4
  %93 = call zeroext i1 %92(%"class.SourceMod::IGameConfig"* %88, i8* getelementptr inbounds ([8 x i8]* @.str22, i32 0, i32 0), i8** bitcast (void (i8*, i32)** @GetSpew to i8**)) #1
  br i1 %93, label %101, label %94

; <label>:94                                      ; preds = %87
  %95 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %96 = bitcast %"class.SourceMod::ISourceMod"* %95 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %97 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %96, align 4
  %98 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %97, i32 6
  %99 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %98, align 4
  %100 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %99(%"class.SourceMod::ISourceMod"* %95, %"class.SourceMod::IExtension"* %100, i8* getelementptr inbounds ([94 x i8]* @.str23, i32 0, i32 0)) #1
  br label %111

; <label>:101                                     ; preds = %87
  %102 = load void (i8*, i32)** @GetSpew, align 4
  %103 = icmp eq void (i8*, i32)* %102, null
  br i1 %103, label %104, label %111

; <label>:104                                     ; preds = %101
  %105 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %106 = bitcast %"class.SourceMod::ISourceMod"* %105 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %107 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %106, align 4
  %108 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %107, i32 6
  %109 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %108, align 4
  %110 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %109(%"class.SourceMod::ISourceMod"* %105, %"class.SourceMod::IExtension"* %110, i8* getelementptr inbounds ([91 x i8]* @.str24, i32 0, i32 0)) #1
  br label %111

; <label>:111                                     ; preds = %101, %104, %94, %80
  call void @llvm.lifetime.end(i64 256, i8* %73) #1
  %112 = bitcast %"class.google_breakpad::MinidumpDescriptor"* %descriptor to i8*
  call void @llvm.lifetime.start(i64 48, i8* %112) #1
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %7, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), %"class.std::allocator"* %8) #1
  %113 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 1
  store i32 -1, i32* %114, align 4
  %115 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %115, %"class.std::basic_string"* %7) #1
  %116 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 3, i32 0, i32 0
  store i8* bitcast (i32* getelementptr inbounds ([0 x i32]* @_ZNSs4_Rep20_S_empty_rep_storageE, i32 0, i32 3) to i8*), i8** %116, align 4
  %117 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 4
  store i8* null, i8** %117, align 4
  %118 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 5
  store i32 -1, i32* %118, align 4
  %119 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 6
  store i32 0, i32* %119, align 4
  %120 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 7
  store i8 0, i8* %120, align 4
  %121 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 8
  store i8 0, i8* %121, align 1
  %122 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 9
  %123 = bitcast %"struct.google_breakpad::MicrodumpExtraInfo"* %122 to i8*
  call void @llvm.memset.p0i8.i64(i8* %123, i8 0, i64 16, i32 4, i1 false) #1
  %124 = getelementptr inbounds %"class.std::allocator"* %2, i32 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %124) #1
  %125 = getelementptr inbounds %"class.std::basic_string"* %7, i32 0, i32 0, i32 0
  %126 = load i8** %125, align 4
  %127 = getelementptr inbounds i8* %126, i32 -12
  %128 = bitcast i8* %127 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  %129 = icmp eq i8* %127, bitcast ([0 x i32]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %129, label %_ZNSsD1Ev.exit, label %130, !prof !1

; <label>:130                                     ; preds = %111
  %131 = getelementptr inbounds i8* %126, i32 -4
  %132 = bitcast i8* %131 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %133, label %137

; <label>:133                                     ; preds = %130
  %134 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134)
  %135 = atomicrmw volatile add i32* %132, i32 -1 acq_rel
  store i32 %135, i32* %1, align 4
  %136 = load volatile i32* %1, align 4
  call void @llvm.lifetime.end(i64 4, i8* %134)
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i

; <label>:137                                     ; preds = %130
  %138 = load i32* %132, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %132, align 4
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %137, %133
  %.0.i.i.i.i = phi i32 [ %136, %133 ], [ %138, %137 ]
  %140 = icmp slt i32 %.0.i.i.i.i, 1
  br i1 %140, label %141, label %_ZNSsD1Ev.exit

; <label>:141                                     ; preds = %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %128, %"class.std::allocator"* %2) #1
  br label %_ZNSsD1Ev.exit

_ZNSsD1Ev.exit:                                   ; preds = %111, %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i, %141
  call void @llvm.lifetime.end(i64 1, i8* %124) #1
  %142 = call noalias i8* @_Znwj(i32 92) #8
  %143 = bitcast i8* %142 to %"class.google_breakpad::ExceptionHandler"*
  call void @_ZN15google_breakpad16ExceptionHandlerC1ERKNS_18MinidumpDescriptorEPFbPvEPFbS3_S4_bES4_bi(%"class.google_breakpad::ExceptionHandler"* %143, %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i1 (i8*)* null, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)* @_ZL12dumpCallbackRKN15google_breakpad18MinidumpDescriptorEPvb, i8* null, i1 zeroext true, i32 -1) #1
  store %"class.google_breakpad::ExceptionHandler"* %143, %"class.google_breakpad::ExceptionHandler"** @handler, align 4
  %144 = bitcast %struct.sigaction* %oact to i8*
  call void @llvm.lifetime.start(i64 140, i8* %144) #1
  %145 = call i32 @sigaction(i32 11, %struct.sigaction* null, %struct.sigaction* %oact) #1
  %146 = bitcast %struct.sigaction* %oact to void (i32, %struct.siginfo_t*, i8*)**
  %147 = load void (i32, %struct.siginfo_t*, i8*)** %146, align 4
  store void (i32, %struct.siginfo_t*, i8*)* %147, void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %148 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %149 = bitcast %"class.SourceMod::ISourceMod"* %148 to void (%"class.SourceMod::ISourceMod"*, void (i1)*)***
  %150 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)*** %149, align 4
  %151 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %150, i32 19
  %152 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %151, align 4
  call void %152(%"class.SourceMod::ISourceMod"* %148, void (i1)* @_Z11OnGameFrameb) #1
  %153 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %154 = bitcast %"class.SourceMod::ISourceMod"* %153 to i8* (%"class.SourceMod::ISourceMod"*)***
  %155 = load i8* (%"class.SourceMod::ISourceMod"*)*** %154, align 4
  %156 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %155, i32 3
  %157 = load i8* (%"class.SourceMod::ISourceMod"*)** %156, align 4
  %158 = call i8* %157(%"class.SourceMod::ISourceMod"* %153) #1
  %159 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0), i8* %158, i32 511) #1
  %160 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %172

; <label>:162                                     ; preds = %_ZNSsD1Ev.exit
  %163 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %164 = icmp eq %"class.SourceMod::IGameConfig"* %163, null
  br i1 %164, label %_Z10GetCmdLinev.exit, label %165

; <label>:165                                     ; preds = %162
  %166 = bitcast %"class.SourceMod::IGameConfig"* %163 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)***
  %167 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)*** %166, align 4
  %168 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)** %167, align 4
  %169 = call zeroext i1 %168(%"class.SourceMod::IGameConfig"* %163, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i32* @_ZZ10GetCmdLinevE16getCmdLineOffset) #1
  %.not.i = xor i1 %169, true
  %170 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %171 = icmp eq i32 %170, 0
  %or.cond.i = or i1 %171, %.not.i
  br i1 %or.cond.i, label %_Z10GetCmdLinev.exit, label %172

; <label>:172                                     ; preds = %165, %_ZNSsD1Ev.exit
  %173 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %174 = bitcast %"class.SourceMod::IGameHelpers"* %173 to %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)***
  %175 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)*** %174, align 4
  %176 = getelementptr inbounds %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %175, i32 27
  %177 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %176, align 4
  %178 = call %class.ICommandLine* %177(%"class.SourceMod::IGameHelpers"* %173) #1
  %179 = bitcast %class.ICommandLine* %178 to i8***
  %180 = load i8*** %179, align 4
  %181 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %182 = getelementptr inbounds i8** %180, i32 %181
  %183 = load i8** %182, align 4
  %184 = ptrtoint i8* %183 to i32
  %185 = bitcast %class.ICommandLine* %178 to %class.VFuncEmptyClass*
  %186 = and i32 %184, 1
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %194, label %188

; <label>:188                                     ; preds = %172
  %189 = bitcast i8** %180 to i8*
  %190 = add i32 %184, -1
  %191 = getelementptr i8* %189, i32 %190
  %192 = bitcast i8* %191 to i8* (%class.VFuncEmptyClass*)**
  %193 = load i8* (%class.VFuncEmptyClass*)** %192, align 4
  br label %196

; <label>:194                                     ; preds = %172
  %195 = bitcast i8* %183 to i8* (%class.VFuncEmptyClass*)*
  br label %196

; <label>:196                                     ; preds = %194, %188
  %197 = phi i8* (%class.VFuncEmptyClass*)* [ %193, %188 ], [ %195, %194 ]
  %198 = call i8* %197(%class.VFuncEmptyClass* %185) #1
  br label %_Z10GetCmdLinev.exit

_Z10GetCmdLinev.exit:                             ; preds = %162, %165, %196
  %.0.i = phi i8* [ %198, %196 ], [ getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), %162 ], [ getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), %165 ]
  %199 = call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0), i8* %.0.i, i32 1023) #1
  %200 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %201 = bitcast %"class.SourceMod::ISourceMod"* %200 to i8* (%"class.SourceMod::ISourceMod"*)***
  %202 = load i8* (%"class.SourceMod::ISourceMod"*)*** %201, align 4
  %203 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %202, i32 4
  %204 = load i8* (%"class.SourceMod::ISourceMod"*)** %203, align 4
  %205 = call i8* %204(%"class.SourceMod::ISourceMod"* %200) #1
  %206 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0), i8* %205, i32 511) #1
  %207 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %208 = bitcast %"class.SourceMod::ISourceMod"* %207 to i8* (%"class.SourceMod::ISourceMod"*)***
  %209 = load i8* (%"class.SourceMod::ISourceMod"*)*** %208, align 4
  %210 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %209, i32 13
  %211 = load i8* (%"class.SourceMod::ISourceMod"*)** %210, align 4
  %212 = call i8* %211(%"class.SourceMod::ISourceMod"* %207) #1
  %213 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0), i8* %212, i32 255) #1
  %214 = getelementptr inbounds [512 x i8]* %steamInfPath, i32 0, i32 0
  call void @llvm.lifetime.start(i64 512, i8* %214) #1
  %215 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %216 = bitcast %"class.SourceMod::ISourceMod"* %215 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %217 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %216, align 4
  %218 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %217, i32 5
  %219 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %218, align 4
  %220 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %219(%"class.SourceMod::ISourceMod"* %215, i32 1, i8* %214, i32 512, i8* getelementptr inbounds ([10 x i8]* @.str25, i32 0, i32 0)) #1
  %221 = call %struct._IO_FILE* @fopen(i8* %214, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0)) #1
  %222 = icmp eq %struct._IO_FILE* %221, null
  br i1 %222, label %.loopexit, label %223

; <label>:223                                     ; preds = %_Z10GetCmdLinev.exit
  %224 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 0
  call void @llvm.lifetime.start(i64 1024, i8* %224) #1
  call void @llvm.memset.p0i8.i32(i8* %224, i8 0, i32 1024, i32 1, i1 false)
  %225 = call i32 @fread(i8* %224, i32 1, i32 1023, %struct._IO_FILE* %221) #1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

; <label>:227                                     ; preds = %223
  %228 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %229 = bitcast %"class.SourceMod::ISourceMod"* %228 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %230 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %229, align 4
  %231 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %230, i32 7
  %232 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %231, align 4
  %233 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %232(%"class.SourceMod::ISourceMod"* %228, %"class.SourceMod::IExtension"* %233, i8* getelementptr inbounds ([34 x i8]* @.str27, i32 0, i32 0)) #1
  br label %234

; <label>:234                                     ; preds = %227, %223
  %235 = call i32 @fclose(%struct._IO_FILE* %221) #1
  store i64 26860387868889866, i64* bitcast ([1024 x i8]* @steamInf to i64*), align 8
  br label %.outer

.outer:                                           ; preds = %265, %262, %256, %258, %249, %234
  %commentChars.0.ph = phi i32 [ 0, %234 ], [ %commentChars.1, %249 ], [ 0, %258 ], [ 0, %256 ], [ %commentChars.1, %262 ], [ %commentChars.1, %265 ]
  %valueChars.0.ph = phi i32 [ 0, %234 ], [ %valueChars.1, %249 ], [ 0, %258 ], [ 0, %256 ], [ %valueChars.1, %262 ], [ %268, %265 ]
  %source.0.ph = phi i32 [ 0, %234 ], [ %250, %249 ], [ %252, %258 ], [ %252, %256 ], [ %264, %262 ], [ %264, %265 ]
  %target.0.ph = phi i32 [ 7, %234 ], [ %target.1, %249 ], [ %261, %258 ], [ %target.1, %256 ], [ %target.1, %262 ], [ %266, %265 ]
  br label %236

; <label>:236                                     ; preds = %.outer, %239
  %commentChars.0 = phi i32 [ %241, %239 ], [ %commentChars.0.ph, %.outer ]
  %source.0 = phi i32 [ %240, %239 ], [ %source.0.ph, %.outer ]
  %237 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %source.0
  %238 = load i8* %237, align 1
  switch i8 %238, label %242 [
    i8 0, label %.loopexit
    i8 47, label %239
  ]

; <label>:239                                     ; preds = %236
  %240 = add i32 %source.0, 1
  %241 = add i32 %commentChars.0, 1
  br label %236

; <label>:242                                     ; preds = %236
  %243 = icmp eq i32 %commentChars.0, 1
  br i1 %243, label %244, label %248

; <label>:244                                     ; preds = %242
  %245 = add i32 %target.0.ph, 1
  %246 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %target.0.ph
  store i8 47, i8* %246, align 1
  %247 = add i32 %valueChars.0.ph, 1
  br label %248

; <label>:248                                     ; preds = %244, %242
  %commentChars.1 = phi i32 [ 0, %244 ], [ %commentChars.0, %242 ]
  %valueChars.1 = phi i32 [ %247, %244 ], [ %valueChars.0.ph, %242 ]
  %target.1 = phi i32 [ %245, %244 ], [ %target.0.ph, %242 ]
  switch i8 %238, label %262 [
    i8 13, label %249
    i8 10, label %251
  ]

; <label>:249                                     ; preds = %248
  %250 = add i32 %source.0, 1
  br label %.outer

; <label>:251                                     ; preds = %248
  %252 = add i32 %source.0, 1
  %253 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %252
  %254 = load i8* %253, align 1
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %.loopexit, label %256

; <label>:256                                     ; preds = %251
  %257 = icmp eq i32 %valueChars.1, 0
  br i1 %257, label %.outer, label %258

; <label>:258                                     ; preds = %256
  %259 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %target.1
  %260 = bitcast i8* %259 to i64*
  store i64 26860387868889866, i64* %260, align 1
  %261 = add i32 %target.1, 7
  br label %.outer

; <label>:262                                     ; preds = %248
  %263 = icmp ugt i32 %commentChars.1, 1
  %264 = add i32 %source.0, 1
  br i1 %263, label %.outer, label %265

; <label>:265                                     ; preds = %262
  %266 = add i32 %target.1, 1
  %267 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %target.1
  store i8 %238, i8* %267, align 1
  %268 = add i32 %valueChars.1, 1
  br label %.outer

.loopexit:                                        ; preds = %251, %236, %_Z10GetCmdLinev.exit
  br i1 %late, label %269, label %274

; <label>:269                                     ; preds = %.loopexit
  %270 = bitcast %class.Accelerator* %this to void (%class.Accelerator*, %struct.edict_t*, i32, i32)***
  %271 = load void (%class.Accelerator*, %struct.edict_t*, i32, i32)*** %270, align 4
  %272 = getelementptr inbounds void (%class.Accelerator*, %struct.edict_t*, i32, i32)** %271, i32 16
  %273 = load void (%class.Accelerator*, %struct.edict_t*, i32, i32)** %272, align 4
  call void %273(%class.Accelerator* %this, %struct.edict_t* null, i32 0, i32 0) #1
  br label %274

; <label>:274                                     ; preds = %269, %.loopexit
  call void @llvm.lifetime.end(i64 512, i8* %214) #1
  call void @llvm.lifetime.end(i64 140, i8* %144) #1
  %275 = getelementptr inbounds %"class.std::allocator"* %6, i32 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %275) #1
  %276 = load i8** %116, align 4
  %277 = getelementptr inbounds i8* %276, i32 -12
  %278 = bitcast i8* %277 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  %279 = icmp eq i8* %277, bitcast ([0 x i32]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %279, label %_ZNSsD1Ev.exit.i, label %280, !prof !1

; <label>:280                                     ; preds = %274
  %281 = getelementptr inbounds i8* %276, i32 -4
  %282 = bitcast i8* %281 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %283, label %287

; <label>:283                                     ; preds = %280
  %284 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284)
  %285 = atomicrmw volatile add i32* %282, i32 -1 acq_rel
  store i32 %285, i32* %5, align 4
  %286 = load volatile i32* %5, align 4
  call void @llvm.lifetime.end(i64 4, i8* %284)
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i

; <label>:287                                     ; preds = %280
  %288 = load i32* %282, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %282, align 4
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %287, %283
  %.0.i.i.i.i.i = phi i32 [ %286, %283 ], [ %288, %287 ]
  %290 = icmp slt i32 %.0.i.i.i.i.i, 1
  br i1 %290, label %291, label %_ZNSsD1Ev.exit.i

; <label>:291                                     ; preds = %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %278, %"class.std::allocator"* %6) #1
  br label %_ZNSsD1Ev.exit.i

_ZNSsD1Ev.exit.i:                                 ; preds = %291, %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %274
  call void @llvm.lifetime.end(i64 1, i8* %275) #1
  %292 = getelementptr inbounds %"class.std::allocator"* %4, i32 0, i32 0
  call void @llvm.lifetime.start(i64 1, i8* %292) #1
  %293 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 2, i32 0, i32 0
  %294 = load i8** %293, align 4
  %295 = getelementptr inbounds i8* %294, i32 -12
  %296 = bitcast i8* %295 to %"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*
  %297 = icmp eq i8* %295, bitcast ([0 x i32]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %297, label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit, label %298, !prof !1

; <label>:298                                     ; preds = %_ZNSsD1Ev.exit.i
  %299 = getelementptr inbounds i8* %294, i32 -4
  %300 = bitcast i8* %299 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %301, label %305

; <label>:301                                     ; preds = %298
  %302 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %302)
  %303 = atomicrmw volatile add i32* %300, i32 -1 acq_rel
  store i32 %303, i32* %3, align 4
  %304 = load volatile i32* %3, align 4
  call void @llvm.lifetime.end(i64 4, i8* %302)
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i2.i

; <label>:305                                     ; preds = %298
  %306 = load i32* %300, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %300, align 4
  br label %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i2.i

_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i2.i: ; preds = %305, %301
  %.0.i.i.i.i1.i = phi i32 [ %304, %301 ], [ %306, %305 ]
  %308 = icmp slt i32 %.0.i.i.i.i1.i, 1
  br i1 %308, label %309, label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit

; <label>:309                                     ; preds = %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i2.i
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"* %296, %"class.std::allocator"* %4) #1
  br label %_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit

_ZN15google_breakpad18MinidumpDescriptorD2Ev.exit: ; preds = %309, %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i2.i, %_ZNSsD1Ev.exit.i, %53, %51, %22, %28, %25
  %.0 = phi i1 [ false, %25 ], [ false, %28 ], [ false, %22 ], [ false, %51 ], [ false, %53 ], [ true, %_ZNSsD1Ev.exit.i ], [ true, %_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii.exit.i.i.i2.i ], [ true, %309 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i32, i8* nocapture readonly, ...) #0

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"*) #2

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #4

declare void @_ZN15google_breakpad16ExceptionHandlerC1ERKNS_18MinidumpDescriptorEPFbPvEPFbS3_S4_bES4_bi(%"class.google_breakpad::ExceptionHandler"*, %"class.google_breakpad::MinidumpDescriptor"*, i1 (i8*)*, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)*, i8*, i1 zeroext, i32) #2

; Function Attrs: nounwind
define internal zeroext i1 @_ZL12dumpCallbackRKN15google_breakpad18MinidumpDescriptorEPvb(%"class.google_breakpad::MinidumpDescriptor"* nocapture readonly %descriptor, i8* nocapture readnone %context, i1 zeroext %succeeded) #0 {
  br i1 %succeeded, label %1, label %7

; <label>:1                                       ; preds = %0
  %2 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([20 x i8]* @.str29 to i32), i32 19) #1, !srcloc !2
  %3 = icmp ugt i32 %2, -4096
  br i1 %3, label %4, label %_Z9sys_writeiPKvj.exit

; <label>:4                                       ; preds = %1
  %5 = sub nsw i32 0, %2
  %6 = tail call i32* @__errno_location() #9
  store i32 %5, i32* %6, align 4
  br label %_Z9sys_writeiPKvj.exit

; <label>:7                                       ; preds = %0
  %8 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([30 x i8]* @.str30 to i32), i32 29) #1, !srcloc !2
  %9 = icmp ugt i32 %8, -4096
  br i1 %9, label %10, label %_Z9sys_writeiPKvj.exit

; <label>:10                                      ; preds = %7
  %11 = sub nsw i32 0, %8
  %12 = tail call i32* @__errno_location() #9
  store i32 %11, i32* %12, align 4
  br label %_Z9sys_writeiPKvj.exit

_Z9sys_writeiPKvj.exit:                           ; preds = %10, %7, %4, %1
  %13 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 4
  %14 = load i8** %13, align 4
  %15 = tail call i32 @my_strlen(i8* %14) #1
  %16 = ptrtoint i8* %14 to i32
  %17 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 %16, i32 %15) #1, !srcloc !2
  %18 = icmp ugt i32 %17, -4096
  br i1 %18, label %19, label %_Z9sys_writeiPKvj.exit2

; <label>:19                                      ; preds = %_Z9sys_writeiPKvj.exit
  %20 = sub nsw i32 0, %17
  %21 = tail call i32* @__errno_location() #9
  store i32 %20, i32* %21, align 4
  br label %_Z9sys_writeiPKvj.exit2

_Z9sys_writeiPKvj.exit2:                          ; preds = %_Z9sys_writeiPKvj.exit, %19
  %22 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([2 x i8]* @.str31 to i32), i32 1) #1, !srcloc !2
  %23 = icmp ugt i32 %22, -4096
  br i1 %23, label %24, label %_Z9sys_writeiPKvj.exit3

; <label>:24                                      ; preds = %_Z9sys_writeiPKvj.exit2
  %25 = sub nsw i32 0, %22
  %26 = tail call i32* @__errno_location() #9
  store i32 %25, i32* %26, align 4
  br label %_Z9sys_writeiPKvj.exit3

_Z9sys_writeiPKvj.exit3:                          ; preds = %_Z9sys_writeiPKvj.exit2, %24
  br i1 %succeeded, label %27, label %_Z9sys_writeiPKvj.exit4

; <label>:27                                      ; preds = %_Z9sys_writeiPKvj.exit3
  %28 = load i8** %13, align 4
  %29 = tail call i32 @my_strlcpy(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %28, i32 512) #1
  %30 = tail call i32 @my_strlcat(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), i32 512) #1
  %31 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 5, i32 ptrtoint ([512 x i8]* @dumpStoragePath to i32), i32 65, i32 384) #1, !srcloc !3
  %32 = icmp ugt i32 %31, -4096
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %27
  %34 = sub nsw i32 0, %31
  %35 = tail call i32* @__errno_location() #9
  store i32 %34, i32* %35, align 4
  %36 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([31 x i8]* @.str33 to i32), i32 30) #1, !srcloc !2
  %37 = icmp ugt i32 %36, -4096
  br i1 %37, label %38, label %_Z9sys_writeiPKvj.exit4

; <label>:38                                      ; preds = %33
  %39 = sub nsw i32 0, %36
  store i32 %39, i32* %35, align 4
  br label %_Z9sys_writeiPKvj.exit4

; <label>:40                                      ; preds = %27
  %41 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([31 x i8]* @.str34 to i32), i32 30) #1, !srcloc !2
  %42 = icmp ugt i32 %41, -4096
  br i1 %42, label %43, label %_Z9sys_writeiPKvj.exit5

; <label>:43                                      ; preds = %40
  %44 = sub nsw i32 0, %41
  %45 = tail call i32* @__errno_location() #9
  store i32 %44, i32* %45, align 4
  br label %_Z9sys_writeiPKvj.exit5

_Z9sys_writeiPKvj.exit5:                          ; preds = %40, %43
  %46 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([6 x i8]* @.str35 to i32), i32 5) #1, !srcloc !2
  %47 = icmp ugt i32 %46, -4096
  br i1 %47, label %48, label %_Z9sys_writeiPKvj.exit6

; <label>:48                                      ; preds = %_Z9sys_writeiPKvj.exit5
  %49 = sub nsw i32 0, %46
  %50 = tail call i32* @__errno_location() #9
  store i32 %49, i32* %50, align 4
  br label %_Z9sys_writeiPKvj.exit6

_Z9sys_writeiPKvj.exit6:                          ; preds = %_Z9sys_writeiPKvj.exit5, %48
  %51 = tail call i32 @my_strlen(i8* getelementptr inbounds ([256 x i8]* @crashMap, i32 0, i32 0)) #1
  %52 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([256 x i8]* @crashMap to i32), i32 %51) #1, !srcloc !2
  %53 = icmp ugt i32 %52, -4096
  br i1 %53, label %54, label %_Z9sys_writeiPKvj.exit7

; <label>:54                                      ; preds = %_Z9sys_writeiPKvj.exit6
  %55 = sub nsw i32 0, %52
  %56 = tail call i32* @__errno_location() #9
  store i32 %55, i32* %56, align 4
  br label %_Z9sys_writeiPKvj.exit7

_Z9sys_writeiPKvj.exit7:                          ; preds = %_Z9sys_writeiPKvj.exit6, %54
  %57 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([11 x i8]* @.str36 to i32), i32 10) #1, !srcloc !2
  %58 = icmp ugt i32 %57, -4096
  br i1 %58, label %59, label %_Z9sys_writeiPKvj.exit8

; <label>:59                                      ; preds = %_Z9sys_writeiPKvj.exit7
  %60 = sub nsw i32 0, %57
  %61 = tail call i32* @__errno_location() #9
  store i32 %60, i32* %61, align 4
  br label %_Z9sys_writeiPKvj.exit8

_Z9sys_writeiPKvj.exit8:                          ; preds = %_Z9sys_writeiPKvj.exit7, %59
  %62 = tail call i32 @my_strlen(i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0)) #1
  %63 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([512 x i8]* @crashGamePath to i32), i32 %62) #1, !srcloc !2
  %64 = icmp ugt i32 %63, -4096
  br i1 %64, label %65, label %_Z9sys_writeiPKvj.exit9

; <label>:65                                      ; preds = %_Z9sys_writeiPKvj.exit8
  %66 = sub nsw i32 0, %63
  %67 = tail call i32* @__errno_location() #9
  store i32 %66, i32* %67, align 4
  br label %_Z9sys_writeiPKvj.exit9

_Z9sys_writeiPKvj.exit9:                          ; preds = %_Z9sys_writeiPKvj.exit8, %65
  %68 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([14 x i8]* @.str37 to i32), i32 13) #1, !srcloc !2
  %69 = icmp ugt i32 %68, -4096
  br i1 %69, label %70, label %_Z9sys_writeiPKvj.exit10

; <label>:70                                      ; preds = %_Z9sys_writeiPKvj.exit9
  %71 = sub nsw i32 0, %68
  %72 = tail call i32* @__errno_location() #9
  store i32 %71, i32* %72, align 4
  br label %_Z9sys_writeiPKvj.exit10

_Z9sys_writeiPKvj.exit10:                         ; preds = %_Z9sys_writeiPKvj.exit9, %70
  %73 = tail call i32 @my_strlen(i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0)) #1
  %74 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([1024 x i8]* @crashCommandLine to i32), i32 %73) #1, !srcloc !2
  %75 = icmp ugt i32 %74, -4096
  br i1 %75, label %76, label %_Z9sys_writeiPKvj.exit11

; <label>:76                                      ; preds = %_Z9sys_writeiPKvj.exit10
  %77 = sub nsw i32 0, %74
  %78 = tail call i32* @__errno_location() #9
  store i32 %77, i32* %78, align 4
  br label %_Z9sys_writeiPKvj.exit11

_Z9sys_writeiPKvj.exit11:                         ; preds = %_Z9sys_writeiPKvj.exit10, %76
  %79 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([16 x i8]* @.str38 to i32), i32 15) #1, !srcloc !2
  %80 = icmp ugt i32 %79, -4096
  br i1 %80, label %81, label %_Z9sys_writeiPKvj.exit12

; <label>:81                                      ; preds = %_Z9sys_writeiPKvj.exit11
  %82 = sub nsw i32 0, %79
  %83 = tail call i32* @__errno_location() #9
  store i32 %82, i32* %83, align 4
  br label %_Z9sys_writeiPKvj.exit12

_Z9sys_writeiPKvj.exit12:                         ; preds = %_Z9sys_writeiPKvj.exit11, %81
  %84 = tail call i32 @my_strlen(i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0)) #1
  %85 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([512 x i8]* @crashSourceModPath to i32), i32 %84) #1, !srcloc !2
  %86 = icmp ugt i32 %85, -4096
  br i1 %86, label %87, label %_Z9sys_writeiPKvj.exit13

; <label>:87                                      ; preds = %_Z9sys_writeiPKvj.exit12
  %88 = sub nsw i32 0, %85
  %89 = tail call i32* @__errno_location() #9
  store i32 %88, i32* %89, align 4
  br label %_Z9sys_writeiPKvj.exit13

_Z9sys_writeiPKvj.exit13:                         ; preds = %_Z9sys_writeiPKvj.exit12, %87
  %90 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([16 x i8]* @.str39 to i32), i32 15) #1, !srcloc !2
  %91 = icmp ugt i32 %90, -4096
  br i1 %91, label %92, label %_Z9sys_writeiPKvj.exit14

; <label>:92                                      ; preds = %_Z9sys_writeiPKvj.exit13
  %93 = sub nsw i32 0, %90
  %94 = tail call i32* @__errno_location() #9
  store i32 %93, i32* %94, align 4
  br label %_Z9sys_writeiPKvj.exit14

_Z9sys_writeiPKvj.exit14:                         ; preds = %_Z9sys_writeiPKvj.exit13, %92
  %95 = tail call i32 @my_strlen(i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0)) #1
  %96 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([256 x i8]* @crashGameDirectory to i32), i32 %95) #1, !srcloc !2
  %97 = icmp ugt i32 %96, -4096
  br i1 %97, label %98, label %_Z9sys_writeiPKvj.exit15

; <label>:98                                      ; preds = %_Z9sys_writeiPKvj.exit14
  %99 = sub nsw i32 0, %96
  %100 = tail call i32* @__errno_location() #9
  store i32 %99, i32* %100, align 4
  br label %_Z9sys_writeiPKvj.exit15

_Z9sys_writeiPKvj.exit15:                         ; preds = %_Z9sys_writeiPKvj.exit14, %98
  %101 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([19 x i8]* @.str40 to i32), i32 18) #1, !srcloc !2
  %102 = icmp ugt i32 %101, -4096
  br i1 %102, label %103, label %_Z9sys_writeiPKvj.exit16

; <label>:103                                     ; preds = %_Z9sys_writeiPKvj.exit15
  %104 = sub nsw i32 0, %101
  %105 = tail call i32* @__errno_location() #9
  store i32 %104, i32* %105, align 4
  br label %_Z9sys_writeiPKvj.exit16

_Z9sys_writeiPKvj.exit16:                         ; preds = %_Z9sys_writeiPKvj.exit15, %103
  %106 = tail call i32 @my_strlen(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) #1
  %107 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([6 x i8]* @.str4 to i32), i32 %106) #1, !srcloc !2
  %108 = icmp ugt i32 %107, -4096
  br i1 %108, label %109, label %_Z9sys_writeiPKvj.exit17

; <label>:109                                     ; preds = %_Z9sys_writeiPKvj.exit16
  %110 = sub nsw i32 0, %107
  %111 = tail call i32* @__errno_location() #9
  store i32 %110, i32* %111, align 4
  br label %_Z9sys_writeiPKvj.exit17

_Z9sys_writeiPKvj.exit17:                         ; preds = %_Z9sys_writeiPKvj.exit16, %109
  %112 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([17 x i8]* @.str41 to i32), i32 16) #1, !srcloc !2
  %113 = icmp ugt i32 %112, -4096
  br i1 %113, label %114, label %_Z9sys_writeiPKvj.exit18

; <label>:114                                     ; preds = %_Z9sys_writeiPKvj.exit17
  %115 = sub nsw i32 0, %112
  %116 = tail call i32* @__errno_location() #9
  store i32 %115, i32* %116, align 4
  br label %_Z9sys_writeiPKvj.exit18

_Z9sys_writeiPKvj.exit18:                         ; preds = %_Z9sys_writeiPKvj.exit17, %114
  %117 = tail call i32 @my_strlen(i8* getelementptr inbounds ([11 x i8]* @.str42, i32 0, i32 0)) #1
  %118 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([11 x i8]* @.str42 to i32), i32 %117) #1, !srcloc !2
  %119 = icmp ugt i32 %118, -4096
  br i1 %119, label %120, label %_Z9sys_writeiPKvj.exit19

; <label>:120                                     ; preds = %_Z9sys_writeiPKvj.exit18
  %121 = sub nsw i32 0, %118
  %122 = tail call i32* @__errno_location() #9
  store i32 %121, i32* %122, align 4
  br label %_Z9sys_writeiPKvj.exit19

_Z9sys_writeiPKvj.exit19:                         ; preds = %_Z9sys_writeiPKvj.exit18, %120
  %123 = tail call i32 @my_strlen(i8* getelementptr inbounds ([1024 x i8]* @steamInf, i32 0, i32 0)) #1
  %124 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([1024 x i8]* @steamInf to i32), i32 %123) #1, !srcloc !2
  %125 = icmp ugt i32 %124, -4096
  br i1 %125, label %126, label %_Z9sys_writeiPKvj.exit20

; <label>:126                                     ; preds = %_Z9sys_writeiPKvj.exit19
  %127 = sub nsw i32 0, %124
  %128 = tail call i32* @__errno_location() #9
  store i32 %127, i32* %128, align 4
  br label %_Z9sys_writeiPKvj.exit20

_Z9sys_writeiPKvj.exit20:                         ; preds = %_Z9sys_writeiPKvj.exit19, %126
  %129 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([31 x i8]* @.str43 to i32), i32 30) #1, !srcloc !2
  %130 = icmp ugt i32 %129, -4096
  br i1 %130, label %131, label %_Z9sys_writeiPKvj.exit21

; <label>:131                                     ; preds = %_Z9sys_writeiPKvj.exit20
  %132 = sub nsw i32 0, %129
  %133 = tail call i32* @__errno_location() #9
  store i32 %132, i32* %133, align 4
  br label %_Z9sys_writeiPKvj.exit21

_Z9sys_writeiPKvj.exit21:                         ; preds = %_Z9sys_writeiPKvj.exit20, %131
  %134 = load void (i8*, i32)** @GetSpew, align 4
  %135 = icmp eq void (i8*, i32)* %134, null
  br i1 %135, label %_Z9sys_writeiPKvj.exit24, label %136

; <label>:136                                     ; preds = %_Z9sys_writeiPKvj.exit21
  tail call void %134(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0), i32 65536) #1
  %137 = tail call i32 @my_strlen(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0)) #1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %_Z9sys_writeiPKvj.exit24, label %139

; <label>:139                                     ; preds = %136
  %140 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([41 x i8]* @.str44 to i32), i32 40) #1, !srcloc !2
  %141 = icmp ugt i32 %140, -4096
  br i1 %141, label %142, label %_Z9sys_writeiPKvj.exit22

; <label>:142                                     ; preds = %139
  %143 = sub nsw i32 0, %140
  %144 = tail call i32* @__errno_location() #9
  store i32 %143, i32* %144, align 4
  br label %_Z9sys_writeiPKvj.exit22

_Z9sys_writeiPKvj.exit22:                         ; preds = %139, %142
  %145 = tail call i32 @my_strlen(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0)) #1
  %146 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([65536 x i8]* @spewBuffer to i32), i32 %145) #1, !srcloc !2
  %147 = icmp ugt i32 %146, -4096
  br i1 %147, label %148, label %_Z9sys_writeiPKvj.exit23

; <label>:148                                     ; preds = %_Z9sys_writeiPKvj.exit22
  %149 = sub nsw i32 0, %146
  %150 = tail call i32* @__errno_location() #9
  store i32 %149, i32* %150, align 4
  br label %_Z9sys_writeiPKvj.exit23

_Z9sys_writeiPKvj.exit23:                         ; preds = %_Z9sys_writeiPKvj.exit22, %148
  %151 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([39 x i8]* @.str45 to i32), i32 38) #1, !srcloc !2
  %152 = icmp ugt i32 %151, -4096
  br i1 %152, label %153, label %_Z9sys_writeiPKvj.exit24

; <label>:153                                     ; preds = %_Z9sys_writeiPKvj.exit23
  %154 = sub nsw i32 0, %151
  %155 = tail call i32* @__errno_location() #9
  store i32 %154, i32* %155, align 4
  br label %_Z9sys_writeiPKvj.exit24

_Z9sys_writeiPKvj.exit24:                         ; preds = %153, %_Z9sys_writeiPKvj.exit23, %136, %_Z9sys_writeiPKvj.exit21
  %156 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 6, i32 %31) #1, !srcloc !4
  %157 = icmp ugt i32 %156, -4096
  br i1 %157, label %158, label %_Z9sys_writeiPKvj.exit4

; <label>:158                                     ; preds = %_Z9sys_writeiPKvj.exit24
  %159 = sub nsw i32 0, %156
  %160 = tail call i32* @__errno_location() #9
  store i32 %159, i32* %160, align 4
  br label %_Z9sys_writeiPKvj.exit4

_Z9sys_writeiPKvj.exit4:                          ; preds = %158, %_Z9sys_writeiPKvj.exit24, %38, %33, %_Z9sys_writeiPKvj.exit3
  ret i1 %succeeded
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #0

; Function Attrs: nounwind
declare i32 @fread(i8* nocapture, i32, i32, %struct._IO_FILE* nocapture) #0

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #0

; Function Attrs: nounwind
define hidden void @_ZN11Accelerator12SDK_OnUnloadEv(%class.Accelerator* nocapture readnone %this) unnamed_addr #0 align 2 {
  %1 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %2 = bitcast %"class.SourceMod::ISourceMod"* %1 to void (%"class.SourceMod::ISourceMod"*, void (i1)*)***
  %3 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)*** %2, align 4
  %4 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %3, i32 20
  %5 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %4, align 4
  tail call void %5(%"class.SourceMod::ISourceMod"* %1, void (i1)* @_Z11OnGameFrameb) #1
  %6 = load %"class.google_breakpad::ExceptionHandler"** @handler, align 4
  %7 = icmp eq %"class.google_breakpad::ExceptionHandler"* %6, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  tail call void @_ZN15google_breakpad16ExceptionHandlerD1Ev(%"class.google_breakpad::ExceptionHandler"* %6) #1
  %9 = bitcast %"class.google_breakpad::ExceptionHandler"* %6 to i8*
  tail call void @_ZdlPv(i8* %9) #8
  br label %10

; <label>:10                                      ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind
declare void @_ZN15google_breakpad16ExceptionHandlerD1Ev(%"class.google_breakpad::ExceptionHandler"*) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: nounwind
define hidden void @_ZN11Accelerator14OnCoreMapStartEP7edict_tii(%class.Accelerator* nocapture readnone %this, %struct.edict_t* nocapture readnone %pEdictList, i32 %edictCount, i32 %clientMax) unnamed_addr #0 align 2 {
  %1 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %2 = bitcast %"class.SourceMod::IGameHelpers"* %1 to i8* (%"class.SourceMod::IGameHelpers"*)***
  %3 = load i8* (%"class.SourceMod::IGameHelpers"*)*** %2, align 4
  %4 = getelementptr inbounds i8* (%"class.SourceMod::IGameHelpers"*)** %3, i32 15
  %5 = load i8* (%"class.SourceMod::IGameHelpers"*)** %4, align 4
  %6 = tail call i8* %5(%"class.SourceMod::IGameHelpers"* %1) #1
  %7 = tail call i8* @strncpy(i8* getelementptr inbounds ([256 x i8]* @crashMap, i32 0, i32 0), i8* %6, i32 255) #1
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this) unnamed_addr #3 align 2 {
  ret i32 8
}

declare zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1 zeroext) #2

declare void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension*, i1 zeroext) #2

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, %"class.SourceMod::SMInterface"* nocapture readnone %pInterface) unnamed_addr #3 align 2 {
  ret i1 false
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture %this, %"class.SourceMod::SMInterface"* nocapture %pInterface) unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlength) unnamed_addr #3 align 2 {
  ret i1 true
}

declare zeroext i1 @_ZN12SDKExtension18IsMetamodExtensionEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension16GetExtensionNameEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension15GetExtensionURLEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension15GetExtensionTagEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension18GetExtensionAuthorEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension21GetExtensionVerStringEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension23GetExtensionDescriptionEv(%class.SDKExtension*) #2

declare i8* @_ZN12SDKExtension22GetExtensionDateStringEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension21OnDependenciesDroppedEv(%class.SDKExtension*) #2

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* nocapture %this) unnamed_addr #3 align 2 {
  ret void
}

declare void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension*, i1 zeroext) #2

declare void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension*) #2

; Function Attrs: nounwind
declare void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Rep"*, %"class.std::allocator"*) #0

; Function Attrs: nounwind
declare extern_weak i32 @__pthread_key_create(i32*, void (i8*)*) #0

declare i32 @my_strlen(i8*) #2

declare i32 @my_strlcpy(i8*, i8*, i32) #2

declare i32 @my_strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #2

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12UploadThreadD0Ev(%class.UploadThread* %this) unnamed_addr #6 align 2 {
  %1 = bitcast %class.UploadThread* %this to i8*
  tail call void @_ZdlPv(i8* %1) #8
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN12UploadThread9RunThreadEPN9SourceMod13IThreadHandleE(%class.UploadThread* nocapture readnone %this, %"class.SourceMod::IThreadHandle"* nocapture readnone %pHandle) unnamed_addr #0 align 2 {
  %path = alloca [512 x i8], align 1
  %response = alloca [512 x i8], align 1
  %1 = load %"class.SourceMod::IRootConsole"** @rootconsole, align 4
  %2 = bitcast %"class.SourceMod::IRootConsole"* %1 to void (%"class.SourceMod::IRootConsole"*, i8*, ...)***
  %3 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)*** %2, align 4
  %4 = getelementptr inbounds void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %3, i32 5
  %5 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %4, align 4
  call void (%"class.SourceMod::IRootConsole"*, i8*, ...)* %5(%"class.SourceMod::IRootConsole"* %1, i8* getelementptr inbounds ([35 x i8]* @.str49, i32 0, i32 0)) #1
  %6 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str50, i32 0, i32 0)) #1
  %7 = icmp ne %struct._IO_FILE* %6, null
  br i1 %7, label %15, label %8

; <label>:8                                       ; preds = %0
  %9 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %10 = bitcast %"class.SourceMod::ISourceMod"* %9 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %11 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %10, align 4
  %12 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %11, i32 7
  %13 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %12, align 4
  %14 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %13(%"class.SourceMod::ISourceMod"* %9, %"class.SourceMod::IExtension"* %14, i8* getelementptr inbounds ([40 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0)) #1
  br label %15

; <label>:15                                      ; preds = %8, %0
  %16 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %17 = bitcast %"class.SourceMod::ILibrarySys"* %16 to %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)***
  %18 = load %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)*** %17, align 4
  %19 = getelementptr inbounds %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)** %18, i32 4
  %20 = load %"class.SourceMod::IDirectory"* (%"class.SourceMod::ILibrarySys"*, i8*)** %19, align 4
  %21 = call %"class.SourceMod::IDirectory"* %20(%"class.SourceMod::ILibrarySys"* %16, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  %22 = getelementptr inbounds [512 x i8]* %path, i32 0, i32 0
  call void @llvm.lifetime.start(i64 512, i8* %22) #1
  %23 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  call void @llvm.lifetime.start(i64 512, i8* %23) #1
  %24 = bitcast %"class.SourceMod::IDirectory"* %21 to i1 (%"class.SourceMod::IDirectory"*)***
  %25 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %26 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %25, i32 2
  %27 = load i1 (%"class.SourceMod::IDirectory"*)** %26, align 4
  %28 = call zeroext i1 %27(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %28, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %15
  %29 = bitcast %"class.SourceMod::IDirectory"* %21 to i8* (%"class.SourceMod::IDirectory"*)***
  %30 = bitcast %"class.SourceMod::IDirectory"* %21 to void (%"class.SourceMod::IDirectory"*)***
  br i1 %7, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %count.0.ph6.us = phi i32 [ %count.1.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ]
  %failed.0.ph5.us = phi i32 [ %failed.1.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ]
  br label %31

; <label>:31                                      ; preds = %.backedge.us, %.lr.ph.us
  %32 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %33 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %32, i32 6
  %34 = load i1 (%"class.SourceMod::IDirectory"*)** %33, align 4
  %35 = call zeroext i1 %34(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %35, label %40, label %36

; <label>:36                                      ; preds = %31
  %37 = load void (%"class.SourceMod::IDirectory"*)*** %30, align 4
  %38 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %37, i32 3
  %39 = load void (%"class.SourceMod::IDirectory"*)** %38, align 4
  call void %39(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge.us

; <label>:40                                      ; preds = %31
  %41 = load i8* (%"class.SourceMod::IDirectory"*)*** %29, align 4
  %42 = getelementptr inbounds i8* (%"class.SourceMod::IDirectory"*)** %41, i32 4
  %43 = load i8* (%"class.SourceMod::IDirectory"*)** %42, align 4
  %44 = call i8* %43(%"class.SourceMod::IDirectory"* %21) #1
  %45 = call i32 @strlen(i8* %44) #10
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %79, label %47

; <label>:47                                      ; preds = %40
  %48 = add nsw i32 %45, -4
  %49 = getelementptr inbounds i8* %44, i32 %48
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0)) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %79

; <label>:52                                      ; preds = %47
  %53 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %54 = bitcast %"class.SourceMod::ISourceMod"* %53 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %55 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %54, align 4
  %56 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %55, i32 21
  %57 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %56, align 4
  %58 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %57(%"class.SourceMod::ISourceMod"* %53, i8* %22, i32 512, i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %44) #1
  %59 = call zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %22, i8* %23, i32 512)
  %60 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %61 = bitcast %"class.SourceMod::ISourceMod"* %60 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %62 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %61, align 4
  %63 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %62, i32 7
  %64 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %63, align 4
  %65 = load %"class.SourceMod::IExtension"** @myself, align 4
  br i1 %59, label %69, label %66

; <label>:66                                      ; preds = %52
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %64(%"class.SourceMod::ISourceMod"* %60, %"class.SourceMod::IExtension"* %65, i8* getelementptr inbounds ([44 x i8]* @.str56, i32 0, i32 0), i8* %23) #1
  %67 = add nsw i32 %failed.0.ph5.us, 1
  %68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([33 x i8]* @.str57, i32 0, i32 0), i8* %23) #1
  br label %.outer.us

; <label>:69                                      ; preds = %52
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %64(%"class.SourceMod::ISourceMod"* %60, %"class.SourceMod::IExtension"* %65, i8* getelementptr inbounds ([36 x i8]* @.str54, i32 0, i32 0), i8* %23) #1
  %70 = add nsw i32 %count.0.ph6.us, 1
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([25 x i8]* @.str55, i32 0, i32 0), i8* %23) #1
  br label %.outer.us

.outer.us:                                        ; preds = %69, %66
  %failed.1.us = phi i32 [ %failed.0.ph5.us, %69 ], [ %67, %66 ]
  %count.1.us = phi i32 [ %70, %69 ], [ %count.0.ph6.us, %66 ]
  %72 = load void (%"class.SourceMod::IDirectory"*)*** %30, align 4
  %73 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %72, i32 3
  %74 = load void (%"class.SourceMod::IDirectory"*)** %73, align 4
  call void %74(%"class.SourceMod::IDirectory"* %21) #1
  %75 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %76 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %75, i32 2
  %77 = load i1 (%"class.SourceMod::IDirectory"*)** %76, align 4
  %78 = call zeroext i1 %77(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %78, label %.lr.ph.us, label %._crit_edge

; <label>:79                                      ; preds = %47, %40
  %80 = load void (%"class.SourceMod::IDirectory"*)*** %30, align 4
  %81 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %80, i32 3
  %82 = load void (%"class.SourceMod::IDirectory"*)** %81, align 4
  call void %82(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge.us

.backedge.us:                                     ; preds = %79, %36
  %83 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %84 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %83, i32 2
  %85 = load i1 (%"class.SourceMod::IDirectory"*)** %84, align 4
  %86 = call zeroext i1 %85(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %86, label %31, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %count.0.ph6 = phi i32 [ %count.1, %.outer ], [ 0, %.lr.ph.lr.ph ]
  %failed.0.ph5 = phi i32 [ %failed.1, %.outer ], [ 0, %.lr.ph.lr.ph ]
  br label %87

; <label>:87                                      ; preds = %.lr.ph, %.backedge
  %88 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %89 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %88, i32 6
  %90 = load i1 (%"class.SourceMod::IDirectory"*)** %89, align 4
  %91 = call zeroext i1 %90(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %91, label %100, label %92

; <label>:92                                      ; preds = %87
  %93 = load void (%"class.SourceMod::IDirectory"*)*** %30, align 4
  %94 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %93, i32 3
  %95 = load void (%"class.SourceMod::IDirectory"*)** %94, align 4
  call void %95(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge

.backedge:                                        ; preds = %92, %112
  %96 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %97 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %96, i32 2
  %98 = load i1 (%"class.SourceMod::IDirectory"*)** %97, align 4
  %99 = call zeroext i1 %98(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %99, label %87, label %._crit_edge

; <label>:100                                     ; preds = %87
  %101 = load i8* (%"class.SourceMod::IDirectory"*)*** %29, align 4
  %102 = getelementptr inbounds i8* (%"class.SourceMod::IDirectory"*)** %101, i32 4
  %103 = load i8* (%"class.SourceMod::IDirectory"*)** %102, align 4
  %104 = call i8* %103(%"class.SourceMod::IDirectory"* %21) #1
  %105 = call i32 @strlen(i8* %104) #10
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %112, label %107

; <label>:107                                     ; preds = %100
  %108 = add nsw i32 %105, -4
  %109 = getelementptr inbounds i8* %104, i32 %108
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0)) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

; <label>:112                                     ; preds = %107, %100
  %113 = load void (%"class.SourceMod::IDirectory"*)*** %30, align 4
  %114 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %113, i32 3
  %115 = load void (%"class.SourceMod::IDirectory"*)** %114, align 4
  call void %115(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge

; <label>:116                                     ; preds = %107
  %117 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %118 = bitcast %"class.SourceMod::ISourceMod"* %117 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %119 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %118, align 4
  %120 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %119, i32 21
  %121 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %120, align 4
  %122 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %121(%"class.SourceMod::ISourceMod"* %117, i8* %22, i32 512, i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %104) #1
  %123 = call zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %22, i8* %23, i32 512)
  br i1 %123, label %124, label %132

; <label>:124                                     ; preds = %116
  %125 = add nsw i32 %count.0.ph6, 1
  %126 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %127 = bitcast %"class.SourceMod::ISourceMod"* %126 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %128 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %127, align 4
  %129 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %128, i32 7
  %130 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %129, align 4
  %131 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %130(%"class.SourceMod::ISourceMod"* %126, %"class.SourceMod::IExtension"* %131, i8* getelementptr inbounds ([36 x i8]* @.str54, i32 0, i32 0), i8* %23) #1
  br label %.outer

; <label>:132                                     ; preds = %116
  %133 = add nsw i32 %failed.0.ph5, 1
  %134 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %135 = bitcast %"class.SourceMod::ISourceMod"* %134 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %136 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %135, align 4
  %137 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %136, i32 7
  %138 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %137, align 4
  %139 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %138(%"class.SourceMod::ISourceMod"* %134, %"class.SourceMod::IExtension"* %139, i8* getelementptr inbounds ([44 x i8]* @.str56, i32 0, i32 0), i8* %23) #1
  br label %.outer

.outer:                                           ; preds = %132, %124
  %failed.1 = phi i32 [ %failed.0.ph5, %124 ], [ %133, %132 ]
  %count.1 = phi i32 [ %125, %124 ], [ %count.0.ph6, %132 ]
  %140 = load void (%"class.SourceMod::IDirectory"*)*** %30, align 4
  %141 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %140, i32 3
  %142 = load void (%"class.SourceMod::IDirectory"*)** %141, align 4
  call void %142(%"class.SourceMod::IDirectory"* %21) #1
  %143 = load i1 (%"class.SourceMod::IDirectory"*)*** %24, align 4
  %144 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %143, i32 2
  %145 = load i1 (%"class.SourceMod::IDirectory"*)** %144, align 4
  %146 = call zeroext i1 %145(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %146, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.outer, %.backedge, %.outer.us, %.backedge.us, %15
  %count.0.ph4 = phi i32 [ 0, %15 ], [ %count.0.ph6.us, %.backedge.us ], [ %count.1.us, %.outer.us ], [ %count.0.ph6, %.backedge ], [ %count.1, %.outer ]
  %failed.0.ph2 = phi i32 [ 0, %15 ], [ %failed.0.ph5.us, %.backedge.us ], [ %failed.1.us, %.outer.us ], [ %failed.0.ph5, %.backedge ], [ %failed.1, %.outer ]
  %147 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %148 = bitcast %"class.SourceMod::ILibrarySys"* %147 to void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)***
  %149 = load void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)*** %148, align 4
  %150 = getelementptr inbounds void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)** %149, i32 5
  %151 = load void (%"class.SourceMod::ILibrarySys"*, %"class.SourceMod::IDirectory"*)** %150, align 4
  call void %151(%"class.SourceMod::ILibrarySys"* %147, %"class.SourceMod::IDirectory"* %21) #1
  br i1 %7, label %152, label %154

; <label>:152                                     ; preds = %._crit_edge
  %153 = call i32 @fclose(%struct._IO_FILE* %6) #1
  br label %154

; <label>:154                                     ; preds = %152, %._crit_edge
  %155 = load %"class.SourceMod::IRootConsole"** @rootconsole, align 4
  %156 = bitcast %"class.SourceMod::IRootConsole"* %155 to void (%"class.SourceMod::IRootConsole"*, i8*, ...)***
  %157 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)*** %156, align 4
  %158 = getelementptr inbounds void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %157, i32 5
  %159 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %158, align 4
  call void (%"class.SourceMod::IRootConsole"*, i8*, ...)* %159(%"class.SourceMod::IRootConsole"* %155, i8* getelementptr inbounds ([61 x i8]* @.str58, i32 0, i32 0), i32 %count.0.ph4, i32 %failed.0.ph2) #1
  call void @llvm.lifetime.end(i64 512, i8* %23) #1
  call void @llvm.lifetime.end(i64 512, i8* %22) #1
  ret void
}

; Function Attrs: nounwind
define linkonce_odr hidden void @_ZN12UploadThread11OnTerminateEPN9SourceMod13IThreadHandleEb(%class.UploadThread* nocapture readnone %this, %"class.SourceMod::IThreadHandle"* nocapture readnone %pHandle, i1 zeroext %cancel) unnamed_addr #0 align 2 {
  %1 = load %"class.SourceMod::IRootConsole"** @rootconsole, align 4
  %2 = bitcast %"class.SourceMod::IRootConsole"* %1 to void (%"class.SourceMod::IRootConsole"*, i8*, ...)***
  %3 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)*** %2, align 4
  %4 = getelementptr inbounds void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %3, i32 5
  %5 = load void (%"class.SourceMod::IRootConsole"*, i8*, ...)** %4, align 4
  %6 = select i1 %cancel, i8* getelementptr inbounds ([5 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str48, i32 0, i32 0)
  tail call void (%"class.SourceMod::IRootConsole"*, i8*, ...)* %5(%"class.SourceMod::IRootConsole"* %1, i8* getelementptr inbounds ([54 x i8]* @.str46, i32 0, i32 0), i8* %6) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #0

declare void @_ZN12SDKExtensionC2Ev(%class.SDKExtension*) #2

; Function Attrs: nounwind
define internal void @_GLOBAL__I_a() #1 section ".text.startup" {
  tail call void @_ZN12SDKExtensionC2Ev(%class.SDKExtension* getelementptr inbounds (%class.Accelerator* @g_accelerator, i32 0, i32 0)) #1
  store i32 (...)** bitcast (i8** getelementptr inbounds ([26 x i8*]* @_ZTV11Accelerator, i32 0, i32 2) to i32 (...)**), i32 (...)*** getelementptr inbounds (%class.Accelerator* @g_accelerator, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 (...)** bitcast (i8** getelementptr inbounds ([6 x i8*]* @_ZTV12UploadThread, i32 0, i32 2) to i32 (...)**), i32 (...)*** getelementptr inbounds (%class.UploadThread* @uploadThread, i32 0, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!1 = metadata !{metadata !"branch_weights", i32 64, i32 4}
!2 = metadata !{i32 -2144076532, i32 -2144076451, i32 -2144075934, i32 -2144076291}
!3 = metadata !{i32 -2144138667, i32 -2144138586, i32 -2144138073, i32 -2144138426}
!4 = metadata !{i32 -2144211706, i32 -2144211625, i32 -2144211170, i32 -2144211465}
