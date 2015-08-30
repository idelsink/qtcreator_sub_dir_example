#set the dependency's
DEPENDENCY_PROJECT += interfaceXY
DEPENDENCY_PROJECT += driverY
# Check if the config file exists
! include( ../common.pri ) {
    error( "projectC Couldn't find the common.pri file!" )
}

TARGET = projectC
TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += qt #+ for the qThread delay

SOURCES += main.cpp

