#!/bin/bash

me_path="$(dirname "$(readlink -f "$0")")"

case "$1" in
7b)
    image_name=soulteary/llama2
    tag_name=7b
    docker_file=docker/Dockerfile.7b
    mod_path=meta-llama
    ;;
7b-cn)
    image_name=soulteary/llama2
    tag_name=7b-cn
    docker_file=docker/Dockerfile.7b-cn
    mod_path=LinkSoul
    ;;
7b-cn-4bit)
    image_name=soulteary/llama2
    tag_name=7b-cn-4bit
    docker_file=docker/Dockerfile.7b-cn-4bit
    mod_path=soulteary
    ;;
13b)
    image_name=soulteary/llama2
    tag_name=13b
    docker_file=docker/Dockerfile.13b
    mod_path=meta-llama
    ;;
*)
    cat <<EOF
Usage:

    $0 7b
    $0 7b-cn
    $0 7b-cn-4bit
    $0 13b

EOF
    exit 1
    ;;
esac

if docker image ls | grep -q "soulteary/llama2.*base"; then
    echo "Found docker image soulteary/llama2:base, skip build."
else
    echo "Not found docker image soulteary/llama2:base, build..."
    docker build -t soulteary/llama2:base "$me_path" -f docker/Dockerfile.base
fi

if docker image ls | grep -q "${image_name}.*${tag_name}"; then
    echo "Found docker image ${image_name}:${tag_name}, skip build."
else
    echo "Not found docker image ${image_name}:${tag_name}, build..."
    docker build -t "${image_name}:${tag_name}" "$me_path" -f "$docker_file"
fi

docker run --gpus all --rm -it --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 \
    -p 7861:7860 \
    -v "$me_path/$mod_path":"/app/$mod_path" \
    "${image_name}:${tag_name}"
