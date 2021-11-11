FROM openjdk:8-jdk-alpine
VOLUME /tmp

ARG JAR_FILE
ADD target/spring-rest-hello-world-1.0.jar app.jar
 
ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar /app.jar
