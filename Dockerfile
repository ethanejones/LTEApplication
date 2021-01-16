FROM adoptopenjdk/openjdk11:alpine
VOLUME /tmp
COPY target/*.jar LTEApplication.jar
ENTRYPOINT ["java","-jar","/LTEApplication.jar"]