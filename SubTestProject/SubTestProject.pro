TEMPLATE = subdirs

SUBDIRS += \
    ProjectA \
    ProjectB \
    testProjectB \
    ProjectC

ProjectA.depends = ProjectB
testProjectB.depends = ProjectB
testProjectB.depends = ProjectC
