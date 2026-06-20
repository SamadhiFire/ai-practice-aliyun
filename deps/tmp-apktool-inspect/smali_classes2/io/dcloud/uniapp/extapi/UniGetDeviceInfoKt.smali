.class public final Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt;
.super Ljava/lang/Object;
.source "uniGetDeviceInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\"2\u0010\u0004\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\u00030\u0005j\u0002`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000f*\n\u0010\u0000\"\u00020\u00012\u00020\u0001*\n\u0010\u0002\"\u00020\u00032\u00020\u0003\u00a8\u0006\u0010"
    }
    d2 = {
        "GetDeviceInfoOptions",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;",
        "GetDeviceInfoResult",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;",
        "getDeviceInfo",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "options",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfo;",
        "getGetDeviceInfo",
        "()Lkotlin/jvm/functions/Function1;",
        "isSimulator",
        "Lkotlin/reflect/KFunction0;",
        "",
        "()Lkotlin/reflect/KFunction;",
        "uni-getDeviceInfo_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final getDeviceInfo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;",
            "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final isSimulator:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->getGetDeviceInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt;->getDeviceInfo:Lkotlin/jvm/functions/Function1;

    .line 11
    sget-object v0, Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt$isSimulator$1;->INSTANCE:Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt$isSimulator$1;

    check-cast v0, Lkotlin/reflect/KFunction;

    sput-object v0, Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt;->isSimulator:Lkotlin/reflect/KFunction;

    return-void
.end method

.method public static final getGetDeviceInfo()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;",
            "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt;->getDeviceInfo:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final isSimulator()Lkotlin/reflect/KFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lio/dcloud/uniapp/extapi/UniGetDeviceInfoKt;->isSimulator:Lkotlin/reflect/KFunction;

    return-object v0
.end method
