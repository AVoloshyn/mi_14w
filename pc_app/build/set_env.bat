@ECHO Enviroment variables are setting...
@ECHO OFF

GOTO start
----------------------------------------------
Description: This batch file was created for 
             automatization starting process.
----------------------------------------------
Date : 27.11.2014
Autor: Anton Voloshyn
----------------------------------------------
:start

REM setx path -m "%PATH%C:\Program Files (x86)\mosquitto;"
Start ""  "mosquitto.exe" 
