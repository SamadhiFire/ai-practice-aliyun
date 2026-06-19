package com.studyquiz.mnn

import android.content.Context
import android.content.res.AssetManager
import android.util.Log
import io.dcloud.feature.uniapp.annotation.UniJSMethod
import io.dcloud.feature.uniapp.bridge.UniJSCallback
import io.dcloud.feature.uniapp.common.UniModule
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream

/**
 * Uni-app native module that bridges the JS layer to the local MNN Qwen runtime.
 *
 * The module supports two model locations:
 * 1. A caller-supplied directory via `modelDir`
 * 2. The default app-private directory under files/models/qwen-mnn
 *
 * For the default directory, packaged assets from
 * src/main/assets/models/qwen-mnn/ will be copied into filesDir on demand.
 */
class MnnQwenModule : UniModule() {

    companion object {
        private const val TAG = "MnnQwenModule"
        private const val DEFAULT_MODEL_SUBDIR = "models/qwen-mnn"
        private const val PACKAGED_MODEL_ASSET_DIR = "models/qwen-mnn"
        private const val JNI_LIB_NAME = "mnn_qwen_jni"

        private val REQUIRED_MODEL_FILES = listOf(
            "config.json",
            "llm_config.json",
            "llm.mnn",
            "llm.mnn.weight",
            "tokenizer.mtok",
        )

        private var nativeLibsLoaded = false

        @Synchronized
        fun ensureNativeLibs() {
            if (nativeLibsLoaded) return
            try {
                System.loadLibrary("MNN")
                System.loadLibrary(JNI_LIB_NAME)
                nativeLibsLoaded = true
                Log.i(TAG, "Native libraries loaded successfully")
            } catch (e: UnsatisfiedLinkError) {
                Log.e(TAG, "Failed to load native libraries: ${e.message}", e)
                throw e
            }
        }
    }

    private data class ModelDirectoryState(
        val modelDir: File,
        val defaultModelDir: File,
        val packagedAssetsReady: Boolean,
        val packagedAssetsMissing: List<String>,
        val requiredFilesMissing: List<String>,
        val assetsSyncedAtLoad: Boolean = false,
    )

    private external fun nativeInit(): Boolean
    private external fun nativeLoadModel(configPath: String): Boolean
    private external fun nativeGenerate(
        prompt: String,
        maxTokens: Int,
        temperature: Float,
        topP: Float,
    ): String

    private external fun nativeGetStatus(): String
    private external fun nativeRelease()
    private external fun nativeDetectSME2(): Boolean

    @Volatile
    private var modelLoaded = false

    private fun requireContext(): Context {
        return mUniSDKInstance?.context
            ?: throw IllegalStateException("Context unavailable: the module is not attached yet")
    }

    private fun defaultModelDir(context: Context): File {
        return File(context.filesDir, DEFAULT_MODEL_SUBDIR)
    }

    private fun resolveModelDir(options: JSONObject?, context: Context): File {
        val explicit = options?.optString("modelDir", "")?.trim().orEmpty()
        if (explicit.isNotBlank()) {
            return File(explicit)
        }
        return defaultModelDir(context)
    }

    private fun listMissingModelFiles(modelDir: File): List<String> {
        return REQUIRED_MODEL_FILES.filter { fileName ->
            val file = File(modelDir, fileName)
            !file.isFile || file.length() <= 0L
        }
    }

    private fun listPackagedAssetFiles(assetManager: AssetManager): Set<String> {
        val files = linkedSetOf<String>()
        collectAssetLeafPaths(assetManager, PACKAGED_MODEL_ASSET_DIR, "", files)
        return files
    }

    private fun collectAssetLeafPaths(
        assetManager: AssetManager,
        assetPath: String,
        relativePath: String,
        sink: MutableSet<String>,
    ) {
        val children = assetManager.list(assetPath) ?: emptyArray()
        if (children.isEmpty()) {
            if (relativePath.isNotBlank()) {
                sink += relativePath
            }
            return
        }

        for (child in children) {
            val childAssetPath = "$assetPath/$child"
            val childRelativePath = if (relativePath.isBlank()) child else "$relativePath/$child"
            collectAssetLeafPaths(assetManager, childAssetPath, childRelativePath, sink)
        }
    }

    private fun inspectModelDirectory(context: Context, modelDir: File): ModelDirectoryState {
        val packagedFiles = listPackagedAssetFiles(context.assets)
        val packagedAssetsMissing = REQUIRED_MODEL_FILES.filter { it !in packagedFiles }
        return ModelDirectoryState(
            modelDir = modelDir,
            defaultModelDir = defaultModelDir(context),
            packagedAssetsReady = packagedAssetsMissing.isEmpty(),
            packagedAssetsMissing = packagedAssetsMissing,
            requiredFilesMissing = listMissingModelFiles(modelDir),
        )
    }

    private fun stagePackagedAssetsIfNeeded(
        context: Context,
        modelDir: File,
        syncFromAssets: Boolean,
    ): ModelDirectoryState {
        var state = inspectModelDirectory(context, modelDir)
        val isDefaultTarget = modelDir.absolutePath == state.defaultModelDir.absolutePath
        val shouldSync = syncFromAssets && isDefaultTarget && state.packagedAssetsReady && state.requiredFilesMissing.isNotEmpty()

        if (!shouldSync) {
            return state
        }

        syncPackagedAssets(context.assets, modelDir)
        state = inspectModelDirectory(context, modelDir)
        return state.copy(assetsSyncedAtLoad = true)
    }

    private fun syncPackagedAssets(assetManager: AssetManager, modelDir: File) {
        val packagedFiles = listPackagedAssetFiles(assetManager)
        if (packagedFiles.isEmpty()) {
            return
        }

        modelDir.mkdirs()
        for (relativePath in packagedFiles) {
            val sourceAssetPath = "$PACKAGED_MODEL_ASSET_DIR/$relativePath"
            val targetFile = File(modelDir, relativePath)
            targetFile.parentFile?.mkdirs()
            assetManager.open(sourceAssetPath).use { input ->
                FileOutputStream(targetFile).use { output ->
                    input.copyTo(output)
                }
            }
        }
        Log.i(TAG, "Packaged model assets synced to ${modelDir.absolutePath}")
    }

    private fun toJsonArray(items: List<String>): JSONArray {
        return JSONArray().apply {
            items.forEach { put(it) }
        }
    }

    private fun appendModelDirectoryState(target: JSONObject, state: ModelDirectoryState) {
        target.put("modelDir", state.modelDir.absolutePath)
        target.put("defaultModelDir", state.defaultModelDir.absolutePath)
        target.put("packagedAssetsReady", state.packagedAssetsReady)
        target.put("packagedAssetsMissing", toJsonArray(state.packagedAssetsMissing))
        target.put("requiredModelFiles", toJsonArray(REQUIRED_MODEL_FILES))
        target.put("requiredFilesMissing", toJsonArray(state.requiredFilesMissing))
        target.put("assetsSyncedAtLoad", state.assetsSyncedAtLoad)
    }

    private fun safeNativeStatusJson(): JSONObject? {
        return try {
            JSONObject(nativeGetStatus())
        } catch (e: Exception) {
            Log.w(TAG, "Failed to parse native status JSON: ${e.message}")
            null
        }
    }

    private fun appendRuntimeMetrics(target: JSONObject, status: JSONObject?) {
        if (status == null) return
        val latencyMs = status.optDouble("lastLatencyMs", Double.NaN)
        val tokensPerSecond = status.optDouble("lastTokensPerSecond", Double.NaN)
        val outputTokens = status.optInt("lastOutputTokens", -1)
        val promptTokens = status.optInt("lastPromptTokens", -1)
        val firstTokenLatencyMs = status.optDouble("firstTokenLatencyMs", Double.NaN)

        if (!latencyMs.isNaN()) target.put("latencyMs", latencyMs)
        if (!tokensPerSecond.isNaN()) target.put("tokensPerSecond", tokensPerSecond)
        if (outputTokens >= 0) target.put("outputTokens", outputTokens)
        if (promptTokens >= 0) target.put("promptTokens", promptTokens)
        if (!firstTokenLatencyMs.isNaN()) target.put("firstTokenLatencyMs", firstTokenLatencyMs)
    }

    private fun buildMissingFilesError(state: ModelDirectoryState): String {
        return if (!state.packagedAssetsReady) {
            "Packaged model assets are incomplete. Run deps/stage_mnn_android_assets.ps1 before building the APK."
        } else {
            "Model files are incomplete under ${state.modelDir.absolutePath}: ${state.requiredFilesMissing.joinToString(", ")}"
        }
    }

    private fun errorResult(message: String, code: String? = null, extras: JSONObject? = null): JSONObject {
        return JSONObject().apply {
            put("success", false)
            put("error", message)
            if (!code.isNullOrBlank()) {
                put("errorCode", code)
            }
            if (extras != null) {
                val keys = extras.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    put(key, extras.get(key))
                }
            }
        }
    }

    @UniJSMethod(uiThread = false)
    fun loadModel(options: JSONObject?, callback: UniJSCallback?) {
        try {
            ensureNativeLibs()
            if (!nativeInit()) {
                callback?.invoke(errorResult("Native runtime init failed", "MODEL_INIT_FAILED"))
                return
            }

            val context = requireContext()
            val modelDir = resolveModelDir(options, context)
            val syncFromAssets = options?.optBoolean("syncFromAssets", true) ?: true
            val state = stagePackagedAssetsIfNeeded(context, modelDir, syncFromAssets)
            val diagnostics = JSONObject().apply { appendModelDirectoryState(this, state) }

            if (state.requiredFilesMissing.isNotEmpty()) {
                modelLoaded = false
                callback?.invoke(
                    errorResult(
                        buildMissingFilesError(state),
                        if (state.packagedAssetsReady) "MODEL_FILE_NOT_FOUND" else "MODEL_ASSETS_NOT_PACKAGED",
                        diagnostics,
                    ),
                )
                return
            }

            val configPath = File(modelDir, "config.json").absolutePath
            Log.i(TAG, "loadModel: configPath=$configPath")

            val ok = nativeLoadModel(configPath)
            modelLoaded = ok

            val nativeStatus = safeNativeStatusJson()
            val result = JSONObject().apply {
                put("success", ok)
                put("sme2Detected", nativeDetectSME2())
                appendModelDirectoryState(this, state)
                if (nativeStatus != null) {
                    put("runtimeStatus", nativeStatus)
                }
                if (!ok) {
                    put("errorCode", "MODEL_INIT_FAILED")
                    put("error", nativeStatus?.optString("error").takeUnless { it.isNullOrBlank() } ?: "Native load returned false")
                }
            }
            callback?.invoke(result)
        } catch (e: Exception) {
            Log.e(TAG, "loadModel error", e)
            callback?.invoke(errorResult("loadModel failed: ${e.message}", "MODEL_INIT_FAILED"))
        }
    }

    @UniJSMethod(uiThread = false)
    fun generate(options: JSONObject?, callback: UniJSCallback?) {
        try {
            if (!modelLoaded) {
                callback?.invoke(errorResult("Model not loaded. Call loadModel first.", "MODEL_INIT_FAILED"))
                return
            }

            val prompt = options?.optString("prompt", "") ?: ""
            if (prompt.isBlank()) {
                callback?.invoke(errorResult("prompt is required", "EMPTY_OUTPUT"))
                return
            }

            val maxTokens = options?.optInt("maxNewTokens", 512) ?: 512
            val temperature = options?.optDouble("temperature", 0.2)?.toFloat() ?: 0.2f
            val topP = options?.optDouble("topP", 0.8)?.toFloat() ?: 0.8f

            Log.i(TAG, "generate: promptLen=${prompt.length}, maxTokens=$maxTokens")
            val rawText = nativeGenerate(prompt, maxTokens, temperature, topP)
            val nativeStatus = safeNativeStatusJson()

            val result = JSONObject().apply {
                if (rawText.startsWith("ERROR:")) {
                    put("success", false)
                    put("error", rawText.removePrefix("ERROR:").trim())
                } else {
                    put("success", true)
                    put("text", rawText)
                    appendRuntimeMetrics(this, nativeStatus)
                }
                if (nativeStatus != null) {
                    put("runtimeStatus", nativeStatus)
                }
            }
            callback?.invoke(result)
        } catch (e: Exception) {
            Log.e(TAG, "generate error", e)
            callback?.invoke(errorResult("generate failed: ${e.message}", "UNKNOWN"))
        }
    }

    @UniJSMethod(uiThread = false)
    fun getRuntimeStatus(callback: UniJSCallback?) {
        try {
            ensureNativeLibs()

            val context = requireContext()
            val nativeStatus = safeNativeStatusJson()
            val inspectedModelDir = nativeStatus
                ?.optString("modelPath", "")
                ?.trim()
                ?.takeIf { it.isNotBlank() }
                ?.let { File(it).parentFile }
                ?: defaultModelDir(context)
            val state = inspectModelDirectory(context, inspectedModelDir)

            val result = JSONObject().apply {
                put("available", true)
                put("modelLoaded", modelLoaded)
                put("sme2Detected", nativeDetectSME2())
                appendModelDirectoryState(this, state)
                if (nativeStatus != null) {
                    val keys = nativeStatus.keys()
                    while (keys.hasNext()) {
                        val key = keys.next()
                        put(key, nativeStatus.get(key))
                    }
                }
            }
            callback?.invoke(result)
        } catch (e: Exception) {
            Log.e(TAG, "getRuntimeStatus error", e)
            callback?.invoke(
                JSONObject().apply {
                    put("available", false)
                    put("modelLoaded", false)
                    put("error", "getRuntimeStatus failed: ${e.message}")
                },
            )
        }
    }

    @UniJSMethod(uiThread = false)
    fun releaseModel(callback: UniJSCallback?) {
        try {
            if (modelLoaded) {
                nativeRelease()
                modelLoaded = false
                Log.i(TAG, "Model released")
            }
            callback?.invoke(
                JSONObject().apply {
                    put("success", true)
                    put("message", "Model released")
                },
            )
        } catch (e: Exception) {
            Log.e(TAG, "releaseModel error", e)
            callback?.invoke(errorResult("releaseModel failed: ${e.message}", "UNKNOWN"))
        }
    }
}
