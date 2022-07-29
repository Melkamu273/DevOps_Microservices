[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Melkamu273/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Melkamu273/DevOps_Microservices/tree/master)

#       Kubernetes Housing Price Machine Learning Based Predictor. 


## Project Overview 
This project operationalize a Machine Learning Microservice API.It uses machine learning to forecast home price trends. The project has been created as a Docker image, which can be quickly deployed as a microservice in Kubernetes or Docker using a YAML configuration file the kubectl or docker command line utility, as appropriate.The service exposes a prediction call endpoint once it has been implemented. 

### How to run the Project 
The Algorithm used is a pretrained model.
The model data directory contains the model data and the pretrained model.
app.py contains a Flask app definition that, when called, services the prediction model on an endpoint. The project tested by using  linting and containerize using  Dockerfile. then next deploy containerized application using Docker and make a prediction.
 
 it also  Deploy with Kubernetes to do this 
 * Configure Kubernetes and create a Kubernetes cluster
 * Deploy a container using Kubernetes and make a prediction
 To test the project Build it is integrated with CircleCI 

## Running the Prediction Service 
To run the project, a Makefile has been added which contains the basic commands needed to setup the environment running.
To run you have to create a virtual environment by running the make command below:
####   For Linux

        python3 -m venv ~/.devops
        source ~/.devops/bin/activate
        make install
        python app.py
####    For Windows

        python -m venv /.devops
        /.devops/Scripts/activate
        make install
        python app.py
##    Running with Docker & Make a Prediction
Before run with docker it is recommended that you make lint to run lint checks on the project code. to check all requirements should be satisfied, and you should see a printed statement that rates your code.
*      ./run_docker.sh
  after you run you get 
  Successfully built <build id>
  Successfully tagged <your tag>
  This indicates a successful build and if you keep this application running you can make predictions!
      * Make a Prediction 
 Then, to make a prediction, you have to open a separate tab or terminal window. In this new window, navigate to the main project directory (some computers will do this automatically) and call 

*      ./make_prediction.sh. 

##   Running with Kubernetes & Make a Prediction
before you use the command below you should Configure Kubernetes. after  uploaded a docker image and configured Kubernetes so that a cluster is running.you’ll be able to deploy your application on the Kubernetes cluster. This involves running your containerized application using kubectl, which is a command line interface for interacting with Kubernetes clusters is  
*         ./run_kubernetes.sh    
 Initially, your pod may be in the process of being created, as indicated by STATUS: ContainerCreating, but you just have to wait a few minutes until the pod is ready
Waiting: You can check on your pod’s status with a call to kubectl get pod and you should see the status change to Running. Then you can run the full ./run_kuberenets.sh script again.      
  * Make a Prediction
  After you’ve called run_kubernetes.sh, and a pod is up and running, make a prediction using a separate terminal tab, and a call to 
  
*        ./make_prediction.sh
## CI/CD

This project integrates CircleCI for CI/CD. The CircleCI configuration file, config.yml  found inside .circleci directory. The file CircleCI is looks into for instructions on what to do in the Pipeline.

