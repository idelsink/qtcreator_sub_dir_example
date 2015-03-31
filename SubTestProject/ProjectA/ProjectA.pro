#set the dependency's
DEPENDENCY_PROJECT = ProjectB ClassB

# Check if the common config file exists
! include( ../common.pri ) {
    error( "Couldn't find the common.pri file!" )
}

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    classa.cpp

HEADERS += \
    classa.h
