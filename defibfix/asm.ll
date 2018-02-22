; ModuleID = 'asm/asm.c'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Unknown thunk: %c\0A\00", align 1

; Function Attrs: nounwind
define hidden void @check_thunks(i8* %dest, i8* %pc) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %writeaddr = alloca i8*, align 4
  %calloffset = alloca i8*, align 4
  %calladdr = alloca i8*, align 4
  %movByte = alloca i8, align 1
  store i8* %dest, i8** %1, align 4
  store i8* %pc, i8** %2, align 4
  %3 = load i8** %1, align 4
  %4 = getelementptr inbounds i8* %3, i32 -4
  store i8* %4, i8** %writeaddr, align 4
  %5 = load i8** %writeaddr, align 4
  %6 = bitcast i8* %5 to i8**
  %7 = load i8** %6, align 4
  store i8* %7, i8** %calloffset, align 4
  %8 = load i8** %1, align 4
  %9 = load i8** %calloffset, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = getelementptr inbounds i8* %8, i32 %10
  store i8* %11, i8** %calladdr, align 4
  %12 = load i8** %calladdr, align 4
  %13 = load i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 139
  br i1 %15, label %16, label %71

; <label>:16                                      ; preds = %0
  %17 = load i8** %calladdr, align 4
  %18 = getelementptr inbounds i8* %17, i32 2
  %19 = load i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 36
  br i1 %21, label %22, label %71

; <label>:22                                      ; preds = %16
  %23 = load i8** %calladdr, align 4
  %24 = getelementptr inbounds i8* %23, i32 3
  %25 = load i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 195
  br i1 %27, label %28, label %71

; <label>:28                                      ; preds = %22
  store i8 -72, i8* %movByte, align 1
  %29 = load i8** %calladdr, align 4
  %30 = getelementptr inbounds i8* %29, i32 1
  %31 = load i8* %30, align 1
  %32 = zext i8 %31 to i32
  switch i32 %32, label %53 [
    i32 4, label %33
    i32 28, label %38
    i32 12, label %43
    i32 20, label %48
  ]

; <label>:33                                      ; preds = %28
  %34 = load i8* %movByte, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, 0
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %movByte, align 1
  br label %59

; <label>:38                                      ; preds = %28
  %39 = load i8* %movByte, align 1
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, 3
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %movByte, align 1
  br label %59

; <label>:43                                      ; preds = %28
  %44 = load i8* %movByte, align 1
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %movByte, align 1
  br label %59

; <label>:48                                      ; preds = %28
  %49 = load i8* %movByte, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, 2
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %movByte, align 1
  br label %59

; <label>:53                                      ; preds = %28
  %54 = load i8** %calladdr, align 4
  %55 = getelementptr inbounds i8* %54, i32 1
  %56 = load i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0), i32 %57)
  br label %59

; <label>:59                                      ; preds = %53, %48, %43, %38, %33
  %60 = load i8** %writeaddr, align 4
  %61 = getelementptr inbounds i8* %60, i32 -1
  store i8* %61, i8** %writeaddr, align 4
  %62 = load i8* %movByte, align 1
  %63 = load i8** %writeaddr, align 4
  store i8 %62, i8* %63, align 1
  %64 = load i8** %writeaddr, align 4
  %65 = getelementptr inbounds i8* %64, i32 1
  store i8* %65, i8** %writeaddr, align 4
  %66 = load i8** %2, align 4
  %67 = load i8** %writeaddr, align 4
  %68 = bitcast i8* %67 to i8**
  store i8* %66, i8** %68, align 4
  %69 = load i8** %writeaddr, align 4
  %70 = getelementptr inbounds i8* %69, i32 4
  store i8* %70, i8** %writeaddr, align 4
  br label %71

; <label>:71                                      ; preds = %59, %22, %16, %0
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define hidden i32 @copy_bytes(i8* %func, i8* %dest, i32 %required_len) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %bytecount = alloca i32, align 4
  %operandSize = alloca i32, align 4
  %FPU = alloca i32, align 4
  %twoByte = alloca i32, align 4
  %opcode = alloca i8, align 1
  %modRM = alloca i8, align 1
  store i8* %func, i8** %1, align 4
  store i8* %dest, i8** %2, align 4
  store i32 %required_len, i32* %3, align 4
  store i32 0, i32* %bytecount, align 4
  br label %4

; <label>:4                                       ; preds = %669, %0
  %5 = load i32* %bytecount, align 4
  %6 = load i32* %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %4
  %9 = load i8** %1, align 4
  %10 = load i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 204
  br label %13

; <label>:13                                      ; preds = %8, %4
  %14 = phi i1 [ false, %4 ], [ %12, %8 ]
  br i1 %14, label %15, label %670

; <label>:15                                      ; preds = %13
  store i32 4, i32* %operandSize, align 4
  store i32 0, i32* %FPU, align 4
  store i32 0, i32* %twoByte, align 4
  store i8 -112, i8* %opcode, align 1
  store i8 -1, i8* %modRM, align 1
  br label %16

; <label>:16                                      ; preds = %94, %15
  %17 = load i8** %1, align 4
  %18 = load i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 240
  br i1 %20, label %49, label %21

; <label>:21                                      ; preds = %16
  %22 = load i8** %1, align 4
  %23 = load i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 242
  br i1 %25, label %49, label %26

; <label>:26                                      ; preds = %21
  %27 = load i8** %1, align 4
  %28 = load i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 243
  br i1 %30, label %49, label %31

; <label>:31                                      ; preds = %26
  %32 = load i8** %1, align 4
  %33 = load i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 252
  %36 = icmp eq i32 %35, 100
  br i1 %36, label %49, label %37

; <label>:37                                      ; preds = %31
  %38 = load i8** %1, align 4
  %39 = load i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 248
  %42 = icmp eq i32 %41, 216
  br i1 %42, label %49, label %43

; <label>:43                                      ; preds = %37
  %44 = load i8** %1, align 4
  %45 = load i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 126
  %48 = icmp eq i32 %47, 98
  br label %49

; <label>:49                                      ; preds = %43, %37, %31, %26, %21, %16
  %50 = phi i1 [ true, %37 ], [ true, %31 ], [ true, %26 ], [ true, %21 ], [ true, %16 ], [ %48, %43 ]
  br i1 %50, label %51, label %97

; <label>:51                                      ; preds = %49
  %52 = load i8** %1, align 4
  %53 = load i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 102
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %51
  store i32 2, i32* %operandSize, align 4
  br label %82

; <label>:57                                      ; preds = %51
  %58 = load i8** %1, align 4
  %59 = load i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 248
  %62 = icmp eq i32 %61, 216
  br i1 %62, label %63, label %81

; <label>:63                                      ; preds = %57
  %64 = load i8** %1, align 4
  %65 = load i8* %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %FPU, align 4
  %67 = load i8** %2, align 4
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

; <label>:69                                      ; preds = %63
  %70 = load i8** %1, align 4
  %71 = getelementptr inbounds i8* %70, i32 1
  store i8* %71, i8** %1, align 4
  %72 = load i8* %70, align 1
  %73 = load i8** %2, align 4
  %74 = getelementptr inbounds i8* %73, i32 1
  store i8* %74, i8** %2, align 4
  store i8 %72, i8* %73, align 1
  br label %78

; <label>:75                                      ; preds = %63
  %76 = load i8** %1, align 4
  %77 = getelementptr inbounds i8* %76, i32 1
  store i8* %77, i8** %1, align 4
  br label %78

; <label>:78                                      ; preds = %75, %69
  %79 = load i32* %bytecount, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %bytecount, align 4
  br label %97

; <label>:81                                      ; preds = %57
  br label %82

; <label>:82                                      ; preds = %81, %56
  %83 = load i8** %2, align 4
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

; <label>:85                                      ; preds = %82
  %86 = load i8** %1, align 4
  %87 = getelementptr inbounds i8* %86, i32 1
  store i8* %87, i8** %1, align 4
  %88 = load i8* %86, align 1
  %89 = load i8** %2, align 4
  %90 = getelementptr inbounds i8* %89, i32 1
  store i8* %90, i8** %2, align 4
  store i8 %88, i8* %89, align 1
  br label %94

; <label>:91                                      ; preds = %82
  %92 = load i8** %1, align 4
  %93 = getelementptr inbounds i8* %92, i32 1
  store i8* %93, i8** %1, align 4
  br label %94

; <label>:94                                      ; preds = %91, %85
  %95 = load i32* %bytecount, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %bytecount, align 4
  br label %16

; <label>:97                                      ; preds = %78, %49
  %98 = load i8** %1, align 4
  %99 = load i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 15
  br i1 %101, label %102, label %117

; <label>:102                                     ; preds = %97
  store i32 1, i32* %twoByte, align 4
  %103 = load i8** %2, align 4
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

; <label>:105                                     ; preds = %102
  %106 = load i8** %1, align 4
  %107 = getelementptr inbounds i8* %106, i32 1
  store i8* %107, i8** %1, align 4
  %108 = load i8* %106, align 1
  %109 = load i8** %2, align 4
  %110 = getelementptr inbounds i8* %109, i32 1
  store i8* %110, i8** %2, align 4
  store i8 %108, i8* %109, align 1
  br label %114

; <label>:111                                     ; preds = %102
  %112 = load i8** %1, align 4
  %113 = getelementptr inbounds i8* %112, i32 1
  store i8* %113, i8** %1, align 4
  br label %114

; <label>:114                                     ; preds = %111, %105
  %115 = load i32* %bytecount, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %bytecount, align 4
  br label %117

; <label>:117                                     ; preds = %114, %97
  %118 = load i8** %1, align 4
  %119 = getelementptr inbounds i8* %118, i32 1
  store i8* %119, i8** %1, align 4
  %120 = load i8* %118, align 1
  store i8 %120, i8* %opcode, align 1
  %121 = load i8** %2, align 4
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

; <label>:123                                     ; preds = %117
  %124 = load i8* %opcode, align 1
  %125 = load i8** %2, align 4
  %126 = getelementptr inbounds i8* %125, i32 1
  store i8* %126, i8** %2, align 4
  store i8 %124, i8* %125, align 1
  br label %127

; <label>:127                                     ; preds = %123, %117
  %128 = load i32* %bytecount, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %bytecount, align 4
  store i8 -1, i8* %modRM, align 1
  %130 = load i32* %FPU, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

; <label>:132                                     ; preds = %127
  %133 = load i8* %opcode, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 192
  %136 = icmp ne i32 %135, 192
  br i1 %136, label %137, label %139

; <label>:137                                     ; preds = %132
  %138 = load i8* %opcode, align 1
  store i8 %138, i8* %modRM, align 1
  br label %139

; <label>:139                                     ; preds = %137, %132
  br label %262

; <label>:140                                     ; preds = %127
  %141 = load i32* %twoByte, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %202, label %143

; <label>:143                                     ; preds = %140
  %144 = load i8* %opcode, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, 196
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %188, label %148

; <label>:148                                     ; preds = %143
  %149 = load i8* %opcode, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 244
  %152 = icmp eq i32 %151, 96
  br i1 %152, label %153, label %163

; <label>:153                                     ; preds = %148
  %154 = load i8* %opcode, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 10
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %188, label %158

; <label>:158                                     ; preds = %153
  %159 = load i8* %opcode, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 9
  %162 = icmp eq i32 %161, 9
  br i1 %162, label %188, label %163

; <label>:163                                     ; preds = %158, %148
  %164 = load i8* %opcode, align 1
  %165 = zext i8 %164 to i32
  %166 = and i32 %165, 240
  %167 = icmp eq i32 %166, 128
  br i1 %167, label %188, label %168

; <label>:168                                     ; preds = %163
  %169 = load i8* %opcode, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 248
  %172 = icmp eq i32 %171, 192
  br i1 %172, label %173, label %178

; <label>:173                                     ; preds = %168
  %174 = load i8* %opcode, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %175, 14
  %177 = icmp ne i32 %176, 2
  br i1 %177, label %188, label %178

; <label>:178                                     ; preds = %173, %168
  %179 = load i8* %opcode, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 252
  %182 = icmp eq i32 %181, 208
  br i1 %182, label %188, label %183

; <label>:183                                     ; preds = %178
  %184 = load i8* %opcode, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 246
  %187 = icmp eq i32 %186, 246
  br i1 %187, label %188, label %201

; <label>:188                                     ; preds = %183, %178, %173, %163, %158, %153, %143
  %189 = load i8** %1, align 4
  %190 = getelementptr inbounds i8* %189, i32 1
  store i8* %190, i8** %1, align 4
  %191 = load i8* %189, align 1
  store i8 %191, i8* %modRM, align 1
  %192 = load i8** %2, align 4
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %198

; <label>:194                                     ; preds = %188
  %195 = load i8* %modRM, align 1
  %196 = load i8** %2, align 4
  %197 = getelementptr inbounds i8* %196, i32 1
  store i8* %197, i8** %2, align 4
  store i8 %195, i8* %196, align 1
  br label %198

; <label>:198                                     ; preds = %194, %188
  %199 = load i32* %bytecount, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %bytecount, align 4
  br label %201

; <label>:201                                     ; preds = %198, %183
  br label %261

; <label>:202                                     ; preds = %140
  %203 = load i8* %opcode, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 240
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %217

; <label>:207                                     ; preds = %202
  %208 = load i8* %opcode, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 15
  %211 = icmp sge i32 %210, 4
  br i1 %211, label %212, label %217

; <label>:212                                     ; preds = %207
  %213 = load i8* %opcode, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %214, 13
  %216 = icmp ne i32 %215, 13
  br i1 %216, label %246, label %217

; <label>:217                                     ; preds = %212, %207, %202
  %218 = load i8* %opcode, align 1
  %219 = zext i8 %218 to i32
  %220 = and i32 %219, 240
  %221 = icmp eq i32 %220, 48
  br i1 %221, label %246, label %222

; <label>:222                                     ; preds = %217
  %223 = load i8* %opcode, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp eq i32 %224, 119
  br i1 %225, label %246, label %226

; <label>:226                                     ; preds = %222
  %227 = load i8* %opcode, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 240
  %230 = icmp eq i32 %229, 128
  br i1 %230, label %246, label %231

; <label>:231                                     ; preds = %226
  %232 = load i8* %opcode, align 1
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, 240
  %235 = icmp eq i32 %234, 160
  br i1 %235, label %236, label %241

; <label>:236                                     ; preds = %231
  %237 = load i8* %opcode, align 1
  %238 = zext i8 %237 to i32
  %239 = and i32 %238, 7
  %240 = icmp sle i32 %239, 2
  br i1 %240, label %246, label %241

; <label>:241                                     ; preds = %236, %231
  %242 = load i8* %opcode, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 248
  %245 = icmp eq i32 %244, 200
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %241, %236, %226, %222, %217, %212
  br label %260

; <label>:247                                     ; preds = %241
  %248 = load i8** %1, align 4
  %249 = getelementptr inbounds i8* %248, i32 1
  store i8* %249, i8** %1, align 4
  %250 = load i8* %248, align 1
  store i8 %250, i8* %modRM, align 1
  %251 = load i8** %2, align 4
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %257

; <label>:253                                     ; preds = %247
  %254 = load i8* %modRM, align 1
  %255 = load i8** %2, align 4
  %256 = getelementptr inbounds i8* %255, i32 1
  store i8* %256, i8** %2, align 4
  store i8 %254, i8* %255, align 1
  br label %257

; <label>:257                                     ; preds = %253, %247
  %258 = load i32* %bytecount, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %bytecount, align 4
  br label %260

; <label>:260                                     ; preds = %257, %246
  br label %261

; <label>:261                                     ; preds = %260, %201
  br label %262

; <label>:262                                     ; preds = %261, %139
  %263 = load i8* %modRM, align 1
  %264 = zext i8 %263 to i32
  %265 = and i32 %264, 7
  %266 = icmp eq i32 %265, 4
  br i1 %266, label %267, label %287

; <label>:267                                     ; preds = %262
  %268 = load i8* %modRM, align 1
  %269 = zext i8 %268 to i32
  %270 = and i32 %269, 192
  %271 = icmp ne i32 %270, 192
  br i1 %271, label %272, label %287

; <label>:272                                     ; preds = %267
  %273 = load i8** %2, align 4
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %281

; <label>:275                                     ; preds = %272
  %276 = load i8** %1, align 4
  %277 = getelementptr inbounds i8* %276, i32 1
  store i8* %277, i8** %1, align 4
  %278 = load i8* %276, align 1
  %279 = load i8** %2, align 4
  %280 = getelementptr inbounds i8* %279, i32 1
  store i8* %280, i8** %2, align 4
  store i8 %278, i8* %279, align 1
  br label %284

; <label>:281                                     ; preds = %272
  %282 = load i8** %1, align 4
  %283 = getelementptr inbounds i8* %282, i32 1
  store i8* %283, i8** %1, align 4
  br label %284

; <label>:284                                     ; preds = %281, %275
  %285 = load i32* %bytecount, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %bytecount, align 4
  br label %287

; <label>:287                                     ; preds = %284, %267, %262
  %288 = load i8* %modRM, align 1
  %289 = zext i8 %288 to i32
  %290 = and i32 %289, 197
  %291 = icmp eq i32 %290, 5
  br i1 %291, label %292, label %308

; <label>:292                                     ; preds = %287
  %293 = load i8** %2, align 4
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %303

; <label>:295                                     ; preds = %292
  %296 = load i8** %1, align 4
  %297 = bitcast i8* %296 to i32*
  %298 = load i32* %297, align 4
  %299 = load i8** %2, align 4
  %300 = bitcast i8* %299 to i32*
  store i32 %298, i32* %300, align 4
  %301 = load i8** %2, align 4
  %302 = getelementptr inbounds i8* %301, i32 4
  store i8* %302, i8** %2, align 4
  br label %303

; <label>:303                                     ; preds = %295, %292
  %304 = load i8** %1, align 4
  %305 = getelementptr inbounds i8* %304, i32 4
  store i8* %305, i8** %1, align 4
  %306 = load i32* %bytecount, align 4
  %307 = add nsw i32 %306, 4
  store i32 %307, i32* %bytecount, align 4
  br label %308

; <label>:308                                     ; preds = %303, %287
  %309 = load i8* %modRM, align 1
  %310 = zext i8 %309 to i32
  %311 = and i32 %310, 192
  %312 = icmp eq i32 %311, 64
  br i1 %312, label %313, label %328

; <label>:313                                     ; preds = %308
  %314 = load i8** %2, align 4
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %322

; <label>:316                                     ; preds = %313
  %317 = load i8** %1, align 4
  %318 = getelementptr inbounds i8* %317, i32 1
  store i8* %318, i8** %1, align 4
  %319 = load i8* %317, align 1
  %320 = load i8** %2, align 4
  %321 = getelementptr inbounds i8* %320, i32 1
  store i8* %321, i8** %2, align 4
  store i8 %319, i8* %320, align 1
  br label %325

; <label>:322                                     ; preds = %313
  %323 = load i8** %1, align 4
  %324 = getelementptr inbounds i8* %323, i32 1
  store i8* %324, i8** %1, align 4
  br label %325

; <label>:325                                     ; preds = %322, %316
  %326 = load i32* %bytecount, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %bytecount, align 4
  br label %328

; <label>:328                                     ; preds = %325, %308
  %329 = load i8* %modRM, align 1
  %330 = zext i8 %329 to i32
  %331 = and i32 %330, 192
  %332 = icmp eq i32 %331, 128
  br i1 %332, label %333, label %349

; <label>:333                                     ; preds = %328
  %334 = load i8** %2, align 4
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %344

; <label>:336                                     ; preds = %333
  %337 = load i8** %1, align 4
  %338 = bitcast i8* %337 to i32*
  %339 = load i32* %338, align 4
  %340 = load i8** %2, align 4
  %341 = bitcast i8* %340 to i32*
  store i32 %339, i32* %341, align 4
  %342 = load i8** %2, align 4
  %343 = getelementptr inbounds i8* %342, i32 4
  store i8* %343, i8** %2, align 4
  br label %344

; <label>:344                                     ; preds = %336, %333
  %345 = load i8** %1, align 4
  %346 = getelementptr inbounds i8* %345, i32 4
  store i8* %346, i8** %1, align 4
  %347 = load i32* %bytecount, align 4
  %348 = add nsw i32 %347, 4
  store i32 %348, i32* %bytecount, align 4
  br label %349

; <label>:349                                     ; preds = %344, %328
  %350 = load i32* %FPU, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

; <label>:352                                     ; preds = %349
  br label %669

; <label>:353                                     ; preds = %349
  %354 = load i32* %twoByte, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %585, label %356

; <label>:356                                     ; preds = %353
  %357 = load i8* %opcode, align 1
  %358 = zext i8 %357 to i32
  %359 = and i32 %358, 199
  %360 = icmp eq i32 %359, 4
  br i1 %360, label %429, label %361

; <label>:361                                     ; preds = %356
  %362 = load i8* %opcode, align 1
  %363 = zext i8 %362 to i32
  %364 = and i32 %363, 254
  %365 = icmp eq i32 %364, 106
  br i1 %365, label %429, label %366

; <label>:366                                     ; preds = %361
  %367 = load i8* %opcode, align 1
  %368 = zext i8 %367 to i32
  %369 = and i32 %368, 240
  %370 = icmp eq i32 %369, 112
  br i1 %370, label %429, label %371

; <label>:371                                     ; preds = %366
  %372 = load i8* %opcode, align 1
  %373 = zext i8 %372 to i32
  %374 = icmp eq i32 %373, 128
  br i1 %374, label %429, label %375

; <label>:375                                     ; preds = %371
  %376 = load i8* %opcode, align 1
  %377 = zext i8 %376 to i32
  %378 = icmp eq i32 %377, 131
  br i1 %378, label %429, label %379

; <label>:379                                     ; preds = %375
  %380 = load i8* %opcode, align 1
  %381 = zext i8 %380 to i32
  %382 = and i32 %381, 253
  %383 = icmp eq i32 %382, 160
  br i1 %383, label %429, label %384

; <label>:384                                     ; preds = %379
  %385 = load i8* %opcode, align 1
  %386 = zext i8 %385 to i32
  %387 = icmp eq i32 %386, 168
  br i1 %387, label %429, label %388

; <label>:388                                     ; preds = %384
  %389 = load i8* %opcode, align 1
  %390 = zext i8 %389 to i32
  %391 = and i32 %390, 248
  %392 = icmp eq i32 %391, 176
  br i1 %392, label %429, label %393

; <label>:393                                     ; preds = %388
  %394 = load i8* %opcode, align 1
  %395 = zext i8 %394 to i32
  %396 = and i32 %395, 254
  %397 = icmp eq i32 %396, 192
  br i1 %397, label %429, label %398

; <label>:398                                     ; preds = %393
  %399 = load i8* %opcode, align 1
  %400 = zext i8 %399 to i32
  %401 = icmp eq i32 %400, 198
  br i1 %401, label %429, label %402

; <label>:402                                     ; preds = %398
  %403 = load i8* %opcode, align 1
  %404 = zext i8 %403 to i32
  %405 = icmp eq i32 %404, 205
  br i1 %405, label %429, label %406

; <label>:406                                     ; preds = %402
  %407 = load i8* %opcode, align 1
  %408 = zext i8 %407 to i32
  %409 = and i32 %408, 254
  %410 = icmp eq i32 %409, 212
  br i1 %410, label %429, label %411

; <label>:411                                     ; preds = %406
  %412 = load i8* %opcode, align 1
  %413 = zext i8 %412 to i32
  %414 = and i32 %413, 248
  %415 = icmp eq i32 %414, 224
  br i1 %415, label %429, label %416

; <label>:416                                     ; preds = %411
  %417 = load i8* %opcode, align 1
  %418 = zext i8 %417 to i32
  %419 = icmp eq i32 %418, 235
  br i1 %419, label %429, label %420

; <label>:420                                     ; preds = %416
  %421 = load i8* %opcode, align 1
  %422 = zext i8 %421 to i32
  %423 = icmp eq i32 %422, 246
  br i1 %423, label %424, label %444

; <label>:424                                     ; preds = %420
  %425 = load i8* %modRM, align 1
  %426 = zext i8 %425 to i32
  %427 = and i32 %426, 48
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %444

; <label>:429                                     ; preds = %424, %416, %411, %406, %402, %398, %393, %388, %384, %379, %375, %371, %366, %361, %356
  %430 = load i8** %2, align 4
  %431 = icmp ne i8* %430, null
  br i1 %431, label %432, label %438

; <label>:432                                     ; preds = %429
  %433 = load i8** %1, align 4
  %434 = getelementptr inbounds i8* %433, i32 1
  store i8* %434, i8** %1, align 4
  %435 = load i8* %433, align 1
  %436 = load i8** %2, align 4
  %437 = getelementptr inbounds i8* %436, i32 1
  store i8* %437, i8** %2, align 4
  store i8 %435, i8* %436, align 1
  br label %441

; <label>:438                                     ; preds = %429
  %439 = load i8** %1, align 4
  %440 = getelementptr inbounds i8* %439, i32 1
  store i8* %440, i8** %1, align 4
  br label %441

; <label>:441                                     ; preds = %438, %432
  %442 = load i32* %bytecount, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %bytecount, align 4
  br label %584

; <label>:444                                     ; preds = %424, %420
  %445 = load i8* %opcode, align 1
  %446 = zext i8 %445 to i32
  %447 = and i32 %446, 247
  %448 = icmp eq i32 %447, 194
  br i1 %448, label %449, label %465

; <label>:449                                     ; preds = %444
  %450 = load i8** %2, align 4
  %451 = icmp ne i8* %450, null
  br i1 %451, label %452, label %460

; <label>:452                                     ; preds = %449
  %453 = load i8** %1, align 4
  %454 = bitcast i8* %453 to i16*
  %455 = load i16* %454, align 2
  %456 = load i8** %2, align 4
  %457 = bitcast i8* %456 to i16*
  store i16 %455, i16* %457, align 2
  %458 = load i8** %2, align 4
  %459 = getelementptr inbounds i8* %458, i32 2
  store i8* %459, i8** %2, align 4
  br label %460

; <label>:460                                     ; preds = %452, %449
  %461 = load i8** %1, align 4
  %462 = getelementptr inbounds i8* %461, i32 2
  store i8* %462, i8** %1, align 4
  %463 = load i32* %bytecount, align 4
  %464 = add nsw i32 %463, 2
  store i32 %464, i32* %bytecount, align 4
  br label %583

; <label>:465                                     ; preds = %444
  %466 = load i8* %opcode, align 1
  %467 = zext i8 %466 to i32
  %468 = and i32 %467, 252
  %469 = icmp eq i32 %468, 128
  br i1 %469, label %513, label %470

; <label>:470                                     ; preds = %465
  %471 = load i8* %opcode, align 1
  %472 = zext i8 %471 to i32
  %473 = and i32 %472, 199
  %474 = icmp eq i32 %473, 5
  br i1 %474, label %513, label %475

; <label>:475                                     ; preds = %470
  %476 = load i8* %opcode, align 1
  %477 = zext i8 %476 to i32
  %478 = and i32 %477, 248
  %479 = icmp eq i32 %478, 184
  br i1 %479, label %513, label %480

; <label>:480                                     ; preds = %475
  %481 = load i8* %opcode, align 1
  %482 = zext i8 %481 to i32
  %483 = and i32 %482, 254
  %484 = icmp eq i32 %483, 232
  br i1 %484, label %513, label %485

; <label>:485                                     ; preds = %480
  %486 = load i8* %opcode, align 1
  %487 = zext i8 %486 to i32
  %488 = and i32 %487, 254
  %489 = icmp eq i32 %488, 104
  br i1 %489, label %513, label %490

; <label>:490                                     ; preds = %485
  %491 = load i8* %opcode, align 1
  %492 = zext i8 %491 to i32
  %493 = and i32 %492, 252
  %494 = icmp eq i32 %493, 160
  br i1 %494, label %513, label %495

; <label>:495                                     ; preds = %490
  %496 = load i8* %opcode, align 1
  %497 = zext i8 %496 to i32
  %498 = and i32 %497, 238
  %499 = icmp eq i32 %498, 168
  br i1 %499, label %513, label %500

; <label>:500                                     ; preds = %495
  %501 = load i8* %opcode, align 1
  %502 = zext i8 %501 to i32
  %503 = icmp eq i32 %502, 199
  br i1 %503, label %513, label %504

; <label>:504                                     ; preds = %500
  %505 = load i8* %opcode, align 1
  %506 = zext i8 %505 to i32
  %507 = icmp eq i32 %506, 247
  br i1 %507, label %508, label %582

; <label>:508                                     ; preds = %504
  %509 = load i8* %modRM, align 1
  %510 = zext i8 %509 to i32
  %511 = and i32 %510, 48
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %582

; <label>:513                                     ; preds = %508, %500, %495, %490, %485, %480, %475, %470, %465
  %514 = load i8** %2, align 4
  %515 = icmp ne i8* %514, null
  br i1 %515, label %516, label %575

; <label>:516                                     ; preds = %513
  %517 = load i8* %opcode, align 1
  %518 = zext i8 %517 to i32
  %519 = and i32 %518, 254
  %520 = icmp eq i32 %519, 232
  br i1 %520, label %521, label %555

; <label>:521                                     ; preds = %516
  %522 = load i32* %operandSize, align 4
  %523 = icmp eq i32 %522, 4
  br i1 %523, label %524, label %540

; <label>:524                                     ; preds = %521
  %525 = load i8** %1, align 4
  %526 = load i8** %1, align 4
  %527 = bitcast i8* %526 to i32*
  %528 = load i32* %527, align 4
  %529 = getelementptr inbounds i8* %525, i32 %528
  %530 = load i8** %2, align 4
  %531 = ptrtoint i8* %529 to i32
  %532 = ptrtoint i8* %530 to i32
  %533 = sub i32 %531, %532
  %534 = load i8** %2, align 4
  %535 = bitcast i8* %534 to i32*
  store i32 %533, i32* %535, align 4
  %536 = load i8** %2, align 4
  %537 = getelementptr inbounds i8* %536, i32 4
  %538 = load i8** %1, align 4
  %539 = getelementptr inbounds i8* %538, i32 4
  call void @check_thunks(i8* %537, i8* %539)
  br label %554

; <label>:540                                     ; preds = %521
  %541 = load i8** %1, align 4
  %542 = load i8** %1, align 4
  %543 = bitcast i8* %542 to i16*
  %544 = load i16* %543, align 2
  %545 = sext i16 %544 to i32
  %546 = getelementptr inbounds i8* %541, i32 %545
  %547 = load i8** %2, align 4
  %548 = ptrtoint i8* %546 to i32
  %549 = ptrtoint i8* %547 to i32
  %550 = sub i32 %548, %549
  %551 = trunc i32 %550 to i16
  %552 = load i8** %2, align 4
  %553 = bitcast i8* %552 to i16*
  store i16 %551, i16* %553, align 2
  br label %554

; <label>:554                                     ; preds = %540, %524
  br label %571

; <label>:555                                     ; preds = %516
  %556 = load i32* %operandSize, align 4
  %557 = icmp eq i32 %556, 4
  br i1 %557, label %558, label %564

; <label>:558                                     ; preds = %555
  %559 = load i8** %1, align 4
  %560 = bitcast i8* %559 to i32*
  %561 = load i32* %560, align 4
  %562 = load i8** %2, align 4
  %563 = bitcast i8* %562 to i32*
  store i32 %561, i32* %563, align 4
  br label %570

; <label>:564                                     ; preds = %555
  %565 = load i8** %1, align 4
  %566 = bitcast i8* %565 to i16*
  %567 = load i16* %566, align 2
  %568 = load i8** %2, align 4
  %569 = bitcast i8* %568 to i16*
  store i16 %567, i16* %569, align 2
  br label %570

; <label>:570                                     ; preds = %564, %558
  br label %571

; <label>:571                                     ; preds = %570, %554
  %572 = load i32* %operandSize, align 4
  %573 = load i8** %2, align 4
  %574 = getelementptr inbounds i8* %573, i32 %572
  store i8* %574, i8** %2, align 4
  br label %575

; <label>:575                                     ; preds = %571, %513
  %576 = load i32* %operandSize, align 4
  %577 = load i8** %1, align 4
  %578 = getelementptr inbounds i8* %577, i32 %576
  store i8* %578, i8** %1, align 4
  %579 = load i32* %operandSize, align 4
  %580 = load i32* %bytecount, align 4
  %581 = add nsw i32 %580, %579
  store i32 %581, i32* %bytecount, align 4
  br label %582

; <label>:582                                     ; preds = %575, %508, %504
  br label %583

; <label>:583                                     ; preds = %582, %460
  br label %584

; <label>:584                                     ; preds = %583, %441
  br label %668

; <label>:585                                     ; preds = %353
  %586 = load i8* %opcode, align 1
  %587 = zext i8 %586 to i32
  %588 = icmp eq i32 %587, 186
  br i1 %588, label %619, label %589

; <label>:589                                     ; preds = %585
  %590 = load i8* %opcode, align 1
  %591 = zext i8 %590 to i32
  %592 = icmp eq i32 %591, 15
  br i1 %592, label %619, label %593

; <label>:593                                     ; preds = %589
  %594 = load i8* %opcode, align 1
  %595 = zext i8 %594 to i32
  %596 = and i32 %595, 252
  %597 = icmp eq i32 %596, 112
  br i1 %597, label %619, label %598

; <label>:598                                     ; preds = %593
  %599 = load i8* %opcode, align 1
  %600 = zext i8 %599 to i32
  %601 = and i32 %600, 247
  %602 = icmp eq i32 %601, 164
  br i1 %602, label %619, label %603

; <label>:603                                     ; preds = %598
  %604 = load i8* %opcode, align 1
  %605 = zext i8 %604 to i32
  %606 = icmp eq i32 %605, 194
  br i1 %606, label %619, label %607

; <label>:607                                     ; preds = %603
  %608 = load i8* %opcode, align 1
  %609 = zext i8 %608 to i32
  %610 = icmp eq i32 %609, 196
  br i1 %610, label %619, label %611

; <label>:611                                     ; preds = %607
  %612 = load i8* %opcode, align 1
  %613 = zext i8 %612 to i32
  %614 = icmp eq i32 %613, 197
  br i1 %614, label %619, label %615

; <label>:615                                     ; preds = %611
  %616 = load i8* %opcode, align 1
  %617 = zext i8 %616 to i32
  %618 = icmp eq i32 %617, 198
  br i1 %618, label %619, label %632

; <label>:619                                     ; preds = %615, %611, %607, %603, %598, %593, %589, %585
  %620 = load i8** %2, align 4
  %621 = icmp ne i8* %620, null
  br i1 %621, label %622, label %628

; <label>:622                                     ; preds = %619
  %623 = load i8** %1, align 4
  %624 = getelementptr inbounds i8* %623, i32 1
  store i8* %624, i8** %1, align 4
  %625 = load i8* %623, align 1
  %626 = load i8** %2, align 4
  %627 = getelementptr inbounds i8* %626, i32 1
  store i8* %627, i8** %2, align 4
  store i8 %625, i8* %626, align 1
  br label %631

; <label>:628                                     ; preds = %619
  %629 = load i8** %1, align 4
  %630 = getelementptr inbounds i8* %629, i32 1
  store i8* %630, i8** %1, align 4
  br label %631

; <label>:631                                     ; preds = %628, %622
  br label %667

; <label>:632                                     ; preds = %615
  %633 = load i8* %opcode, align 1
  %634 = zext i8 %633 to i32
  %635 = and i32 %634, 240
  %636 = icmp eq i32 %635, 128
  br i1 %636, label %637, label %666

; <label>:637                                     ; preds = %632
  %638 = load i8** %2, align 4
  %639 = icmp ne i8* %638, null
  br i1 %639, label %640, label %659

; <label>:640                                     ; preds = %637
  %641 = load i32* %operandSize, align 4
  %642 = icmp eq i32 %641, 4
  br i1 %642, label %643, label %649

; <label>:643                                     ; preds = %640
  %644 = load i8** %1, align 4
  %645 = bitcast i8* %644 to i32*
  %646 = load i32* %645, align 4
  %647 = load i8** %2, align 4
  %648 = bitcast i8* %647 to i32*
  store i32 %646, i32* %648, align 4
  br label %655

; <label>:649                                     ; preds = %640
  %650 = load i8** %1, align 4
  %651 = bitcast i8* %650 to i16*
  %652 = load i16* %651, align 2
  %653 = load i8** %2, align 4
  %654 = bitcast i8* %653 to i16*
  store i16 %652, i16* %654, align 2
  br label %655

; <label>:655                                     ; preds = %649, %643
  %656 = load i32* %operandSize, align 4
  %657 = load i8** %2, align 4
  %658 = getelementptr inbounds i8* %657, i32 %656
  store i8* %658, i8** %2, align 4
  br label %659

; <label>:659                                     ; preds = %655, %637
  %660 = load i32* %operandSize, align 4
  %661 = load i8** %1, align 4
  %662 = getelementptr inbounds i8* %661, i32 %660
  store i8* %662, i8** %1, align 4
  %663 = load i32* %operandSize, align 4
  %664 = load i32* %bytecount, align 4
  %665 = add nsw i32 %664, %663
  store i32 %665, i32* %bytecount, align 4
  br label %666

; <label>:666                                     ; preds = %659, %632
  br label %667

; <label>:667                                     ; preds = %666, %631
  br label %668

; <label>:668                                     ; preds = %667, %584
  br label %669

; <label>:669                                     ; preds = %668, %352
  br label %4

; <label>:670                                     ; preds = %13
  %671 = load i32* %bytecount, align 4
  ret i32 %671
}

; Function Attrs: nounwind
define hidden void @inject_jmp(i8* %src, i8* %dest) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  store i8* %src, i8** %1, align 4
  store i8* %dest, i8** %2, align 4
  %3 = load i8** %1, align 4
  store i8 -23, i8* %3, align 1
  %4 = load i8** %2, align 4
  %5 = load i8** %1, align 4
  %6 = getelementptr inbounds i8* %5, i32 5
  %7 = ptrtoint i8* %4 to i32
  %8 = ptrtoint i8* %6 to i32
  %9 = sub i32 %7, %8
  %10 = load i8** %1, align 4
  %11 = getelementptr inbounds i8* %10, i32 1
  %12 = bitcast i8* %11 to i32*
  store i32 %9, i32* %12, align 4
  ret void
}

; Function Attrs: nounwind
define hidden void @fill_nop(i8* %src, i32 %len) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %src2 = alloca i8*, align 4
  store i8* %src, i8** %1, align 4
  store i32 %len, i32* %2, align 4
  %3 = load i8** %1, align 4
  store i8* %3, i8** %src2, align 4
  br label %4

; <label>:4                                       ; preds = %7, %0
  %5 = load i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = load i8** %src2, align 4
  %9 = getelementptr inbounds i8* %8, i32 1
  store i8* %9, i8** %src2, align 4
  store i8 -112, i8* %8, align 1
  %10 = load i32* %2, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %2, align 4
  br label %4

; <label>:12                                      ; preds = %4
  ret void
}

; Function Attrs: nounwind
define hidden i8* @eval_jump(i8* %src) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %addr = alloca i8*, align 4
  store i8* %src, i8** %2, align 4
  %3 = load i8** %2, align 4
  store i8* %3, i8** %addr, align 4
  %4 = load i8** %addr, align 4
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  store i8* null, i8** %1
  br label %59

; <label>:7                                       ; preds = %0
  %8 = load i8** %addr, align 4
  %9 = getelementptr inbounds i8* %8, i32 0
  %10 = load i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %7
  %14 = load i8** %addr, align 4
  %15 = getelementptr inbounds i8* %14, i32 1
  %16 = load i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %28

; <label>:19                                      ; preds = %13
  %20 = load i8** %addr, align 4
  %21 = getelementptr inbounds i8* %20, i32 2
  store i8* %21, i8** %addr, align 4
  %22 = load i8** %addr, align 4
  %23 = bitcast i8* %22 to i8**
  %24 = load i8** %23, align 4
  store i8* %24, i8** %addr, align 4
  %25 = load i8** %addr, align 4
  %26 = bitcast i8* %25 to i8**
  %27 = load i8** %26, align 4
  store i8* %27, i8** %1
  br label %59

; <label>:28                                      ; preds = %13, %7
  %29 = load i8** %addr, align 4
  %30 = getelementptr inbounds i8* %29, i32 0
  %31 = load i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 235
  br i1 %33, label %34, label %56

; <label>:34                                      ; preds = %28
  %35 = load i8** %addr, align 4
  %36 = getelementptr inbounds i8* %35, i32 2
  %37 = load i8** %addr, align 4
  %38 = getelementptr inbounds i8* %37, i32 1
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = getelementptr inbounds i8* %36, i32 %40
  store i8* %41, i8** %addr, align 4
  %42 = load i8** %addr, align 4
  %43 = getelementptr inbounds i8* %42, i32 0
  %44 = load i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 233
  br i1 %46, label %47, label %54

; <label>:47                                      ; preds = %34
  %48 = load i8** %addr, align 4
  %49 = load i8** %addr, align 4
  %50 = getelementptr inbounds i8* %49, i32 1
  %51 = bitcast i8* %50 to i32*
  %52 = load i32* %51, align 4
  %53 = getelementptr inbounds i8* %48, i32 %52
  store i8* %53, i8** %addr, align 4
  br label %54

; <label>:54                                      ; preds = %47, %34
  %55 = load i8** %addr, align 4
  store i8* %55, i8** %1
  br label %59

; <label>:56                                      ; preds = %28
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i8** %addr, align 4
  store i8* %58, i8** %1
  br label %59

; <label>:59                                      ; preds = %57, %54, %19, %6
  %60 = load i8** %1
  ret i8* %60
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2~trusty2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}
