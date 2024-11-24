FROM redis

#prerequisites
#RUN apt install -y lsb-release curl gpg
RUN apt-get update
RUN apt-get install -y wget

#install redis
#RUN mkdir /home/redis
RUN wget "http://download.redis.io/releases/redis-7.2.4.tar.gz"

#giving path to the redis file
#RUN mkdir -p /home/evwerftp/ftp/redis

#extracting the tar.gz and removing it
RUN tar -xvzf redis-7.2.4.tar.gz
#-p /home/redis
#--strip-components=1
RUN rm -rf redis-7.2.4.tar.gz

#getting the version of redis
RUN redis-cli --version
RUN redis-server --version

#RUN mkdir /data && chown redis:redis /data
#VOLUME /data
#WORKDIR /data

#COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 6379
CMD ["redis-server"]
