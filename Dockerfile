# Use a base image with Java installed
FROM ubuntu

# Set the working directory inside the container
WORKDIR /app

# Copy the target JAR file to the container
CMD  cp -r /var/lib/jenkins/workspace/Demo/target/my-app-1.0-SNAPSHOT.jar  /app/

# Specify the command to run the JAR file
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

# Exposing port
EXPOSE 8080



