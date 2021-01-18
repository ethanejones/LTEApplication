@echo off

echo 'The following Maven command installs your Maven-built Java application'
echo 'into the local Maven repository, which will ultimately be stored in'
echo 'Jenkins''s local Maven repository (and the "maven-repository" Docker data'
echo 'volume).'
mvn jar:jar install:install help:evaluate -Dexpression=project.name


echo 'The following complex command extracts the value of the <name/> element'
echo 'within <project/> of your Java/Maven project''s "pom.xml" file.'
for /f "delims=" %%i in ('mvn help:evaluate "-Dexpression=project.name" -q -DforceStdout') do set NAME="%%i"
echo %NAME%
echo 'abc'

echo 'The following complex command behaves similarly to the previous one but'
echo 'extracts the value of the <version/> element within <project/> instead.'
for /f "delims=" %%i in ('mvn help:evaluate "-Dexpression=project.version" -q -DforceStdout') do set VERSION=%%i
echo %VERSION%
echo '123'
