#!/bin/sh
#
#  Project 		:	MI-14w	
#  File Name	:	set_env.sh
#  Authors		:	AVoloshyn
#  Date Created	:	04.02.2015
#  Description	:   Script for setting up the build environment of the present project.
#                   To start it, open a Linux shell, go to the present file path and
#                   start it with
#                   ./set_env.sh
#
echo "======================================="
echo "== Set the Build Environment Started =="
echo "======================================="

SPATH=$PATH
set SPATH

# Add qtcreator PATH
QT_CREATOR_PATH=$HOME/Qt5.4.0/Tools/QtCreator/bin

# Add qt-specific paths to LD_LIBRARY_PATH and to PATH
QT_PATH=$HOME/Qt5.4.0/5.4/gcc/bin
QT_LIB_PATH=$HOME/Qt5.4.0/5.4/gcc/lib

# Extend the LD_LIBRARY_PATH and PATH variables.
LD_LIBRARY_PATH=$QT_LIB_PATH:$LD_LIBRARY_PATH
PATH=$QT_LIB_PATH:$QT_CREATOR_PATH:$PATH

# Export variables to enviroment.
export LD_LIBRARY_PATH
echo "LD_LIBRARY_PATH is ${LD_LIBRARY_PATH}"

export PATH
echo "PATH is ${PATH}"

# Unset temporary helper variables
unset QT_CREATOR_PATH
unset QT_PATH
unset QT_LIB_PATH

echo "========================================"
echo "== Set the Build Environment Finished =="
echo "========================================"
