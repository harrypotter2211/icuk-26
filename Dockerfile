# Use a secure and public Java 8 Alpine-based image
FROM eclipse-temurin:8-jre-alpine

# Create a volume for temporary files
VOLUME /tmp

# Copy your JAR file into the image
ADD target/account-service-0.0.1-SNAPSHOT.jar account-service.jar

# Create a dummy file to ensure timestamp-related consistency (optional)
RUN sh -c 'touch /account-service.jar'

# Set the entrypoint to run the JAR
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/account-service.jar"]

# Expose the application port
EXPOSE 8083
