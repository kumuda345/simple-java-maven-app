# Use a base image with Java installed
FROM openjdk:11-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the target JAR file to the container
COPY /var/lib/jenkins/workspace/Demo/target/*.jar /app

# Specify the command to run the JAR file
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]



