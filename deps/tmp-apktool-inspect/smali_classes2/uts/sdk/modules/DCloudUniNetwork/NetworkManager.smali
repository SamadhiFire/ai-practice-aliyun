.class public Luts/sdk/modules/DCloudUniNetwork/NetworkManager;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u0010\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u001d2\u0006\u0010\u000b\u001a\u00020\u001eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/NetworkManager;",
        "",
        "<init>",
        "()V",
        "requestExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "request",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "T",
        "param",
        "Luts/sdk/modules/DCloudUniNetwork/RequestOptions;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "createRequestClient",
        "Lokhttp3/OkHttpClient;",
        "createRequest",
        "Lokhttp3/Request;",
        "stringifyQuery",
        "",
        "url",
        "data",
        "Lio/dcloud/uts/UTSJSONObject;",
        "uploadFile",
        "Luts/sdk/modules/DCloudUniNetwork/UploadTask;",
        "options",
        "Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;",
        "downloadFile",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadTask;",
        "Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;",
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
.field public static final Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

.field private static connectPool:Lokhttp3/ConnectionPool;

.field private static instance:Luts/sdk/modules/DCloudUniNetwork/NetworkManager;


# instance fields
.field private requestExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$JR9yrBCdjeoCz-8wNYDY0NEh_9Q(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jq33KBxqV6NXGdXQi8zIZ65R_ns(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery$lambda$1(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X_66bEbRy8YLE9_Su8WI3FTtm_I(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->createRequest$lambda$0(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xVaFWECYQ3juFS9WAcVg7OExnDA(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery$lambda$2(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/NetworkManager;
    .locals 1

    .line 1091
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->instance:Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/NetworkManager;)V
    .locals 0

    .line 1091
    sput-object p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->instance:Luts/sdk/modules/DCloudUniNetwork/NetworkManager;

    return-void
.end method

.method private static final createRequest$lambda$0(Lio/dcloud/uts/UTSArray;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1220
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p1, v1}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    .line 1221
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final stringifyQuery(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;)Ljava/lang/String;
    .locals 7

    .line 1274
    const-string v0, "#"

    invoke-static {p1, v0}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    .line 1276
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-static {v0, v3}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    const-string v3, "get(...)"

    const-string v4, ""

    if-lez v0, :cond_0

    .line 1277
    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    const/4 v5, 0x0

    .line 1279
    invoke-virtual {p1, v5}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const-string v6, "?"

    invoke-static {p1, v6}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    .line 1281
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v6

    check-cast v2, Ljava/lang/Number;

    invoke-static {v6, v2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-lez v2, :cond_1

    .line 1282
    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v4

    .line 1284
    :goto_1
    invoke-virtual {p1, v5}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 1285
    const-string v2, "&"

    invoke-static {v1, v2}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object v1

    .line 1286
    new-instance v2, Lio/dcloud/uts/Map;

    invoke-direct {v2}, Lio/dcloud/uts/Map;-><init>()V

    .line 1287
    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/uts/Map;)V

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSArray;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1294
    invoke-virtual {p2}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object p2

    .line 1295
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda2;-><init>(Lio/dcloud/uts/Map;)V

    invoke-virtual {p2, v1}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1308
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1309
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v1}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1313
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v1, v2, v3}, Lio/dcloud/uts/StringKt;->slice(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1314
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1317
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 1318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x23

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private static final stringifyQuery$lambda$1(Lio/dcloud/uts/Map;Ljava/lang/String;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1288
    const-string p2, "="

    invoke-static {p1, p2}, Lio/dcloud/uts/StringKt;->split(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/uts/UTSArray;

    move-result-object p1

    .line 1289
    invoke-virtual {p1}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {p2, v1}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p2

    if-lez p2, :cond_0

    .line 1290
    check-cast p0, Ljava/util/Map;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final stringifyQuery$lambda$2(Lio/dcloud/uts/Map;Ljava/lang/Object;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1297
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 1300
    :cond_0
    invoke-static {p2}, Lio/dcloud/uts/ObjectKt;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1301
    instance-of v1, p1, Lio/dcloud/uts/UTSJSONObject;

    if-nez v1, :cond_2

    instance-of v1, p1, Lio/dcloud/uts/UTSArray;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1304
    :cond_1
    check-cast p0, Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/ObjectKt;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1302
    :cond_2
    :goto_0
    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/uts/ObjectKt;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final stringifyQuery$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x26

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1311
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public createRequest(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Lokhttp3/Request;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "invalid URL"

    const-string v3, "600009"

    const-string v4, "cause"

    const-string v5, "errorMsg"

    const-string v6, "errorCode"

    const-string v7, "-1"

    const-string v8, "statusCode"

    const-string v9, "param"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "listener"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 1153
    :try_start_0
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1166
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v11

    if-nez v11, :cond_0

    .line 1167
    new-instance v11, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v11}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    invoke-virtual {v0, v11}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->setHeader(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1172
    :cond_0
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getHeader()Lio/dcloud/uts/UTSJSONObject;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lio/dcloud/uts/UTSJSONObject;->toJSONObject()Lcom/alibaba/fastjson/JSON;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type com.alibaba.fastjson.JSONObject"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/alibaba/fastjson/JSONObject;

    .line 1173
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-static {v12}, Lio/dcloud/uts/UTSIteratorKt;->resolveUTSKeyIterator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-string v14, "application/x-www-form-urlencoded; charset=UTF-8"

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v18, 0x0

    const-string v13, "User-Agent"

    const-string v10, ""

    const/4 v0, 0x1

    if-eqz v17, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v12

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/String;

    move-object/from16 v17, v14

    .line 1174
    const-string v14, "Content-Type"

    invoke-static {v12, v14, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    const/16 v21, 0xa

    if-eqz v14, :cond_1

    .line 1175
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Number;

    invoke-static {v15, v0}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v14, v17

    :goto_1
    if-nez v16, :cond_2

    const/4 v0, 0x1

    .line 1178
    invoke-static {v12, v13, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v16, 0x1

    .line 1181
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-static {v10, v13}, Lio/dcloud/uts/NumberKt;->toString_number_nullable(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-object/from16 v0, p1

    move-object/from16 v12, v20

    goto :goto_0

    :cond_3
    move-object/from16 v17, v14

    .line 1183
    const-string v0, "GET"

    if-nez v15, :cond_4

    .line 1184
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1185
    const-string v14, "application/json"

    goto :goto_2

    :cond_4
    move-object/from16 v14, v17

    :goto_2
    if-nez v16, :cond_5

    .line 1189
    sget-object v11, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    sget-object v12, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v12}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Lio/dcloud/uts/UTSAndroid;->getWebViewInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v11

    const-string v12, "ua"

    invoke-virtual {v11, v12}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v15, 0x0

    invoke-static {v11, v15, v12, v15}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1190
    invoke-virtual {v9, v13, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1192
    :cond_5
    const-string v11, "POST"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "string"

    if-nez v11, :cond_d

    const-string v11, "PUT"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "PATCH"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "DELETE"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_6

    .line 1238
    :cond_6
    const-string v10, "HEAD"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1239
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    :cond_7
    :goto_3
    move-object/from16 v11, p0

    goto/16 :goto_9

    .line 1240
    :cond_8
    const-string v10, "OPTIONS"

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1241
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v9, v0, v15}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    .line 1242
    :cond_9
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1243
    :cond_a
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1246
    sget-object v10, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v10, v0}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1247
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/uts/JSON;->parseObject(Ljava/lang/String;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v0

    goto :goto_4

    .line 1248
    :cond_b
    instance-of v10, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v10, :cond_c

    .line 1249
    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    .line 1252
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p0

    .line 1254
    :try_start_1
    invoke-direct {v11, v10, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->stringifyQuery(Ljava/lang/String;Lio/dcloud/uts/UTSJSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 1257
    new-instance v9, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v9}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1258
    invoke-virtual {v9, v8, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1259
    invoke-virtual {v9, v6, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1260
    invoke-virtual {v9, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1261
    invoke-virtual {v9, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1263
    invoke-virtual {v1, v9}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :goto_5
    const/16 v19, 0x0

    return-object v19

    :cond_d
    :goto_6
    move-object/from16 v11, p0

    .line 1193
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1194
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    .line 1197
    :cond_e
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    if-eqz v0, :cond_12

    .line 1198
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1199
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_7

    .line 1200
    :cond_f
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/ArrayBuffer;

    if-eqz v0, :cond_10

    .line 1202
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type io.dcloud.uts.ArrayBuffer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/ArrayBuffer;

    invoke-virtual {v0}, Lio/dcloud/uts/ArrayBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    const-string v0, "array(...)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 1204
    new-instance v2, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v2}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1205
    invoke-virtual {v2, v8, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1206
    const-string v3, "602001"

    invoke-virtual {v2, v6, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1207
    const-string v3, "request system error"

    invoke-virtual {v2, v5, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1208
    invoke-virtual {v2, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1210
    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    const/4 v15, 0x0

    return-object v15

    :cond_10
    const/4 v15, 0x0

    .line 1214
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-eqz v0, :cond_12

    .line 1215
    const-string v0, "application/x-www-form-urlencoded"

    const/4 v3, 0x2

    invoke-static {v14, v0, v15, v3, v15}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1216
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type io.dcloud.uts.UTSJSONObject"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/dcloud/uts/UTSJSONObject;

    .line 1217
    invoke-virtual {v0}, Lio/dcloud/uts/UTSJSONObject;->toMap()Lio/dcloud/uts/Map;

    move-result-object v0

    .line 1218
    new-instance v3, Lio/dcloud/uts/UTSArray;

    invoke-direct {v3}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1219
    new-instance v4, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/uts/UTSArray;)V

    invoke-virtual {v0, v4}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1222
    const-string v0, "&"

    invoke-virtual {v3, v0}, Lio/dcloud/uts/UTSArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    .line 1224
    :cond_11
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/uts/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1228
    :cond_12
    :goto_7
    instance-of v0, v10, [B

    if-eqz v0, :cond_13

    .line 1229
    invoke-static {v14}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    check-cast v10, [B

    invoke-static {v0, v10}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1230
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_8

    .line 1232
    :cond_13
    invoke-static {v14}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    invoke-static {v0, v10}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1233
    invoke-virtual/range {p1 .. p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_8
    const/16 v0, 0x64

    .line 1236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    .line 1270
    :goto_9
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    .line 1156
    new-instance v9, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v9}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1157
    invoke-virtual {v9, v8, v7}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1158
    invoke-virtual {v9, v6, v3}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1159
    invoke-virtual {v9, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1160
    invoke-virtual {v9, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1162
    invoke-virtual {v1, v9}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    goto/16 :goto_5
.end method

.method public createRequestClient(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Lokhttp3/OkHttpClient;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;)",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 1123
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getTimeout()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0xea60

    .line 1128
    :goto_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1129
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1130
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1131
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 1132
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;

    invoke-direct {v1}, Luts/sdk/modules/DCloudUniNetwork/CookieInterceptor;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 1133
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFirstIpv4()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1134
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getFirstIpv4()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1136
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/OKDns;

    invoke-direct {p1}, Luts/sdk/modules/DCloudUniNetwork/OKDns;-><init>()V

    .line 1137
    check-cast p1, Lokhttp3/Dns;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 1140
    :cond_1
    sget-object p1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->connectPool:Lokhttp3/ConnectionPool;

    if-nez p1, :cond_2

    .line 1141
    new-instance p1, Lokhttp3/ConnectionPool;

    invoke-direct {p1}, Lokhttp3/ConnectionPool;-><init>()V

    sput-object p1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->connectPool:Lokhttp3/ConnectionPool;

    .line 1143
    :cond_2
    sget-object p1, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->connectPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 1144
    iget-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_3

    const/16 p1, 0xa

    .line 1145
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1147
    :cond_3
    new-instance p1, Lokhttp3/Dispatcher;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->requestExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v1}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    .line 1148
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public downloadFile(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Luts/sdk/modules/DCloudUniNetwork/DownloadTask;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/DownloadController$Companion;->getInstance()Luts/sdk/modules/DCloudUniNetwork/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/DownloadController;->downloadFile(Luts/sdk/modules/DCloudUniNetwork/DownloadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;)Luts/sdk/modules/DCloudUniNetwork/DownloadTask;

    move-result-object p1

    return-object p1
.end method

.method public request(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Luts/sdk/modules/DCloudUniNetwork/RequestTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Luts/sdk/modules/DCloudUniNetwork/RequestOptions<",
            "TT;>;",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
            ")",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTask;"
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1095
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/UTSJSONObject;

    if-nez v0, :cond_1

    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/uts/UTSAndroid;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "string"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/uts/ArrayBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    new-instance p1, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {p1}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1098
    const-string v0, "statusCode"

    const-string v2, "-1"

    invoke-virtual {p1, v0, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1099
    const-string v0, "errorCode"

    const-string v2, "600008"

    invoke-virtual {p1, v0, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1100
    const-string v0, "errorMsg"

    const-string v2, "the data parameter type is invalid"

    invoke-virtual {p1, v0, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1101
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "he data parameter type is invalid"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "cause"

    invoke-virtual {p1, v2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1103
    invoke-virtual {p2, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1105
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    invoke-direct {p1, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;-><init>(Lokhttp3/Call;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-object p1

    .line 1109
    :cond_1
    :goto_0
    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onStart()V

    .line 1111
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->createRequestClient(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 1112
    invoke-virtual {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/NetworkManager;->createRequest(Luts/sdk/modules/DCloudUniNetwork/RequestOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Lokhttp3/Request;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1114
    new-instance p1, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    invoke-direct {p1, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;-><init>(Lokhttp3/Call;)V

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-object p1

    .line 1116
    :cond_2
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    const-string v1, "newCall(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    invoke-direct {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;-><init>(Lokhttp3/Call;)V

    .line 1118
    new-instance v2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/RequestOptions;->getEnableChunked()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p2, v1, p1, v3}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V

    check-cast v2, Lokhttp3/Callback;

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 1119
    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-object v1
.end method

.method public uploadFile(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Luts/sdk/modules/DCloudUniNetwork/UploadTask;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;->Companion:Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;->getInstance()Luts/sdk/modules/DCloudUniNetwork/UploadController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->uploadFile(Luts/sdk/modules/DCloudUniNetwork/UploadFileOptions;Luts/sdk/modules/DCloudUniNetwork/NetworkUploadFileListener;)Luts/sdk/modules/DCloudUniNetwork/UploadTask;

    move-result-object p1

    return-object p1
.end method
