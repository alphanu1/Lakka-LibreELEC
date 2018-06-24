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

PKG_NAME="ccd2cue"
PKG_VERSION="0.5"
PKG_ARCH="any"
PKG_LICENSE="GPLv3"
PKG_SITE="https://www.gnu.org/software/ccd2cue/"
PKG_URL="https://ftp.gnu.org/gnu/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="tools"
PKG_SHORTDESC="CCD sheet to CUE sheet converter"
PKG_LONGDESC="GNU ccd2cue is a CCD sheet to CUE sheet converter. It supports the full extent of CUE sheet format expressiveness, including mixed-mode discs and CD-Text meta-data. It plays an important role for those who need to use optical disc data which is only available in the proprietary sheet format CCD, but don’t want to surrender their freedom. It fills an important gap in the free software world because before its conception it was impossible to use complex forms of optical disc data laid out by CCD sheets in a whole/holy free operating system."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"
