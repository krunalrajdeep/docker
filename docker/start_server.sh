#!/bin/sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo $DIR

docker rm -f web
docker rm -f mysql
docker-compose rm

docker-compose build db
docker-compose up -d db
docker-compose build web
docker-compose up -d web