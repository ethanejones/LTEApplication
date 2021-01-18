@echo off

REM Install Maven-built Java application into the local Maven repository
cmd /c mvn jar:jar install:install help:evaluate -Dexpression=project.name

REM Get maven project.name
for /f "delims=" %%i in ('mvn help:evaluate "-Dexpression=project.name" -q -DforceStdout') do set NAME="%%i"
echo %NAME%

REM Get maven project.version
for /f "delims=" %%i in ('mvn help:evaluate "-Dexpression=project.version" -q -DforceStdout') do set VERSION=%%i
echo %VERSION%
