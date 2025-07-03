# Use a lightweight base image with Java 8
FROM eclipse-temurin:8-jre-alpine

# Create a volume for temporary files
VOLUME /tmp

# Copy the JAR file from local target directory
COPY target/account-service-0.0.1-SNAPSHOT.jar app.jar

# Set the entrypoint to run the Spring Boot app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

# Expose the app's port
EXPOSE 8083
