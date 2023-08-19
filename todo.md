
cant run by tag now that i use includetask 

#Docker Commands

Build an image based on a Docker file in the current directory
`sudo docker build -t dev:latest . `

Runs a docker image in interactive mode and enter the bin/bash repository

`sudo docker run --name dev_container_test -it dev:latest /bin/bash` 

