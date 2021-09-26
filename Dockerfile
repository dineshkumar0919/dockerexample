# For Java 8, try this
 FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=app2.jar

# cd /opt/app
WORKDIR /opt/app
EXPOSE 80
# cp Sample-0.0.1-SNAPSHOT.jar /opt/app/app2.jar
COPY ${JAR_FILE} app2.jar
#COPY . .
# java -jar /opt/app/app2.jar
CMD ["java","-jar","app2.jar"]