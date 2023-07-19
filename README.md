# Docker Llama2 Chat

Play! Together!

## Usage

1. Build base Docker image.

```bash
docker build -t soulteary/llama2:base .
```

Wait for the image to be built.

```bash
[+] Building 47.5s (7/7) FINISHED                                                                                                                                                                     
 => [internal] load .dockerignore                                                                                                                                                                0.1s
 => => transferring context: 2B                                                                                                                                                                  0.0s
 => [internal] load build definition from Dockerfile                                                                                                                                             0.1s
 => => transferring dockerfile: 317B                                                                                                                                                             0.0s
 => [internal] load metadata for nvcr.io/nvidia/pytorch:23.06-py3                                                                                                                                0.0s
 => CACHED [1/3] FROM nvcr.io/nvidia/pytorch:23.06-py3                                                                                                                                           0.0s
 => [2/3] RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple &&     pip install accelerate==0.21.0 bitsandbytes==0.40.2 gradio==3.37.0 protobuf==3.20.3 scipy==1.11.  45.2s
 => [3/3] WORKDIR /app                                                                                                                                                                           0.1s
 => exporting to image                                                                                                                                                                           2.1s 
 => => exporting layers                                                                                                                                                                          2.1s 
 => => writing image sha256:24561b68d8db2fa63f0c0a7d1bfd4a5aea62ed6d30d30ffcb7d7ae99a5180d0f                                                                                                     0.0s 
 => => naming to docker.io/soulteary/llama2:base 
```
