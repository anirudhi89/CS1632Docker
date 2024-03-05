docker buildx create --use

docker buildx build --output type=docker --platform linux/amd64 -t cs1632:latest .
