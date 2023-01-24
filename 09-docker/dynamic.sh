#!/bin/bash
docker build -t hometask-image -f ./Dockerfile .
docker run -d --rm -ti -p 8080:80 --name dynamic hometask-image