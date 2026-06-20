.class public Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B-\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010#\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010$\u001a\u00020%H\u0016J\u001e\u0010&\u001a\u0004\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u001e\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J&\u0010,\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J&\u0010.\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010)2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0018\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\'2\u0006\u00101\u001a\u00020\'H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\'H\u0002J\u0010\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u00020\'H\u0002J\u0010\u00106\u001a\u00020\u00072\u0006\u00104\u001a\u00020\'H\u0002J\u0010\u00107\u001a\u00020\u00072\u0006\u00104\u001a\u00020\'H\u0002J\u0018\u00108\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00109\u001a\u00020\'H\u0002J \u0010:\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\'2\u0006\u0010<\u001a\u00020\'H\u0002J\u001e\u0010=\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\'0?H\u0002J\u001e\u0010@\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\'0?H\u0002R+\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R+\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R+\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00078B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;",
        "Lokhttp3/Callback;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "requestTask",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
        "enableChunked",
        "",
        "looper",
        "Landroid/os/Looper;",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V",
        "<set-?>",
        "getListener",
        "()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;",
        "setListener",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)V",
        "listener$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "getRequestTask",
        "()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
        "setRequestTask",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;)V",
        "requestTask$delegate",
        "getEnableChunked",
        "()Z",
        "setEnableChunked",
        "(Z)V",
        "enableChunked$delegate",
        "onResponse",
        "",
        "call",
        "Lokhttp3/Call;",
        "response",
        "Lokhttp3/Response;",
        "onFailure",
        "e",
        "Ljava/io/IOException;",
        "readInputStreamAsBytes",
        "",
        "inputSteam",
        "Ljava/io/InputStream;",
        "readInputStream",
        "",
        "processStreamWithOkio",
        "inputStream",
        "processChunkedResponse",
        "isValidChunk",
        "sizeLine",
        "dataLine",
        "parseHexSize",
        "",
        "lineData",
        "isHexadecimalLine",
        "isZeroChunk",
        "isEmptyLine",
        "sendData",
        "data",
        "sendCombinedData",
        "data1",
        "data2",
        "processPendingLines",
        "pendingLines",
        "Lio/dcloud/uts/UTSArray;",
        "processLinePair",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final listener$delegate:Lkotlin/properties/ReadWriteProperty;

.field private looper:Landroid/os/Looper;

.field private final requestTask$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method public static synthetic $r8$lambda$3ERxP-8ZrkHejc2uS6K2IAgM_H4(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CW6JUZELM2KeqXW_zPn49UMhHjA(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->onResponse$lambda$0(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S_8NCAwpDYthdO2DWNdA614fIsQ(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio$lambda$3(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$opjbO3tI0cIhoYVlnuHy327-0Ag(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio$lambda$3$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qBx3L25qGvoju629JdADs1dJW8c(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio$lambda$1(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "listener"

    const-string v3, "getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;"

    const-class v4, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "requestTask"

    const-string v3, "getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "enableChunked"

    const-string v3, "getEnableChunked()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1346
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->listener$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1347
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->requestTask$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1348
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 1351
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->setListener(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)V

    .line 1352
    invoke-direct {p0, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->setRequestTask(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;)V

    .line 1353
    invoke-direct {p0, p3}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->setEnableChunked(Z)V

    .line 1354
    iput-object p4, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->looper:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1350
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;ZLandroid/os/Looper;)V

    return-void
.end method

.method private final getEnableChunked()Z
    .locals 3

    .line 1348
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;
    .locals 3

    .line 1346
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->listener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    return-object v0
.end method

.method private final getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;
    .locals 3

    .line 1347
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->requestTask$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    return-object v0
.end method

.method private final isEmptyLine([B)Z
    .locals 3

    .line 1762
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte p1, p1, v0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method private final isHexadecimalLine([B)Z
    .locals 6

    .line 1709
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    return v1

    .line 1712
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    if-gtz v0, :cond_1

    return v1

    .line 1717
    :cond_1
    move-object v2, p0

    check-cast v2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 1720
    aget-byte v4, p1, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_6

    const/16 v3, 0x30

    if-lt v4, v3, :cond_2

    const/16 v3, 0x39

    if-le v4, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v4, v3, :cond_3

    const/16 v3, 0x46

    if-le v4, v3, :cond_4

    :cond_3
    const/16 v3, 0x61

    if-lt v4, v3, :cond_5

    const/16 v3, 0x66

    if-gt v4, v3, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    return v3
.end method

.method private final isValidChunk([B[B)Z
    .locals 2

    .line 1672
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isHexadecimalLine([B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1675
    :cond_0
    invoke-direct {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->parseHexSize([B)I

    move-result p1

    if-gez p1, :cond_1

    return v1

    .line 1679
    :cond_1
    array-length p2, p2

    const/4 v0, 0x2

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    .line 1680
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lio/dcloud/uts/Math;->abs(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, p2}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1

    if-gtz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private final isZeroChunk([B)Z
    .locals 9

    .line 1735
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    .line 1738
    :cond_0
    aget-byte v0, p1, v1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 1741
    aget-byte v3, p1, v0

    const/16 v4, 0x3b

    const/16 v5, 0xd

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    return v1

    :cond_2
    const/16 v6, 0xa

    const/4 v7, 0x2

    if-ne v3, v5, :cond_4

    .line 1745
    array-length v8, p1

    if-lt v8, v2, :cond_4

    .line 1746
    aget-byte p1, p1, v7

    if-ne p1, v6, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    if-ne v3, v4, :cond_6

    .line 1749
    move-object v2, p0

    check-cast v2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    .line 1751
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v0

    if-ge v7, v2, :cond_6

    .line 1752
    aget-byte v2, p1, v7

    if-ne v2, v5, :cond_5

    add-int/lit8 v2, v7, 0x1

    aget-byte v2, p1, v2

    if-ne v2, v6, :cond_5

    return v0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method private static final onResponse$lambda$0(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSJSONObject;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1370
    new-instance p3, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;

    sget-object v0, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    invoke-virtual {v0, p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;->parseCookie(Lio/dcloud/uts/UTSJSONObject;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {p3, v0, p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;-><init>(Lio/dcloud/uts/UTSArray;Lio/dcloud/uts/UTSJSONObject;Ljava/lang/Number;)V

    .line 1371
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final parseHexSize([B)I
    .locals 8

    .line 1683
    array-length v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    return v1

    .line 1686
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1688
    move-object v3, p0

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1691
    aget-byte v5, p1, v4

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 1694
    :cond_1
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Number;

    aget-byte v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lio/dcloud/uts/StringKt;->fromCharCode(Lkotlin/jvm/internal/StringCompanionObject;[Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1698
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 1702
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method private final processChunkedResponse(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    .line 1581
    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1582
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0xa

    .line 1583
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 1584
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    .line 1586
    new-instance v11, Lio/dcloud/uts/UTSArray;

    invoke-direct {v11}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1589
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object v14, v4

    move v13, v9

    const/4 v15, -0x1

    .line 1592
    :goto_0
    :try_start_0
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v4

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, -0x1

    .line 1593
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_6

    .line 1596
    :cond_1
    move-object v12, v4

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-virtual {v5, v8, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1597
    move-object v12, v4

    check-cast v12, Ljava/lang/Number;

    invoke-static {v10, v12}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v10

    if-eqz v3, :cond_2

    .line 1599
    invoke-virtual {v3, v10}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    .line 1601
    :cond_2
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v12

    invoke-virtual {v12}, Lio/dcloud/uts/Map;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 1602
    move-object v12, v1

    check-cast v12, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    .line 1603
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    .line 1604
    :goto_1
    move-object v9, v4

    check-cast v9, Ljava/lang/Number;

    invoke-static {v12, v9}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v9

    if-gez v9, :cond_8

    .line 1605
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v9

    aget-byte v9, v8, v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    const/16 v18, 0xff

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/Number;

    invoke-static {v9, v7}, Lio/dcloud/uts/NumberKt;->and(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 1606
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v9, 0xd

    if-ne v15, v9, :cond_7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_7

    .line 1608
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 1609
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isZeroChunk([B)Z

    move-result v18

    if-eqz v18, :cond_3

    if-nez v13, :cond_3

    .line 1611
    array-length v13, v15

    new-array v14, v13, [B

    .line 1612
    array-length v13, v15

    const/4 v9, 0x0

    invoke-static {v15, v9, v14, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    if-eqz v13, :cond_5

    .line 1614
    invoke-direct {v1, v0, v11}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    .line 1615
    new-instance v11, Lio/dcloud/uts/UTSArray;

    invoke-direct {v11}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1616
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isEmptyLine([B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1617
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0, v14, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendCombinedData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B[B)V

    goto :goto_2

    .line 1619
    :cond_4
    array-length v9, v15

    new-array v9, v9, [B

    .line 1620
    array-length v13, v15

    const/4 v2, 0x0

    invoke-static {v15, v2, v9, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1622
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1623
    filled-new-array {v14, v9}, [[B

    move-result-object v2

    .line 1622
    check-cast v2, [Ljava/lang/Object;

    .line 1621
    invoke-static {v2}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processLinePair(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    :goto_2
    move-object/from16 v14, v17

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_3

    .line 1629
    :cond_5
    array-length v2, v15

    new-array v2, v2, [B

    .line 1630
    array-length v9, v15

    const/4 v3, 0x0

    invoke-static {v15, v3, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1631
    filled-new-array {v2}, [[B

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v11, v2}, Lio/dcloud/uts/UTSArray;->push([Ljava/lang/Object;)I

    .line 1632
    invoke-virtual {v11}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v2

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1633
    invoke-direct {v1, v0, v11}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processLinePair(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    .line 1634
    new-instance v11, Lio/dcloud/uts/UTSArray;

    invoke-direct {v11}, Lio/dcloud/uts/UTSArray;-><init>()V

    .line 1637
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 1640
    :goto_4
    invoke-static {v12}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v15, v7

    const/16 v7, 0xa

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    move v3, v9

    .line 1645
    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1646
    :goto_6
    invoke-direct {v1, v0, v11}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    if-eqz v13, :cond_a

    if-eqz v14, :cond_a

    .line 1648
    invoke-direct {v1, v0, v14}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V

    .line 1650
    :cond_a
    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/uts/Map;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 1651
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "toByteArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V

    .line 1653
    :cond_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1654
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1662
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1665
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :cond_c
    move-object/from16 v2, p2

    move v9, v3

    move-object/from16 v4, v17

    const/16 v7, 0xa

    move-object/from16 v3, p3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 1662
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1665
    move-object v2, v6

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1668
    :catch_1
    throw v0

    :catch_2
    move-object/from16 v17, v4

    .line 1662
    :catch_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1665
    move-object v0, v6

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v17
.end method

.method private final processLinePair(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
            "Lio/dcloud/uts/UTSArray<",
            "[B>;)V"
        }
    .end annotation

    .line 1802
    invoke-virtual {p2}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1805
    invoke-virtual {p2, v0}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [B

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [B

    invoke-direct {p0, v1, v4}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->isValidChunk([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1806
    invoke-virtual {p2, v0}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [B

    invoke-virtual {p2, v3}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [B

    invoke-direct {p0, p1, v0, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendCombinedData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B[B)V

    return-void

    .line 1808
    :cond_1
    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V

    return-void
.end method

.method private final processPendingLines(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lio/dcloud/uts/UTSArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
            "Lio/dcloud/uts/UTSArray<",
            "[B>;)V"
        }
    .end annotation

    .line 1790
    invoke-virtual {p2}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1793
    :cond_0
    move-object v0, p0

    check-cast v0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;

    .line 1794
    check-cast v1, Ljava/lang/Number;

    .line 1795
    :goto_0
    invoke-virtual {p2}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1796
    invoke-virtual {p2, v1}, Lio/dcloud/uts/UTSArray;->get(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V

    .line 1797
    invoke-static {v1}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final processStreamWithOkio(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1457
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1458
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-direct {v3}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;-><init>()V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1459
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    .line 1462
    :try_start_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;

    invoke-direct {v7, p2, v3, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda3;-><init>(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1511
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_1
    const-wide/16 v7, 0x64

    .line 1513
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    const/4 p2, 0x0

    .line 1516
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    .line 1517
    iget-object v8, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1519
    :try_start_2
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v8}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getHasNewData()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1520
    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v7}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1521
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v8}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getTotalBytesRead()Ljava/lang/Number;

    move-result-object v8

    .line 1522
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1523
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9, p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setHasNewData(Z)V

    goto :goto_0

    :cond_2
    move-object v8, v7

    move-object v7, v0

    .line 1525
    :goto_0
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->isStreamEnded()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v9}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getHasNewData()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    move v9, p2

    .line 1530
    :goto_1
    :try_start_3
    iget-object v10, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v7, :cond_5

    .line 1532
    array-length v10, v7

    if-lez v10, :cond_5

    .line 1533
    array-length v10, v7

    invoke-virtual {v1, v7, p2, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1534
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/uts/Map;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 1535
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v10, Lio/dcloud/uts/ArrayBuffer;->Companion:Lio/dcloud/uts/ArrayBuffer$Companion;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v11, "wrap(...)"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lio/dcloud/uts/ArrayBuffer$Companion;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lio/dcloud/uts/ArrayBuffer;

    move-result-object v7

    iput-object v7, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1536
    new-instance v7, Luts/sdk/modules/DCloudUniNetwork/RunnableTask;

    iget-object v10, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->looper:Landroid/os/Looper;

    .line 1542
    new-instance v11, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;

    invoke-direct {v11, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda4;-><init>(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 1536
    invoke-direct {v7, v10, v11}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask;-><init>(Landroid/os/Looper;Lkotlin/jvm/functions/Function0;)V

    .line 1542
    invoke-virtual {v7}, Luts/sdk/modules/DCloudUniNetwork/RunnableTask;->execute()V

    :cond_4
    if-eqz p3, :cond_5

    .line 1545
    invoke-virtual {p3, v8}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    :cond_5
    if-eqz v9, :cond_1

    .line 1552
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1553
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1560
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1562
    :try_start_4
    invoke-virtual {v6, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1567
    :catch_0
    :try_start_5
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p2, :cond_6

    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1568
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1571
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 1530
    :try_start_6
    iget-object p2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz v0, :cond_7

    .line 1560
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1562
    :try_start_7
    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1567
    :catch_2
    :cond_7
    :try_start_8
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p2, :cond_8

    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1568
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1571
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1574
    :catch_3
    throw p1

    :catch_4
    move-object v6, v0

    :catch_5
    if-eqz v6, :cond_9

    .line 1560
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1562
    :try_start_9
    invoke-virtual {v6, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1567
    :catch_6
    :cond_9
    :try_start_a
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_a

    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1568
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1571
    :cond_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    return-object v0
.end method

.method private static final processStreamWithOkio$lambda$1(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1464
    :try_start_0
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    .line 1465
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    .line 1466
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1467
    invoke-interface {p0}, Lokio/BufferedSource;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :try_start_1
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setStreamEnded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    :try_start_2
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_0
    const/16 v1, 0x2000

    .line 1477
    new-array v1, v1, [B

    .line 1478
    invoke-interface {p0, v1}, Lokio/BufferedSource;->read([B)I

    move-result v2

    if-gtz v2, :cond_1

    .line 1480
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1482
    :try_start_3
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setStreamEnded(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1485
    :try_start_4
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1
    move-exception p0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    .line 1489
    :cond_1
    iget-object v3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1491
    :try_start_5
    iget-object v3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1492
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->getTotalBytesRead()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v3, v2}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setTotalBytesRead(Ljava/lang/Number;)V

    .line 1493
    iget-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setHasNewData(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1496
    :try_start_6
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    return-void

    .line 1501
    :catch_0
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1503
    :try_start_7
    iget-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;

    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniNetwork/SharedStreamBuffer;->setStreamEnded(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1506
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_3
    move-exception p0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private static final processStreamWithOkio$lambda$3(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/ArrayBuffer;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p0

    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, v0}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1541
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final processStreamWithOkio$lambda$3$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/ArrayBuffer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1538
    new-instance p2, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/uts/ArrayBuffer;

    invoke-direct {p2, p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;-><init>(Lio/dcloud/uts/ArrayBuffer;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final readInputStream(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1436
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x800

    .line 1437
    new-array p1, p1, [C

    .line 1439
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1449
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v3, 0x0

    .line 1443
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 1445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {p2, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method private final readInputStreamAsBytes(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1413
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 1414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/16 v3, 0x800

    .line 1415
    new-array v4, v3, [B

    .line 1417
    :cond_1
    :goto_0
    invoke-virtual {p1, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1428
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1429
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 1421
    :cond_2
    invoke-virtual {v0, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v2, v5}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    if-eqz p2, :cond_1

    .line 1424
    invoke-virtual {p2, v2}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onProgress(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method private final sendCombinedData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B[B)V
    .locals 3

    .line 1773
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1775
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1776
    array-length p2, p3

    invoke-virtual {v0, p3, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1777
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 1778
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1786
    :catch_1
    throw p1
.end method

.method private final sendData(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;[B)V
    .locals 3

    .line 1765
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lio/dcloud/uts/ArrayBuffer;->Companion:Lio/dcloud/uts/ArrayBuffer$Companion;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string v2, "wrap(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lio/dcloud/uts/ArrayBuffer$Companion;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lio/dcloud/uts/ArrayBuffer;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1766
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getChunkReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object p1

    new-instance p2, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final sendData$lambda$8(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lio/dcloud/uts/ArrayBuffer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1767
    new-instance p2, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lio/dcloud/uts/ArrayBuffer;

    invoke-direct {p2, p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;-><init>(Lio/dcloud/uts/ArrayBuffer;)V

    .line 1768
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setEnableChunked(Z)V
    .locals 3

    .line 1348
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->enableChunked$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setListener(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)V
    .locals 3

    .line 1346
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->listener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setRequestTask(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;)V
    .locals 3

    .line 1347
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->requestTask$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object p1

    .line 1400
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1401
    const-string v1, "statusCode"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1402
    const-string v1, "errorCode"

    const-string v2, "602001"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1403
    const-string v1, "errorMsg"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1404
    const-string v1, "cause"

    invoke-virtual {v0, v1, p2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1406
    invoke-virtual {p1, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "headers(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    .line 1359
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1360
    new-instance v1, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v1}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1361
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-string v3, ""

    invoke-static {v2, v3}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "statusCode"

    invoke-virtual {v1, v3, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1362
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1364
    iget v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onHeadersReceived(Ljava/lang/Number;Ljava/util/Map;)V

    .line 1366
    :cond_0
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    move-result-object v3

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;->getHeadersReceivedListeners()Lio/dcloud/uts/Map;

    move-result-object v3

    .line 1367
    invoke-virtual {v3}, Lio/dcloud/uts/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1368
    sget-object v4, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil;->Companion:Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkUtil$Companion;->convertHeaders(Ljava/util/Map;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object p1

    .line 1369
    new-instance v4, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v3, v4}, Lio/dcloud/uts/Map;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 1375
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1376
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getEnableChunked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p2, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "chunked"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1378
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    .line 1379
    const-string p2, "originalData"

    if-eqz v0, :cond_3

    .line 1380
    :try_start_1
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getRequestTask()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;

    move-result-object v0

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v3

    invoke-direct {p0, v0, p1, v3}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->processStreamWithOkio(Luts/sdk/modules/DCloudUniNetwork/NetworkRequestTaskImpl;Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1382
    :cond_3
    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->readInputStreamAsBytes(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)[B

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1385
    :cond_4
    const-string p2, "errorMsg"

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->getListener()Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->readInputStream(Ljava/io/InputStream;Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz v2, :cond_5

    .line 1388
    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniNetwork/NetworkRequestListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1393
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1395
    :catch_1
    throw p2
.end method
