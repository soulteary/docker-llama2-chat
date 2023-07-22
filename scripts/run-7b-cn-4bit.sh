#!/bin/bash

docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --rm -it -v `pwd`/soulteary:/app/soulteary -p 7860:7860 soulteary/chinese-llama2:7b-4bit
