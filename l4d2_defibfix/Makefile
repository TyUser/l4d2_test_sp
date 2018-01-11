HX_FLAGS = -DPOSIX \
	-Dstricmp=strcasecmp \
	-D_stricmp=strcasecmp \
	-D_strnicmp=strncasecmp \
	-Dstrnicmp=strncasecmp \
	-D_snprintf=snprintf \
	-D_vsnprintf=vsnprintf \
	-D_alloca=alloca \
	-Dstrcmpi=strcasecmp \
	-DCOMPILER_GCC \
	-Wno-overloaded-virtual \
	-Wno-switch \
	-Wno-unused \
	-msse \
	-DSOURCEMOD_BUILD \
	-DHAVE_STDINT_H \
	-m32 \
	-DNDEBUG \
	-O2 \
	-funroll-loops \
	-pipe \
	-fno-strict-aliasing \
	-D_LINUX \
	-mfpmath=sse \
	-fvisibility=hidden \
	-Wno-non-virtual-dtor \
	-fno-exceptions \
	-fno-rtti \
	-fvisibility-inlines-hidden

#
HX_FLAGS += -Wall \
	-Werror -S

all:
	mkdir -p l4d2_release

	gcc $(HX_FLAGS) -o l4d2_release/smsdk_ext.s -c smsdk_ext.ii
	gcc $(HX_FLAGS) -o l4d2_release/detours.s -c detours.ii
	gcc $(HX_FLAGS) -o l4d2_release/extension.s -c extension.ii
