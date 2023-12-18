FROM openjdk:17
EXPOSE 8085
ARG JAR_FILE= target/*.jar
COPY ./target/to-do-list-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
