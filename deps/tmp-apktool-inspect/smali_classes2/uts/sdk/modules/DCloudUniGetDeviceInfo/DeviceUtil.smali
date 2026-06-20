.class public Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;",
        "",
        "<init>",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

.field private static KEY_COLOROS_VERSION_NAME:Ljava/lang/String;

.field private static KEY_EMUI_VERSION_NAME:Ljava/lang/String;

.field private static KEY_FLYME_VERSION_NAME:Ljava/lang/String;

.field private static KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String;

.field private static KEY_MAGICUI_VERSION:Ljava/lang/String;

.field private static KEY_MIUI_VERSION_NAME:Ljava/lang/String;

.field private static KEY_NUBIA_VERSION_CODE:Ljava/lang/String;

.field private static KEY_NUBIA_VERSION_NAME:Ljava/lang/String;

.field private static KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String;

.field private static KEY_VIVO_VERSION:Ljava/lang/String;

.field private static KEY_VIVO_VERSION_NAME:Ljava/lang/String;

.field private static customOS:Ljava/lang/String;

.field private static customOSVersion:Ljava/lang/String;

.field private static final rootRelatedDirs:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    const/16 v0, 0x12

    .line 308
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 309
    const-string v2, "/su/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 310
    const-string v2, "/sbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 311
    const-string v2, "/data/local/xbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 312
    const-string v2, "/data/local/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 313
    const-string v2, "/data/local/su"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 314
    const-string v2, "/system/xbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 315
    const-string v2, "/system/bin/su"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 316
    const-string v2, "/system/sd/xbin/su"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 317
    const-string v2, "/system/bin/failsafe/su"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 318
    const-string v2, "/system/bin/cufsdosck"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 319
    const-string v2, "/system/xbin/cufsdosck"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 320
    const-string v2, "/system/bin/cufsmgr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 321
    const-string v2, "/system/xbin/cufsmgr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 322
    const-string v2, "/system/bin/cufaevdd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 323
    const-string v2, "/system/xbin/cufaevdd"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 324
    const-string v2, "/system/bin/conbb"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 325
    const-string v2, "/system/xbin/conbb"

    aput-object v2, v0, v1

    .line 307
    invoke-static {v0}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->rootRelatedDirs:Lio/dcloud/uts/UTSArray;

    .line 327
    const-string v0, "hw_sc.build.platform.version"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String;

    .line 328
    const-string v0, "ro.build.version.emui"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_EMUI_VERSION_NAME:Ljava/lang/String;

    .line 329
    const-string v0, "ro.build.version.magic"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MAGICUI_VERSION:Ljava/lang/String;

    .line 330
    const-string v0, "ro.miui.ui.version.name"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MIUI_VERSION_NAME:Ljava/lang/String;

    .line 331
    const-string v0, "ro.build.version.opporom"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_COLOROS_VERSION_NAME:Ljava/lang/String;

    .line 332
    const-string v0, "ro.vivo.os.name"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_VIVO_VERSION_NAME:Ljava/lang/String;

    .line 333
    const-string v0, "ro.vivo.os.version"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_VIVO_VERSION:Ljava/lang/String;

    .line 334
    const-string v0, "ro.rom.version"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String;

    .line 335
    const-string v0, "ro.build.display.id"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_FLYME_VERSION_NAME:Ljava/lang/String;

    .line 336
    const-string v0, "ro.build.nubia.rom.name"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_NAME:Ljava/lang/String;

    .line 337
    const-string v0, "ro.build.nubia.rom.code"

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCustomOS$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCustomOSVersion$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_COLOROS_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_COLOROS_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_EMUI_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_EMUI_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_FLYME_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_FLYME_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_HARMONYOS_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_MAGICUI_VERSION$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MAGICUI_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_MIUI_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_MIUI_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_NUBIA_VERSION_CODE$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_NUBIA_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_NUBIA_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_ONEPLUS_VERSION_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getKEY_VIVO_VERSION$cp()Ljava/lang/String;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->KEY_VIVO_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRootRelatedDirs$cp()Lio/dcloud/uts/UTSArray;
    .locals 1

    .line 303
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->rootRelatedDirs:Lio/dcloud/uts/UTSArray;

    return-object v0
.end method

.method public static final synthetic access$setCustomOS$cp(Ljava/lang/String;)V
    .locals 0

    .line 303
    sput-object p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOS:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCustomOSVersion$cp(Ljava/lang/String;)V
    .locals 0

    .line 303
    sput-object p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->customOSVersion:Ljava/lang/String;

    return-void
.end method
