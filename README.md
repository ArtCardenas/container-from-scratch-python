# container-from-scratch-python
This is building a container from scratch
https://www.coursera.org/lecture/cloud-virtualization-containers-api-duke/build-a-docker-container-project-from-scratch-BnG1F

## Build the Container Yourself and Push to Docker Hub
### 1.- see Dockerfile, that is how the container is built
### 2.- look at the app.py python application file
### 3.- from project root, go to "Code" and then clone SSH, click the clipboard button
### 4.- GoTo Cloud9:
         Type $ git clone git@github.com:ArtCardenas/container-from-scratch-python.git
              $ cd container-from-scratch-python
              $ ls

### Build image
*(If you want to develop yourself)*.  the dot "." looks inside current working directory and built based on docker file

         docker build --tag=hello-duke-cli-210 .

### List docker images
         docker image ls

### Run my newly built container

         docker run -it hello-duke-cli-210 python app.py --name "Big John"
         -or-
         docker run -it noagift/claudapp   python app.py --name "Big John"

### Push to Docker Hub

         *Note:  You will need to change for your Docker Hub Repo*
         docker push noahgift/duke102:tagname

## Run it yourself
### remember noahgift/cloudapp is the name of the external Docker Hub, /latest is the default tag 

```bash
docker pull noahgift/cloudapp:latest
docker run -it noahgift/cloudapp bash 

#then run python app.py --help
```

## Pass in a command

```bash
docker run -it noahgift/cloudapp python app.py --name "Big John"
#the output
Hello Big John!
```

## Push to Amazon ECR

1.  Create ECR repository


### More things Do

* Lint the code with Github Actions (see the Makefile)
* Automatically build the container after lint, and push to DockerHub or some other Container Registery



