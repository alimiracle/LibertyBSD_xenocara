# $OpenBSD: Makefile,v 1.6 2015/02/21 00:39:06 jsg Exp $

GALLIUM=${.CURDIR}/../../../../../dist/Mesa/src/gallium
.include "${GALLIUM}/drivers/r300/Makefile.sources"

LIB = r300

SRCS = \
	${C_SOURCES:S/compiler\///g} \
	${HELPER_SOURCES}

CPPFLAGS+= -I${.CURDIR}/compiler -I${MESA}/../../include \
	   -I${MESA} -I${MESA}/../glsl -I${MESA}/../mapi \
	   -I${MESA}/program -I${MESA}/../gallium/winsys \
	   -I${GALLIUM}/drivers/r300

.include <bsd.xorg.mk>

.PATH: ${MESA}/program
.PATH: ${MESA}/../glsl
.PATH: ${MESA}/../gallium/drivers/r300/compiler
