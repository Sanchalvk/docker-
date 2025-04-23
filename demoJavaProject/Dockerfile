# ---- Stage 1: Build ----
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# ---- Stage 2: Run the JAR ----
FROM openjdk:21-jdk-slim
WORKDIR /app

# Copy the built JAR file
COPY --from=build /app/demoJavaProject/target/*.jar app.jar

# Expose the Spring Boot port
EXPOSE 8080  

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
