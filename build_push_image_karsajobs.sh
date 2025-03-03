docker build -t ekajaya740/karsajobs:latest .
docker tag ekajaya740/karsajobs:latest ghcr.io/ekajaya740/karsajobs:latest

docker login --username ekajaya740 --password $GITHUB_TOKEN

docker push ghcr.io/ekajaya740/karsajobs:latest
