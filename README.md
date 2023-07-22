# Docker LLaMA2 Chat / 羊驼二代

<p style="text-align: center;">
  <a href="README.md">ENGLISH</a> | <a href="README_CN.md"  target="_blank">中文文档</a>
</p>

[![](https://img.shields.io/badge/LLaMA2-Official_7B_/_13B-blue)](https://huggingface.co/meta-llama) [![](https://img.shields.io/badge/LLaMA2-Chines_7B-blue)](https://huggingface.co/soulteary/Chinese-Llama-2-7b-4bit) [![](https://img.shields.io/badge/License-Apache_v2-blue)](https://github.com/soulteary/docker-llama2-chat/blob/main/LICENSE)

<img src=".github/llama2.jpg" width="40%">

Play! Together! **ONLY 3 STEPS!**

Get started quickly, locally using the 7B or 13B models, using Docker.

- Meta Llama2, tested by 4090, and costs 8~14GB vRAM.
- Chinese Llama2 quantified, tested by 4090, and costs 5GB vRAM.

## Usage

1. Build LLaMA2 Docker image for 7B / 13B (official), 7B or 7B INT4 (chinese):

```bash
# 7B
bash scripts/make-7b.sh

# OR 13B
bash scripts/make-13b.sh

# OR 7B Chinese
bash scripts/make-7b-cn.sh

# OR 7B Chinese 4bit
bash scripts/make-7b-cn-4bit.sh
```

2. Download LLaMA2 Models from HuggingFace, or chinese models.

```bash
# MetaAI LLaMA2 Models (10~14GB vRAM)
git clone https://huggingface.co/meta-llama/Llama-2-7b-chat-hf
git clone https://huggingface.co/meta-llama/Llama-2-13b-chat-hf

mkdir meta-llama
mv Llama-2-7b-chat-hf meta-llama/
mv Llama-2-13b-chat-hf meta-llama/

# OR Chinese LLaMA2 (10~14GB vRAM)
git clone https://huggingface.co/LinkSoul/Chinese-Llama-2-7b

mkdir LinkSoul
mv Chinese-Llama-2-7b LinkSoul/

# OR Chinese LLaMA2 4BIT (5GB vRAM)
git clone https://huggingface.co/soulteary/Chinese-Llama-2-7b-4bit

mkdir soulteary
mv Chinese-Llama-2-7b-4bit soulteary/
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
```

3. Run Llama2 model in docker command:

```bash
# 7B
bash scripts/run-7b.sh
# OR 13B
bash scripts/run-13b.sh
# Chinese 7B
bash scripts/run-7b-cn.sh
# Chinese 7B 4BIT
bash scripts/run-7b-cn-4bit.sh
```

enjoy, open `http://localhost7860` or `http://ip:7860` and play with the LLaMA2!


## Preview

![](.github/preview.png)

![](.github/llama2-cn-4bit.jpg)

![](.github/clip.gif)

## Credit

- Meta AI LLaMA2: https://ai.meta.com/llama/
- Meta LLaMA2 7B Chat: https://huggingface.co/meta-llama/Llama-2-7b-chat
- Meta LLaMA2 13B Chat: https://huggingface.co/meta-llama/Llama-2-13b-chat
