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

@_ZN9SourceMod16MemoryDownloaderC1Ev = hidden alias void (%"class.SourceMod::MemoryDownloader"*)* @_ZN9SourceMod16MemoryDownloaderC2Ev
@_ZN9SourceMod16MemoryDownloaderD1Ev = hidden alias void (%"class.SourceMod::MemoryDownloader"*)* @_ZN9SourceMod16MemoryDownloaderD2Ev

; Function Attrs: nounwind
define hidden void @_ZN9SourceMod16MemoryDownloaderC2Ev(%"class.SourceMod::MemoryDownloader"* nocapture %this) unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*]* @_ZTVN9SourceMod16MemoryDownloaderE, i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4
  %2 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 1
  store i8* null, i8** %2, align 4
  %3 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 2
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 3
  store i32 0, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind
define hidden void @_ZN9SourceMod16MemoryDownloaderD2Ev(%"class.SourceMod::MemoryDownloader"* nocapture %this) unnamed_addr #0 align 2 {
  %1 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*]* @_ZTVN9SourceMod16MemoryDownloaderE, i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 4
  %2 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 1
  %3 = load i8** %2, align 4
  tail call void @free(i8* %3) #1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #0

; Function Attrs: nounwind
define hidden i32 @_ZN9SourceMod16MemoryDownloader15OnDownloadWriteEPNS_12IWebTransferEPvS3_jj(%"class.SourceMod::MemoryDownloader"* nocapture %this, %"class.SourceMod::IWebTransfer"* nocapture readnone %session, i8* nocapture readnone %userdata, i8* nocapture readonly %ptr, i32 %size, i32 %nmemb) unnamed_addr #0 align 2 {
  %1 = mul i32 %nmemb, %size
  %2 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 3
  %3 = load i32* %2, align 4
  %4 = add i32 %3, %1
  %5 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 2
  %6 = load i32* %5, align 4
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 1
  %.pre1 = load i8** %.phi.trans.insert, align 4
  br label %15

; <label>:8                                       ; preds = %0
  %9 = sub i32 %4, %6
  %10 = lshr i32 %9, 1
  %11 = add i32 %10, %4
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 1
  %13 = load i8** %12, align 4
  %14 = tail call i8* @realloc(i8* %13, i32 %11) #1
  store i8* %14, i8** %12, align 4
  %.pre = load i32* %2, align 4
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %8
  %16 = phi i8* [ %14, %8 ], [ %.pre1, %._crit_edge ]
  %17 = phi i32 [ %.pre, %8 ], [ %3, %._crit_edge ]
  %18 = getelementptr inbounds i8* %16, i32 %17
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %ptr, i32 %1, i32 1, i1 false)
  %19 = load i32* %2, align 4
  %20 = add i32 %19, %1
  store i32 %20, i32* %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i32) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define hidden void @_ZN9SourceMod16MemoryDownloader5ResetEv(%"class.SourceMod::MemoryDownloader"* nocapture %this) #0 align 2 {
  %1 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 3
  store i32 0, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind readonly
define hidden i8* @_ZN9SourceMod16MemoryDownloader9GetBufferEv(%"class.SourceMod::MemoryDownloader"* nocapture readonly %this) #2 align 2 {
  %1 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 1
  %2 = load i8** %1, align 4
  ret i8* %2
}

; Function Attrs: nounwind readonly
define hidden i32 @_ZN9SourceMod16MemoryDownloader7GetSizeEv(%"class.SourceMod::MemoryDownloader"* nocapture readonly %this) #2 align 2 {
  %1 = getelementptr inbounds %"class.SourceMod::MemoryDownloader"* %this, i32 0, i32 3
  %2 = load i32* %1, align 4
  ret i32 %2
}

; Function Attrs: nounwind readnone
define linkonce_odr hidden i32 @_ZN9SourceMod16ITransferHandler22GetURLInterfaceVersionEv(%"class.SourceMod::ITransferHandler"* nocapture readnone %this) unnamed_addr #3 align 2 {
  ret i32 3
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
