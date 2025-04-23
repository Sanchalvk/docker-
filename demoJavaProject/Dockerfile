FROM openjdk:21-jdk-slim

WORKDIR /app

# Create the directory structure for the Java source file
RUN mkdir -p /app/springsimple_demo/demoJavaProject

# Copy the Java source file
COPY demoJavaProject/src/main/java/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java /app/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java

# Compile the Java source file
RUN javac /app/springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java

# Set the entrypoint to run the compiled class
ENTRYPOINT ["java", "springsimple_demo.demoJavaProject.DemoJavaProjectApplication"]
