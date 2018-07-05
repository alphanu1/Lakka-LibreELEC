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

PKG_NAME="transmission"
PKG_VERSION="2.94"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://transmissionbt.com/"
PKG_URL="https://github.com/transmission/transmission-releases/raw/master/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libevent zlib openssl curl"
PKG_SECTION="network"
PKG_SHORTDESC="Transmission is a fast, easy, and free BitTorrent client."
PKG_LONGDESC="Transmission is a fast, easy, and free BitTorrent client."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  # get deps
  wget https://github.com/mikedld/libb64/archive/c1e3323498.tar.gz -O $PKG_BUILD/.$TARGET_NAME/third-party/b64-c1e3323498/src/c1e3323498.tar.gz
  wget https://github.com/jech/dht/archive/cc379e406d.tar.gz -O $PKG_BUILD/.$TARGET_NAME/third-party/dht-cc379e406d/src/cc379e406d.tar.gz
  wget https://github.com/miniupnp/miniupnp/archive/5de2bcb561.tar.gz -O $PKG_BUILD/.$TARGET_NAME/third-party/miniupnpc-5de2bcb561/src/5de2bcb561.tar.gz
  wget https://github.com/miniupnp/libnatpmp/archive/cf7f452d66.tar.gz -O $PKG_BUILD/.$TARGET_NAME/third-party/natpmp-cf7f452d66/src/cf7f452d66.tar.gz
  wget https://github.com/bittorrent/libutp/archive/7c4f19abdf.tar.gz -O $PKG_BUILD/.$TARGET_NAME/third-party/utp-7c4f19abdf/src/7c4f19abdf.tar.gz
}
