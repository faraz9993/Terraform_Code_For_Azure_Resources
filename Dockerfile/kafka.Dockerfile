# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest



# Install OpenJDK 17 (you can change the version if needed)
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk wget && \
    apt-get install -y nano


# Set environment variables for Kafka
ENV KAFKA_HOME /opt/kafka
ENV PATH $KAFKA_HOME/bin:$PATH


# Download and install Kafka
RUN wget -q "https://archive.apache.org/dist/kafka/3.7.0/kafka_2.13-3.7.0.tgz"
RUN tar -xzf "kafka_2.13-3.7.0.tgz" -C /opt
RUN mv "/opt/kafka_2.13-3.7.0" /opt/kafka

RUN chmod 777 /opt/kafka
# Create a directory for Kafka data
RUN mkdir -p /var/lib/kafka/data

# Expose Kafka port
#EXPOSE 9092
EXPOSE 2181
#EXPOSE 443
EXPOSE 80
#ENV DOCKER_HOST_IP=20.212.24.143

COPY server.properties /opt/kafka/config/server.properties

#COPY files to storage account for backup
#COPY consumer.properties /opt/kafka/config/consumer.properties
#COPY producer.properties /opt/kafka/config/producer.properties
# Start Kafka

CMD ["kafka-server-start.sh", "/opt/kafka/config/server.properties"]
