#!/bin/bash

docker build -t web01 -f Dockerfile .
docker build -t web02 -f Dockerfile.web2 .
docker build -t proxy -f Dockerfile.proxy .
docker network create -d bridge asa-net

docker run -d --net=asa-net --name web01 web01

docker run -d --net=asa-net --name web02 web02

docker run -d --net=asa-net -p 80:80 --name proxy proxy
