#!/bin/bash
docker build -t word-cloud-generator-image -f ./Dockerfile.multi .
docker run --rm -d -ti -p 8080:8888 --name word-cloud-generator word-cloud-generator-image