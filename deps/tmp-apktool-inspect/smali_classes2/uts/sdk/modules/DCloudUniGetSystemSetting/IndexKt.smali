.class public final Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0006\u0010\u0007\u001a\u00020\u0002\"\u001b\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006*\u0016\u0010\u0000\"\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "GetSystemSetting",
        "Lkotlin/Function0;",
        "Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;",
        "getSystemSetting",
        "Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSetting;",
        "getGetSystemSetting",
        "()Lkotlin/jvm/functions/Function0;",
        "getSystemSettingByJs",
        "uni-getSystemSetting_release"
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
.field private static final getSystemSetting:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UFmVo8ybvdD5M__akn3WOl6qIvQ()Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;
    .locals 1

    invoke-static {}, Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt;->getSystemSetting$lambda$0()Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt;->getSystemSetting:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final getGetSystemSetting()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt;->getSystemSetting:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method private static final getSystemSetting$lambda$0()Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;
    .locals 11

    .line 75
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    sget-object v1, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;->deviceOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;->locationEnable(Landroid/content/Context;)Z

    move-result v5

    new-instance v2, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;

    const/16 v9, 0x1b

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;-><init>(Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    :try_start_0
    sget-object v1, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;->blueToothEnable(Landroid/content/Context;)Z

    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->setBluetoothEnabled(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    const-string v1, "Missing permissions required by BluetoothAdapter.isEnabled: android.permission.BLUETOOTH"

    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->setBluetoothError(Ljava/lang/String;)V

    .line 85
    :goto_0
    :try_start_1
    sget-object v1, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/DeviceUtil$Companion;->wifiEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->setWifiEnabled(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 88
    :catch_1
    const-string v0, "Missing permissions required by WifiManager.isWifiEnabled: android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v0}, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;->setWifiError(Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method public static final getSystemSettingByJs()Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;
    .locals 1

    .line 93
    sget-object v0, Luts/sdk/modules/DCloudUniGetSystemSetting/IndexKt;->getSystemSetting:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luts/sdk/modules/DCloudUniGetSystemSetting/GetSystemSettingResult;

    return-object v0
.end method
