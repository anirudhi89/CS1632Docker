#!/bin/bash

# docker buildx create --use

# docker buildx build --output type=docker --platform linux/amd64 -t cs1632:latest .


# get most recent repository from CS1632-Spring2024 org
repo_name="https://github.com/CS1632-Spring2024/"
repo_name+=$(gh repo list CS1632-Spring2024 --limit 1 --json name --jq '.[].name')

# Add to clone.sh 
echo "git clone $repo_name" >> clone.sh

docker build --output type=docker -t cs1632:latest .
