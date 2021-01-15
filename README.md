# LTEApplication
LTE application which exposes a REST endpoint and returns a JSON payload.

## Built With
- [Spring](https://spring.io/)

## Prerequisites
- [Java 11](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
  ```sh
  Download JDK
  Install JDK
  Set JAVA_HOME environment variable to location of installation folder
  ```
- [Maven 3.2+](https://maven.apache.org/download.cgi)
  ```sh
  Download binary archive
  Extract binary archive
  Add location of bin folder to PATH environment variable
  ```

## Setup
- Clone repository
  `git clone https://github.com/ethanejones/LTEApplication.git`
- Change directory to `LTEApplication`
  `cd LTEApplication`
- Build project
  `mvnw clean package`

## Run the Application
`java -jar target\LTEApplication-<VERSION>-SNAPSHOT.jar`
