FROM maven:3.8.1-jdk-8-slim as builder

MAINTAINER LQ

# Copy local code to the container image.
WORKDIR /app
COPY pom.xml .
ADD ruoyi-admin/ .
ADD ruoyi-common/ .
ADD ruoyi-framework/ .
ADD ruoyi-generator/ .
ADD ruoyi-quartz/ .
ADD ruoyi-system/ .


# Build a release artifact.
RUN mvn package -DskipTests

# Run the web service on container startup.
ENTRYPOINT ["java","-jar","/app/ruoyi-admin/target/ruoyi-admin.jar"]