#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=melkamu372/housing-price-predictor

# Step 2:  
# Authenticate & tag
echo ****** | docker login --username melkamu372 --password-stdin
docker image tag ml-predictor $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
