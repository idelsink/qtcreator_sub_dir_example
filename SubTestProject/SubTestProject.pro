#
# SubTestProject - a Qt Creator subdirectory Example
#
# Copyright (C) Ingmar Delsink
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# This program was last compiled and tested in Qt Creator 3.4.2, Based on Qt 5.5.0
# I, the author, cannot guarantee that this program will work in a later or earlier version
# You, the user, just have to try and see of it meet your Requirements.
#

TEMPLATE = subdirs
OTHER_FILES += common.pri
SUBDIRS += \
    driverX \
    driverY \
    interfaceX \
    interfaceXY \
    ProjectA \
    ProjectB \
    ProjectC
