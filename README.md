# Docker Llama2 Chat

Play! Together!

## Usage

1. Build llama2 Docker image for 7B or 13B:

```bash
# 7b
bash scripts/make-7b.sh
# 13b
bash scripts/make-13b.sh
```



2. Build 7B or 13B Docker image.

```bash
docker build -t soulteary/llama2:7b . -f docker/Dockerfile.7b
# or
docker build -t soulteary/llama2:7b . -f docker/Dockerfile.13b
```

3. Download Llama2 Offcial Models from HuggingFace (download faster++)

```bash
git clone git@hf.co:meta-llama/Llama-2-7b-chat-hf
git clone git@hf.co:meta-llama/Llama-2-13b-chat-hf

mkdir meta-llama
mv Llama-2-7b-chat-hf meta-llama/
mv Llama-2-13b-chat-hf meta-llama/
```

keep the correct directory structure.

```bash
tree -L 2 meta-llama
meta-llama
├── Llama-2-13b-chat-hf
│   ├── added_tokens.json
│   ├── config.json
│   ├── generation_config.json
│   ├── LICENSE.txt
│   ├── model-00001-of-00003.safetensors
│   ├── model-00002-of-00003.safetensors
│   ├── model-00003-of-00003.safetensors
│   ├── model.safetensors.index.json
│   ├── pytorch_model-00001-of-00003.bin
│   ├── pytorch_model-00002-of-00003.bin
│   ├── pytorch_model-00003-of-00003.bin
│   ├── pytorch_model.bin.index.json
│   ├── README.md
│   ├── Responsible-Use-Guide.pdf
│   ├── special_tokens_map.json
│   ├── tokenizer_config.json
│   ├── tokenizer.model
│   └── USE_POLICY.md
└── Llama-2-7b-chat-hf
    ├── added_tokens.json
    ├── config.json
    ├── generation_config.json
    ├── LICENSE.txt
    ├── model-00001-of-00002.safetensors
    ├── model-00002-of-00002.safetensors
    ├── model.safetensors.index.json
    ├── models--meta-llama--Llama-2-7b-chat-hf
    ├── pytorch_model-00001-of-00003.bin
    ├── pytorch_model-00002-of-00003.bin
    ├── pytorch_model-00003-of-00003.bin
    ├── pytorch_model.bin.index.json
    ├── README.md
    ├── special_tokens_map.json
    ├── tokenizer_config.json
    ├── tokenizer.json
    ├── tokenizer.model
    └── USE_POLICY.md

4 directories, 35 files
```

4. Run llama2 7b or 13b in docker command:

```bash
docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --rm -it -v `pwd`/meta-llama:/app/meta-llama -p 7860:7860 soulteary/llama2:7b

# or

docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --rm -it -v `pwd`/meta-llama:/app/meta-llama -p 7860:7860 soulteary/llama2:13b
```

5. enjoy

open `http://localhost7860` or `http://ip:7860`.

