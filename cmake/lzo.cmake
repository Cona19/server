# Copyright (C) 2014, SkySQL Ab. All Rights Reserved.
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

MACRO (MYSQL_CHECK_LZO_STATIC)

#CHECK_INCLUDE_FILES(lzo/lzo1x.h HAVE_LZO_H)
#CHECK_LIBRARY_EXISTS(liblzo2.a lzo1x_1_compress "" HAVE_LZO_LIB)

IF(HAVE_LZO_LIB AND HAVE_LZO_H)
  ADD_DEFINITIONS(-DHAVE_LZO=1)
  LINK_LIBRARIES(liblzo2.a)
ENDIF()
ENDMACRO()

MACRO (MYSQL_CHECK_LZO)

#CHECK_INCLUDE_FILES(lzo/lzo1x.h HAVE_LZO_H)
#CHECK_LIBRARY_EXISTS(lzo2 lzo1x_1_compress "" HAVE_LZO_SHARED_LIB)

IF(HAVE_LZO_SHARED_LIB AND HAVE_LZO_H)
  ADD_DEFINITIONS(-DHAVE_LZO=1)
  LINK_LIBRARIES(lzo2)
ENDIF()
ENDMACRO()
