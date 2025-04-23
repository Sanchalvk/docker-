# Stage 1: Build the JAR using Maven
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY demoJavaProject /app
RUN mvn clean package -DskipTests

# Stage 2: Run the app
FROM openjdk:21-jdk-slim
WORKDIR /app
COPY --from=build /app/target/demoJavaProject-*.jar app.jar
CMD ["java", "-jar", "app.jar"]
