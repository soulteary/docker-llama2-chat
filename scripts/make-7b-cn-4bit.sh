#!/bin/bash

docker build -t soulteary/llama2:base . -f docker/Dockerfile.base

docker build -t soulteary/chinese-llama2:7b-4bit . -f docker/Dockerfile.7b-cn-4bit
