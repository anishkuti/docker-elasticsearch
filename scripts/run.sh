#!/bin/bash

# Start Elasticsearch
echo "Starting Elasticsearch..."
/elasticsearch/bin/elasticsearch -Des.default.path.data=/data -Des.default.path.logs=/logs
