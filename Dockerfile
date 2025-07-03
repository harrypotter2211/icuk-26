# Use a secure and small Java 8 JRE base image
FROM eclipse-temurin:8-jre-alpine

# Create a volume for temporary files (used by Spring Boot for /tmp)
VOLUME /tmp

# Set working directory inside the container (optional but cleaner)
WORKDIR /app

# Copy the built Spring Boot JAR into the container
COPY target/account-service-0.0.1-SNAPSHOT.jar app.jar

# Optional: Update timestamp to prevent Spring Boot caching issues
RUN touch app.jar

# Set the default command to run your Spring Boot app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]

# Expose the port the app runs on
EXPOSE 8083
