FROM openjdk:21-jdk-slim as build

WORKDIR /app

COPY target/greetingsAPI-0.0.1-SNAPSHOT.jar greetingsAPI.jar

ENTRYPOINT ["java", "-jar", "greetingsAPI.jar"]

EXPOSE 8080
