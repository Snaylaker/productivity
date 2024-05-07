
cant run by tag now that i use includetask 

#Docker Commands

Build an image based on a Docker file in the current directory
`sudo docker build -t dev:latest . `

Runs a docker image in interactive mode and enter the bin/bash repository

`sudo docker run --name dev_container_test -it dev:latest /bin/bash` 

You dont have to do crazy shenanigens just because i do them :

```bash 
sudo docker rm -f $(sudo docker ps -aq) && sudo docker run --name dev_container_test -it dev:latest /bin/bash
```
- [ ] i will install neovim
- [ ] then maybe add stew for dot files 
- [ ] add a task thats asks to decrypt my ssh key 
- [ ] maybe setup a task for pulling my projects 
