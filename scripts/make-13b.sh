#!/bin/bash

docker build -t soulteary/llama2:base .

docker build -t soulteary/llama2:7b . -f docker/Dockerfile.7b
