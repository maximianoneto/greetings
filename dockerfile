# Use a imagem OpenJDK 17 Alpine como base
FROM docker.io/library/openjdk:17-alpine

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o arquivo JAR do diretório de build local para o diretório /app dentro do container
COPY ./target/greetingsAPI-0.0.1-SNAPSHOT.jar /app/greetingsAPI.jar

# Exponha a porta 8080 para o mundo externo
EXPOSE 8080

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["java", "-jar", "greetingsAPI.jar"]
