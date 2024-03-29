FROM openjdk:8-jdk-alpine
RUN addgroup -S lucas && adduser -S lucas -G lucas
USER lucas:lucas
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]