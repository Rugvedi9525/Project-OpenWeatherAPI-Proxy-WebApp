# fa19-python-webapp

***Steps to Start the Python Application

Step 1: Enable docker daemon on your host

*sudo systemctl enable docker (this will start your docker daemon when you boot your system)
*sudo systemctl start docker (this will start docker daemon)
 
Step 2: Build docker container

*docker build -t <name> .
Example: docker build -t app .

Step 3: Run the docker container

*docker run -it -d -p 8080:8080 --name=<name> <name>
Example: docker run -it -d -p 8080:8080 --name=app app

Step 4: Access the website

*http://localhost:8080/

****Steps to stop and delete the container and delete the image

Step 1: Stop the container

*docker stop <name>
Example: docker stop app

Step 2: Delete the docker container

*docker rm <name>
Example: docker rm app

Step 3: Delete the docker image

*docker rmi <name>
Example: docker rmi app

****Debug commands
docker system prune (Deletes all the existing containers and images)
docker ps -a 
docker container ls -a
