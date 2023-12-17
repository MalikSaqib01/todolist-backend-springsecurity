FROM openjdk:11

WORKDIR /app

EXPOSE 8085

# Install JDK
#RUN apt-get update && apt-get install -y openjdk-11-jdk

# Run Maven to build the application
RUN apt-get update && apt-get install -y maven

COPY . .

RUN mvn clean install -DskipTests

# Copy the JAR file into the container
COPY target/to-do-list-0.0.1-SNAPSHOT.jar .

# Specify the command to run on container startup
ENTRYPOINT ["java", "-jar", "to-do-list-0.0.1-SNAPSHOT.jar"]
