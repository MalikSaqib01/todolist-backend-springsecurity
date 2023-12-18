FROM openjdk:11
EXPOSE 8085
ARG JAR_FILE=target/to-do-list-0.0.1-SNAPSHOT.jar
COPY $JAR_FILE app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
