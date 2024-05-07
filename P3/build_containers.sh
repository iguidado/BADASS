#!/bin/bash

# docker build ./router -t router-p2-2

docker build ./host -t host-p3 #--build-arg IP_A="30.1.1.1"
docker build ./router -t router-p3

#docker rm -f test
#docker container run --name host-p -d host-p2 
