FROM openjdk:21-jdk-oracle as build

WORKDIR /app

COPY . .

ENTRYPOINT ["java", "-jar", "greetingsAPI/target/greetingsAPI-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080
