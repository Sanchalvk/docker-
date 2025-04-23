# ---- Stage 1: Build ----
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# ---- Stage 2: Run (JAR) ----
FROM openjdk:21-jdk-slim AS run_jar
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

# ---- Stage 3: Run (Source) ----
FROM openjdk:21-jdk-slim AS run_source
WORKDIR /app

# Create source directories to match package structure
RUN mkdir -p /app/springsimple_demo/demoJavaProject

# Copy the specific Java source file
COPY demoJavaProject/src/main/java/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java /app/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java

# Compile the Java file
RUN javac /app/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java

# Run the compiled Java class
ENTRYPOINT ["java", "springsimple_demo.demoJavaProject.DemoJavaProjectApplication"]
