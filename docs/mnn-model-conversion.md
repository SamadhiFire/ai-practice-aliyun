# MNN 模型转换指南

本文档记录如何将 Qwen 系列模型转换为 MNN 格式，并进行 4-bit 量化以适配手机端侧推理。

## 1. 环境准备

### 1.1 系统要求

- Linux 或 macOS（推荐 Ubuntu 22.04+）
- Python 3.8+
- CMake 3.18+
- GCC 9+ 或 Clang 12+

### 1.2 克隆并编译 MNN

```bash
git clone https://github.com/alibaba/MNN.git
cd MNN
mkdir build && cd build
cmake .. \
  -DMNN_BUILD_CONVERTER=ON \
  -DMNN_BUILD_LLM=ON \
  -DMNN_SEP_BUILD=OFF \
  -DCMAKE_BUILD_TYPE=Release
make -j$(nproc)
```

### 1.3 安装 Python 依赖

```bash
pip install torch transformers sentencepiece protobuf
```

## 2. 下载 Qwen 模型

推荐使用小模型，优先级如下：

| 优先级 | 模型 | 参数量 | 量化后体积估算 |
|--------|------|--------|----------------|
| ★★★ | Qwen2.5-0.5B-Instruct | 0.5B | ~300MB |
| ★★ | Qwen3-0.6B | 0.6B | ~350MB |
| ★ | Qwen2.5-1.5B-Instruct | 1.5B | ~900MB |

```bash
# 使用 huggingface-cli 下载（需要登录）
huggingface-cli download Qwen/Qwen2.5-0.5B-Instruct --local-dir ./Qwen2.5-0.5B-Instruct

# 或使用 modelscope（国内镜像）
pip install modelscope
modelscope download --model Qwen/Qwen2.5-0.5B-Instruct --local_dir ./Qwen2.5-0.5B-Instruct
```

## 3. 导出为 MNN 格式

### 3.1 使用 llmexport.py 转换

```bash
cd MNN/transformers/llm/export

python llmexport.py \
  --path /path/to/Qwen2.5-0.5B-Instruct \
  --export mnn \
  --quant_bit 4 \
  --quant_block 128 \
  --hqq
```

参数说明：
- `--path`: HuggingFace 模型目录
- `--export mnn`: 导出为 MNN 格式
- `--quant_bit 4`: 4-bit 量化
- `--quant_block 128`: 量化块大小
- `--hqq`: 使用 HQQ 量化算法（精度优于 GPTQ）

### 3.2 导出产物

导出完成后，会在当前目录生成以下文件：

```text
model/
├── config.json          # MNN 运行时配置
├── llm_config.json      # LLM 专用配置
├── llm.mnn              # 模型计算图
├── llm.mnn.weight       # 模型权重
├── tokenizer.mtok       # 分词器
└── embeddings_bf16.bin  # 嵌入表（视模型而定）
```

## 4. PC 端验证

### 4.1 使用 MNN CLI 测试

```bash
cd MNN/build

# 运行 LLM demo
./llm_demo /path/to/exported/model/config.json "你好，请用一句话介绍你自己"
```

### 4.2 验证 JSON 输出能力

```bash
./llm_demo /path/to/exported/model/config.json \
  "你是出题助手。请输出一个JSON对象，包含一道单选题。只输出JSON，不要解释。"
```

检查输出是否为合法 JSON。

## 5. 推送到 Android 设备

### 5.1 创建目标目录

```bash
# 获取 App 的 data 目录
adb shell mkdir -p /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
```

### 5.2 推送模型文件

```bash
adb push model/config.json /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
adb push model/llm_config.json /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
adb push model/llm.mnn /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
adb push model/llm.mnn.weight /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
adb push model/tokenizer.mtok /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/

# 如果有 embeddings 文件
adb push model/embeddings_bf16.bin /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
```

### 5.3 验证文件存在

```bash
adb shell ls -la /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
```

## 6. config.json 推荐配置

比赛演示版建议配置：

```json
{
  "backend_type": "cpu",
  "thread_num": 4,
  "precision": "low",
  "memory": "low",
  "sampler_type": "mixed",
  "temperature": 0.2,
  "topP": 0.8,
  "max_new_tokens": 1024,
  "reuse_kv": true
}
```

### 调优建议

| 参数 | 建议值 | 说明 |
|------|--------|------|
| thread_num | 4-6 | 华为 P60 (骁龙 8+ Gen 1) 建议先用 4 |
| max_new_tokens | 512-1536 | 出题 JSON 不需要太长 |
| temperature | 0.1-0.3 | JSON 生成建议低温度 |
| precision | low | 4-bit 量化模型配合低精度 |
| reuse_kv | true | 多轮/连续生成时开启 |

## 7. 注意事项

1. **华为 P60 的 CPU 特性**：骁龙 8+ Gen 1 使用 ARMv9.0 架构（Cortex-X2 + A710 + A510），支持 NEON/SVE 但不支持 SME2 指令集。MNN 会自动使用最优的 ARM 优化路径。
2. **内存管理**：P60 有 16GB 内存，0.5B 模型 4-bit 量化后约需 500MB 运行时内存，完全足够。
3. **模型文件权限**：通过 adb push 推送的文件需要确保 App 有读取权限。如权限不足，可尝试推送到 `/sdcard/Android/data/__UNI__STUDY_QUIZ_TOOL/files/models/` 目录。
