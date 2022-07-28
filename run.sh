#!/bin/sh

docker build -t deploy .
docker container run -it deploy
