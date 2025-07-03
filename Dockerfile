# Use a secure and small Java 8 JRE base image
FROM eclipse-temurin:8-jre-alpine

# Create a volume for temporary files (used by Spring Boot for /tmp)
VOLUME /tmp

# Copy the built Spring Boot JAR into the container
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

# Optional: Update timestamp to prevent issues with Spring Boot caching
RUN sh -c 'touch /app.jar'

# Set the default command to run your Spring Boot app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]

# Expose the port the app runs on
EXPOSE 8083
