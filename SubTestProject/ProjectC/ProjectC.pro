#set the dependency's
DEPENDENCY_PROJECT += interfaceXY interfaceXY
DEPENDENCY_PROJECT += driverY driverY
# Check if the config file exists
! include( ../common.pri ) {
    error( "projectC Couldn't find the common.pri file!" )
}

TARGET = projectC
TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

