/**
 * Runtime status definitions for the local MNN + Qwen inference path.
 */

export interface LocalMnnGenerateOptions {
  maxNewTokens?: number
  temperature?: number
  topP?: number
  stream?: boolean
}

export interface LocalMnnRuntimeStatus {
  available: boolean
  modelLoaded: boolean
  modelName: string
  modelPath: string
  backendType: 'cpu' | 'opencl' | 'unknown'
  threadNum: number
  sme2Supported: boolean
  sme2Enabled: boolean
  lastPromptTokens?: number
  lastOutputTokens?: number
  lastLatencyMs?: number
  lastTokensPerSecond?: number
  firstTokenLatencyMs?: number
  defaultModelDir?: string
  requiredFilesMissing?: string[]
  requiredModelFiles?: string[]
  packagedAssetsReady?: boolean
  packagedAssetsMissing?: string[]
  assetsSyncedAtLoad?: boolean
  errorCode?: string
  error?: string
}

export enum MnnErrorCode {
  MODEL_FILE_NOT_FOUND = 'MODEL_FILE_NOT_FOUND',
  MODEL_ASSETS_NOT_PACKAGED = 'MODEL_ASSETS_NOT_PACKAGED',
  MODEL_FILES_INCOMPLETE = 'MODEL_FILES_INCOMPLETE',
  NATIVE_LIB_LOAD_FAILED = 'NATIVE_LIB_LOAD_FAILED',
  CONFIG_PARSE_FAILED = 'CONFIG_PARSE_FAILED',
  MODEL_INIT_FAILED = 'MODEL_INIT_FAILED',
  INFERENCE_TIMEOUT = 'INFERENCE_TIMEOUT',
  EMPTY_OUTPUT = 'EMPTY_OUTPUT',
  NOT_NATIVE_ENVIRONMENT = 'NOT_NATIVE_ENVIRONMENT',
  UNKNOWN = 'UNKNOWN',
}

export function createDefaultRuntimeStatus(): LocalMnnRuntimeStatus {
  return {
    available: false,
    modelLoaded: false,
    modelName: '',
    modelPath: '',
    backendType: 'unknown',
    threadNum: 0,
    sme2Supported: false,
    sme2Enabled: false,
    requiredFilesMissing: [],
    requiredModelFiles: [],
    packagedAssetsMissing: [],
    packagedAssetsReady: false,
    assetsSyncedAtLoad: false,
  }
}
