import torch
from transformers import AutoModelForCausalLM, BitsAndBytesConfig

# 使用中文版
model_id = 'LinkSoul/Chinese-Llama-2-7b'
# 或者，使用原版
# model_id = 'meta-llama/Llama-2-7b-chat-hf'

model = AutoModelForCausalLM.from_pretrained(
    model_id,
    local_files_only=True,
    torch_dtype=torch.float16,
    quantization_config = BitsAndBytesConfig(
        bnb_4bit_quant_type="nf4",
        bnb_4bit_compute_dtype=torch.bfloat16
    ),
    device_map='auto'
)

import os
output = "/app/soulteary/Chinese-Llama-2-7b-4bit"
if not os.path.exists(output):
    os.mkdir(output)

model.save_pretrained(output)
print("done")