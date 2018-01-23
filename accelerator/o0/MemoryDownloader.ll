; ModuleID = '/home/imac/alliedmodders/accelerator/extension/MemoryDownloader.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.SourceMod::MemoryDownloader" = type { %"class.SourceMod::ITransferHandler", i8*, i32, i32 }
%"class.SourceMod::ITransferHandler" = type { i32 (...)** }
%"class.SourceMod::IWebTransfer" = type { i32 (...)** }

@_ZTVN9SourceMod16MemoryDownloaderE = hidden unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN9SourceMod16MemoryDownloaderE to i8*), i8* bitcast (i32 (%"class.SourceMod::ITransferHandler"*)* @_ZN9SourceMod16ITransferHandler22GetURLInterfaceVersionEv to i8*), i8* bitcast (i32 (%"class.SourceMod::MemoryDownloader"*, %"class.SourceMod::IWebTransfer"*, i8*, i8*, i32, i32)* @_ZN9SourceMod16MemoryDownloader15OnDownloadWriteEPNS_12IWebTransferEPvS3_jj to i8*)]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN9SourceMod16MemoryDownloaderE = hidden constant [31 x i8] c"N9SourceMod16MemoryDownloaderE\00"
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTSN9SourceMod16ITransferHandlerE = linkonce_odr hidden constant [31 x i8] c"N9SourceMod16ITransferHandlerE\00"
@_ZTIN9SourceMod16ITransferHandlerE = linkonce_odr hidden unnamed_addr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([31 x i8]* @_ZTSN9SourceMod16ITransferHandlerE, i32 0, i32 0) }
@_ZTIN9SourceMod16MemoryDownloaderE = hidden unnamed_addr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([31 x i8]* @_ZTSN9SourceMod16MemoryDownloaderE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN9SourceMod16ITransferHandlerE to i8*) }
@_ZTVN9SourceMod16ITransferHandlerE = linkonce_odr hidden unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN9SourceMod16ITransferHandlerE to i8*), i8* bitcast (i32 (%"class.SourceMod::ITransferHandler"*)* @_ZN9SourceMod16ITransferHandler22GetURLInterfaceVersionEv to i8*), i8* bitcast (i32 (%"class.SourceMod::ITransferHandler"*, %"class.SourceMod::IWebTransfer"*, i8*, i8*, i32, i32)* @_ZN9SourceMod16ITransferHandler15OnDownloadWriteEPNS_12IWebTransferEPvS3_jj to i8*)]

@_ZN9SourceMod16MemoryDownloaderC1Ev = hidden alias void (%"class.SourceMod::MemoryDownloader"*)* @_ZN9SourceMod16MemoryDownloaderC2Ev
@_ZN9SourceMod16MemoryDownloaderD1Ev = hidden alias void (%"class.SourceMod::MemoryDownloader"*)* @_ZN9SourceMod16MemoryDownloaderD2Ev

; Function Attrs: nounwind
define hidden void @_ZN9SourceMod16MemoryDownloaderC2Ev(%"class.SourceMod::MemoryDownloader"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::MemoryDownloader"*, align 4
  store %"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::MemoryDownloader"** %1, align 4
  %2 = load %"class.SourceMod::MemoryDownloader"** %1
  %3 = bitcast %"class.SourceMod::MemoryDownloader"* %2 to %"class.SourceMod::ITransferHandler"*
  call void @_ZN9SourceMod16ITransferHandlerC2Ev(%"class.SourceMod::ITransferHandler"* %3) #2
  %4 = bitcast %"class.SourceMod::MemoryDownloader"* %2 to i8***
  store i8** getelementptr inbounds ([4 x i8*]* @_ZTVN9SourceMod16MemoryDownloaderE, i64 0, i64 2), i8*** %4
  %5 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 1
  store i8* null, i8** %5, align 4
  %6 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 3
  store i32 0, i32* %7, align 4
  ret void
}

; Function Attrs: inlinehint nounwind
define linkonce_odr hidden void @_ZN9SourceMod16ITransferHandlerC2Ev(%"class.SourceMod::ITransferHandler"* %this) unnamed_addr #1 align 2 {
  %1 = alloca %"class.SourceMod::ITransferHandler"*, align 4
  store %"class.SourceMod::ITransferHandler"* %this, %"class.SourceMod::ITransferHandler"** %1, align 4
  %2 = load %"class.SourceMod::ITransferHandler"** %1
  %3 = bitcast %"class.SourceMod::ITransferHandler"* %2 to i8***
  store i8** getelementptr inbounds ([4 x i8*]* @_ZTVN9SourceMod16ITransferHandlerE, i64 0, i64 2), i8*** %3
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN9SourceMod16MemoryDownloaderD2Ev(%"class.SourceMod::MemoryDownloader"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::MemoryDownloader"*, align 4
  store %"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::MemoryDownloader"** %1, align 4
  %2 = load %"class.SourceMod::MemoryDownloader"** %1
  %3 = bitcast %"class.SourceMod::MemoryDownloader"* %2 to i8***
  store i8** getelementptr inbounds ([4 x i8*]* @_ZTVN9SourceMod16MemoryDownloaderE, i64 0, i64 2), i8*** %3
  %4 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 1
  %5 = load i8** %4, align 4
  call void @free(i8* %5) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #0

; Function Attrs: nounwind
define hidden i32 @_ZN9SourceMod16MemoryDownloader15OnDownloadWriteEPNS_12IWebTransferEPvS3_jj(%"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::IWebTransfer"* %session, i8* %userdata, i8* %ptr, i32 %size, i32 %nmemb) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::MemoryDownloader"*, align 4
  %2 = alloca %"class.SourceMod::IWebTransfer"*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %total = alloca i32, align 4
  %rem = alloca i32, align 4
  store %"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::MemoryDownloader"** %1, align 4
  store %"class.SourceMod::IWebTransfer"* %session, %"class.SourceMod::IWebTransfer"** %2, align 4
  store i8* %userdata, i8** %3, align 4
  store i8* %ptr, i8** %4, align 4
  store i32 %size, i32* %5, align 4
  store i32 %nmemb, i32* %6, align 4
  %7 = load %"class.SourceMod::MemoryDownloader"** %1
  %8 = load i32* %5, align 4
  %9 = load i32* %6, align 4
  %10 = mul i32 %8, %9
  store i32 %10, i32* %total, align 4
  %11 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 3
  %12 = load i32* %11, align 4
  %13 = load i32* %total, align 4
  %14 = add i32 %12, %13
  %15 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 2
  %16 = load i32* %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %18, label %39

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 3
  %20 = load i32* %19, align 4
  %21 = load i32* %total, align 4
  %22 = add i32 %20, %21
  %23 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 2
  %24 = load i32* %23, align 4
  %25 = sub i32 %22, %24
  store i32 %25, i32* %rem, align 4
  %26 = load i32* %rem, align 4
  %27 = load i32* %rem, align 4
  %28 = udiv i32 %27, 2
  %29 = add i32 %26, %28
  %30 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 2
  %31 = load i32* %30, align 4
  %32 = add i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 1
  %34 = load i8** %33, align 4
  %35 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 2
  %36 = load i32* %35, align 4
  %37 = call i8* @realloc(i8* %34, i32 %36) #2
  %38 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 4
  br label %39

; <label>:39                                      ; preds = %18, %0
  %40 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 3
  %41 = load i32* %40, align 4
  %42 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 1
  %43 = load i8** %42, align 4
  %44 = getelementptr inbounds i8* %43, i32 %41
  %45 = load i8** %4, align 4
  %46 = load i32* %total, align 4
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 %46, i32 1, i1 false)
  %47 = load i32* %total, align 4
  %48 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %7, i32 0, i32 3
  %49 = load i32* %48, align 4
  %50 = add i32 %49, %47
  store i32 %50, i32* %48, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define hidden void @_ZN9SourceMod16MemoryDownloader5ResetEv(%"class.SourceMod::MemoryDownloader"* %this) #0 align 2 {
  %1 = alloca %"class.SourceMod::MemoryDownloader"*, align 4
  store %"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::MemoryDownloader"** %1, align 4
  %2 = load %"class.SourceMod::MemoryDownloader"** %1
  %3 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 3
  store i32 0, i32* %3, align 4
  ret void
}

; Function Attrs: nounwind
define hidden i8* @_ZN9SourceMod16MemoryDownloader9GetBufferEv(%"class.SourceMod::MemoryDownloader"* %this) #0 align 2 {
  %1 = alloca %"class.SourceMod::MemoryDownloader"*, align 4
  store %"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::MemoryDownloader"** %1, align 4
  %2 = load %"class.SourceMod::MemoryDownloader"** %1
  %3 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 1
  %4 = load i8** %3, align 4
  ret i8* %4
}

; Function Attrs: nounwind
define hidden i32 @_ZN9SourceMod16MemoryDownloader7GetSizeEv(%"class.SourceMod::MemoryDownloader"* %this) #0 align 2 {
  %1 = alloca %"class.SourceMod::MemoryDownloader"*, align 4
  store %"class.SourceMod::MemoryDownloader"* %this, %"class.SourceMod::MemoryDownloader"** %1, align 4
  %2 = load %"class.SourceMod::MemoryDownloader"** %1
  %3 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %2, i32 0, i32 3
  %4 = load i32* %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN9SourceMod16ITransferHandler22GetURLInterfaceVersionEv(%"class.SourceMod::ITransferHandler"* %this) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::ITransferHandler"*, align 4
  store %"class.SourceMod::ITransferHandler"* %this, %"class.SourceMod::ITransferHandler"** %1, align 4
  %2 = load %"class.SourceMod::ITransferHandler"** %1
  ret i32 3
}

; Function Attrs: nounwind
define linkonce_odr hidden i32 @_ZN9SourceMod16ITransferHandler15OnDownloadWriteEPNS_12IWebTransferEPvS3_jj(%"class.SourceMod::ITransferHandler"* %this, %"class.SourceMod::IWebTransfer"* %session, i8* %userdata, i8* %ptr, i32 %size, i32 %nmemb) unnamed_addr #0 align 2 {
  %1 = alloca %"class.SourceMod::ITransferHandler"*, align 4
  %2 = alloca %"class.SourceMod::IWebTransfer"*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"class.SourceMod::ITransferHandler"* %this, %"class.SourceMod::ITransferHandler"** %1, align 4
  store %"class.SourceMod::IWebTransfer"* %session, %"class.SourceMod::IWebTransfer"** %2, align 4
  store i8* %userdata, i8** %3, align 4
  store i8* %ptr, i8** %4, align 4
  store i32 %size, i32* %5, align 4
  store i32 %nmemb, i32* %6, align 4
  %7 = load %"class.SourceMod::ITransferHandler"** %1
  ret i32 1
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
