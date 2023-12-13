# Use a base image with Java 11
FROM openjdk:17
VOLUME /app/log
# Copy the JAR file to the container
COPY target/docker-log-outside-container-0.0.1.jar docker-log-outside-container.jar
ENTRYPOINT ["java", "-jar", "docker-log-outside-container.jar"]