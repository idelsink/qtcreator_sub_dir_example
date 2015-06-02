PROJECT_NAME    = SubTestProject
PROJECT_BUILD   = SubTestProjectBuilds

CONFIG += c++11


# This function sets up the dependencies for libraries that are built with
# this project. Specify the project you need to depend on in the variable
# DEPENDENCY_PROJECT and specify the lib with it and this will add those
#eg: I want to use from projectX, lib LibA
#    DEPENDENCY_PROJECT = projectX libA
TARGET_DIRECTORY_NAME = 0           #The target directory name (just the project folder name)
TARGET_PATH = 0                     #The path to the project directory from the root folder
LIB_PATH = 0                        #The path to the LIB
#CONFIG += ProjectDir                #what variable comes first
for(dep, DEPENDENCY_PROJECT) {
    contains(CONFIG,ProjectDir$${TARGET}$${dep}){    #first the directory to the wanted target(the project folder that you want to use)
        CONFIG -= ProjectDir$${TARGET}$${dep}
        LIB_PATH = $${OUT_PWD}/../../$${PROJECT_BUILD}/$${TARGET_DIRECTORY_NAME}
        message(Target: $${dep} in location: $${LIB_PATH})#
        # Adds the wanted lib to the linker
        win32:CONFIG(release, debug|release): LIBS += -L$${LIB_PATH}/release/ -l$${dep}
        else:win32:CONFIG(debug, debug|release): LIBS += -L$${LIB_PATH}/debug/ -l$${dep}
        #.depends
        $${TARGET}.depends += $${dep}
        message(end $${TARGET} ------)#container end
    }else{#the target
        message(------ Start $${TARGET} ------)
        TARGET_DIRECTORY_NAME = $$dep
        TARGET_PATH = $${PWD}/$${TARGET_DIRECTORY_NAME}
        message($${TARGET} depends on: $${dep})
        #message(Target path: $${TARGET_PATH})
        CONFIG += ProjectDir$${TARGET}$${dep}
        #Adds the wanted project to the project.
        INCLUDEPATH += $${TARGET_PATH}
        #message(Include path: $$TARGET_PATH)
        DEPENDPATH += $${TARGET_PATH}      #force rebuild if the headers change
        #message(depenth path: $$DEPENDPATH)
        PRE_TARGETDEPS += $${TARGET_PATH}
        #message(tempstring: $${MYVAR})
        # = $${TARGET}
    }
}
#PROPERTY = prop
#VALUE = value
#qmake -set PROPERTY VALUE

#qmake -query "QT_INSTALL_PREFIX"

#message(dir name: $$dirname(_QMAKE_CACHE_QT4_))
#QMAKE_CONFIG_LOG = $$dirname(_QMAKE_CACHE_QT4_)/config.log
#msg = "test FAILED"
#write_file($$QMAKE_CONFIG_LOG, msg, append)

#QMAKE_CONFIG_LOG = $$dirname(_QMAKE_CACHE_QT4_)/config.log
#msg = "test $$1 succeeded"
#write_file($$QMAKE_CONFIG_LOG, msg, append)
#write_file($$QMAKE_CONFIG_LOG)
#file_path = $${OUT_PWD}/../
#content = test
#write_file($$file_path, temp, $$content)
#message(write in file $${file_path} this: $${content})
#set(CMAKE_AUTOMOC ON)
#file(WRITE filename "message to write"... )
