#!/bin/sh
#
#  Project 	:	MI-14w
#  File Name	:	set_env.sh
#  Authors	:	AVoloshyn
#  Date Created	:	04.02.2015
#  Description	:   Script for setting up the build environment of the present project.
#                   To start it, open a Linux shell, go to the present file path and
#                   start it with 	. set_env.sh
#
echo "======================================="
echo "== Set the Build Environment Started =="
echo "======================================="

# Add qtcreator PATH
QT_CREATOR_PATH=$HOME/Qt5.5/Tools/QtCreator/bin

# Add qt-specific paths to LD_LIBRARY_PATH and to PATH
QT_PATH=$HOME/Qt5.5/5.5/gcc_64/bin
QT_LIB_PATH=$HOME/Qt5.5/5.5/gcc_64/lib

# Add dlt-specific paths to LD_LIBRARY_PATH and to PATH
DLT_INCLUDE_PATH=/usr/local/include
DLT_LIB_PATH=/usr/local/lib/x86_64-linux-gnu

# Set run path variable if it is empty
if [ -z "${MI_14_RUN_PATH}" ]
then
  # This path needs only to be known during run tests from the present shell.
  MI_14_RUN_PATH="$(pwd)/../"
  echo "Set MI_14_RUN_PATH to ${MI_14_RUN_PATH}"
  export MI_14_RUN_PATH

  # Extend the LD_LIBRARY_PATH and PATH variables.
  # IF YOU WANT TO ADD NEW PATH, ADD IT HERE OR USING TEMPORARY VARIABLE
  LD_LIBRARY_PATH=$QT_LIB_PATH:$DLT_LIB_PATH:$LD_LIBRARY_PATH
  PATH=$QT_LIB_PATH:$QT_CREATOR_PATH:$QT_PATH:$PATH

  # Export variables to environment if it is not exist yet
  export PATH
  echo "PATH is ${PATH}"
  
  export LD_LIBRARY_PATH
  echo "LD_LIBRARY_PATH is ${LD_LIBRARY_PATH}"
else
  # This is not an error, but may happen as usual, if a start_creator.sh call is done.
  # Using the present shell for multiple builds is not checked, but is a severe misuse, not caught here (TODO).
  echo "Environment variables already set up"
fi

# Unset temporary helper variables
unset QT_CREATOR_PATH
unset QT_PATH
unset QT_LIB_PATH

echo "========================================"
echo "== Set the Build Environment Finished =="
echo "========================================"
