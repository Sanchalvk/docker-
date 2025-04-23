# # ---- Stage 1: Build ----
FROM maven:3.9.6-eclipse-temurin-21 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code into the container
COPY demoJavaProject/pom.xml .  # Copy the Maven pom.xml file
COPY demoJavaProject/src ./src  # Copy the source code into the container

# List files for debugging purposes (optional, remove after successful build)
RUN ls -al /app

# Run Maven to clean, compile, and package the project into a JAR file
RUN mvn clean package -DskipTests

# ---- Stage 2: Run (JAR) ----
FROM openjdk:21-jdk-slim AS run_jar

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage to the run stage
COPY --from=build /app/target/*.jar app.jar

# Expose the default port for Spring Boot
EXPOSE 8080

# Run the application using the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

