@echo off

REM Install Maven-built Java application into the local Maven repository
cmd /c mvn jar:jar install:install help:evaluate -Dexpression=project.name

REM Get maven project.name
for /f "delims=" %%i in ('mvn help:evaluate "-Dexpression=project.name" -q -DforceStdout') do set NAME=%%i
FOR /F %%i IN ('powershell -command "(get-item env:'NAME').Value.ToLower()"') DO set DOCKER_IMAGE_NAME=%%i

REM Get maven project.version
for /f "delims=" %%i in ('mvn help:evaluate "-Dexpression=project.version" -q -DforceStdout') do set VERSION=%%i
FOR /F %%i IN ('powershell -command "(get-item env:'VERSION').Value.ToLower()"') DO set DOCKER_IMAGE_TAG=%%i

REM Build and tag Docker images
cmd /c docker build -t ethanejones/%DOCKER_IMAGE_NAME%:%DOCKER_IMAGE_TAG% .
cmd /c docker build -t ethanejones/%DOCKER_IMAGE_NAME%:latest .

REM Push tagged images to DockerHub
cmd /c docker image push --all-tags ethanejones/%DOCKER_IMAGE_NAME%
