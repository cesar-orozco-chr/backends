#!/bin/bash
export IMAGE_NAME=postgres-bts
docker build -t $IMAGE_NAME .

docker run --name pg-workflow -d -e POSTGRES_PASSWORD=postgres -p 5433:5432 $IMAGE_NAME