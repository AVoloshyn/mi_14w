#!/bin/sh
#
#  Project 	:	MI-14w	
#  File Name	:	set_env.sh
#  Authors	:	AVoloshyn
#  Date Created	:	04.02.2015
#  Description	:   Script for setting up the build environment of the present project.
#                   		To start it, open a Linux shell, go to the present file path and
#                   		start it with 	. set_env.sh
#

echo "Starting LauncherApp in the background"
  (cd ../apps/LauncherApp/; ./LauncherApp) &
  (cd ../apps/DataGenerator/; ./DataGenerator) &

  echo "To stop the Apps, press <ENTER>"
  read entry
# Killing all applications does not hurt, so HmiServerHelloWorld is also killed here.
  killall LauncherApp
  killall DataGenerator
#
