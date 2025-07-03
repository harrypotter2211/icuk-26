# Use a minimal, secure Java 8 base image
FROM eclipse-temurin:8-jre-alpine

# Set application JAR name
ARG JAR_FILE=target/account-service-0.0.1-SNAPSHOT.jar

# Create /app directory inside container
WORKDIR /app

# Copy the JAR into the container
COPY ${JAR_FILE} app.jar

# Optional: update timestamp to fix Spring Boot caching issues
RUN sh -c 'touch app.jar'

# Run the app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]

# Expose Spring Boot's default port
EXPOSE 8083
