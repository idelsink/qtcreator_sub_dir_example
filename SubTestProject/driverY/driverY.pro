# Check if the config file exists
! include( ../common.pri ) {
    error( "driverY Couldn't find the common.pri file!" )
}

TARGET = driverY         #Name of application
TEMPLATE = lib          #Needs to be lib NOT app
CONFIG += staticlib

CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    drivery.cpp

HEADERS += \
    drivery.h

