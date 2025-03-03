docker build -t ekajaya740/karsajobs:latest .
docker tag ekajaya740/karsajobs:latest ghcr.io/ekajaya740/karsajobs:latest

echo "${GITHUB_TOKEN}" | docker login --username ekajaya740 --password-stdin

docker push ghcr.io/ekajaya740/karsajobs:latest
