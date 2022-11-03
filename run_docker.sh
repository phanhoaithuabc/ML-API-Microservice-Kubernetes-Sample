#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build -t ml_api_microservice_devops .

# List docker images
docker images

# Run flask app
docker run -p 8000:80 ml_api_microservice_devops
