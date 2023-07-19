# Docker LLaMA2 Chat

Play! Together! **ONLY 3 STEPS!**

Get started quickly, locally using the 7B or 13B models, using Docker.

This project has been tested by 4090 and costs 8 ~ 14G vRAM.

## Usage

1. Build LLaMA2 Docker image for 7B or 13B:

```bash
# 7b
bash scripts/make-7b.sh
# 13b
bash scripts/make-13b.sh
```

2. Download LLaMA2 Offcial Models from HuggingFace (download faster++)

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

3. Run llama2 7b or 13b in docker command:

```bash
# 7b
bash scripts/make-7b.sh
# or 13b
bash scripts/make-13b.sh
```

enjoy, open `http://localhost7860` or `http://ip:7860` and play with the LLaMA2!


## Preview

![](.github/preview.png)

![](.github/clip.png)
