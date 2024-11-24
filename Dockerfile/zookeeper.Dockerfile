# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest



# Install OpenJDK 11 (you can change the version if needed)
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk



# Set environment variables for ZooKeeper
#ENV ZOOKEEPER_HOME /opt/zookeeper
#ENV PATH $ZOOKEEPER_HOME/bin:$PATH



# Download and install ZooKeeper
RUN apt-get install -y wget
RUN wget -q "https://archive.apache.org/dist/zookeeper/zookeeper-3.9.0/apache-zookeeper-3.9.0-bin.tar.gz"
RUN tar -xzf "apache-zookeeper-3.9.0-bin.tar.gz" -C /opt
RUN mv "/opt/apache-zookeeper-3.9.0-bin" /opt/zookeeper



# Create a directory for ZooKeeper data
RUN mkdir -p /data/zookeeper



# Expose ZooKeeper ports
EXPOSE 2181



# Copy ZooKeeper configuration file to the image
COPY zoo.cfg /opt/zookeeper/conf/zoo.cfg



# Start ZooKeeper
#CMD ["zkServer.sh", "start-foreground"]
WORKDIR /opt/zookeeper
CMD ["bin/zkServer.sh", "start-foreground"]
