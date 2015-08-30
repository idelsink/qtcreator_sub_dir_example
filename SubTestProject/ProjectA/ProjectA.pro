#set the dependency's
DEPENDENCY_PROJECT += interfaceX

# Check if the config file exists
! include( ../common.pri ) {
    error( "projectA Couldn't find the common.pri file!" )
}

TARGET = projectA
TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += qt #+ for the qThread delay

SOURCES += main.cpp

