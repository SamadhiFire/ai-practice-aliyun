.class public final Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u0007X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000c\u001a\u00020\u0007X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil$Companion;",
        "",
        "<init>",
        "()V",
        "INSTANCE",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;",
        "RESULT_MAYBE_EMULATOR",
        "",
        "getRESULT_MAYBE_EMULATOR",
        "()I",
        "RESULT_EMULATOR",
        "getRESULT_EMULATOR",
        "RESULT_UNKNOWN",
        "getRESULT_UNKNOWN",
        "known_pkgNames",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "getSingleInstance",
        "uni-getDeviceInfo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRESULT_EMULATOR()I
    .locals 1

    .line 287
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->access$getRESULT_EMULATOR$cp()I

    move-result v0

    return v0
.end method

.method public final getRESULT_MAYBE_EMULATOR()I
    .locals 1

    .line 286
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->access$getRESULT_MAYBE_EMULATOR$cp()I

    move-result v0

    return v0
.end method

.method public final getRESULT_UNKNOWN()I
    .locals 1

    .line 288
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->access$getRESULT_UNKNOWN$cp()I

    move-result v0

    return v0
.end method

.method public final getSingleInstance()Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;
    .locals 1

    .line 296
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->access$getINSTANCE$cp()Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil$Companion;

    new-instance v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;-><init>()V

    invoke-static {v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->access$setINSTANCE$cp(Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;)V

    .line 299
    :cond_0
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;->access$getINSTANCE$cp()Luts/sdk/modules/DCloudUniGetDeviceInfo/EmulatorCheckUtil;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
