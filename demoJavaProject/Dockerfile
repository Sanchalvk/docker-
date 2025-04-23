# ---- Stage 1: Build ----
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
COPY src ./src  # Copy the source code
RUN mvn clean package -DskipTests

# ---- Stage 2: Run ----
FROM openjdk:21-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
