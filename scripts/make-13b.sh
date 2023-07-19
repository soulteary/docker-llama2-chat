#!/bin/bash

docker build -t soulteary/llama2:base . -f docker/Dockerfile.base

docker build -t soulteary/llama2:7b . -f docker/Dockerfile.7b
