############################################################################
# CMakeLists.txt
# Copyright (C) 2016  Belledonne Communications, Grenoble France
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
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
############################################################################

lcb_define_target("bctoolbox")
lcb_define_target("bellesip" "bctoolbox")
lcb_define_target("belr" "bctoolbox")
lcb_define_target("belcard" "belr")
lcb_define_target("ortp" "bctoolbox")
lcb_define_target("ms2" "ortp")
lcb_define_target("ms2plugins" "ms2")
lcb_define_target("linphone" "bellesip" "ms2plugins" "belr")
lcb_define_target("odb")
lcb_define_target("flexisip" "ortp")
