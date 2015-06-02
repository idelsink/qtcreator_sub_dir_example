TEMPLATE = subdirs
OTHER_FILES += common.pri
SUBDIRS += \
    driverX \
    driverY \
    interfaceX \
    interfaceXY \
    projectA \
    projectB \
    projectC
TEMPSTRING = 0
#DEFINES += MYVAR=\"\\\"myvarvalue\\\"\"
#VERSION = 3-alpha-10.2
#DEFINES += FOO_VERSION=\\\"$$VERSION\\\"
#message(Main pro: MyVar: $${VERSION})
#projectA.depends = interfaceX
#testProjectB.depends = ProjectB
#testProjectB.depends = ProjectC
