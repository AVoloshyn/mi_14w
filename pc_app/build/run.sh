#!/bin/sh
#
#  Project 	:   MI-14w
#  File Name	:   run.sh
#  Authors	:   AVoloshyn
#  Date Created	:   20.02.2016
#  Description	:   All applications staring script.
#
# Add qtcreator PATH
APPS_PATH=../apps

# Starting all applications.
echo "Starting LauncherApp in the background"
#  (cd $APPS_PATH/LauncherApp/; ./LauncherApp) &
#  (cd $APPS_PATH/DataGenerator/; ./DataGenerator) &
  (cd $APPS_PATH/TestApp_1/; ./TestApp_1) &
  (cd $APPS_PATH/TestApp_2/; ./TestApp_2) &
#

# Killing all applications.
echo "To stop the Apps, press <ENTER>"
  read entry
#  killall LauncherApp
#  killall DataGenerator
  killall TestApp_1
  killall TestApp_2
#

unset APPS_PATH
