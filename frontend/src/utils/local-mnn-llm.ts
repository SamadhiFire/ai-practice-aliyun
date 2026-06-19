/**
 * 本地 MNN Qwen 模型推理统一入口
 *
 * 本文件是前端 JS/TS 调用 Android 原生 MnnQwenPlugin 的桥接层。
 * 当运行在非 Android 原生环境（如 H5 / 小程序）时，自动降级为 Mock 实现，
 * 返回符合题目 JSON Schema 的固定数据，保证开发调试和测试链路不断。
 *
 * 比赛版 APK 中，此模块直接调用 Android 原生插件，走本地 CPU 推理。
 */

import type { ChatMessage, ChatCompletionOptions } from './llm'
import type { LocalMnnGenerateOptions, LocalMnnRuntimeStatus } from './llm-runtime-status'
import { createDefaultRuntimeStatus, MnnErrorCode } from './llm-runtime-status'

// ─── 环境检测 ────────────────────────────────────────────────

/** 检测当前是否为 Uni-app Android 原生环境，可以调用原生插件 */
function isNativeAndroidRuntime(): boolean {
  // #ifdef APP-PLUS
  try {
    const system = uni.getSystemInfoSync()
    return system.platform === 'android'
  } catch {
    return false
  }
  // #endif
  // eslint-disable-next-line no-unreachable
  return false
}

/** 尝试获取 MnnQwenPlugin 原生模块引用 */
function getNativeModule(): any | null {
  // #ifdef APP-PLUS
  try {
    return uni.requireNativePlugin('MnnQwenPlugin')
  } catch {
    return null
  }
  // #endif
  // eslint-disable-next-line no-unreachable
  return null
}

// ─── 运行时状态缓存 ──────────────────────────────────────────

let cachedRuntimeStatus: LocalMnnRuntimeStatus = createDefaultRuntimeStatus()

function toStringArray(value: unknown): string[] {
  if (!Array.isArray(value)) return []
  return value
    .map((item) => String(item ?? '').trim())
    .filter((item) => item.length > 0)
}

function toOptionalNumber(value: unknown): number | undefined {
  if (value === null || value === undefined || value === '') return undefined
  const numeric = Number(value)
  return Number.isFinite(numeric) ? numeric : undefined
}

function normalizeRuntimeStatus(result: any): LocalMnnRuntimeStatus {
  return {
    ...createDefaultRuntimeStatus(),
    available: result?.available !== false,
    modelLoaded: Boolean(result?.modelLoaded),
    modelName: String(result?.modelName || ''),
    modelPath: String(result?.modelPath || result?.modelDir || ''),
    backendType: result?.backendType === 'cpu' || result?.backendType === 'opencl'
      ? result.backendType
      : 'unknown',
    threadNum: Number(result?.threadNum || 0),
    sme2Supported: Boolean(result?.sme2Supported),
    sme2Enabled: Boolean(result?.sme2Enabled),
    lastPromptTokens: toOptionalNumber(result?.lastPromptTokens),
    lastOutputTokens: toOptionalNumber(result?.lastOutputTokens),
    lastLatencyMs: toOptionalNumber(result?.lastLatencyMs),
    lastTokensPerSecond: toOptionalNumber(result?.lastTokensPerSecond),
    firstTokenLatencyMs: toOptionalNumber(result?.firstTokenLatencyMs),
    defaultModelDir: result?.defaultModelDir ? String(result.defaultModelDir) : undefined,
    requiredFilesMissing: toStringArray(result?.requiredFilesMissing),
    requiredModelFiles: toStringArray(result?.requiredModelFiles),
    packagedAssetsReady: typeof result?.packagedAssetsReady === 'boolean'
      ? result.packagedAssetsReady
      : createDefaultRuntimeStatus().packagedAssetsReady,
    packagedAssetsMissing: toStringArray(result?.packagedAssetsMissing),
    assetsSyncedAtLoad: Boolean(result?.assetsSyncedAtLoad),
    errorCode: result?.errorCode ? String(result.errorCode) : undefined,
    error: result?.error ? String(result.error) : undefined,
  }
}

function updateCachedRuntimeStatus(result: any): LocalMnnRuntimeStatus {
  const status = normalizeRuntimeStatus(result)
  cachedRuntimeStatus = status
  return status
}

/**
 * 获取当前本地 MNN 模型运行时状态
 *
 * 如果在原生环境中，调用原生插件的 getRuntimeStatus；
 * 否则返回 Mock 状态。
 */
export async function getLocalMnnRuntimeStatus(): Promise<LocalMnnRuntimeStatus> {
  if (!isNativeAndroidRuntime()) {
    return {
      ...createDefaultRuntimeStatus(),
      available: false,
      error: MnnErrorCode.NOT_NATIVE_ENVIRONMENT,
    }
  }

  const nativeModule = getNativeModule()
  if (!nativeModule) {
    return {
      ...createDefaultRuntimeStatus(),
      available: false,
      error: MnnErrorCode.NATIVE_LIB_LOAD_FAILED,
    }
  }

  return new Promise<LocalMnnRuntimeStatus>((resolve) => {
    nativeModule.getRuntimeStatus((result: any) => {
      try {
        resolve(updateCachedRuntimeStatus(result))
      } catch {
        resolve({
          ...createDefaultRuntimeStatus(),
          available: true,
          errorCode: MnnErrorCode.UNKNOWN,
          error: MnnErrorCode.UNKNOWN,
        })
      }
    })
  })
}

/**
 * 加载本地 MNN 模型
 *
 * @param modelDir 可选，模型文件目录路径。默认读取 App 私有目录下的 models/qwen-mnn/
 */
export async function loadLocalMnnModel(modelDir?: string): Promise<LocalMnnRuntimeStatus> {
  if (!isNativeAndroidRuntime()) {
    return {
      ...createDefaultRuntimeStatus(),
      available: false,
      error: MnnErrorCode.NOT_NATIVE_ENVIRONMENT,
    }
  }

  const nativeModule = getNativeModule()
  if (!nativeModule) {
    return {
      ...createDefaultRuntimeStatus(),
      available: false,
      error: MnnErrorCode.NATIVE_LIB_LOAD_FAILED,
    }
  }

  return new Promise<LocalMnnRuntimeStatus>((resolve) => {
    nativeModule.loadModel(
      { modelDir: modelDir || '' },
      async (result: any) => {
        if (result.success) {
          const status = await getLocalMnnRuntimeStatus()
          const mergedStatus: LocalMnnRuntimeStatus = {
            ...status,
            assetsSyncedAtLoad: Boolean(result.assetsSyncedAtLoad) || Boolean(status.assetsSyncedAtLoad),
          }
          cachedRuntimeStatus = mergedStatus
          resolve(mergedStatus)
        } else {
          const status = updateCachedRuntimeStatus({
            ...result,
            available: result?.available !== false,
            modelLoaded: false,
            errorCode: result?.errorCode
              || (result?.packagedAssetsReady ? MnnErrorCode.MODEL_FILES_INCOMPLETE : MnnErrorCode.MODEL_ASSETS_NOT_PACKAGED),
            error: String(result?.error || MnnErrorCode.MODEL_INIT_FAILED),
          })
          resolve(status)
        }
      },
    )
  })
}

/**
 * 释放已加载的模型，回收内存
 */
export async function releaseLocalMnnModel(): Promise<void> {
  if (!isNativeAndroidRuntime()) return

  const nativeModule = getNativeModule()
  if (!nativeModule) return

  return new Promise<void>((resolve) => {
    nativeModule.releaseModel((result: any) => {
      void result
      cachedRuntimeStatus = createDefaultRuntimeStatus()
      resolve()
    })
  })
}

// ─── 核心推理接口 ────────────────────────────────────────────

/**
 * 将 ChatMessage[] 转换为 Qwen chat 格式的单一 prompt 字符串
 *
 * Qwen 的 chat template 通常为：
 * <|im_start|>system\n{system}<|im_end|>\n<|im_start|>user\n{user}<|im_end|>\n<|im_start|>assistant\n
 */
function buildQwenChatPrompt(messages: ChatMessage[]): string {
  const parts: string[] = []
  for (const msg of messages) {
    parts.push(`<|im_start|>${msg.role}\n${msg.content}<|im_end|>`)
  }
  parts.push('<|im_start|>assistant\n')
  return parts.join('\n')
}

/**
 * 本地 MNN 推理主方法
 *
 * 比赛版：调用 Android 原生插件，执行本地 CPU Qwen 推理。
 * 开发版：在非原生环境下返回 Mock JSON，确保前端链路可验证。
 */
export async function localMnnChatCompletion(
  messages: ChatMessage[],
  _config?: undefined,
  options?: ChatCompletionOptions,
): Promise<string> {
  // ── 非原生环境 → 返回 Mock JSON ──────────────────────
  if (!isNativeAndroidRuntime()) {
    return generateMockQuizJson()
  }

  const nativeModule = getNativeModule()
  if (!nativeModule) {
    throw new Error('MNN 原生插件加载失败，请检查 APK 是否已集成 MnnQwenPlugin')
  }

  const prompt = buildQwenChatPrompt(messages)
  const generateOptions: LocalMnnGenerateOptions = {
    maxNewTokens: options?.maxOutputTokens || 1024,
    temperature: options?.temperature || 0.2,
    topP: 0.8,
    stream: false,
  }

  return new Promise<string>((resolve, reject) => {
    nativeModule.generate(
      {
        prompt,
        maxNewTokens: generateOptions.maxNewTokens,
        temperature: generateOptions.temperature,
        topP: generateOptions.topP,
      },
      (result: any) => {
        if (result.success) {
          const text = String(result.text || '').trim()
          if (!text) {
            reject(new Error('本地模型输出为空，请重试'))
            return
          }
          const runtimePayload = result?.runtimeStatus && typeof result.runtimeStatus === 'object'
            ? { ...cachedRuntimeStatus, ...result.runtimeStatus, available: true, modelLoaded: true }
            : {
                ...cachedRuntimeStatus,
                available: true,
                modelLoaded: true,
                lastLatencyMs: result.latencyMs,
                lastTokensPerSecond: result.tokensPerSecond,
                lastOutputTokens: result.outputTokens,
                lastPromptTokens: result.promptTokens,
                firstTokenLatencyMs: result.firstTokenLatencyMs,
              }
          cachedRuntimeStatus = normalizeRuntimeStatus(runtimePayload)
          resolve(text)
        } else {
          const errorMsg = String(result.error || '本地推理失败')
          cachedRuntimeStatus = {
            ...cachedRuntimeStatus,
            errorCode: result?.errorCode ? String(result.errorCode) : cachedRuntimeStatus.errorCode || MnnErrorCode.UNKNOWN,
            error: errorMsg,
          }
          reject(new Error(errorMsg))
        }
      },
    )
  })
}

/**
 * 获取缓存的运行时状态（同步方法，不调用原生插件）
 */
export function getCachedRuntimeStatus(): LocalMnnRuntimeStatus {
  return { ...cachedRuntimeStatus }
}

/**
 * 检查本地 MNN 推理是否可用
 *
 * 比赛版默认使用本地推理。
 * 通过环境变量 VITE_LLM_RUNTIME 控制：
 * - 'local-mnn': 强制本地推理（比赛版默认）
 * - 'cloud': 强制云端 API
 * - 其他/未设置：自动检测，原生环境走本地，其他走云端
 */
export function isLocalMnnEnabled(): boolean {
  // @ts-expect-error -- Vite 环境变量在编译期注入
  const runtimeSetting = typeof import.meta !== 'undefined' && import.meta.env?.VITE_LLM_RUNTIME
  if (runtimeSetting === 'cloud') return false
  if (runtimeSetting === 'local-mnn') return true
  return isNativeAndroidRuntime()
}

// ─── Mock 数据（开发/测试用） ────────────────────────────────

/**
 * 生成 Mock 题目 JSON，格式与 Qwen 模型真实输出一致。
 * 用于 H5 / 小程序等非原生环境的开发调试。
 */
function generateMockQuizJson(): string {
  return JSON.stringify({
    keypoints: [
      {
        id: 'kp_0',
        title: '端侧推理基础概念',
        importance_score: 9,
        evidence_quote: 'MNN 框架支持在手机 CPU 上运行大语言模型推理',
      },
      {
        id: 'kp_1',
        title: 'ARM 指令集优化',
        importance_score: 8,
        evidence_quote: 'SME2 指令集可加速矩阵运算和 AI 推理任务',
      },
      {
        id: 'kp_2',
        title: '量化技术',
        importance_score: 7,
        evidence_quote: '4bit 量化可大幅减小模型体积，同时保持可接受的推理质量',
      },
    ],
    questions: [
      {
        id: 'q_mock_0',
        type: 'single',
        stem: '以下哪项是 MNN 框架在移动端部署大语言模型的主要优势？',
        tag: '端侧推理',
        options: [
          { key: 'A', text: '支持在手机 CPU 上高效运行 LLM 推理' },
          { key: 'B', text: '仅支持 GPU 推理模式' },
          { key: 'C', text: '需要持续联网才能工作' },
          { key: 'D', text: '只能在服务器端运行' },
        ],
        answer: 'A',
        explanation: 'MNN 框架专为移动端优化，支持在手机 CPU 上进行高效的本地推理。',
        evidence_quote: 'MNN 框架支持在手机 CPU 上运行大语言模型推理',
        keypoint_id: 'kp_0',
        difficulty: 'easy',
      },
      {
        id: 'q_mock_1',
        type: 'single',
        stem: 'ARM SME2 指令集主要用于加速什么类型的计算？',
        tag: 'ARM优化',
        options: [
          { key: 'A', text: '文件压缩和解压缩' },
          { key: 'B', text: '矩阵运算和 AI 推理任务' },
          { key: 'C', text: '网络数据传输' },
          { key: 'D', text: '图形界面渲染' },
        ],
        answer: 'B',
        explanation: 'SME2 指令集专门面向矩阵运算场景设计，可显著加速 AI 推理。',
        evidence_quote: 'SME2 指令集可加速矩阵运算和 AI 推理任务',
        keypoint_id: 'kp_1',
        difficulty: 'medium',
      },
      {
        id: 'q_mock_2',
        type: 'single',
        stem: '使用 4bit 量化技术对模型进行压缩的主要目的是什么？',
        tag: '量化技术',
        options: [
          { key: 'A', text: '提高模型的训练速度' },
          { key: 'B', text: '减小模型体积以便在移动设备上部署' },
          { key: 'C', text: '增加模型的参数量' },
          { key: 'D', text: '改善模型的网络通信能力' },
        ],
        answer: 'B',
        explanation: '4bit 量化大幅减小模型体积，使其能在手机等资源有限的设备上部署运行。',
        evidence_quote: '4bit 量化可大幅减小模型体积',
        keypoint_id: 'kp_2',
        difficulty: 'easy',
      },
    ],
  })
}
