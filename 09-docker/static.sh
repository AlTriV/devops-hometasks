#!/bin/bash
docker build -t hometask-image -f ./Dockerfile .
mkdir static
cp ./index.html ./static/
SHARED_PATH=`readlink -f ./static`
docker run -d --rm -ti -v $SHARED_PATH:/var/www/html/ -p 8081:80 --name static hometask-image