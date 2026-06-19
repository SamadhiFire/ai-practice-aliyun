# Android 端侧运行手册

目标：在 Android ARM64 设备上通过 Qwen + MNN 进行本地 CPU 推理，并启用 Arm SME2 内核。

## 当前状态

截至 2026-06-19，以下步骤已经完成并验证：

- Qwen2.5-0.5B-Instruct 已转换为 MNN 4bit。
- `llm.mnn.weight` 大小约 250.7 MB，模型文件完整。
- Android NDK r27d、Clang 18 和 Ninja 可用。
- `libMNN.so` 已按 `arm64-v8a` 编译，包含 Express、LLM 和 SME2 内核。
- `libmnn_qwen_jni.so` 已完成独立交叉编译和链接验证。
- 模型已放入插件的 `assets/models/qwen-mnn`。
- MNN、JNI 和 `libc++_shared.so` 已放入插件的 `jniLibs/arm64-v8a`。

SME2 验证不是只看编译参数：`libMNN.so` 的动态符号中已经确认存在多组 `sme2_mopa`、`sme2_dot` 内核，同时 `Llm::createLLM` 可导出。

## 可重复执行的原生构建

```powershell
cd D:\桌面\AGithub\ai-practice-aliyun\deps

.\build_mnn_android.ps1 `
  -NdkPath "D:\Users\32530\Downloads\android-ndk-r27d-windows\android-ndk-r27d"

.\stage_mnn_android_assets.ps1 -CleanTarget
```

不要传入 `-DisableSme2`，否则会关闭 SME2 构建。

## 现在唯一的主阻塞

当前仓库是 `uni-app + 本地原生插件`，但不包含可直接运行 `assembleDebug` 的 Android App 宿主工程和 Gradle wrapper。当前机器的常见安装目录中也没有检测到 HBuilderX。

因此下一步需要手动安装：

1. HBuilderX。
2. HBuilderX 中的 uni-app Android/App 打包相关组件。
3. 如采用本地离线打包，还需要对应版本的 App 离线 SDK；它提供编译 `UniModule` 所需的 DCloud Android SDK。

安装完成后，把 HBuilderX 的实际安装目录告诉 Codex。后续可以继续完成：

1. 为 `MnnQwenPlugin` 建立可重复的 Gradle/AAR 构建。
2. 将 AAR 注册为 uni-app 本地原生插件。
3. 生成并安装 arm64 APK。
4. 通过 `adb logcat` 验证模型加载和 SME2 运行状态。

## 真机要求

- Android 设备必须是 `arm64-v8a`。
- CPU 和内核必须真实支持 SME2；仅成功编译不代表设备支持。
- 当前构建面向 SME2 设备，不应安装到不支持 SME2 的手机上。
- 模型和原生库会显著增大 APK，打包工具需要允许大 assets。

真机日志命令：

```powershell
adb logcat -s MnnQwenModule:V MnnQwenRunner:V MnnQwenJNI:V MNNJNI:V
```

完成标准是：断网后仍能加载模型并生成文本，运行状态显示 Android 原生 MNN CPU，且设备检测结果为 SME2 supported/enabled。
