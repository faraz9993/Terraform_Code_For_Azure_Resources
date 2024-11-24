FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget

#Creates home directory in container
ARG USER_HOME_DIR="/root"

# Install OpenJDK-8
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
RUN apt-get clean;

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64/
RUN export JAVA_HOME

#Checking java version
FROM openjdk:11

#Exposing the port
EXPOSE 8082

#Fetching the jars from target
ADD ../../backendAPI/backend-web-server-1.0.0.jar backend-web-server-1.0.0.jar
ADD ../../backendAPI/application.properties /opt/
ADD ../../backendAPI/jarfiles/common.properties /opt/
#ADD ../../backendAPI/jarfiles/ocpp-application.properties ocpp-application.properties
#ADD ../../../.../backendAPI/jarfiles/scheduler-application.properties scheduler-application.properties

#Adding the entry point
#ENTRYPOINT ["java","-jar","/backend-web-server-1.0.0.jar"]
CMD ["java","-jar","/backend-web-server-1.0.0.jar","--spring.config.additional-location=/opt/application.properties,/opt/common.properties"]
#CMD ["java", "-jar", "/backendAPI/backend-web-server-1.0.0.jar", "--spring.config.additional-location=/application.properties,/common.properties"]
