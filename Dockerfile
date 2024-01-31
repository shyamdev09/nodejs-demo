FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the application jar file into the container
COPY target/maven-jar-sample-1.0-SNAPSHOT.jar .

# Run the jar file when the container launches
CMD ["java", "-jar", "maven-jar-sample-1.0-SNAPSHOT.jar"]
