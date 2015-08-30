#set the dependency's
DEPENDENCY_PROJECT += interfaceXY

# Check if the config file exists
! include( ../common.pri ) {
    error( "projectB Couldn't find the common.pri file!" )
}

TARGET = projectB
TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += qt #+ for the qThread delay

SOURCES += main.cpp

