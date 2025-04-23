FROM openjdk:21-jdk-slim

WORKDIR /app

# Explicitly copy the Java source file using a path relative to the Dockerfile
COPY ./demoJavaProject/src/main/java/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java /app/DemoJavaProjectApplication.java

# Compile the Java source file
RUN javac /app/DemoJavaProjectApplication.java

# Set the entrypoint to run the compiled class
ENTRYPOINT ["java", "DemoJavaProjectApplication"]
