.class public Luts/sdk/modules/DCloudUniNetwork/UploadController;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u0014H\u0002J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0014H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadController;",
        "",
        "<init>",
        "()V",
        "uploadExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "uploadFile",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "options",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "createUploadClient",
        "Lokhttp3/OkHttpClient;",
        "option",
        "createUploadRequest",
        "Lokhttp3/Request;",
        "getFileInformation",
        "Luts/sdk/modules/DCloudUniNetwork/FileInformation;",
        "reassignedUri",
        "",
        "copyAssetFileToPrivateDir",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "fileName",
        "checkPrivatePath",
        "",
        "reassignedPath",
        "isAssetFile",
        "filePath",
        "getMimeType",
        "filename",
        "Companion",
        "uni-network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

.field private static instance:Luts/sdk/modules/DCloudUniNetwork/UploadController;


# instance fields
.field private uploadExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/UploadController;
    .locals 1

    .line 711
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->instance:Luts/sdk/modules/DCloudUniNetwork/UploadController;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/UploadController;)V
    .locals 0

    .line 711
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->instance:Luts/sdk/modules/DCloudUniNetwork/UploadController;

    return-void
.end method

.method private final checkPrivatePath(Ljava/lang/String;)Z
    .locals 9

    .line 935
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-le v0, v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 938
    :cond_0
    const-string v0, "file://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 939
    const-string v6, ""

    invoke-static {p1, v0, v6}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 941
    :cond_1
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 942
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_2

    .line 945
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Android/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getParent(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 950
    const-string v7, "/"

    invoke-static {v6, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 953
    :cond_3
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v7, v0, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v7, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->isAssetFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v2, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v1
.end method

.method private final copyAssetFileToPrivateDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 902
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/uploadFiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 910
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 911
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 913
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "open(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    .line 915
    new-array v0, v0, [B

    .line 917
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 924
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 925
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    :cond_2
    const/4 v3, 0x0

    .line 921
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 929
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final createUploadClient(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;)Lokhttp3/OkHttpClient;
    .locals 3

    .line 725
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 726
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getTimeout()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x1d4c0

    .line 731
    :goto_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 732
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 733
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 734
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;-><init>()V

    check-cast p1, Lokhttp3/Interceptor;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 735
    iget-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_1

    const/16 p1, 0xa

    .line 736
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 738
    :cond_1
    new-instance p1, Lokhttp3/Dispatcher;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 739
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createUploadRequest(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Lokhttp3/Request;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 742
    const-string v3, "cause"

    const-string v4, "errorMsg"

    const-string v5, "errorCode"

    const-string v6, "statusCode"

    const-string v7, "-1"

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 744
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    new-instance v10, Lokhttp3/MultipartBody$Builder;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "----"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v10, v11}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v10

    .line 759
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFormData()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object v11

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 760
    :goto_0
    const-string v13, ""

    if-eqz v11, :cond_2

    .line 761
    invoke-static {v11}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 762
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0xa

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    .line 763
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/Number;

    invoke-static {v15, v9}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v12, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1

    :cond_2
    const/16 v17, 0xa

    .line 771
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFiles()Lio/dcloud/uts/UTSArray;

    move-result-object v8

    .line 772
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 773
    const-string v12, "*/*"

    const-string v14, "Illegal file"

    const-string v15, "file"

    const/16 v18, 0x0

    move-object/from16 v20, v11

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    check-cast v12, Ljava/lang/Number;

    invoke-static {v11, v12}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v11

    if-lez v11, :cond_a

    .line 775
    move-object v11, v1

    check-cast v11, Luts/sdk/modules/DCloudUniNetwork/UploadController;

    .line 776
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    .line 777
    :goto_2
    invoke-virtual {v8}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v12

    invoke-static {v11, v12}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v12

    if-gez v12, :cond_8

    .line 778
    invoke-virtual {v8, v11}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;

    move-object/from16 v21, v8

    .line 779
    invoke-virtual {v12}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 780
    invoke-direct {v1, v8}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->getFileInformation(Ljava/lang/String;)Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    move-result-object v8

    .line 781
    invoke-virtual {v12}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptionFiles;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    move-object v12, v15

    :cond_3
    if-eqz v8, :cond_4

    .line 782
    invoke-virtual {v8}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v27, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v27

    goto :goto_3

    :cond_4
    move-object/from16 v23, v8

    const/4 v8, 0x0

    :goto_3
    if-eqz v23, :cond_6

    if-eqz v8, :cond_6

    move-object/from16 v24, v11

    .line 784
    new-instance v11, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;

    invoke-virtual/range {v23 .. v23}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getMime()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_5

    move-object/from16 v25, v22

    :cond_5
    move-object/from16 v26, v15

    invoke-static/range {v25 .. v25}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v23}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getSize()J

    move-result-wide v0

    invoke-direct {v11, v15, v0, v1, v8}, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;-><init>(Lokhttp3/MediaType;JLjava/io/InputStream;)V

    .line 785
    invoke-virtual/range {v23 .. v23}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v11, Lokhttp3/RequestBody;

    invoke-virtual {v10, v12, v0, v11}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 797
    invoke-static/range {v24 .. v24}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v11

    move-object/from16 v1, p0

    move-object/from16 v8, v21

    move-object/from16 v0, v25

    move-object/from16 v15, v26

    goto :goto_2

    .line 787
    :cond_6
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 788
    invoke-virtual {v0, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 789
    invoke-virtual {v0, v5, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 790
    invoke-virtual {v0, v4, v14}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 791
    invoke-virtual {v0, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_7

    .line 793
    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_7
    return-object v1

    :cond_8
    move-object/from16 v25, v0

    move-object/from16 v21, v8

    goto :goto_6

    :cond_9
    move-object/from16 v22, v12

    :cond_a
    move-object/from16 v25, v0

    move-object/from16 v21, v8

    move-object/from16 v26, v15

    if-eqz v9, :cond_10

    move-object/from16 v1, p0

    .line 801
    invoke-direct {v1, v9}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->getFileInformation(Ljava/lang/String;)Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    move-result-object v0

    .line 802
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    move-object/from16 v15, v26

    goto :goto_4

    :cond_b
    move-object v15, v8

    :goto_4
    if-eqz v0, :cond_c

    .line 803
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-eqz v0, :cond_e

    if-eqz v8, :cond_e

    .line 805
    new-instance v11, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getMime()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_d

    move-object/from16 v12, v22

    :cond_d
    invoke-static {v12}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getSize()J

    move-result-wide v0

    invoke-direct {v11, v12, v0, v1, v8}, Luts/sdk/modules/DCloudUniNetwork/InputStreamRequestBody;-><init>(Lokhttp3/MediaType;JLjava/io/InputStream;)V

    .line 806
    invoke-virtual/range {v22 .. v22}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast v11, Lokhttp3/RequestBody;

    invoke-virtual {v10, v15, v0, v11}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_6

    .line 808
    :cond_e
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 809
    invoke-virtual {v0, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    invoke-virtual {v0, v5, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    invoke-virtual {v0, v4, v14}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 812
    invoke-virtual {v0, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_f

    .line 814
    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_f
    return-object v1

    :cond_10
    :goto_6
    if-nez v20, :cond_13

    if-nez v9, :cond_13

    if-eqz v21, :cond_11

    .line 819
    invoke-virtual/range {v21 .. v21}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 820
    :cond_11
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 821
    invoke-virtual {v0, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    const-string v1, "602001"

    invoke-virtual {v0, v5, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 823
    const-string v1, "request system error"

    invoke-virtual {v0, v4, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    new-instance v1, Lio/dcloud/uniapp/SourceError;

    const-string v4, "At least one of the parameters filePath, files, or formData"

    invoke-direct {v1, v4}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_12

    .line 826
    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_12
    const/16 v19, 0x0

    return-object v19

    .line 830
    :cond_13
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    .line 832
    :goto_7
    const-string v1, "User-Agent"

    if-eqz v0, :cond_17

    .line 833
    invoke-static {v0}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 834
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 835
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v18, :cond_15

    const/4 v5, 0x1

    .line 836
    invoke-static {v4, v1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v18, 0x1

    :cond_15
    if-eqz v3, :cond_16

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-static {v3, v6}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v25

    invoke-virtual {v5, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_9

    :cond_16
    move-object/from16 v5, v25

    :goto_9
    move-object/from16 v25, v5

    goto :goto_8

    :cond_17
    move-object/from16 v5, v25

    if-nez v18, :cond_18

    .line 847
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v3, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v3}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSAndroid;->getWebViewInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    const-string v3, "ua"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 850
    :cond_18
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;

    invoke-virtual {v10}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    const-string v3, "build(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/RequestBody;

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadProgressListener;

    invoke-direct {v3, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadProgressListener;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;

    invoke-direct {v0, v1, v3}, Luts/sdk/modules/DCloudUniNetwork/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Luts/sdk/modules/DCloudUniNetwork/UploadProgressListener;)V

    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 851
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 747
    new-instance v1, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v1}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 748
    invoke-virtual {v1, v6, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    const-string v6, "600009"

    invoke-virtual {v1, v5, v6}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 750
    const-string v5, "invalid URL"

    invoke-virtual {v1, v4, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 751
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v4}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 752
    new-instance v5, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v5, v0}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_19

    .line 754
    invoke-interface {v2, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_19
    return-object v4
.end method

.method private final getFileInformation(Ljava/lang/String;)Luts/sdk/modules/DCloudUniNetwork/FileInformation;
    .locals 10

    .line 856
    const-string v0, "content://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 858
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 859
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 862
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;-><init>()V

    .line 863
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setInputStream(Ljava/io/InputStream;)V

    .line 864
    const-string p1, "_size"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setSize(J)V

    .line 865
    const-string p1, "_display_name"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setName(Ljava/lang/String;)V

    .line 866
    const-string p1, "mime_type"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setMime(Ljava/lang/String;)V

    .line 868
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_0
    return-object v3

    .line 871
    :cond_1
    const-string v0, "file://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 872
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0, v3, v2, v3}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 873
    :cond_2
    const-string v0, "unifile://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 876
    :cond_3
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 877
    const-string v0, "/android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 878
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 880
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->copyAssetFileToPrivateDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 882
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    :cond_4
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 887
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 888
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 889
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 891
    new-instance v4, Luts/sdk/modules/DCloudUniNetwork/FileInformation;

    invoke-direct {v4}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;-><init>()V

    .line 892
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {v4, p1}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setInputStream(Ljava/io/InputStream;)V

    .line 893
    invoke-virtual {v4, v1, v2}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setSize(J)V

    .line 894
    invoke-virtual {v4, v0}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setName(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v4, v3}, Luts/sdk/modules/DCloudUniNetwork/FileInformation;->setMime(Ljava/lang/String;)V

    return-object v4
.end method

.method private final getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 968
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 969
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 970
    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v3, v4, v3}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-static {v5, v6}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 971
    invoke-static {p1, v2, v3, v4, v3}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v1, v2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {p1, v1, v3, v4, v3}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 973
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 974
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    move-object p1, v1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 976
    const-string p1, "*/*"

    goto :goto_0

    .line 978
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "application/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 981
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final isAssetFile(Ljava/lang/String;)Z
    .locals 5

    .line 960
    const-string v0, "apps/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    return v4

    .line 962
    :cond_0
    const-string v0, "/android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android_asset/"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v4
.end method


# virtual methods
.method public uploadFile(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Luts/sdk/modules/DCloudUniNetwork/UploadTask;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->createUploadClient(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 715
    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->createUploadRequest(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 717
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;-><init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    return-object p1

    .line 719
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    const-string v0, "newCall(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;

    invoke-direct {v0, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleUploadCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    check-cast v0, Lokhttp3/Callback;

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 721
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;

    invoke-direct {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkUploadTaskImpl;-><init>(Lokhttp3/Call;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)V

    .line 722
    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    return-object v0
.end method
