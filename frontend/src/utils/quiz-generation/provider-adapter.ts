import { chatCompletion, type ChatCompletionOptions, type ChatMessage } from '../llm'
import { isLocalMnnEnabled, localMnnChatCompletion } from '../local-mnn-llm'
import { parseModelJson } from './parser-validator'

export interface JsonPromptRequest {
  messages: ChatMessage[]
  options?: ChatCompletionOptions
}

export interface ProviderJsonCompletion {
  rawText: string
  payload: unknown
}

export interface QuizGenerationProviderAdapter {
  completeJson(request: JsonPromptRequest): Promise<ProviderJsonCompletion>
}

/**
 * 解析默认 transport：
 * - 比赛版 / Android 原生环境 → localMnnChatCompletion（本地 CPU 推理）
 * - 开发版 / H5 / 小程序 → chatCompletion（云端 API）
 */
function resolveDefaultTransport(): (
  messages: ChatMessage[],
  config?: undefined,
  options?: ChatCompletionOptions,
) => Promise<string> {
  if (isLocalMnnEnabled()) {
    return localMnnChatCompletion
  }
  return chatCompletion
}

export function createQuizGenerationProviderAdapter(
  transport?: (
    messages: ChatMessage[],
    config?: undefined,
    options?: ChatCompletionOptions,
  ) => Promise<string>,
): QuizGenerationProviderAdapter {
  const resolvedTransport = transport || resolveDefaultTransport()
  return {
    async completeJson(request: JsonPromptRequest): Promise<ProviderJsonCompletion> {
      const rawText = await resolvedTransport(request.messages, undefined, request.options)
      return {
        rawText,
        payload: parseModelJson(rawText),
      }
    },
  }
}
