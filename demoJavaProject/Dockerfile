FROM openjdk:21-jdk-slim

WORKDIR /app

# Copy the entire demoJavaProject directory
COPY demoJavaProject /app/demoJavaProject

# Compile the Java source file
RUN javac /app/demoJavaProject/src/main/java/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java

# Set the entrypoint to run the compiled class
ENTRYPOINT ["java", "springsimple_demo.demoJavaProject.DemoJavaProjectApplication"]
