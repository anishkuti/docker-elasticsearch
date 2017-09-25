#!/bin/bash

# Start Elasticsearch
echo "Starting Elasticsearch..."
/app/elasticsearch/bin/elasticsearch -Des.default.path.data=/data -Des.default.path.logs=/logs
