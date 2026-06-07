FROM eclipse-temurin:17
COPY target/ConfigServer-0.0.1-SNAPSHOT.jar config-server.jar
EXPOSE 8099
ENTRYPOINT ["java", "-jar", "config-server.jar"]