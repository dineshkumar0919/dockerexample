# For Java 8, try this
 FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=app.jar

# cd /opt/app
WORKDIR /opt/app

# cp Sample-0.0.1-SNAPSHOT.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar
#COPY . .
# java -jar /opt/app/app.jar
CMD ["java","-jar","app.jar"]