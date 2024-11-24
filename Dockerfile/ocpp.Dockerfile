FROM ubuntu:latest

# Args
ARG USERNAME=evwer
ARG USER_UID=1000
ARG USER_GID=$USER_UID
 
#Create the user
RUN groupadd --gid $USER_GID $USERNAME \
&& useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
&& apt-get update \
&& apt-get install -y sudo \
&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
&& chmod 0440 /etc/sudoers.d/$USERNAME

RUN apt-get update && apt-get install -y wget

#creates root directory in the container
ARG USER_HOME_DIR="/root"

# Install OpenJDK-17

RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
RUN apt-get clean

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64/
RUN export JAVA_HOME

#checking jave version
FROM openjdk:17

# Change to non-root privilege
USER evwer

#exposing the port to the user
EXPOSE 8084

#fetching the jars from target
COPY ocpp-application-1.0.0.jar ocpp-application-1.0.0.jar
COPY ocpp-application.properties /opt/
COPY common.properties /opt/
COPY TEST_RSA_VTN_221108072945_cert.p12 /opt/

#Set the default user
USER $USERNAME

#adding the entry point for the user
CMD ["java","-jar","/ocpp-application-1.0.0.jar"," --add-opens=java.base/sun.security.ssl=ALL-UNNAMED --add-opens=java.base/sun.security.util=ALL-UNNAMED " ,"--spring.config.additional-location=/opt/ocpp-application.properties,/opt/common.properties"]