# Docker LLaMA2 Chat / 羊驼二代

<p style="text-align: center;">
  <a href="README_CN.md"  target="_blank">中文文档</a> | <a href="README.md">ENGLISH</a>
</p>

[![](https://img.shields.io/badge/LLaMA2-Official_7B_/_13B-blue)](https://huggingface.co/meta-llama) [![](https://img.shields.io/badge/LLaMA2-Chines_7B-blue)](https://huggingface.co/soulteary/Chinese-Llama-2-7b-4bit) [![](https://img.shields.io/badge/License-Apache_v2-blue)](https://github.com/soulteary/docker-llama2-chat/blob/main/LICENSE)

<img src=".github/llama2.jpg" width="40%">

三步上手 LLaMA2，一起玩！完整整博客教程已更新，欢迎“一键三连”。

使用 Docker 快速上手，本地部署 7B 或 13B 官方模型，或者 7B 中文模型。

- Meta Llama2 模型， 使用 4090 验证，需要 8~14GB 显存
- 中文 Llama2 模型，使用 4090 验证，需要 8~14GB 显存
- 量化后的中文 Llama2 模型，使用 4090 验证，需要 5GB 显存

## 使用方法

1. 一条命令，从项目中构建官方版（7B或13B）模型镜像，或中文版镜像（7B或INT4量化版）：

```bash
# 7B
bash scripts/make-7b.sh

# 或 13B
bash scripts/make-13b.sh

# 或 7B Chinese
bash scripts/make-7b-cn.sh

# 或 7B Chinese 4bit
bash scripts/make-7b-cn-4bit.sh
```

2. 选择适合你的命令，从 HuggingFace 下载 LLaMA2 或中文模型：

```bash
# MetaAI LLaMA2 Models (10~14GB vRAM)
git clone https://huggingface.co/meta-llama/Llama-2-7b-chat-hf
git clone https://huggingface.co/meta-llama/Llama-2-13b-chat-hf

mkdir meta-llama
mv Llama-2-7b-chat-hf meta-llama/
mv Llama-2-13b-chat-hf meta-llama/

# 或 Chinese LLaMA2 (10~14GB vRAM)
git clone https://huggingface.co/LinkSoul/Chinese-Llama-2-7b

mkdir LinkSoul
mv Chinese-Llama-2-7b LinkSoul/

# 或 Chinese LLaMA2 4BIT (5GB vRAM)
git clone https://huggingface.co/soulteary/Chinese-Llama-2-7b-4bit

mkdir soulteary
mv Chinese-Llama-2-7b-4bit soulteary/
```

将下载好的模型，保持在一个正确的目录结构中。

```bash
tree -L 2 meta-llama
soulteary
└── ...
LinkSoul
└── ...
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

3. 选择使用下面的适合你的命令，一键运行 LLaMA2 模型应用：

```bash
# 7B
bash scripts/run-7b.sh
# 或 13B
bash scripts/run-13b.sh
# 或 Chinese 7B
bash scripts/run-7b-cn.sh
# 或 Chinese 7B 4BIT
bash scripts/run-7b-cn-4bit.sh
```

模型运行之后，在浏览器中访问 `http://localhost7860` 或者 `http://你的IP地址:7860` 就可以开始玩了。

## 预览图

![](.github/preview.png)

![](.github/llama2-cn-4bit.jpg)

![](.github/clip.gif)

## 博客教程

- [使用 Docker 快速上手官方版 LLaMA2 开源大模型](https://soulteary.com/2023/07/21/use-docker-to-quickly-get-started-with-the-official-version-of-llama2-open-source-large-model.html)
- [使用 Docker 快速上手中文版 LLaMA2 开源大模型](https://soulteary.com/2023/07/21/use-docker-to-quickly-get-started-with-the-chinese-version-of-llama2-open-source-large-model.html)
- [使用 Transformers 量化 Meta AI LLaMA2 中文版大模型](https://soulteary.com/2023/07/22/quantizing-meta-ai-llama2-chinese-version-large-models-using-transformers.html)

## 相关项目

- MetaAI LLaMA2: https://ai.meta.com/llama/ ❤️
- Meta LLaMA2 7B Chat: https://huggingface.co/meta-llama/Llama-2-7b-chat
- Meta LLaMA2 13B Chat: https://huggingface.co/meta-llama/Llama-2-13b-chat
- Chinese LLaMA2 7b: https://huggingface.co/LinkSoul/Chinese-Llama-2-7b
