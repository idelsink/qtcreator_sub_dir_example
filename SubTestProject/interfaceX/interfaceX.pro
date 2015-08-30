DEPENDENCY_PROJECT += driverX

# Check if the config file exists
! include( ../common.pri ) {
    error( "interfaceX Couldn't find the common.pri file!" )
}

TARGET = interfaceX         #Name of application
TEMPLATE = lib          #Needs to be lib NOT app
CONFIG += staticlib

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    interfacex.cpp

HEADERS += \
    interfacex.h

