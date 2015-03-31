PROJECT_NAME    = SubTestProject
PROJECT_BUILD   = SubTestProjectBuilds

CONFIG += C++11


# This function sets up the dependencies for libraries that are built with
# this project. Specify the project you need to depend on in the variable
# DEPENDENCY_PROJECT and specify the lib with it and this will add those
#eg: I want to use from projectX, lib LibA
#    DEPENDENCY_PROJECT = projectX libA
LATEST_DIRECTORY = 0                #latest dir name
PATH = 0                            #The path
CONFIG += ProjectDir                #what variable comes first

for(dep, DEPENDENCY_PROJECT) {
    contains(CONFIG,ProjectDir){
        LATEST_DIRECTORY = $$dep
        PATH = $$PWD/$${LATEST_DIRECTORY}
        message(ProjectDir: $$dep)
        CONFIG -= ProjectDir

        #Adds the wanted project to the project.
        INCLUDEPATH += $$PATH
        message(Include path: $$PATH)
        DEPENDPATH += $$PATH      #force rebuild if the headers change
        #message(depenth path: $$DEPENDPATH)
        PRE_TARGETDEPS += $$PATH
    }else{
        CONFIG += ProjectDir
        message(Class: $$dep)
        # Adds the wanted lib to the linker
        win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../PROJECT_BUILD/$${LATEST_DIRECTORY}/release/ -l$${dep}
        else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../PROJECT_BUILD/$${LATEST_DIRECTORY}/debug/ -l$${dep}
    }
}
