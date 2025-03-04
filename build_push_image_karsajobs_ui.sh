docker build -t ekajaya740/karsajobs-ui:latest .                                 # Build image menggunakan Dockerfile yang ada pada directory ini dengan tag ekajaya740/karsajobs-ui:latest
docker tag ekajaya740/karsajobs-ui:latest ghcr.io/ekajaya740/karsajobs-ui:latest # Ubah tag dari ekajaya740/karsajobs-ui:latest ke ghcr.io/ekajaya740/karsajobs-ui:latest agar bisa di terima oleh GHCR

echo "${GITHUB_TOKEN}" | docker login ghcr.io --username ekajaya740 --password-stdin # Login ke ghcr.io dengan username dan password dari env pada GitHub Actions

docker push ghcr.io/ekajaya740/karsajobs-ui:latest # Push image ke ghcr
