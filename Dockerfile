# Use OpenJDK 21 runtime as base image
FROM eclipse-temurin:21-jdk-jammy

# Set the working directory inside container
WORKDIR /app

# Copy the jar file from target folder
COPY target/*.jar app.jar

# Expose port (Spring Boot default is 8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
