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
#Creates home directory in container
ARG USER_HOME_DIR="/root"
# Install OpenJDK-17
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
RUN apt-get clean;
# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64/
RUN export JAVA_HOME
#Checking java version
FROM openjdk:17
#Exposing the port
EXPOSE 8090
#Fetching the jars from target
COPY openadr-server-1.0.0.jar openadr-server-1.0.0.jar
COPY openadr-application.properties /opt/
COPY TEST_RSA_VTN_221108072945_cert.p12 /opt/
COPY certificates /opt/
COPY truststore.jks /opt/
#Set the default user
USER $USERNAME
#Adding the entry point
CMD ["java", "-jar", "/openadr-server-1.0.0.jar", "--spring.config.additional-location=/opt/openadr-application.properties"]