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

PKG_NAME="libevent"
PKG_VERSION="2.1.8"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://libevent.org/"
PKG_URL="https://github.com/libevent/libevent/releases/download/release-$PKG_VERSION-stable/libevent-$PKG_VERSION-stable.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="system"
PKG_SHORTDESC="libevent - an event notification library"
PKG_LONGDESC="The libevent API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to signals or regular timeouts."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
