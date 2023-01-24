#!/bin/bash
docker build -t hometask-image -f ./Dockerfile .
docker run --rm -ti hometask-image -p 8081:80