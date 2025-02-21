#!/bin/bash
# ^ shebang

docker build -t item-app:v1 .                                       # Build image dengan tag item-app:v1 dengan Dockerfile yang ada di directory ini
docker images                                                       # Memperlihatkan seluruh docker images
docker tag item-app:v1 ghcr.io/ekajaya740/item-app:v1               # Mengubah tag item-app:v1 ke ghcr.io/ekajaya740/item-app:v1
docker login --username ekajaya740 --password $GITHUB_TOKEN ghcr.io # Login ke GitHub Packages dengan username dan personal access token
docker push ghcr.io/ekajaya740/item-app:v1                          # Push image ke GitHub Packages
