docker build -t ekajaya740/karsajobs-ui:latest .
docker tag ekajaya740/karsajobs-ui:latest ghcr.io/ekajaya740/karsajobs-ui:latest

echo "${GITHUB_TOKEN}" | docker login ghcr.io --username ekajaya740 --password-stdin

docker push ghcr.io/ekajaya740/karsajobs-ui:latest
