FROM openjdk:21-jdk-slim

WORKDIR /app

# Copy the source code relative to THIS Dockerfile
COPY ./src /app/src

# Compile the Java source file
RUN javac /app/src/main/java/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java

# Run the compiled class
CMD ["java", "-cp", "/app/src/main/java", "springsimple_demo.demoJavaProject.DemoJavaProjectApplication"]
