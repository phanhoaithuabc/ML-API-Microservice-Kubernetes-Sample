#!/usr/bin/env bash

# This is your Docker ID/path dockerpath=<>
dockerpath="phanhoaithu/ml_api_microservice_devops"

# Run the Docker Hub container with kubernetes
docker login
kubectl run ml_api_microservice_devops --image=$dockerpath\
    --port=80 --labels app=ml_api_microservice_devops

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward ml_api_microservice_devops 8000:80
