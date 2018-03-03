################################################################################
#      This file is part of LibreELEC - http://www.libreelec.tv
#      Copyright (C) 2018- Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="mercurial"
PKG_VERSION="4.5"
PKG_ARCH="any"
PKG_LICENSE="GPL2"
PKG_SITE="https://www.mercurial-scm.org"
PKG_URL="$PKG_SITE/release/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python:host Python"
PKG_SECTION="tools"
PKG_SHORTDESC="Mercurial is a fast, easy to use, distributed revision control tool for software developers."
PKG_LONGDESC="$PKG_SHORTDESC"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  LDSHARED="$CC -shared" make build
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  mkdir -p $INSTALL/usr/lib/python2.7
  cp build/scripts-*/* $INSTALL/usr/bin
  cp -r build/lib.*/* $INSTALL/usr/lib/python2.7
  sed -i -e "s/\/\(.*\)\/build\.\(.*\)\/bin\/python/\/usr\/bin\/python/" $INSTALL/usr/bin/hg
}
