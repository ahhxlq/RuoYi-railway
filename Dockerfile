FROM maven:3.8.1-jdk-8-slim as builder

MAINTAINER LQ

# Copy local code to the container image.
WORKDIR /app
COPY ruoy-admin.jar .
#COPY pom.xml .
#COPY ruoyi-admin/ ./ruoyi-admin
#COPY ruoyi-common/ ./ruoyi-common
#COPY ruoyi-framework/ ./ruoyi-framework
#COPY ruoyi-generator/ ./ruoyi-generator
#COPY ruoyi-quartz/ ./ruoyi-quartz
#COPY ruoyi-system/ ./ruoyi-system

# Build a release artifact.
# RUN mvn package -DskipTests

# Run the web service on container startup.
ENTRYPOINT ["java","-jar","/app/ruoyi-admin.jar"]
