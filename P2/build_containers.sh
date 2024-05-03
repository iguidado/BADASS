#!/bin/bash

# docker build ./router -t router-p2-2

docker build ./host -t host-$USER #--build-arg IP_A="30.1.1.1"
docker build ./router -t router-$USER

#docker rm -f test
#docker container run --name host-p -d host-p2 
