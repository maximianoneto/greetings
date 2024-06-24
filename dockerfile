# Use the official OpenJDK 17 image from Docker Hub (Alpine variant)
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file into the container at path /
COPY target/greetingsAPI-0.0.1-SNAPSHOT.jar /app/greetingsAPI.jar

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the jar file
CMD ["java", "-jar", "greetingsAPI.jar"]
