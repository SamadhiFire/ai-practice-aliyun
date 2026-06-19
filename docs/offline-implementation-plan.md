# Qwen + MNN 端侧离线实现计划

## 1. 目的

本文档用于指导当前仓库从“已有前端改造和插件骨架”推进到“真正可演示的本地端侧 CPU 推理版本”。

本轮目标不是一次性做完整比赛版，而是先用便宜的小模型跑通第一版闭环，再逐步补齐 SME2、APK 交付和比赛证据链。

---

## 2. 当前仓库现状

### 2.1 已经具备的部分

1. 已有完整的产品前端页面和题库/练习闭环。
2. 已有本地模式环境开关：
   - `frontend/.env.local`
   - `VITE_LLM_RUNTIME=local-mnn`
3. 已有本地推理前端桥接代码：
   - `frontend/src/utils/local-mnn-llm.ts`
   - `frontend/src/utils/llm-runtime-status.ts`
4. 已有 MNN 状态页和测试入口：
   - `frontend/src/pages/profile/index.vue`
5. 已有原生插件骨架：
   - `frontend/nativeplugins/MnnQwenPlugin/...`
   - `frontend/src/nativeplugins/MnnQwenPlugin/...`
6. 已有 MNN/Qwen 改造文档：
   - `docs/mnn-qwen-mobile-refactor-plan.md`
   - `docs/android-mnn-integration.md`
   - `docs/mnn-model-conversion.md`
   - `docs/demo-script-mnn-qwen.md`
7. 前端基线可继续施工：
   - `npm.cmd run type-check` 通过
   - `npm.cmd run validate:generation` 通过

### 2.2 当前还没有真正打通的部分

1. 原生插件仍是占位实现，尚未接入真实 MNN LLM runtime。
2. `jniLibs/arm64-v8a` 目录下还没有真实的 MNN `.so` 文件。
3. `models/` 中目前是原始 HuggingFace 模型，不是 MNN 运行时格式。
4. 首页“开始出题”主流程仍通过后端 `/questions/generate` 发起，不是前端直连本地模型。
5. 后端当前仍调用远程 provider，不满足比赛版“本地端侧主链路”要求。
6. SME2 目前只有编译参数和状态占位，没有真实运行时证据。

### 2.3 当前最关键的真实差距

当前项目已经做到：

```text
前端知道要走 local-mnn
  -> Profile 页能显示 MNN 状态区
  -> 插件目录和 C++/JNI 骨架已存在
```

但还没有做到：

```text
首页点击出题
  -> 直接调用 Android Native Plugin
  -> 插件调用真实 MNN LLM
  -> 加载本地 Qwen MNN 模型
  -> 本地 CPU 推理
  -> 返回 JSON
  -> 前端解析并进入练习页
```

---

## 3. 本轮实施目标

### 3.1 第一轮目标

先做一个“小模型跑通版”，要求如下：

1. 使用 Qwen 小模型。
2. 使用 MNN 格式模型。
3. 在 Android 设备上本地 CPU 推理。
4. 断网可运行。
5. 首页输入材料后可本地出题。
6. 题目能进入练习页和本地题库。

### 3.2 第一轮推荐模型

优先使用：

- `Qwen2.5-0.5B-Instruct`

推荐原因：

1. 体积相对最小。
2. 推理成本最低。
3. 最适合先验证“本地 MNN 端到端链路”。
4. 失败成本低，方便快速迭代 prompt 和 JSON 输出策略。

如 0.5B 明显不稳定，再尝试：

- `Qwen3-0.6B`

### 3.3 第一轮建议配置

```json
{
  "backend_type": "cpu",
  "thread_num": 4,
  "precision": "low",
  "memory": "low",
  "temperature": 0.2,
  "topP": 0.8,
  "max_new_tokens": 512,
  "reuse_kv": true
}
```

首轮出题参数建议：

1. 材料长度控制在 `800-1200` 中文字。
2. 每次题量先固定为 `3` 题。
3. 先只做 `single` 单选。
4. 默认 `modeA`。

---

## 4. 本轮不追求的内容

第一轮先不追求以下内容：

1. 不追求完整比赛最终版 UI。
2. 不追求大模型效果。
3. 不追求首轮就启用 SME2。
4. 不追求首轮就做模型打包进 APK。
5. 不追求首轮保留所有后端同步能力。
6. 不追求首轮保留 API Key 配置体验。

---

## 5. 分阶段实施计划

## 阶段 0：整理基线

### 目标

保证后续开发只有一套插件实现路径，避免打包时出现目录冲突。

### 任务

1. 确认最终只保留一套插件目录：
   - `frontend/nativeplugins/MnnQwenPlugin`
   - 或 `frontend/src/nativeplugins/MnnQwenPlugin`
2. 统一以下引用：
   - `manifest.json`
   - 原生插件 `package.json`
   - `build.gradle`
   - `CMakeLists.txt`
3. 确认之后的 JNI、so、模型目录都使用同一套路径。

### 验收标准

1. 目录不再双份存在。
2. 前端类型检查仍通过。
3. 现有 generation fixture 仍通过。

---

## 阶段 1：先在 PC 上跑通便宜模型

### 目标

先验证模型转换、JSON 输出和 prompt 约束是否可行。

### 任务

1. 完整准备 `deps/MNN`。
2. 编译 MNN 的 LLM/export 能力。
3. 下载 `Qwen2.5-0.5B-Instruct`。
4. 使用 `llmexport.py` 转换为 MNN 4bit。
5. 在 PC 上用 `llm_demo` 验证：
   - 普通问答返回正常
   - 只输出 JSON 的 prompt 返回合法 JSON

### 预期产物

模型目录至少包含：

```text
config.json
llm_config.json
llm.mnn
llm.mnn.weight
tokenizer.mtok
embeddings_bf16.bin   # 如导出需要
```

### 验收标准

1. PC 上能加载模型。
2. 输入“请回复 OK”能返回文本。
3. 输入“只输出 JSON”能返回可解析 JSON。

### 第一优先命令路线

```bash
git clone https://github.com/alibaba/MNN.git
cd MNN
mkdir build && cd build
cmake .. -DMNN_BUILD_CONVERTER=ON -DMNN_BUILD_LLM=ON -DMNN_SEP_BUILD=OFF -DCMAKE_BUILD_TYPE=Release
make -j8
```

```bash
cd MNN/transformers/llm/export
python llmexport.py \
  --path /path/to/Qwen2.5-0.5B-Instruct \
  --export mnn \
  --quant_bit 4 \
  --quant_block 128 \
  --hqq
```

---

## 阶段 2：接通 Android 原生 MNN Runtime

### 目标

让原生插件不再返回占位错误，而是能真正加载 `.so` 和模型。

### 任务

1. 编译 Android `arm64-v8a` 的 MNN 运行库。
2. 产出并接入以下库：
   - `libMNN.so`
   - `libMNN_Express.so`
   - `libmnnllm.so`
   - `libc++_shared.so`
3. 放入插件 `jniLibs/arm64-v8a/`。
4. 在 `MnnQwenRunner.cpp` 中启用真实 MNN include 和调用逻辑。
5. 实现真实的：
   - `load(configPath)`
   - `generate(prompt, options)`
   - `status()`
   - `release()`

### 验收标准

1. App 中 `loadModel` 成功。
2. App 中测试 prompt 可返回文本。
3. `getRuntimeStatus` 返回真实字段：
   - `modelLoaded`
   - `modelName`
   - `modelPath`
   - `backendType`
   - `threadNum`

---

## 阶段 3：把首页出题主流程切到本地

### 目标

首页点击出题时，不再依赖后端 `/questions/generate`。

### 当前问题

目前首页主流程仍然是：

```text
index.vue
  -> startPracticeGeneration(...)
  -> practice-generation-service.ts
  -> createQuestionsGenerationJobInBackend(...)
  -> backend /questions/generate
  -> backend 再调远程 provider
```

这条链路不符合端侧离线比赛要求。

### 改造方向

改为：

```text
index.vue
  -> runLocalQuizGenerationPipeline(...)
  -> localMnnChatCompletion(...)
  -> Native Plugin
  -> MNN LLM
  -> 返回 JSON
  -> 前端本地写入 practice session / question bank
  -> 跳转练习页
```

### 任务

1. 改造首页生成按钮调用链。
2. 直接接 `frontend/src/utils/pipeline.ts`。
3. 将生成结果本地写入：
   - 当前练习 session
   - 本地题库
4. 保留现有：
   - JSON repair
   - fallback questions
   - parser-validator
5. 本地模式下禁用后端生成入口。

### 验收标准

1. 首页输入材料后可直接本地生成。
2. 自动跳转到练习页。
3. 题目可进入题库。
4. 飞行模式或断网情况下可运行。

---

## 阶段 4：优化端侧 prompt 和失败恢复

### 目标

降低小模型的 JSON 失败率。

### 任务

1. 严格控制材料长度。
2. 题量先限制为 3 题。
3. 减少系统提示中的解释性文字。
4. 强化“只输出 JSON”的约束。
5. 保留并继续使用：
   - `completeJsonWithRepair`
   - `fallbackQuestions`
   - `normalizeQuestions`

### 验收标准

1. 连续多次本地出题时 JSON 成功率足够高。
2. 即使模型输出异常，也能靠 repair/fallback 保住闭环。

---

## 阶段 5：做端侧状态页和演示页

### 目标

让评委或测试人员能确认当前就是本地 CPU 推理。

### 任务

1. 完善 Profile 页状态展示。
2. 展示以下字段：
   - 模型名
   - 模型路径
   - backend type
   - thread number
   - 最近一次 latency
   - output tokens
   - tokens/s
   - first token latency
   - SME2 support
   - SME2 enabled
3. 保留 logcat 关键日志。

### 验收标准

1. 页面能看见真实推理指标。
2. 日志能证明模型被加载和执行。

---

## 阶段 6：补 SME2 和比赛版收尾

### 目标

在主链路跑通后，再补齐比赛要求中的 SME2 证据链。

### 任务

1. 使用支持 SME2 的 Android 设备验证。
2. 重新确认 MNN 编译参数。
3. 将 `sme2Supported` 和 `sme2Enabled` 从占位值改为真实状态。
4. 留存：
   - logcat
   - 页面截图
   - 设备 CPU feature 记录

### 风险说明

如果当前测试设备本身不支持 SME2，则无法真实展示“SME2 enabled=true”。

此时只能展示：

```text
设备不支持 SME2
当前仍使用 MNN CPU ARM 优化路径
```

如果比赛强制要求 SME2，必须尽早准备支持 SME2 的设备。

---

## 6. 推荐执行顺序

建议按以下顺序推进，不要一口气大改：

1. 统一插件目录。
2. 先在 PC 上把 `Qwen2.5-0.5B-Instruct` 转 MNN 并跑通。
3. 再接 Android `load/generate/status`。
4. 再把首页主流程切到本地 pipeline。
5. 最后补 SME2 和比赛版交付。

这样做的原因是：

1. 先验证模型是否适合当前 prompt。
2. 先验证 MNN runtime 是否能正常加载。
3. 把问题拆成“模型问题”和“Android 集成问题”，避免混在一起。

---

## 7. 第一轮验收里程碑

### 里程碑 A：模型转换成功

完成标准：

1. `Qwen2.5-0.5B-Instruct` 转为 MNN 4bit。
2. PC 端 `llm_demo` 可返回文本。
3. PC 端 `llm_demo` 可输出合法 JSON。

### 里程碑 B：Android 本地推理成功

完成标准：

1. Profile 页能加载模型。
2. 输入“请回复 OK”能返回文本。
3. 断网状态下依旧可运行。

### 里程碑 C：首页本地出题闭环成功

完成标准：

1. 首页输入材料后可本地生成 3 题。
2. 自动跳转练习页。
3. 题目可沉淀到本地题库。

### 里程碑 D：比赛证据链可展示

完成标准：

1. 页面显示本地模型和 CPU backend。
2. 有最近一次推理 latency 和 tokens/s。
3. 能演示断网出题。

---

## 8. 第一轮建议结论

第一轮最合理的目标不是“完整比赛终版”，而是：

```text
Qwen2.5-0.5B-Instruct
  -> 转成 MNN 4bit
  -> 先 PC 跑通
  -> 再 Android 插件跑通
  -> 最后接首页本地出题主流程
```

只要先完成这个闭环，后续再切更强模型、补 SME2、优化 UI、打 release APK 都会容易很多。

---

## 9. 后续可直接继续的开发任务

建议紧接着做的两个任务：

1. 清理并统一 `MnnQwenPlugin` 目录，只保留一套。
2. 开始准备 `Qwen2.5-0.5B-Instruct -> MNN 4bit` 的模型转换环境。

