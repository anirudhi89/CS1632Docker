#!/bin/bash

# docker buildx create --use

# docker buildx build --output type=docker --platform linux/amd64 -t cs1632:latest .

docker build --output type=docker -t cs1632:latest .
