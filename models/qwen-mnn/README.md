# MNN Qwen 模型目录

## 模型信息

| 项目 | 值 |
|------|------|
| 模型 | Qwen2.5-0.5B-Instruct |
| 量化 | 4-bit (HQQ) |
| 运行时 | MNN LLM |
| 参数 | ~0.5B (非嵌入 ~0.36B) |
| 上下文 | 32,768 tokens |

## 文件说明

此目录存放 MNN 格式的 Qwen 模型文件，通过 `llmexport.py` 从 HuggingFace 格式转换而来。

转换完成后应包含以下文件：

```
models/qwen-mnn/
├── config.json          # MNN 运行时配置 (已提供)
├── llm_config.json      # LLM 专用配置 (llmexport.py 自动生成)
├── llm.mnn              # 模型计算图 (~150MB)
├── llm.mnn.weight       # 模型权重 (~300MB)
├── tokenizer.mtok       # 分词器 (~5MB)
└── README.md            # 本文件
```

## 转换步骤

使用一键脚本：

```powershell
# 在项目根目录执行
.\deps\setup_mnn.ps1
```

或手动执行：

```bash
# 1. 克隆并编译 MNN
cd deps
git clone https://github.com/alibaba/MNN.git
cd MNN && mkdir build && cd build
cmake .. -DMNN_BUILD_CONVERTER=ON -DMNN_BUILD_LLM=ON -DCMAKE_BUILD_TYPE=Release
make -j8

# 2. 安装 Python 依赖
pip install torch transformers

# 3. 转换模型
cd ../transformers/llm/export
python llmexport.py \
  --path ../../../../models/Qwen/Qwen2___5-0___5B-Instruct \
  --export mnn \
  --quant_bit 4 \
  --quant_block 128 \
  --hqq

# 4. 移动产物
mv model/* ../../../../models/qwen-mnn/
```

## 推送模型到 Android 设备

```bash
# 创建目标目录
adb shell mkdir -p /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/

# 推送文件
adb push config.json llm_config.json llm.mnn llm.mnn.weight tokenizer.mtok \
  /data/data/__UNI__STUDY_QUIZ_TOOL/files/models/qwen-mnn/
```

## 验证模型

PC 端：

```bash
cd deps/MNN/build
./llm_demo ../../models/qwen-mnn/config.json "你好，请回复OK"
```

Android 端 (通过 App 的 Profile 页 → 加载模型 → 测试 prompt)。
