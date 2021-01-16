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
- [Docker](https://docs.docker.com/get-docker/)

## Build JAR File
- Clone repository
  ```sh
  git clone https://github.com/ethanejones/LTEApplication.git
  ```
- Change directory to `LTEApplication`
  ```sh
  cd LTEApplication
  ```
- Build project
  ```sh
  mvnw clean package
  ```

## Run the Application Locally Using Java
`java -jar target\LTEApplication-<VERSION>-SNAPSHOT.jar`

## Create Docker Image
Before completing this step ensure you have built the executable JAR file from the step above.

Execute the following command from within the LTEApplication directory:
```
docker build -t ethanejones/lteapplication .
```

## Run Docker Container
```
docker run -p 8080:8080 ethanejones/lteapplication
```

## Stop Docker Container
```
docker ps   # Copy container ID returned by this command
docker stop <container ID>
docker rm <container ID>
```

## Push Docker Image to DockerHub
This step assumes you have a DockerHub account.
```
docker login
docker tag ethanejones/lteapplication ethanejones/lteapplication:<version>
docker push ethanejones/lteapplication:<version>
```