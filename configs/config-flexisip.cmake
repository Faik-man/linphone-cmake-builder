############################################################################
# config-flexisip.cmake
# Copyright (C) 2014  Belledonne Communications, Grenoble France
#
############################################################################
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
#
############################################################################

# Define default values for the flexisip builder options
set(DEFAULT_VALUE_ENABLE_BC_ODBC OFF)
set(DEFAULT_VALUE_ENABLE_ODB OFF)
set(DEFAULT_VALUE_ENABLE_ODBC ON)
set(DEFAULT_VALUE_ENABLE_PACKAGING OFF)
set(DEFAULT_VALUE_ENABLE_PUSHNOTIFICATION ON)
set(DEFAULT_VALUE_ENABLE_REDIS ON)
set(DEFAULT_VALUE_ENABLE_UNIT_TESTS OFF)
set(DEFAULT_VALUE_ENABLE_PRESENCE OFF)

set(DEFAULT_VALUE_CMAKE_LINKING_TYPE "-DENABLE_STATIC=NO")

# ms2 default values
set(DEFAULT_VALUE_ENABLE_AMRNB OFF)
set(DEFAULT_VALUE_ENABLE_AMRWB OFF)
set(DEFAULT_VALUE_ENABLE_DTLS OFF)
set(DEFAULT_VALUE_ENABLE_FFMPEG OFF)
set(DEFAULT_VALUE_ENABLE_G729 OFF)
set(DEFAULT_VALUE_ENABLE_GPL_THIRD_PARTIES OFF)
set(DEFAULT_VALUE_ENABLE_GSM OFF)
set(DEFAULT_VALUE_ENABLE_H263 OFF)
set(DEFAULT_VALUE_ENABLE_H263P OFF)
set(DEFAULT_VALUE_ENABLE_ILBC OFF)
set(DEFAULT_VALUE_ENABLE_ISAC OFF)
set(DEFAULT_VALUE_ENABLE_MKV OFF)
set(DEFAULT_VALUE_ENABLE_MPEG4 OFF)
set(DEFAULT_VALUE_ENABLE_OPENH264 OFF)
set(DEFAULT_VALUE_ENABLE_OPUS OFF)
set(DEFAULT_VALUE_ENABLE_PACKAGING OFF)
set(DEFAULT_VALUE_ENABLE_SILK OFF)
set(DEFAULT_VALUE_ENABLE_SPEEX ON)
set(DEFAULT_VALUE_ENABLE_SRTP OFF)
set(DEFAULT_VALUE_ENABLE_TUNNEL OFF)
set(DEFAULT_VALUE_ENABLE_UNIT_TESTS OFF)
set(DEFAULT_VALUE_ENABLE_VIDEO OFF)
set(DEFAULT_VALUE_ENABLE_VPX OFF)
set(DEFAULT_VALUE_ENABLE_WASAPI OFF)
set(DEFAULT_VALUE_ENABLE_WEBRTC_AEC OFF)
set(DEFAULT_VALUE_ENABLE_X264 OFF)
set(DEFAULT_VALUE_ENABLE_ZRTP OFF)


# Global configuration
set(LINPHONE_BUILDER_HOST "")

# Adjust PKG_CONFIG_PATH to include install directory
if(UNIX)
	set(LINPHONE_BUILDER_PKG_CONFIG_PATH "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig/:$ENV{PKG_CONFIG_PATH}:/usr/lib/pkgconfig/:/usr/lib/x86_64-linux-gnu/pkgconfig/:/usr/share/pkgconfig/:/usr/local/lib/pkgconfig/:/opt/local/lib/pkgconfig/")
else() # Windows
	set(LINPHONE_BUILDER_PKG_CONFIG_PATH "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig/")
endif()


# Include builders
include(builders/CMakeLists.txt)

set(EP_ortp_GIT_TAG "master")
unset(EP_flexisip_BUILD_METHOD)
