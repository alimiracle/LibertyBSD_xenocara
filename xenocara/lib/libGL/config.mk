# $OpenBSD: config.mk,v 1.4 2015/02/20 23:31:04 jsg Exp $

MESA_MAJOR=	10
MESA_MINOR=	2
MESA_TINY=	9

CPP=	cpp -notraditional

CFLAGS+= -std=gnu99

CPPFLAGS+= \
	-DPACKAGE_VERSION=\"${MESA_MAJOR}.${MESA_MINOR}.${MESA_TINY}\" \
	-DPACKAGE_BUGREPORT=\"bugs@openbsd.org\" \
	-DSTDC_HEADERS=1 \
	-DHAVE_SYS_TYPES_H=1 \
	-DHAVE_SYS_STAT_H=1 \
	-DHAVE_STDLIB_H=1 \
	-DHAVE_STRING_H=1 \
	-DHAVE_MEMORY_H=1 \
	-DHAVE_STRINGS_H=1 \
	-DHAVE_INTTYPES_H=1 \
	-DHAVE_STDINT_H=1 \
	-DHAVE_UNISTD_H=1 \
	-DHAVE_DLFCN_H=1 \
	-DYYTEXT_POINTER=1 \
	-DHAVE_CLOCK_GETTIME=1 \
	-DHAVE_PTHREAD_PRIO_INHERIT=1 \
	-DHAVE_PTHREAD=1 \
	-DHAVE_DLOPEN \
	-DHAVE_DLADDR \
	-DHAVE_POSIX_MEMALIGN \
	-DHAVE_LIBDRM \
	-DGLX_USE_DRM \
	-DGLX_INDIRECT_RENDERING \
	-DGLX_DIRECT_RENDERING \
	-DUSE_EXTERNAL_DXTN_LIB=1 \
	-DHAVE_ALIAS \
	-DHAVE_MINCORE \
	-DHAVE_FUNC_ATTRIBUTE_FLATTEN=1 \
	-DHAVE_FUNC_ATTRIBUTE_FORMAT=1 \
	-DHAVE_FUNC_ATTRIBUTE_MALLOC=1 \
	-DHAVE_FUNC_ATTRIBUTE_PACKED=1

.if ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc"
PICFLAG=-fPIC
.endif

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
CPPFLAGS+= \
	-DHAVE___BUILTIN_CLZ=1 \
	-DHAVE___BUILTIN_CLZLL=1 \
	-DHAVE___BUILTIN_CTZ=1 \
	-DHAVE___BUILTIN_EXPECT=1 \
	-DHAVE___BUILTIN_FFS=1 \
	-DHAVE___BUILTIN_FFSLL=1 \
	-DHAVE___BUILTIN_POPCOUNT=1 \
	-DHAVE___BUILTIN_POPCOUNTLL=1
.endif