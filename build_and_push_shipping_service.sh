#!/bin/bash

docker build .

docker build -t ekajaya740/shipping-service:latest .
docker tag ekajaya740/shipping-service:latest ghcr.io/ekajaya740/shipping-service:latest

echo "${GITHUB_TOKEN}" | docker login ghcr.io --username ekajaya740 --password-stdin

docker push ghcr.io/ekajaya740/shipping-service:latest
