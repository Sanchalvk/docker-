FROM openjdk:21-jdk-slim
COPY demoJavaProject/src /app/src
WORKDIR /app/src/main/java
RUN javac springsimple_demo/demoJavaProject/DemoJavaProjectApplication.java
ENTRYPOINT ["java", "springsimple_demo.demoJavaProject.DemoJavaProjectApplication"]
