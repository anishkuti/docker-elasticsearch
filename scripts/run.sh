#!/bin/bash

# Start Elasticsearch
echo "Starting Elasticsearch..."
/app/elasticsearch-5.6.1/bin/elasticsearch -Des.default.path.data=/data -Des.default.path.logs=/logs
