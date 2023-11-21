FROM maven:3.6.3-jdk-8-slim AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn clean package -Dmaven.test.skip=true

FROM adoptopenjdk/openjdk8:alpine-jre
EXPOSE 8080
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/*.jar app.jar
ENTRYPOINT ["java","-Xms512m","-Xmx3g","-jar","app.jar"]