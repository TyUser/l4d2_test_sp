; ModuleID = 'extension.ll'
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
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

; Function Attrs: nounwind
define hidden void @_Z11OnGameFrameb(i1 zeroext %simulating) #0 {
  %oact = alloca %struct.sigaction, align 4
  %act = alloca %struct.sigaction, align 4
  %1 = bitcast %struct.sigaction* %oact to void (i32, %struct.siginfo_t*, i8*)**
  br label %4

; <label>:2                                       ; preds = %4
  %3 = icmp slt i32 %11, 5
  br i1 %3, label %4, label %.critedge

; <label>:4                                       ; preds = %0, %2
  %i.04 = phi i32 [ 0, %0 ], [ %11, %2 ]
  %5 = getelementptr inbounds [5 x i32]* @_ZL17kExceptionSignals, i32 0, i32 %i.04
  %6 = load i32* %5, align 4
  %7 = call i32 @sigaction(i32 %6, %struct.sigaction* null, %struct.sigaction* %oact) #1
  %8 = load void (i32, %struct.siginfo_t*, i8*)** %1, align 4
  %9 = load void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %10 = icmp eq void (i32, %struct.siginfo_t*, i8*)* %8, %9
  %11 = add nsw i32 %i.04, 1
  br i1 %10, label %2, label %.critedge.loopexit5

.critedge.loopexit5:                              ; preds = %4
  %12 = bitcast %struct.sigaction* %act to i8*
  call void @llvm.memset.p0i8.i32(i8* %12, i8 0, i32 140, i32 4, i1 false)
  %13 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 1
  %14 = call i32 @sigemptyset(%struct.__sigset_t* %13) #1
  %15 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 11) #1
  %16 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 6) #1
  %17 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 8) #1
  %18 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 4) #1
  %19 = call i32 @sigaddset(%struct.__sigset_t* %13, i32 7) #1
  %20 = load void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %21 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 0, i32 0
  %.c = bitcast void (i32, %struct.siginfo_t*, i8*)* %20 to void (i32)*
  store void (i32)* %.c, void (i32)** %21, align 4
  %22 = getelementptr inbounds %struct.sigaction* %act, i32 0, i32 2
  store i32 134217732, i32* %22, align 4
  %23 = call i32 @sigaction(i32 11, %struct.sigaction* %act, %struct.sigaction* null) #1
  %24 = call i32 @sigaction(i32 6, %struct.sigaction* %act, %struct.sigaction* null) #1
  %25 = call i32 @sigaction(i32 8, %struct.sigaction* %act, %struct.sigaction* null) #1
  %26 = call i32 @sigaction(i32 4, %struct.sigaction* %act, %struct.sigaction* null) #1
  %27 = call i32 @sigaction(i32 7, %struct.sigaction* %act, %struct.sigaction* null) #1
  br label %.critedge

.critedge:                                        ; preds = %2, %.critedge.loopexit5
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #0

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #0

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
  %37 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %38 = bitcast %"class.SourceMod::ISourceMod"* %37 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %39 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %38, align 4
  %40 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %39, i32 21
  %41 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %40, align 4
  %42 = getelementptr inbounds [512 x i8]* %metapath, i32 0, i32 0
  %43 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %41(%"class.SourceMod::ISourceMod"* %37, i8* %42, i32 512, i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* %path) #1
  %44 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %45 = bitcast %"class.SourceMod::ILibrarySys"* %44 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %46 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %45, align 4
  %47 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %46, i32 6
  %48 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %47, align 4
  %49 = call zeroext i1 %48(%"class.SourceMod::ILibrarySys"* %44, i8* %42) #1
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %._crit_edge
  %51 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)*** %.pre, align 4
  %52 = getelementptr inbounds i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %51, i32 3
  %53 = load i1 (%"class.SourceMod::IWebForm"*, i8*, i8*)** %52, align 4
  %54 = call zeroext i1 %53(%"class.SourceMod::IWebForm"* %6, i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0), i8* %42) #1
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
  %112 = call zeroext i1 %111(%"class.SourceMod::ILibrarySys"* %107, i8* %42) #1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %106
  %114 = call i32 @unlink(i8* %42) #1
  br label %115

; <label>:115                                     ; preds = %113, %106
  %116 = call i32 @unlink(i8* %path) #1
  call void @_ZN9SourceMod16MemoryDownloaderD1Ev(%"class.SourceMod::MemoryDownloader"* %data) #1
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

; Function Attrs: inlinehint nounwind readnone
define linkonce_odr hidden void @_ZN12UploadThreadD2Ev(%class.UploadThread* nocapture %this) unnamed_addr #3 align 2 {
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
  %gameconfigError = alloca [256 x i8], align 1
  %descriptor = alloca %"class.google_breakpad::MinidumpDescriptor", align 4
  %1 = alloca %"class.std::basic_string", align 4
  %2 = alloca %"class.std::allocator", align 1
  %oact = alloca %struct.sigaction, align 4
  %steamInfPath = alloca [512 x i8], align 1
  %steamInfTemp = alloca [1024 x i8], align 1
  %3 = load %"class.SourceMod::IShareSys"** @sharesys, align 4
  %4 = bitcast %"class.SourceMod::IShareSys"* %3 to void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)***
  %5 = load void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)*** %4, align 4
  %6 = getelementptr inbounds void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)** %5, i32 8
  %7 = load void (%"class.SourceMod::IShareSys"*, %"class.SourceMod::IExtension"*, i8*, i1, i1)** %6, align 4
  %8 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void %7(%"class.SourceMod::IShareSys"* %3, %"class.SourceMod::IExtension"* %8, i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), i1 zeroext true, i1 zeroext true) #1
  %9 = load %"class.SourceMod::IShareSys"** @g_pShareSys, align 4
  %10 = bitcast %"class.SourceMod::IShareSys"* %9 to i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)***
  %11 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)*** %10, align 4
  %12 = getelementptr inbounds i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %11, i32 1
  %13 = load i1 (%"class.SourceMod::IShareSys"*, i8*, i32, %"class.SourceMod::IExtension"*, %"class.SourceMod::SMInterface"**)** %12, align 4
  %14 = load %"class.SourceMod::IExtension"** @myself, align 4
  %15 = call zeroext i1 %13(%"class.SourceMod::IShareSys"* %9, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0), i32 3, %"class.SourceMod::IExtension"* %14, %"class.SourceMod::SMInterface"** bitcast (%"class.SourceMod::IWebternet"** @webternet to %"class.SourceMod::SMInterface"**)) #1
  br i1 %15, label %25, label %16

; <label>:16                                      ; preds = %0
  %17 = icmp ne i8* %error, null
  %18 = icmp ne i32 %maxlength, 0
  %or.cond = and i1 %17, %18
  br i1 %or.cond, label %19, label %249

; <label>:19                                      ; preds = %16
  %20 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %error, i32 %maxlength, i8* getelementptr inbounds ([29 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0)) #1
  %21 = icmp ult i32 %20, %maxlength
  br i1 %21, label %249, label %22

; <label>:22                                      ; preds = %19
  %23 = add i32 %maxlength, -1
  %24 = getelementptr inbounds i8* %error, i32 %23
  store i8 0, i8* %24, align 1
  br label %249

; <label>:25                                      ; preds = %0
  %26 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %27 = bitcast %"class.SourceMod::ISourceMod"* %26 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %28 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %27, align 4
  %29 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %28, i32 5
  %30 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %29, align 4
  %31 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %30(%"class.SourceMod::ISourceMod"* %26, i32 2, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([11 x i8]* @.str17, i32 0, i32 0)) #1
  %32 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %33 = bitcast %"class.SourceMod::ILibrarySys"* %32 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %34 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %33, align 4
  %35 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %34, i32 8
  %36 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %35, align 4
  %37 = call zeroext i1 %36(%"class.SourceMod::ILibrarySys"* %32, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  br i1 %37, label %54, label %38

; <label>:38                                      ; preds = %25
  %39 = load %"class.SourceMod::ILibrarySys"** @libsys, align 4
  %40 = bitcast %"class.SourceMod::ILibrarySys"* %39 to i1 (%"class.SourceMod::ILibrarySys"*, i8*)***
  %41 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)*** %40, align 4
  %42 = getelementptr inbounds i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %41, i32 12
  %43 = load i1 (%"class.SourceMod::ILibrarySys"*, i8*)** %42, align 4
  %44 = call zeroext i1 %43(%"class.SourceMod::ILibrarySys"* %39, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  br i1 %44, label %54, label %45

; <label>:45                                      ; preds = %38
  %46 = icmp eq i8* %error, null
  br i1 %46, label %249, label %47

; <label>:47                                      ; preds = %45
  %48 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %49 = bitcast %"class.SourceMod::ISourceMod"* %48 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %50 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %49, align 4
  %51 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %50, i32 21
  %52 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %51, align 4
  %53 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %52(%"class.SourceMod::ISourceMod"* %48, i8* %error, i32 %maxlength, i8* getelementptr inbounds ([45 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0)) #1
  br label %249

; <label>:54                                      ; preds = %38, %25
  %55 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %56 = bitcast %"class.SourceMod::ISourceMod"* %55 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %57 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %56, align 4
  %58 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %57, i32 5
  %59 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %58, align 4
  %60 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %59(%"class.SourceMod::ISourceMod"* %55, i32 2, i8* getelementptr inbounds ([512 x i8]* @logPath, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([21 x i8]* @.str19, i32 0, i32 0)) #1
  %61 = load %"class.SourceMod::IThreader"** @threader, align 4
  %62 = getelementptr inbounds %"class.SourceMod::IThreader"* %61, i32 0, i32 1
  %63 = bitcast %"class.SourceMod::IThreadCreator"* %62 to void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)***
  %64 = load void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)*** %63, align 4
  %65 = getelementptr inbounds void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)** %64, i32 2
  %66 = load void (%"class.SourceMod::IThreadCreator"*, %"class.SourceMod::IThread"*)** %65, align 4
  call void %66(%"class.SourceMod::IThreadCreator"* %62, %"class.SourceMod::IThread"* getelementptr inbounds (%class.UploadThread* @uploadThread, i32 0, i32 0)) #1
  %67 = load %"class.SourceMod::IGameConfigManager"** @gameconfs, align 4
  %68 = bitcast %"class.SourceMod::IGameConfigManager"* %67 to i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)***
  %69 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)*** %68, align 4
  %70 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %69, i32 3
  %71 = load i1 (%"class.SourceMod::IGameConfigManager"*, i8*, %"class.SourceMod::IGameConfig"**, i8*, i32)** %70, align 4
  %72 = getelementptr inbounds [256 x i8]* %gameconfigError, i32 0, i32 0
  %73 = call zeroext i1 %71(%"class.SourceMod::IGameConfigManager"* %67, i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), %"class.SourceMod::IGameConfig"** @gameconfig, i8* %72, i32 256) #1
  br i1 %73, label %81, label %74

; <label>:74                                      ; preds = %54
  %75 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %76 = bitcast %"class.SourceMod::ISourceMod"* %75 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %77 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %76, align 4
  %78 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %77, i32 6
  %79 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %78, align 4
  %80 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %79(%"class.SourceMod::ISourceMod"* %75, %"class.SourceMod::IExtension"* %80, i8* getelementptr inbounds ([113 x i8]* @.str21, i32 0, i32 0), i8* %72) #1
  br label %105

; <label>:81                                      ; preds = %54
  %82 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %83 = bitcast %"class.SourceMod::IGameConfig"* %82 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)***
  %84 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)*** %83, align 4
  %85 = getelementptr inbounds i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %84, i32 3
  %86 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i8**)** %85, align 4
  %87 = call zeroext i1 %86(%"class.SourceMod::IGameConfig"* %82, i8* getelementptr inbounds ([8 x i8]* @.str22, i32 0, i32 0), i8** bitcast (void (i8*, i32)** @GetSpew to i8**)) #1
  br i1 %87, label %95, label %88

; <label>:88                                      ; preds = %81
  %89 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %90 = bitcast %"class.SourceMod::ISourceMod"* %89 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %91 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %90, align 4
  %92 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %91, i32 6
  %93 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %92, align 4
  %94 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %93(%"class.SourceMod::ISourceMod"* %89, %"class.SourceMod::IExtension"* %94, i8* getelementptr inbounds ([94 x i8]* @.str23, i32 0, i32 0)) #1
  br label %105

; <label>:95                                      ; preds = %81
  %96 = load void (i8*, i32)** @GetSpew, align 4
  %97 = icmp eq void (i8*, i32)* %96, null
  br i1 %97, label %98, label %105

; <label>:98                                      ; preds = %95
  %99 = load %"class.SourceMod::ISourceMod"** @smutils, align 4
  %100 = bitcast %"class.SourceMod::ISourceMod"* %99 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %101 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %100, align 4
  %102 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %101, i32 6
  %103 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %102, align 4
  %104 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %103(%"class.SourceMod::ISourceMod"* %99, %"class.SourceMod::IExtension"* %104, i8* getelementptr inbounds ([91 x i8]* @.str24, i32 0, i32 0)) #1
  br label %105

; <label>:105                                     ; preds = %95, %98, %88, %74
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* %2) #1
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* %1, i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), %"class.std::allocator"* %2) #1
  %106 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 1
  store i32 -1, i32* %107, align 4
  %108 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* %108, %"class.std::basic_string"* %1) #1
  %109 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 3
  call void @_ZNSsC1Ev(%"class.std::basic_string"* %109) #1
  %110 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 4
  store i8* null, i8** %110, align 4
  %111 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 5
  store i32 -1, i32* %111, align 4
  %112 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 6
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 7
  store i8 0, i8* %113, align 4
  %114 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 8
  store i8 0, i8* %114, align 1
  %115 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 9
  %116 = bitcast %"struct.google_breakpad::MicrodumpExtraInfo"* %115 to i8*
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 16, i32 4, i1 false) #1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %1) #1
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* %2) #1
  %117 = call noalias i8* @_Znwj(i32 92) #9
  %118 = bitcast i8* %117 to %"class.google_breakpad::ExceptionHandler"*
  call void @_ZN15google_breakpad16ExceptionHandlerC1ERKNS_18MinidumpDescriptorEPFbPvEPFbS3_S4_bES4_bi(%"class.google_breakpad::ExceptionHandler"* %118, %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i1 (i8*)* null, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)* @_ZL12dumpCallbackRKN15google_breakpad18MinidumpDescriptorEPvb, i8* null, i1 zeroext true, i32 -1) #1
  store %"class.google_breakpad::ExceptionHandler"* %118, %"class.google_breakpad::ExceptionHandler"** @handler, align 4
  %119 = call i32 @sigaction(i32 11, %struct.sigaction* null, %struct.sigaction* %oact) #1
  %120 = bitcast %struct.sigaction* %oact to void (i32, %struct.siginfo_t*, i8*)**
  %121 = load void (i32, %struct.siginfo_t*, i8*)** %120, align 4
  store void (i32, %struct.siginfo_t*, i8*)* %121, void (i32, %struct.siginfo_t*, i8*)** @SignalHandler, align 4
  %122 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %123 = bitcast %"class.SourceMod::ISourceMod"* %122 to void (%"class.SourceMod::ISourceMod"*, void (i1)*)***
  %124 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)*** %123, align 4
  %125 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %124, i32 19
  %126 = load void (%"class.SourceMod::ISourceMod"*, void (i1)*)** %125, align 4
  call void %126(%"class.SourceMod::ISourceMod"* %122, void (i1)* @_Z11OnGameFrameb) #1
  %127 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %128 = bitcast %"class.SourceMod::ISourceMod"* %127 to i8* (%"class.SourceMod::ISourceMod"*)***
  %129 = load i8* (%"class.SourceMod::ISourceMod"*)*** %128, align 4
  %130 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %129, i32 3
  %131 = load i8* (%"class.SourceMod::ISourceMod"*)** %130, align 4
  %132 = call i8* %131(%"class.SourceMod::ISourceMod"* %127) #1
  %133 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0), i8* %132, i32 511) #1
  %134 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

; <label>:136                                     ; preds = %105
  %137 = load %"class.SourceMod::IGameConfig"** @gameconfig, align 4
  %138 = icmp eq %"class.SourceMod::IGameConfig"* %137, null
  br i1 %138, label %_Z10GetCmdLinev.exit, label %139

; <label>:139                                     ; preds = %136
  %140 = bitcast %"class.SourceMod::IGameConfig"* %137 to i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)***
  %141 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)*** %140, align 4
  %142 = load i1 (%"class.SourceMod::IGameConfig"*, i8*, i32*)** %141, align 4
  %143 = call zeroext i1 %142(%"class.SourceMod::IGameConfig"* %137, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i32* @_ZZ10GetCmdLinevE16getCmdLineOffset) #1
  %.not.i = xor i1 %143, true
  %144 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %145 = icmp eq i32 %144, 0
  %or.cond.i = or i1 %145, %.not.i
  br i1 %or.cond.i, label %_Z10GetCmdLinev.exit, label %146

; <label>:146                                     ; preds = %139, %105
  %147 = load %"class.SourceMod::IGameHelpers"** @gamehelpers, align 4
  %148 = bitcast %"class.SourceMod::IGameHelpers"* %147 to %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)***
  %149 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)*** %148, align 4
  %150 = getelementptr inbounds %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %149, i32 27
  %151 = load %class.ICommandLine* (%"class.SourceMod::IGameHelpers"*)** %150, align 4
  %152 = call %class.ICommandLine* %151(%"class.SourceMod::IGameHelpers"* %147) #1
  %153 = bitcast %class.ICommandLine* %152 to i8***
  %154 = load i8*** %153, align 4
  %155 = load i32* @_ZZ10GetCmdLinevE16getCmdLineOffset, align 4
  %156 = getelementptr inbounds i8** %154, i32 %155
  %157 = load i8** %156, align 4
  %158 = ptrtoint i8* %157 to i32
  %159 = bitcast %class.ICommandLine* %152 to %class.VFuncEmptyClass*
  %160 = and i32 %158, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

; <label>:162                                     ; preds = %146
  %163 = bitcast i8** %154 to i8*
  %164 = add i32 %158, -1
  %165 = getelementptr i8* %163, i32 %164
  %166 = bitcast i8* %165 to i8* (%class.VFuncEmptyClass*)**
  %167 = load i8* (%class.VFuncEmptyClass*)** %166, align 4
  br label %170

; <label>:168                                     ; preds = %146
  %169 = bitcast i8* %157 to i8* (%class.VFuncEmptyClass*)*
  br label %170

; <label>:170                                     ; preds = %168, %162
  %171 = phi i8* (%class.VFuncEmptyClass*)* [ %167, %162 ], [ %169, %168 ]
  %172 = call i8* %171(%class.VFuncEmptyClass* %159) #1
  br label %_Z10GetCmdLinev.exit

_Z10GetCmdLinev.exit:                             ; preds = %136, %139, %170
  %.0.i = phi i8* [ %172, %170 ], [ getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), %136 ], [ getelementptr inbounds ([1 x i8]* @.str13, i32 0, i32 0), %139 ]
  %173 = call i8* @strncpy(i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0), i8* %.0.i, i32 1023) #1
  %174 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %175 = bitcast %"class.SourceMod::ISourceMod"* %174 to i8* (%"class.SourceMod::ISourceMod"*)***
  %176 = load i8* (%"class.SourceMod::ISourceMod"*)*** %175, align 4
  %177 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %176, i32 4
  %178 = load i8* (%"class.SourceMod::ISourceMod"*)** %177, align 4
  %179 = call i8* %178(%"class.SourceMod::ISourceMod"* %174) #1
  %180 = call i8* @strncpy(i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0), i8* %179, i32 511) #1
  %181 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %182 = bitcast %"class.SourceMod::ISourceMod"* %181 to i8* (%"class.SourceMod::ISourceMod"*)***
  %183 = load i8* (%"class.SourceMod::ISourceMod"*)*** %182, align 4
  %184 = getelementptr inbounds i8* (%"class.SourceMod::ISourceMod"*)** %183, i32 13
  %185 = load i8* (%"class.SourceMod::ISourceMod"*)** %184, align 4
  %186 = call i8* %185(%"class.SourceMod::ISourceMod"* %181) #1
  %187 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0), i8* %186, i32 255) #1
  %188 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %189 = bitcast %"class.SourceMod::ISourceMod"* %188 to i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)***
  %190 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)*** %189, align 4
  %191 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %190, i32 5
  %192 = load i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)** %191, align 4
  %193 = getelementptr inbounds [512 x i8]* %steamInfPath, i32 0, i32 0
  %194 = call i32 (%"class.SourceMod::ISourceMod"*, i32, i8*, i32, i8*, ...)* %192(%"class.SourceMod::ISourceMod"* %188, i32 1, i8* %193, i32 512, i8* getelementptr inbounds ([10 x i8]* @.str25, i32 0, i32 0)) #1
  %195 = call %struct._IO_FILE* @fopen(i8* %193, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0)) #1
  %196 = icmp eq %struct._IO_FILE* %195, null
  br i1 %196, label %.loopexit, label %197

; <label>:197                                     ; preds = %_Z10GetCmdLinev.exit
  %198 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 0
  call void @llvm.memset.p0i8.i32(i8* %198, i8 0, i32 1024, i32 1, i1 false)
  %199 = call i32 @fread(i8* %198, i32 1, i32 1023, %struct._IO_FILE* %195) #1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %208

; <label>:201                                     ; preds = %197
  %202 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %203 = bitcast %"class.SourceMod::ISourceMod"* %202 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %204 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %203, align 4
  %205 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %204, i32 7
  %206 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %205, align 4
  %207 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %206(%"class.SourceMod::ISourceMod"* %202, %"class.SourceMod::IExtension"* %207, i8* getelementptr inbounds ([34 x i8]* @.str27, i32 0, i32 0)) #1
  br label %208

; <label>:208                                     ; preds = %201, %197
  %209 = call i32 @fclose(%struct._IO_FILE* %195) #1
  store i64 26860387868889866, i64* bitcast ([1024 x i8]* @steamInf to i64*), align 8
  br label %.outer

.outer:                                           ; preds = %239, %236, %230, %232, %223, %208
  %commentChars.0.ph = phi i32 [ 0, %208 ], [ %commentChars.1, %223 ], [ 0, %232 ], [ 0, %230 ], [ %commentChars.1, %236 ], [ %commentChars.1, %239 ]
  %valueChars.0.ph = phi i32 [ 0, %208 ], [ %valueChars.1, %223 ], [ 0, %232 ], [ 0, %230 ], [ %valueChars.1, %236 ], [ %242, %239 ]
  %source.0.ph = phi i32 [ 0, %208 ], [ %224, %223 ], [ %226, %232 ], [ %226, %230 ], [ %238, %236 ], [ %238, %239 ]
  %target.0.ph = phi i32 [ 7, %208 ], [ %target.1, %223 ], [ %235, %232 ], [ %target.1, %230 ], [ %target.1, %236 ], [ %240, %239 ]
  br label %210

; <label>:210                                     ; preds = %.outer, %213
  %commentChars.0 = phi i32 [ %215, %213 ], [ %commentChars.0.ph, %.outer ]
  %source.0 = phi i32 [ %214, %213 ], [ %source.0.ph, %.outer ]
  %211 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %source.0
  %212 = load i8* %211, align 1
  switch i8 %212, label %216 [
    i8 0, label %.loopexit
    i8 47, label %213
  ]

; <label>:213                                     ; preds = %210
  %214 = add i32 %source.0, 1
  %215 = add i32 %commentChars.0, 1
  br label %210

; <label>:216                                     ; preds = %210
  %217 = icmp eq i32 %commentChars.0, 1
  br i1 %217, label %218, label %222

; <label>:218                                     ; preds = %216
  %219 = add i32 %target.0.ph, 1
  %220 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %target.0.ph
  store i8 47, i8* %220, align 1
  %221 = add i32 %valueChars.0.ph, 1
  br label %222

; <label>:222                                     ; preds = %218, %216
  %commentChars.1 = phi i32 [ 0, %218 ], [ %commentChars.0, %216 ]
  %valueChars.1 = phi i32 [ %221, %218 ], [ %valueChars.0.ph, %216 ]
  %target.1 = phi i32 [ %219, %218 ], [ %target.0.ph, %216 ]
  switch i8 %212, label %236 [
    i8 13, label %223
    i8 10, label %225
  ]

; <label>:223                                     ; preds = %222
  %224 = add i32 %source.0, 1
  br label %.outer

; <label>:225                                     ; preds = %222
  %226 = add i32 %source.0, 1
  %227 = getelementptr inbounds [1024 x i8]* %steamInfTemp, i32 0, i32 %226
  %228 = load i8* %227, align 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %.loopexit, label %230

; <label>:230                                     ; preds = %225
  %231 = icmp eq i32 %valueChars.1, 0
  br i1 %231, label %.outer, label %232

; <label>:232                                     ; preds = %230
  %233 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %target.1
  %234 = bitcast i8* %233 to i64*
  store i64 26860387868889866, i64* %234, align 1
  %235 = add i32 %target.1, 7
  br label %.outer

; <label>:236                                     ; preds = %222
  %237 = icmp ugt i32 %commentChars.1, 1
  %238 = add i32 %source.0, 1
  br i1 %237, label %.outer, label %239

; <label>:239                                     ; preds = %236
  %240 = add i32 %target.1, 1
  %241 = getelementptr inbounds [1024 x i8]* @steamInf, i32 0, i32 %target.1
  store i8 %212, i8* %241, align 1
  %242 = add i32 %valueChars.1, 1
  br label %.outer

.loopexit:                                        ; preds = %225, %210, %_Z10GetCmdLinev.exit
  br i1 %late, label %243, label %248

; <label>:243                                     ; preds = %.loopexit
  %244 = bitcast %class.Accelerator* %this to void (%class.Accelerator*, %struct.edict_t*, i32, i32)***
  %245 = load void (%class.Accelerator*, %struct.edict_t*, i32, i32)*** %244, align 4
  %246 = getelementptr inbounds void (%class.Accelerator*, %struct.edict_t*, i32, i32)** %245, i32 16
  %247 = load void (%class.Accelerator*, %struct.edict_t*, i32, i32)** %246, align 4
  call void %247(%class.Accelerator* %this, %struct.edict_t* null, i32 0, i32 0) #1
  br label %248

; <label>:248                                     ; preds = %243, %.loopexit
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %109) #1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* %108) #1
  br label %249

; <label>:249                                     ; preds = %47, %45, %16, %22, %19, %248
  %.0 = phi i1 [ true, %248 ], [ false, %19 ], [ false, %22 ], [ false, %16 ], [ false, %45 ], [ false, %47 ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i32, i8* nocapture readonly, ...) #0

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"*, i8*, %"class.std::allocator"*) #2

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"*) #0

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"*) #0

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"*) #0

; Function Attrs: nobuiltin
declare noalias i8* @_Znwj(i32) #4

declare void @_ZN15google_breakpad16ExceptionHandlerC1ERKNS_18MinidumpDescriptorEPFbPvEPFbS3_S4_bES4_bi(%"class.google_breakpad::ExceptionHandler"*, %"class.google_breakpad::MinidumpDescriptor"*, i1 (i8*)*, i1 (%"class.google_breakpad::MinidumpDescriptor"*, i8*, i1)*, i8*, i1 zeroext, i32) #2

; Function Attrs: nounwind
define internal zeroext i1 @_ZL12dumpCallbackRKN15google_breakpad18MinidumpDescriptorEPvb(%"class.google_breakpad::MinidumpDescriptor"* nocapture readonly %descriptor, i8* nocapture readnone %context, i1 zeroext %succeeded) #0 {
  br i1 %succeeded, label %1, label %7

; <label>:1                                       ; preds = %0
  %2 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([20 x i8]* @.str29 to i32), i32 19) #1, !srcloc !1
  %3 = icmp ugt i32 %2, -4096
  br i1 %3, label %4, label %_Z9sys_writeiPKvj.exit

; <label>:4                                       ; preds = %1
  %5 = sub nsw i32 0, %2
  %6 = tail call i32* @__errno_location() #10
  store i32 %5, i32* %6, align 4
  br label %_Z9sys_writeiPKvj.exit

; <label>:7                                       ; preds = %0
  %8 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([30 x i8]* @.str30 to i32), i32 29) #1, !srcloc !1
  %9 = icmp ugt i32 %8, -4096
  br i1 %9, label %10, label %_Z9sys_writeiPKvj.exit

; <label>:10                                      ; preds = %7
  %11 = sub nsw i32 0, %8
  %12 = tail call i32* @__errno_location() #10
  store i32 %11, i32* %12, align 4
  br label %_Z9sys_writeiPKvj.exit

_Z9sys_writeiPKvj.exit:                           ; preds = %10, %7, %4, %1
  %13 = getelementptr inbounds %"class.google_breakpad::MinidumpDescriptor"* %descriptor, i32 0, i32 4
  %14 = load i8** %13, align 4
  %15 = tail call i32 @my_strlen(i8* %14) #1
  %16 = ptrtoint i8* %14 to i32
  %17 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 %16, i32 %15) #1, !srcloc !1
  %18 = icmp ugt i32 %17, -4096
  br i1 %18, label %19, label %_Z9sys_writeiPKvj.exit2

; <label>:19                                      ; preds = %_Z9sys_writeiPKvj.exit
  %20 = sub nsw i32 0, %17
  %21 = tail call i32* @__errno_location() #10
  store i32 %20, i32* %21, align 4
  br label %_Z9sys_writeiPKvj.exit2

_Z9sys_writeiPKvj.exit2:                          ; preds = %_Z9sys_writeiPKvj.exit, %19
  %22 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([2 x i8]* @.str31 to i32), i32 1) #1, !srcloc !1
  %23 = icmp ugt i32 %22, -4096
  br i1 %23, label %24, label %_Z9sys_writeiPKvj.exit3

; <label>:24                                      ; preds = %_Z9sys_writeiPKvj.exit2
  %25 = sub nsw i32 0, %22
  %26 = tail call i32* @__errno_location() #10
  store i32 %25, i32* %26, align 4
  br label %_Z9sys_writeiPKvj.exit3

_Z9sys_writeiPKvj.exit3:                          ; preds = %_Z9sys_writeiPKvj.exit2, %24
  br i1 %succeeded, label %27, label %_Z9sys_writeiPKvj.exit4

; <label>:27                                      ; preds = %_Z9sys_writeiPKvj.exit3
  %28 = load i8** %13, align 4
  %29 = tail call i32 @my_strlcpy(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %28, i32 512) #1
  %30 = tail call i32 @my_strlcat(i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), i32 512) #1
  %31 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 5, i32 ptrtoint ([512 x i8]* @dumpStoragePath to i32), i32 65, i32 384) #1, !srcloc !2
  %32 = icmp ugt i32 %31, -4096
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %27
  %34 = sub nsw i32 0, %31
  %35 = tail call i32* @__errno_location() #10
  store i32 %34, i32* %35, align 4
  %36 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 1, i32 ptrtoint ([31 x i8]* @.str33 to i32), i32 30) #1, !srcloc !1
  %37 = icmp ugt i32 %36, -4096
  br i1 %37, label %38, label %_Z9sys_writeiPKvj.exit4

; <label>:38                                      ; preds = %33
  %39 = sub nsw i32 0, %36
  store i32 %39, i32* %35, align 4
  br label %_Z9sys_writeiPKvj.exit4

; <label>:40                                      ; preds = %27
  %41 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([31 x i8]* @.str34 to i32), i32 30) #1, !srcloc !1
  %42 = icmp ugt i32 %41, -4096
  br i1 %42, label %43, label %_Z9sys_writeiPKvj.exit5

; <label>:43                                      ; preds = %40
  %44 = sub nsw i32 0, %41
  %45 = tail call i32* @__errno_location() #10
  store i32 %44, i32* %45, align 4
  br label %_Z9sys_writeiPKvj.exit5

_Z9sys_writeiPKvj.exit5:                          ; preds = %40, %43
  %46 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([6 x i8]* @.str35 to i32), i32 5) #1, !srcloc !1
  %47 = icmp ugt i32 %46, -4096
  br i1 %47, label %48, label %_Z9sys_writeiPKvj.exit6

; <label>:48                                      ; preds = %_Z9sys_writeiPKvj.exit5
  %49 = sub nsw i32 0, %46
  %50 = tail call i32* @__errno_location() #10
  store i32 %49, i32* %50, align 4
  br label %_Z9sys_writeiPKvj.exit6

_Z9sys_writeiPKvj.exit6:                          ; preds = %_Z9sys_writeiPKvj.exit5, %48
  %51 = tail call i32 @my_strlen(i8* getelementptr inbounds ([256 x i8]* @crashMap, i32 0, i32 0)) #1
  %52 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([256 x i8]* @crashMap to i32), i32 %51) #1, !srcloc !1
  %53 = icmp ugt i32 %52, -4096
  br i1 %53, label %54, label %_Z9sys_writeiPKvj.exit7

; <label>:54                                      ; preds = %_Z9sys_writeiPKvj.exit6
  %55 = sub nsw i32 0, %52
  %56 = tail call i32* @__errno_location() #10
  store i32 %55, i32* %56, align 4
  br label %_Z9sys_writeiPKvj.exit7

_Z9sys_writeiPKvj.exit7:                          ; preds = %_Z9sys_writeiPKvj.exit6, %54
  %57 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([11 x i8]* @.str36 to i32), i32 10) #1, !srcloc !1
  %58 = icmp ugt i32 %57, -4096
  br i1 %58, label %59, label %_Z9sys_writeiPKvj.exit8

; <label>:59                                      ; preds = %_Z9sys_writeiPKvj.exit7
  %60 = sub nsw i32 0, %57
  %61 = tail call i32* @__errno_location() #10
  store i32 %60, i32* %61, align 4
  br label %_Z9sys_writeiPKvj.exit8

_Z9sys_writeiPKvj.exit8:                          ; preds = %_Z9sys_writeiPKvj.exit7, %59
  %62 = tail call i32 @my_strlen(i8* getelementptr inbounds ([512 x i8]* @crashGamePath, i32 0, i32 0)) #1
  %63 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([512 x i8]* @crashGamePath to i32), i32 %62) #1, !srcloc !1
  %64 = icmp ugt i32 %63, -4096
  br i1 %64, label %65, label %_Z9sys_writeiPKvj.exit9

; <label>:65                                      ; preds = %_Z9sys_writeiPKvj.exit8
  %66 = sub nsw i32 0, %63
  %67 = tail call i32* @__errno_location() #10
  store i32 %66, i32* %67, align 4
  br label %_Z9sys_writeiPKvj.exit9

_Z9sys_writeiPKvj.exit9:                          ; preds = %_Z9sys_writeiPKvj.exit8, %65
  %68 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([14 x i8]* @.str37 to i32), i32 13) #1, !srcloc !1
  %69 = icmp ugt i32 %68, -4096
  br i1 %69, label %70, label %_Z9sys_writeiPKvj.exit10

; <label>:70                                      ; preds = %_Z9sys_writeiPKvj.exit9
  %71 = sub nsw i32 0, %68
  %72 = tail call i32* @__errno_location() #10
  store i32 %71, i32* %72, align 4
  br label %_Z9sys_writeiPKvj.exit10

_Z9sys_writeiPKvj.exit10:                         ; preds = %_Z9sys_writeiPKvj.exit9, %70
  %73 = tail call i32 @my_strlen(i8* getelementptr inbounds ([1024 x i8]* @crashCommandLine, i32 0, i32 0)) #1
  %74 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([1024 x i8]* @crashCommandLine to i32), i32 %73) #1, !srcloc !1
  %75 = icmp ugt i32 %74, -4096
  br i1 %75, label %76, label %_Z9sys_writeiPKvj.exit11

; <label>:76                                      ; preds = %_Z9sys_writeiPKvj.exit10
  %77 = sub nsw i32 0, %74
  %78 = tail call i32* @__errno_location() #10
  store i32 %77, i32* %78, align 4
  br label %_Z9sys_writeiPKvj.exit11

_Z9sys_writeiPKvj.exit11:                         ; preds = %_Z9sys_writeiPKvj.exit10, %76
  %79 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([16 x i8]* @.str38 to i32), i32 15) #1, !srcloc !1
  %80 = icmp ugt i32 %79, -4096
  br i1 %80, label %81, label %_Z9sys_writeiPKvj.exit12

; <label>:81                                      ; preds = %_Z9sys_writeiPKvj.exit11
  %82 = sub nsw i32 0, %79
  %83 = tail call i32* @__errno_location() #10
  store i32 %82, i32* %83, align 4
  br label %_Z9sys_writeiPKvj.exit12

_Z9sys_writeiPKvj.exit12:                         ; preds = %_Z9sys_writeiPKvj.exit11, %81
  %84 = tail call i32 @my_strlen(i8* getelementptr inbounds ([512 x i8]* @crashSourceModPath, i32 0, i32 0)) #1
  %85 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([512 x i8]* @crashSourceModPath to i32), i32 %84) #1, !srcloc !1
  %86 = icmp ugt i32 %85, -4096
  br i1 %86, label %87, label %_Z9sys_writeiPKvj.exit13

; <label>:87                                      ; preds = %_Z9sys_writeiPKvj.exit12
  %88 = sub nsw i32 0, %85
  %89 = tail call i32* @__errno_location() #10
  store i32 %88, i32* %89, align 4
  br label %_Z9sys_writeiPKvj.exit13

_Z9sys_writeiPKvj.exit13:                         ; preds = %_Z9sys_writeiPKvj.exit12, %87
  %90 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([16 x i8]* @.str39 to i32), i32 15) #1, !srcloc !1
  %91 = icmp ugt i32 %90, -4096
  br i1 %91, label %92, label %_Z9sys_writeiPKvj.exit14

; <label>:92                                      ; preds = %_Z9sys_writeiPKvj.exit13
  %93 = sub nsw i32 0, %90
  %94 = tail call i32* @__errno_location() #10
  store i32 %93, i32* %94, align 4
  br label %_Z9sys_writeiPKvj.exit14

_Z9sys_writeiPKvj.exit14:                         ; preds = %_Z9sys_writeiPKvj.exit13, %92
  %95 = tail call i32 @my_strlen(i8* getelementptr inbounds ([256 x i8]* @crashGameDirectory, i32 0, i32 0)) #1
  %96 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([256 x i8]* @crashGameDirectory to i32), i32 %95) #1, !srcloc !1
  %97 = icmp ugt i32 %96, -4096
  br i1 %97, label %98, label %_Z9sys_writeiPKvj.exit15

; <label>:98                                      ; preds = %_Z9sys_writeiPKvj.exit14
  %99 = sub nsw i32 0, %96
  %100 = tail call i32* @__errno_location() #10
  store i32 %99, i32* %100, align 4
  br label %_Z9sys_writeiPKvj.exit15

_Z9sys_writeiPKvj.exit15:                         ; preds = %_Z9sys_writeiPKvj.exit14, %98
  %101 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([19 x i8]* @.str40 to i32), i32 18) #1, !srcloc !1
  %102 = icmp ugt i32 %101, -4096
  br i1 %102, label %103, label %_Z9sys_writeiPKvj.exit16

; <label>:103                                     ; preds = %_Z9sys_writeiPKvj.exit15
  %104 = sub nsw i32 0, %101
  %105 = tail call i32* @__errno_location() #10
  store i32 %104, i32* %105, align 4
  br label %_Z9sys_writeiPKvj.exit16

_Z9sys_writeiPKvj.exit16:                         ; preds = %_Z9sys_writeiPKvj.exit15, %103
  %106 = tail call i32 @my_strlen(i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)) #1
  %107 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([6 x i8]* @.str4 to i32), i32 %106) #1, !srcloc !1
  %108 = icmp ugt i32 %107, -4096
  br i1 %108, label %109, label %_Z9sys_writeiPKvj.exit17

; <label>:109                                     ; preds = %_Z9sys_writeiPKvj.exit16
  %110 = sub nsw i32 0, %107
  %111 = tail call i32* @__errno_location() #10
  store i32 %110, i32* %111, align 4
  br label %_Z9sys_writeiPKvj.exit17

_Z9sys_writeiPKvj.exit17:                         ; preds = %_Z9sys_writeiPKvj.exit16, %109
  %112 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([17 x i8]* @.str41 to i32), i32 16) #1, !srcloc !1
  %113 = icmp ugt i32 %112, -4096
  br i1 %113, label %114, label %_Z9sys_writeiPKvj.exit18

; <label>:114                                     ; preds = %_Z9sys_writeiPKvj.exit17
  %115 = sub nsw i32 0, %112
  %116 = tail call i32* @__errno_location() #10
  store i32 %115, i32* %116, align 4
  br label %_Z9sys_writeiPKvj.exit18

_Z9sys_writeiPKvj.exit18:                         ; preds = %_Z9sys_writeiPKvj.exit17, %114
  %117 = tail call i32 @my_strlen(i8* getelementptr inbounds ([11 x i8]* @.str42, i32 0, i32 0)) #1
  %118 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([11 x i8]* @.str42 to i32), i32 %117) #1, !srcloc !1
  %119 = icmp ugt i32 %118, -4096
  br i1 %119, label %120, label %_Z9sys_writeiPKvj.exit19

; <label>:120                                     ; preds = %_Z9sys_writeiPKvj.exit18
  %121 = sub nsw i32 0, %118
  %122 = tail call i32* @__errno_location() #10
  store i32 %121, i32* %122, align 4
  br label %_Z9sys_writeiPKvj.exit19

_Z9sys_writeiPKvj.exit19:                         ; preds = %_Z9sys_writeiPKvj.exit18, %120
  %123 = tail call i32 @my_strlen(i8* getelementptr inbounds ([1024 x i8]* @steamInf, i32 0, i32 0)) #1
  %124 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([1024 x i8]* @steamInf to i32), i32 %123) #1, !srcloc !1
  %125 = icmp ugt i32 %124, -4096
  br i1 %125, label %126, label %_Z9sys_writeiPKvj.exit20

; <label>:126                                     ; preds = %_Z9sys_writeiPKvj.exit19
  %127 = sub nsw i32 0, %124
  %128 = tail call i32* @__errno_location() #10
  store i32 %127, i32* %128, align 4
  br label %_Z9sys_writeiPKvj.exit20

_Z9sys_writeiPKvj.exit20:                         ; preds = %_Z9sys_writeiPKvj.exit19, %126
  %129 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([31 x i8]* @.str43 to i32), i32 30) #1, !srcloc !1
  %130 = icmp ugt i32 %129, -4096
  br i1 %130, label %131, label %_Z9sys_writeiPKvj.exit21

; <label>:131                                     ; preds = %_Z9sys_writeiPKvj.exit20
  %132 = sub nsw i32 0, %129
  %133 = tail call i32* @__errno_location() #10
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
  %140 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([41 x i8]* @.str44 to i32), i32 40) #1, !srcloc !1
  %141 = icmp ugt i32 %140, -4096
  br i1 %141, label %142, label %_Z9sys_writeiPKvj.exit22

; <label>:142                                     ; preds = %139
  %143 = sub nsw i32 0, %140
  %144 = tail call i32* @__errno_location() #10
  store i32 %143, i32* %144, align 4
  br label %_Z9sys_writeiPKvj.exit22

_Z9sys_writeiPKvj.exit22:                         ; preds = %139, %142
  %145 = tail call i32 @my_strlen(i8* getelementptr inbounds ([65536 x i8]* @spewBuffer, i32 0, i32 0)) #1
  %146 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([65536 x i8]* @spewBuffer to i32), i32 %145) #1, !srcloc !1
  %147 = icmp ugt i32 %146, -4096
  br i1 %147, label %148, label %_Z9sys_writeiPKvj.exit23

; <label>:148                                     ; preds = %_Z9sys_writeiPKvj.exit22
  %149 = sub nsw i32 0, %146
  %150 = tail call i32* @__errno_location() #10
  store i32 %149, i32* %150, align 4
  br label %_Z9sys_writeiPKvj.exit23

_Z9sys_writeiPKvj.exit23:                         ; preds = %_Z9sys_writeiPKvj.exit22, %148
  %151 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,{cx},{dx},~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, i32 %31, i32 ptrtoint ([39 x i8]* @.str45 to i32), i32 38) #1, !srcloc !1
  %152 = icmp ugt i32 %151, -4096
  br i1 %152, label %153, label %_Z9sys_writeiPKvj.exit24

; <label>:153                                     ; preds = %_Z9sys_writeiPKvj.exit23
  %154 = sub nsw i32 0, %151
  %155 = tail call i32* @__errno_location() #10
  store i32 %154, i32* %155, align 4
  br label %_Z9sys_writeiPKvj.exit24

_Z9sys_writeiPKvj.exit24:                         ; preds = %153, %_Z9sys_writeiPKvj.exit23, %136, %_Z9sys_writeiPKvj.exit21
  %156 = tail call i32 asm sideeffect "push %ebx\0Amovl $2,%ebx\0Aint $$0x80\0Apop %ebx", "={ax},0,ri,~{esp},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 6, i32 %31) #1, !srcloc !3
  %157 = icmp ugt i32 %156, -4096
  br i1 %157, label %158, label %_Z9sys_writeiPKvj.exit4

; <label>:158                                     ; preds = %_Z9sys_writeiPKvj.exit24
  %159 = sub nsw i32 0, %156
  %160 = tail call i32* @__errno_location() #10
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
  tail call void @_ZdlPv(i8* %9) #9
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
define linkonce_odr hidden i32 @_ZN9SourceMod19IExtensionInterface19GetExtensionVersionEv(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this) unnamed_addr #6 align 2 {
  ret i32 8
}

declare zeroext i1 @_ZN12SDKExtension15OnExtensionLoadEPN9SourceMod10IExtensionEPNS0_9IShareSysEPcjb(%class.SDKExtension*, %"class.SourceMod::IExtension"*, %"class.SourceMod::IShareSys"*, i8*, i32, i1 zeroext) #2

declare void @_ZN12SDKExtension17OnExtensionUnloadEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension21OnExtensionsAllLoadedEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension22OnExtensionPauseChangeEb(%class.SDKExtension*, i1 zeroext) #2

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface18QueryInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, %"class.SourceMod::SMInterface"* nocapture readnone %pInterface) unnamed_addr #6 align 2 {
  ret i1 false
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface19NotifyInterfaceDropEPNS_11SMInterfaceE(%"class.SourceMod::IExtensionInterface"* nocapture %this, %"class.SourceMod::SMInterface"* nocapture %pInterface) unnamed_addr #6 align 2 {
  ret void
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden zeroext i1 @_ZN9SourceMod19IExtensionInterface12QueryRunningEPcj(%"class.SourceMod::IExtensionInterface"* nocapture readnone %this, i8* nocapture readnone %error, i32 %maxlength) unnamed_addr #6 align 2 {
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
define linkonce_odr hidden void @_ZN9SourceMod19IExtensionInterface12OnCoreMapEndEv(%"class.SourceMod::IExtensionInterface"* nocapture %this) unnamed_addr #6 align 2 {
  ret void
}

declare void @_ZN12SDKExtension15SDK_OnAllLoadedEv(%class.SDKExtension*) #2

declare void @_ZN12SDKExtension17SDK_OnPauseChangeEb(%class.SDKExtension*, i1 zeroext) #2

declare void @_ZN12SDKExtension25SDK_OnDependenciesDroppedEv(%class.SDKExtension*) #2

declare i32 @my_strlen(i8*) #2

declare i32 @my_strlcpy(i8*, i8*, i32) #2

declare i32 @my_strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"*, %"class.std::basic_string"*) #2

declare void @_ZNSsC1Ev(%"class.std::basic_string"*) #2

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN12UploadThreadD0Ev(%class.UploadThread* %this) unnamed_addr #7 align 2 {
  %1 = bitcast %class.UploadThread* %this to i8*
  tail call void @_ZdlPv(i8* %1) #9
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
  %22 = bitcast %"class.SourceMod::IDirectory"* %21 to i1 (%"class.SourceMod::IDirectory"*)***
  %23 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
  %24 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %23, i32 2
  %25 = load i1 (%"class.SourceMod::IDirectory"*)** %24, align 4
  %26 = call zeroext i1 %25(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %26, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %15
  %27 = bitcast %"class.SourceMod::IDirectory"* %21 to i8* (%"class.SourceMod::IDirectory"*)***
  %28 = bitcast %"class.SourceMod::IDirectory"* %21 to void (%"class.SourceMod::IDirectory"*)***
  %29 = getelementptr inbounds [512 x i8]* %path, i32 0, i32 0
  %30 = getelementptr inbounds [512 x i8]* %response, i32 0, i32 0
  br i1 %7, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.outer.us
  %count.0.ph6.us = phi i32 [ %count.1.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ]
  %failed.0.ph5.us = phi i32 [ %failed.1.us, %.outer.us ], [ 0, %.lr.ph.lr.ph ]
  br label %31

; <label>:31                                      ; preds = %.backedge.us, %.lr.ph.us
  %32 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
  %33 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %32, i32 6
  %34 = load i1 (%"class.SourceMod::IDirectory"*)** %33, align 4
  %35 = call zeroext i1 %34(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %35, label %40, label %36

; <label>:36                                      ; preds = %31
  %37 = load void (%"class.SourceMod::IDirectory"*)*** %28, align 4
  %38 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %37, i32 3
  %39 = load void (%"class.SourceMod::IDirectory"*)** %38, align 4
  call void %39(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge.us

; <label>:40                                      ; preds = %31
  %41 = load i8* (%"class.SourceMod::IDirectory"*)*** %27, align 4
  %42 = getelementptr inbounds i8* (%"class.SourceMod::IDirectory"*)** %41, i32 4
  %43 = load i8* (%"class.SourceMod::IDirectory"*)** %42, align 4
  %44 = call i8* %43(%"class.SourceMod::IDirectory"* %21) #1
  %45 = call i32 @strlen(i8* %44) #11
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %79, label %47

; <label>:47                                      ; preds = %40
  %48 = add nsw i32 %45, -4
  %49 = getelementptr inbounds i8* %44, i32 %48
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0)) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %79

; <label>:52                                      ; preds = %47
  %53 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %54 = bitcast %"class.SourceMod::ISourceMod"* %53 to i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)***
  %55 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)*** %54, align 4
  %56 = getelementptr inbounds i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %55, i32 21
  %57 = load i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)** %56, align 4
  %58 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %57(%"class.SourceMod::ISourceMod"* %53, i8* %29, i32 512, i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %44) #1
  %59 = call zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %29, i8* %30, i32 512)
  %60 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %61 = bitcast %"class.SourceMod::ISourceMod"* %60 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %62 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %61, align 4
  %63 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %62, i32 7
  %64 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %63, align 4
  %65 = load %"class.SourceMod::IExtension"** @myself, align 4
  br i1 %59, label %69, label %66

; <label>:66                                      ; preds = %52
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %64(%"class.SourceMod::ISourceMod"* %60, %"class.SourceMod::IExtension"* %65, i8* getelementptr inbounds ([44 x i8]* @.str56, i32 0, i32 0), i8* %30) #1
  %67 = add nsw i32 %failed.0.ph5.us, 1
  %68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([33 x i8]* @.str57, i32 0, i32 0), i8* %30) #1
  br label %.outer.us

; <label>:69                                      ; preds = %52
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %64(%"class.SourceMod::ISourceMod"* %60, %"class.SourceMod::IExtension"* %65, i8* getelementptr inbounds ([36 x i8]* @.str54, i32 0, i32 0), i8* %30) #1
  %70 = add nsw i32 %count.0.ph6.us, 1
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([25 x i8]* @.str55, i32 0, i32 0), i8* %30) #1
  br label %.outer.us

.outer.us:                                        ; preds = %69, %66
  %failed.1.us = phi i32 [ %failed.0.ph5.us, %69 ], [ %67, %66 ]
  %count.1.us = phi i32 [ %70, %69 ], [ %count.0.ph6.us, %66 ]
  %72 = load void (%"class.SourceMod::IDirectory"*)*** %28, align 4
  %73 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %72, i32 3
  %74 = load void (%"class.SourceMod::IDirectory"*)** %73, align 4
  call void %74(%"class.SourceMod::IDirectory"* %21) #1
  %75 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
  %76 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %75, i32 2
  %77 = load i1 (%"class.SourceMod::IDirectory"*)** %76, align 4
  %78 = call zeroext i1 %77(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %78, label %.lr.ph.us, label %._crit_edge

; <label>:79                                      ; preds = %47, %40
  %80 = load void (%"class.SourceMod::IDirectory"*)*** %28, align 4
  %81 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %80, i32 3
  %82 = load void (%"class.SourceMod::IDirectory"*)** %81, align 4
  call void %82(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge.us

.backedge.us:                                     ; preds = %79, %36
  %83 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
  %84 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %83, i32 2
  %85 = load i1 (%"class.SourceMod::IDirectory"*)** %84, align 4
  %86 = call zeroext i1 %85(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %86, label %31, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %count.0.ph6 = phi i32 [ %count.1, %.outer ], [ 0, %.lr.ph.lr.ph ]
  %failed.0.ph5 = phi i32 [ %failed.1, %.outer ], [ 0, %.lr.ph.lr.ph ]
  br label %87

; <label>:87                                      ; preds = %.lr.ph, %.backedge
  %88 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
  %89 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %88, i32 6
  %90 = load i1 (%"class.SourceMod::IDirectory"*)** %89, align 4
  %91 = call zeroext i1 %90(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %91, label %100, label %92

; <label>:92                                      ; preds = %87
  %93 = load void (%"class.SourceMod::IDirectory"*)*** %28, align 4
  %94 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %93, i32 3
  %95 = load void (%"class.SourceMod::IDirectory"*)** %94, align 4
  call void %95(%"class.SourceMod::IDirectory"* %21) #1
  br label %.backedge

.backedge:                                        ; preds = %92, %112
  %96 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
  %97 = getelementptr inbounds i1 (%"class.SourceMod::IDirectory"*)** %96, i32 2
  %98 = load i1 (%"class.SourceMod::IDirectory"*)** %97, align 4
  %99 = call zeroext i1 %98(%"class.SourceMod::IDirectory"* %21) #1
  br i1 %99, label %87, label %._crit_edge

; <label>:100                                     ; preds = %87
  %101 = load i8* (%"class.SourceMod::IDirectory"*)*** %27, align 4
  %102 = getelementptr inbounds i8* (%"class.SourceMod::IDirectory"*)** %101, i32 4
  %103 = load i8* (%"class.SourceMod::IDirectory"*)** %102, align 4
  %104 = call i8* %103(%"class.SourceMod::IDirectory"* %21) #1
  %105 = call i32 @strlen(i8* %104) #11
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %112, label %107

; <label>:107                                     ; preds = %100
  %108 = add nsw i32 %105, -4
  %109 = getelementptr inbounds i8* %104, i32 %108
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([5 x i8]* @.str52, i32 0, i32 0)) #11
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

; <label>:112                                     ; preds = %107, %100
  %113 = load void (%"class.SourceMod::IDirectory"*)*** %28, align 4
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
  %122 = call i32 (%"class.SourceMod::ISourceMod"*, i8*, i32, i8*, ...)* %121(%"class.SourceMod::ISourceMod"* %117, i8* %29, i32 512, i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8]* @dumpStoragePath, i32 0, i32 0), i8* %104) #1
  %123 = call zeroext i1 @_Z24UploadAndDeleteCrashDumpPKcPci(i8* %29, i8* %30, i32 512)
  br i1 %123, label %124, label %132

; <label>:124                                     ; preds = %116
  %125 = add nsw i32 %count.0.ph6, 1
  %126 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %127 = bitcast %"class.SourceMod::ISourceMod"* %126 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %128 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %127, align 4
  %129 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %128, i32 7
  %130 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %129, align 4
  %131 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %130(%"class.SourceMod::ISourceMod"* %126, %"class.SourceMod::IExtension"* %131, i8* getelementptr inbounds ([36 x i8]* @.str54, i32 0, i32 0), i8* %30) #1
  br label %.outer

; <label>:132                                     ; preds = %116
  %133 = add nsw i32 %failed.0.ph5, 1
  %134 = load %"class.SourceMod::ISourceMod"** @g_pSM, align 4
  %135 = bitcast %"class.SourceMod::ISourceMod"* %134 to void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)***
  %136 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)*** %135, align 4
  %137 = getelementptr inbounds void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %136, i32 7
  %138 = load void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)** %137, align 4
  %139 = load %"class.SourceMod::IExtension"** @myself, align 4
  call void (%"class.SourceMod::ISourceMod"*, %"class.SourceMod::IExtension"*, i8*, ...)* %138(%"class.SourceMod::ISourceMod"* %134, %"class.SourceMod::IExtension"* %139, i8* getelementptr inbounds ([44 x i8]* @.str56, i32 0, i32 0), i8* %30) #1
  br label %.outer

.outer:                                           ; preds = %132, %124
  %failed.1 = phi i32 [ %failed.0.ph5, %124 ], [ %133, %132 ]
  %count.1 = phi i32 [ %125, %124 ], [ %count.0.ph6, %132 ]
  %140 = load void (%"class.SourceMod::IDirectory"*)*** %28, align 4
  %141 = getelementptr inbounds void (%"class.SourceMod::IDirectory"*)** %140, i32 3
  %142 = load void (%"class.SourceMod::IDirectory"*)** %141, align 4
  call void %142(%"class.SourceMod::IDirectory"* %21) #1
  %143 = load i1 (%"class.SourceMod::IDirectory"*)*** %22, align 4
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
declare i32 @strlen(i8* nocapture) #8

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #8

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

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
!1 = metadata !{i32 -2144093037, i32 -2144092956, i32 -2144092439, i32 -2144092796}
!2 = metadata !{i32 -2144155172, i32 -2144155091, i32 -2144154578, i32 -2144154931}
!3 = metadata !{i32 -2144228211, i32 -2144228130, i32 -2144227675, i32 -2144227970}
