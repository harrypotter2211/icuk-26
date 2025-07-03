# Use a minimal Java 8 JRE image
FROM eclipse-temurin:8-jre-alpine

# Set environment variables
ENV JAVA_OPTS=""

# Create a volume for temporary files (used by Spring Boot)
VOLUME /tmp

# Set working directory
WORKDIR /app

# Copy the packaged JAR from the Maven target folder
COPY target/account-service-0.0.1-SNAPSHOT.jar app.jar

# Optional: Fix timestamp caching issue in Spring Boot
RUN touch app.jar

# Default command to run the Spring Boot application
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar app.jar"]

# Expose the port your app runs on (customize if needed)
EXPOSE 8083
