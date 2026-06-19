# Android MNN 集成记录

本文档记录 MNN 框架在 Android 端的集成过程，包括 SO 库编译、JNI 接口设计、以及 Uni-app 原生插件的集成方式。

## 1. 架构概览

```text
┌─────────────────────────────────────────────────┐
│              Uni-app Vue 页面层                   │
│  index.vue / profile.vue / practice.vue          │
├─────────────────────────────────────────────────┤
│              TypeScript 桥接层                    │
│  local-mnn-llm.ts → uni.requireNativePlugin()   │
├─────────────────────────────────────────────────┤
│          Android Kotlin 层 (MnnQwenModule)       │
│  loadModel / generate / getRuntimeStatus         │
├─────────────────────────────────────────────────┤
│              JNI / C++ 层                        │
│  mnn_qwen_jni.cpp → MnnQwenRunner               │
├─────────────────────────────────────────────────┤
│              MNN LLM Runtime                     │
│  libMNN.so / libMNN_Express.so / libmnnllm.so   │
├─────────────────────────────────────────────────┤
│              ARM CPU (arm64-v8a)                 │
│  NEON / SVE / SME2 (视设备支持)                  │
└─────────────────────────────────────────────────┘
```

## 2. MNN SO 库编译

### 2.1 编译环境要求

- Android NDK r25+ (推荐 r26)
- CMake 3.18+
- 目标 ABI: arm64-v8a

### 2.2 交叉编译 MNN for Android

```bash
git clone https://github.com/alibaba/MNN.git
cd MNN
mkdir build_android && cd build_android

cmake .. \
  -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
  -DANDROID_ABI=arm64-v8a \
  -DANDROID_PLATFORM=android-24 \
  -DANDROID_STL=c++_shared \
  -DMNN_BUILD_FOR_ANDROID=ON \
  -DMNN_BUILD_LLM=ON \
  -DMNN_SEP_BUILD=OFF \
  -DMNN_USE_LOGCAT=ON \
  -DMNN_ARM82=ON \
  -DMNN_LOW_MEMORY=ON \
  -DCMAKE_BUILD_TYPE=Release

make -j$(nproc)
```

关键编译选项说明：

| 选项 | 作用 |
|------|------|
| MNN_BUILD_LLM=ON | 编译 LLM 推理模块 |
| MNN_USE_LOGCAT=ON | 将 MNN 日志输出到 Android logcat |
| MNN_ARM82=ON | 启用 ARMv8.2 扩展优化（含 fp16） |
| MNN_LOW_MEMORY=ON | 低内存模式，适合移动端 |

### 2.3 编译产物

编译完成后，关键产物：

```text
build_android/
├── libMNN.so
├── libMNN_Express.so
├── libmnnllm.so        # LLM 推理库
└── llm_demo            # 可选的测试 binary
```

将这些 SO 文件复制到插件的 jniLibs 目录：

```bash
cp libMNN.so libMNN_Express.so libmnnllm.so \
  /path/to/frontend/src/nativeplugins/MnnQwenPlugin/android/src/main/jniLibs/arm64-v8a/
```

## 3. Uni-app 原生插件规范

### 3.1 插件目录结构

```text
frontend/src/nativeplugins/MnnQwenPlugin/
├── package.json                    # 插件描述
├── android/
│   ├── build.gradle               # Android 构建配置
│   └── src/main/
│       ├── java/com/studyquiz/mnn/
│       │   └── MnnQwenModule.kt   # Kotlin 桥接层
│       ├── cpp/
│       │   ├── CMakeLists.txt     # CMake 配置
│       │   ├── MnnQwenRunner.h    # C++ Runner 头文件
│       │   ├── MnnQwenRunner.cpp  # C++ Runner 实现
│       │   └── mnn_qwen_jni.cpp   # JNI 桥接
│       └── jniLibs/arm64-v8a/
│           ├── libMNN.so
│           ├── libMNN_Express.so
│           └── libmnnllm.so
```

### 3.2 前端调用方式

```typescript
// 在 Uni-app 中通过 requireNativePlugin 获取模块引用
const mnnPlugin = uni.requireNativePlugin('MnnQwenPlugin')

// 加载模型
mnnPlugin.loadModel({ modelDir: '/path/to/model' }, (result) => {
  console.log(result.success, result.error)
})

// 推理
mnnPlugin.generate(
  { prompt: '<|im_start|>user\n你好<|im_end|>\n<|im_start|>assistant\n', maxNewTokens: 256 },
  (result) => {
    console.log(result.text, result.latencyMs, result.tokensPerSecond)
  }
)
```

## 4. SME2 指令集检测

### 4.1 检测方法

在 C++ 层通过读取 `/proc/cpuinfo` 来检测 ARM CPU 特性：

```cpp
bool detectSME2() {
    std::ifstream cpuinfo("/proc/cpuinfo");
    std::string line;
    while (std::getline(cpuinfo, line)) {
        if (line.find("Features") != std::string::npos) {
            // 检查是否包含 sme2 特性标志
            if (line.find("sme2") != std::string::npos) {
                return true;
            }
        }
    }
    return false;
}
```

### 4.2 MNN 对 SME2 的支持

MNN 会根据编译配置和运行时 CPU 特性自动选择最优计算路径：

1. **SME2 可用时**：使用 SME2 矩阵加速指令
2. **SVE/SVE2 可用时**：使用 SVE 向量指令优化
3. **NEON 可用时**（默认兜底）：使用 ARM NEON SIMD 指令

### 4.3 设备兼容性

| 处理器 | 架构 | SME2 支持 |
|--------|------|-----------|
| 骁龙 8+ Gen 1 (P60) | ARMv9.0 | ❌ 不支持 |
| 骁龙 8 Gen 3 | ARMv9.2 | ✅ 支持 |
| 天玑 9300 | ARMv9.2 | ✅ 支持 |
| 骁龙 8 Elite | ARMv9.2+ | ✅ 支持 |

## 5. 调试技巧

### 5.1 查看 MNN logcat 日志

```bash
adb logcat -s MnnQwen:V MNN:V
```

### 5.2 检查模型加载

```bash
adb logcat | grep -E "(MnnQwen|MNN|LLM)"
```

### 5.3 检查 CPU 特性

```bash
adb shell cat /proc/cpuinfo | grep Features
```

### 5.4 内存监控

```bash
adb shell dumpsys meminfo <package-name>
```

## 6. 常见问题

### Q: SO 库加载失败 (UnsatisfiedLinkError)

A: 确认以下几点：
1. SO 文件放在了正确的 `jniLibs/arm64-v8a/` 目录
2. 使用的 NDK STL 是 `c++_shared`，需要同时包含 `libc++_shared.so`
3. `build.gradle` 中 abiFilters 只包含 `arm64-v8a`

### Q: 模型加载时 OOM

A: 0.5B 4-bit 模型运行时约需 500MB 内存。如果出现 OOM：
1. 检查 `config.json` 中 `memory` 设为 `low`
2. 减少 `thread_num`
3. 确认没有其他大内存应用在后台

### Q: 推理速度过慢

A: 参考优化：
1. 调高 `thread_num`（但不要超过大核数量）
2. 确认 `precision` 设为 `low`
3. 缩短 prompt 长度
4. 减少 `max_new_tokens`
