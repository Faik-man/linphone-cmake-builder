#!/bin/sh

export CC="@AUTOTOOLS_C_COMPILER@"
export CXX="@AUTOTOOLS_CXX_COMPILER@"
export OBJC="@AUTOTOOLS_OBJC_COMPILER@"
export LD="@AUTOTOOLS_LINKER@"
export AR="@AUTOTOOLS_AR@"
export RANLIB="@AUTOTOOLS_RANLIB@"
export STRIP="@AUTOTOOLS_STRIP@"
export NM="@AUTOTOOLS_NM@"

export ASFLAGS="@LINPHONE_BUILDER_ASFLAGS@"
export CPPFLAGS="@LINPHONE_BUILDER_CPPFLAGS@"
export CFLAGS="@LINPHONE_BUILDER_CFLAGS@"
export CXXFLAGS="@LINPHONE_BUILDER_CXXFLAGS@"
export OBJCFLAGS="@LINPHONE_BUILDER_OBJCFLAGS@"
export LDFLAGS="@LINPHONE_BUILDER_LDFLAGS@"

export PKG_CONFIG="@LINPHONE_BUILDER_PKG_CONFIG@"
export PKG_CONFIG_PATH="@LINPHONE_BUILDER_PKG_CONFIG_PATH@"
export PKG_CONFIG_LIBDIR="@LINPHONE_BUILDER_PKG_CONFIG_LIBDIR@"

cd @ep_build@
make -f @ep_source@/Makefile libraries PREFIX="@CMAKE_INSTALL_PREFIX@" BUILDTYPE="@EP_openh264_BUILD_TYPE@" ASM="@NASM_PROGRAM@" @EP_openh264_ADDITIONAL_OPTIONS@ @ep_redirect_to_file@
