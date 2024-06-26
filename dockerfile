# Use a imagem base do Java 17
FROM openjdk:21-jdk-oracle as build

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copiar apenas o JAR Spring Boot para o diretório /app
COPY . .

# Define o ponto de entrada da aplicação Spring Boot
ENTRYPOINT ["java", "-jar", "greetingsAPI/target/greetingsAPI-0.0.1-SNAPSHOT.jar"]

# Expõe a porta 8080 para o mundo externo
EXPOSE 8080
