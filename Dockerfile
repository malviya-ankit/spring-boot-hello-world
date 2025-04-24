FROM maven:3.9.6-eclipse-temurin-17
COPY src/ src/
COPY pom.xml . 
RUN mvn clean install
CMD ["java", "-jar", "target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
