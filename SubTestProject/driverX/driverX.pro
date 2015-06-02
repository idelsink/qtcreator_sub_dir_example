# Check if the config file exists
! include( ../common.pri ) {
    error( "driverX Couldn't find the common.pri file!" )
}

TARGET = driverX         #Name of application
TEMPLATE = lib          #Needs to be lib NOT app
CONFIG += staticlib

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    driverx.cpp

HEADERS += \
    driverx.h

