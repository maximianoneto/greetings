FROM docker.io/library/openjdk:17-alpine

WORKDIR /app
COPY ./target/greetingsAPI-0.0.1-SNAPSHOT.jar /app/greetingsAPI.jar

EXPOSE 8080
