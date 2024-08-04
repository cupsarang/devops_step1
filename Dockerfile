# Step 2: Package the application into a Docker image
# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the build stage
COPY build/libs/*.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Define the command to run the application
# - java 로 치면 진입점(main)인 부분을 적어준다.
# java : 실행파일
# 이후는 옵션으로 사용, 분리는 ',' 를 사용
ENTRYPOINT ["java", "-jar", "app.jar"]
