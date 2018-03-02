################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="rtl8723bs_wifi"
PKG_VERSION="cc77e7b"
PKG_ARCH="any"
PKG_LICENSE="unknown"
PKG_SITE="https://github.com/hadess/rtl8723bs"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="rtl8723bs-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain linux"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_SECTION="linux-firmware"
PKG_SHORTDESC="Realtek RTL8723BS Wi-Fi Firmware"
PKG_LONGDESC="Realtek RTL8723BS Wi-Fi Firmware"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to do
}

makeinstall_target() {
  echo "in: $(pwd)"
  mkdir -pv $INSTALL/usr/lib/firmware/rtlwifi/
  cp -v rtl8723bs_nic.bin $INSTALL/usr/lib/firmware/rtlwifi/
  cp -v rtl8723bs_wowlan.bin $INSTALL/usr/lib/firmware/rtlwifi/
}
