set -e

# Build image
IMAGE_NAME="ghcr.io/fajaramaulana/karsajobs-ui:latest"
docker build -t ${IMAGE_NAME} .

# Login ke GitHub Container Registry dengan token yang tersimpan di env variable PASSWORD_GITHUB_TOKEN
# echo $PASSWORD_GITHUB_TOKEN | docker login ghcr.io -u fajaramaulana --password-stdin

# Push image
docker push ${IMAGE_NAME}t