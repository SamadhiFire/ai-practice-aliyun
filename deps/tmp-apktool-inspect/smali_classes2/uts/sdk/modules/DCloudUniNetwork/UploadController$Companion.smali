.class public final Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luts/sdk/modules/DCloudUniNetwork/UploadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Luts/sdk/modules/DCloudUniNetwork/UploadController;",
        "getInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Luts/sdk/modules/DCloudUniNetwork/UploadController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Luts/sdk/modules/DCloudUniNetwork/UploadController;
    .locals 1

    .line 986
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/UploadController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Luts/sdk/modules/DCloudUniNetwork/UploadController;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;-><init>()V

    invoke-static {v0}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->access$setInstance$cp(Luts/sdk/modules/DCloudUniNetwork/UploadController;)V

    .line 989
    :cond_0
    invoke-static {}, Luts/sdk/modules/DCloudUniNetwork/UploadController;->access$getInstance$cp()Luts/sdk/modules/DCloudUniNetwork/UploadController;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
