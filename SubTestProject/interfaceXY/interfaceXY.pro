DEPENDENCY_PROJECT += driverX
DEPENDENCY_PROJECT += driverY

# Check if the config file exists
! include( ../common.pri ) {
    error( "interfaceXY Couldn't find the common.pri file!" )
}

TARGET = interfaceXY         #Name of application
TEMPLATE = lib          #Needs to be lib NOT app
CONFIG += staticlib

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    interfacexy.cpp

HEADERS += \
    interfacexy.h

