# Elasticsearch Dockerfile

A Dockerfile that produces a Docker Image for [Elasticsearch](http://www.elasticsearch.org/).

## Elasticsearch version

The `master` branch currently hosts Elasticsearch 1.3.

Different versions of Elasticsearch are located at the github repo [branches](https://github.com/frodenas/docker-elasticsearch/branches).

## Usage

### Build the image

To create the image `frodenas/elasticsearch`, execute the following command on the `docker-elasticsearch` folder:

```
$ docker build -t frodenas/elasticsearch .
```

### Run the image

To run the image and bind to host ports 9200 and 9300:

```
$ docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 frodenas/elasticsearch
```


#### Persistent data

The Elasticsearch server is configured to store data in the `/data` directory inside the container. You can map the
container's `/data` volume to a volume on the host so the data becomes independent of the running container:

```
$ mkdir -p /tmp/elasticsearch
$ docker run -d \
    --name elasticsearch \
    -p 9200:9200 -p 9300:9300 \
    -v /tmp/elasticsearch:/data \
    frodenas/elasticsearch
```

There are also additional volumes at:

* `/logs` which exposes Elasticsearch's logs

## Copyright

Copyright (c) 2014 Ferran Rodenas. See [LICENSE](https://github.com/frodenas/docker-elasticsearch/blob/master/LICENSE) for details.
