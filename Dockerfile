FROM openjdk:8u121-jdk-alpine
MAINTAINER Anish Kuti <anish.kuti@gmail.com>

RUN mkdir /app
WORKDIR /app


# Install Elasticsearch 1.3.1
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.1.tar.gz
RUN tar xvzf elasticsearch-5.6.1.tar.gz

# Add scripts
ADD scripts /scripts
RUN chmod +x /scripts/*.sh

# Command to run
ENTRYPOINT ["/scripts/run.sh"]
CMD [""]

# Expose listen port
EXPOSE 9200
EXPOSE 9300

# Expose our data and logs volumes
VOLUME ["/data", "/logs"]
