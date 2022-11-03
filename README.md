[![phanhoaithuabc](https://circleci.com/gh/phanhoaithuabc/project-ML-API-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/phanhoaithuabc/project-ML-API-microservice-kubernetes)

## Project Overview
In this project, we will apply the skills to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

Project goal is to operationalize Machine learning microservice using [kubernetes](https://kubernetes.io/). Jobs in this project:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

<img src='images\kubernetes-hierarchy.png'>

<img src='images\kubernetes-basic-workflow.png'>
<img src='images\kubernetes-hpa.png'>
<img src='images\microservice-ops.png'>
<img src='images\kube+prometheus.png'>

## Setup the Environment and run the Application
* Run `make install` to install the necessary dependencies
* Running `app.py` to run the Python scripts and web app:
    1. Run standalone:  `python app.py`
    2. Run in Docker:  `./run_docker.sh`
    3. Run in Kubernetes:  `./run_kubernetes.sh`

## File in this repository
- `.circleci/config.yaml`: CircleCI config file
- `model_data/boston_housing_prediction.joblib`: model machine learning 
- `model_data/housing.csv`: data train model ML
- `output_txt_files/docker_out.txt`: result predict through docker
- `output_txt_files/kubernetes_out.txt`: console when run kubernete
- `app.py`: start the application contain API to predict
- `Dockerfile`: build docker image of this source
- `make_prediction.sh`: contain data and script to predict
- `Makefile`: contain script to set up env, verify code,...
- `README.md`: explain and instruction of this repo
- `requirements.txt`: pakage require to run this code 
- `run_docker.sh`: build and run source code as a docker container
- `run_kubernetes.sh`: create a cluster to run docker container 
- `upload_docker.sh`: up load docker image to docker hub

## Kubernetes Steps
* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Improve Logging & Save Output
* Logging is an important part of debugging and understandability. Many times, logs will be how engineers figure out what an app is doing as it processes some input. We print out the output prediction values.

* Create docker_out.txt, copy and paste this terminal output, which has log info, in a text file docker_out.txt.

* The docker_out.txt file should include all your log statements plus a line that reads something like ”POST /predict HTTP/1.1” 200 - The 200 is a standard value indicating the good “health” of an interaction.

* Copy the text output after calling run_kubernetes.sh and paste it into a file kubernetes_out.txt. This will be the second (out of two) text files that are required for submission. This output might look quite different from docker_out.txt; this new file should include your pod’s name and status, as well as the port forwarding and handling text.