TEMPLATE = subdirs
OTHER_FILES += common.pri
SUBDIRS += \
    ProjectA \
    ProjectB \
    testProjectB \
    ProjectC

ProjectA.depends = ProjectB
testProjectB.depends = ProjectB
testProjectB.depends = ProjectC
