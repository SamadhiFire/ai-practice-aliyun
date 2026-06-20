.class public final Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nindex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt\n+ 2 UTSArray.kt\nio/dcloud/uts/UTSArrayKt\n*L\n1#1,715:1\n33#2:716\n*S KotlinDebug\n*F\n+ 1 index.kt\nuts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt\n*L\n601#1:716\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0014\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u001a\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u0010\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0012\u001a\u0006\u0010\u0013\u001a\u00020\u0010\"2\u0010\u0007\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n*D\u0010\u0000\"\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00012\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "GetDeviceInfo",
        "Lkotlin/Function1;",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;",
        "Lkotlin/ParameterName;",
        "name",
        "options",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;",
        "getDeviceInfo",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfo;",
        "getGetDeviceInfo",
        "()Lkotlin/jvm/functions/Function1;",
        "getBaseInfo",
        "filterArray",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "isSimulator",
        "",
        "getDeviceInfoByJs",
        "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptionsJSONObject;",
        "isSimulatorByJs",
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


# direct methods
.method public static synthetic $r8$lambda$RSDdgUlnqXGNZ59TmgHLLOcpLjY(Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;)Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;
    .locals 0

    invoke-static {p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->getDeviceInfo$lambda$0(Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;)Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 600
    new-instance v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->getDeviceInfo:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getBaseInfo(Lio/dcloud/uts/UTSArray;)Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)",
            "Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "filterArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 634
    new-instance v2, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;

    const v25, 0x3fffff

    const/16 v26, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v26}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 635
    const-string v3, "brand"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 636
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setBrand(Ljava/lang/String;)V

    .line 638
    :cond_0
    const-string v3, "deviceBrand"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 639
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setDeviceBrand(Ljava/lang/String;)V

    .line 641
    :cond_1
    const-string v3, "model"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 642
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setModel(Ljava/lang/String;)V

    .line 644
    :cond_2
    const-string v3, "deviceModel"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 645
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setDeviceModel(Ljava/lang/String;)V

    .line 647
    :cond_3
    const-string v3, "deviceType"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 648
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v3, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getSystemUIModeType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setDeviceType(Ljava/lang/String;)V

    .line 650
    :cond_4
    const-string v3, "deviceOrientation"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 651
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v3, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getOrientation(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setDeviceOrientation(Ljava/lang/String;)V

    .line 653
    :cond_5
    const-string v3, "deviceId"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 654
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v3, v5}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setDeviceId(Ljava/lang/String;)V

    .line 656
    :cond_6
    const-string v3, "devicePixelRatio"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_7

    .line 657
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v3, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getScaledDensity(Landroid/app/Activity;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setDevicePixelRatio(Ljava/lang/Number;)V

    .line 659
    :cond_7
    const-string v3, "system"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_8

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Android "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setSystem(Ljava/lang/String;)V

    .line 662
    :cond_8
    const-string v3, "platform"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const-string v5, "android"

    if-eq v3, v4, :cond_9

    .line 663
    invoke-virtual {v2, v5}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setPlatform(Ljava/lang/String;)V

    .line 665
    :cond_9
    const-string v3, "isRoot"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_a

    .line 666
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->hasRootPrivilege()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setRoot(Ljava/lang/Boolean;)V

    .line 668
    :cond_a
    const-string v3, "isSimulator"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_b

    .line 669
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->isSimulator(Landroid/content/Context;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setSimulator(Ljava/lang/Boolean;)V

    .line 671
    :cond_b
    const-string v3, "isUSBDebugging"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_c

    .line 672
    sget-object v3, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->listeningForADB()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setUSBDebugging(Ljava/lang/Boolean;)V

    .line 674
    :cond_c
    const-string v3, "osName"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_d

    .line 675
    invoke-virtual {v2, v5}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setOsName(Ljava/lang/String;)V

    .line 677
    :cond_d
    const-string v3, "osVersion"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v4, :cond_e

    .line 678
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setOsVersion(Ljava/lang/String;)V

    .line 680
    :cond_e
    const-string v3, "osLanguage"

    invoke-virtual {v0, v3}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_f

    .line 681
    sget-object v5, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v5, v1}, Lio/dcloud/uts/UTSAndroid;->getLanguageInfo(Landroid/content/Context;)Lio/dcloud/uts/UTSJSONObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/dcloud/uts/UTSJSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setOsLanguage(Ljava/lang/String;)V

    .line 683
    :cond_f
    const-string v1, "osTheme"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_10

    .line 684
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getOsTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setOsTheme(Ljava/lang/String;)V

    .line 686
    :cond_10
    const-string v1, "osAndroidAPILevel"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_11

    .line 687
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setOsAndroidAPILevel(Ljava/lang/Number;)V

    .line 689
    :cond_11
    const-string v1, "romName"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_12

    .line 690
    sget-object v1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getRomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setRomName(Ljava/lang/String;)V

    .line 692
    :cond_12
    const-string v1, "romVersion"

    invoke-virtual {v0, v1}, Lio/dcloud/uts/UTSArray;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_13

    .line 693
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;->setRomVersion(Ljava/lang/String;)V

    :cond_13
    return-object v2
.end method

.method private static final getDeviceInfo$lambda$0(Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;)Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;
    .locals 3

    .line 716
    new-instance v0, Lio/dcloud/uts/UTSArray;

    invoke-direct {v0}, Lio/dcloud/uts/UTSArray;-><init>()V

    if-eqz p0, :cond_0

    .line 602
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;->getFilter()Lio/dcloud/uts/UTSArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;->getFilter()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 605
    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->getLength()Ljava/lang/Number;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v2}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/16 p0, 0x14

    .line 607
    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "brand"

    aput-object v0, p0, v1

    const/4 v0, 0x1

    .line 608
    const-string v1, "deviceBrand"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    .line 609
    const-string v1, "deviceId"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    .line 610
    const-string v1, "model"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    .line 611
    const-string v1, "deviceModel"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    .line 612
    const-string v1, "deviceType"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    .line 613
    const-string v1, "deviceOrientation"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    .line 614
    const-string v1, "devicePixelRatio"

    aput-object v1, p0, v0

    const/16 v0, 0x8

    .line 615
    const-string v1, "system"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    .line 616
    const-string v1, "platform"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    .line 617
    const-string v1, "isRoot"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    .line 618
    const-string v1, "isSimulator"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    .line 619
    const-string v1, "isUSBDebugging"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    .line 620
    const-string v1, "osName"

    aput-object v1, p0, v0

    const/16 v0, 0xe

    .line 621
    const-string v1, "osVersion"

    aput-object v1, p0, v0

    const/16 v0, 0xf

    .line 622
    const-string v1, "osLanguage"

    aput-object v1, p0, v0

    const/16 v0, 0x10

    .line 623
    const-string v1, "osTheme"

    aput-object v1, p0, v0

    const/16 v0, 0x11

    .line 624
    const-string v1, "osAndroidAPILevel"

    aput-object v1, p0, v0

    const/16 v0, 0x12

    .line 625
    const-string v1, "romName"

    aput-object v1, p0, v0

    const/16 v0, 0x13

    .line 626
    const-string v1, "romVersion"

    aput-object v1, p0, v0

    .line 606
    invoke-static {p0}, Lio/dcloud/uts/UTSArrayKt;->_uA([Ljava/lang/Object;)Lio/dcloud/uts/UTSArray;

    move-result-object v0

    .line 630
    :cond_2
    invoke-static {v0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->getBaseInfo(Lio/dcloud/uts/UTSArray;)Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;

    move-result-object p0

    return-object p0
.end method

.method public static final getDeviceInfoByJs(Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptionsJSONObject;)Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;
    .locals 2

    .line 705
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->getDeviceInfo:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    .line 706
    new-instance v1, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptionsJSONObject;->getFilter()Lio/dcloud/uts/UTSArray;

    move-result-object p0

    invoke-direct {v1, p0}, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoOptions;-><init>(Lio/dcloud/uts/UTSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 705
    :goto_0
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luts/sdk/modules/DCloudUniGetDeviceInfo/GetDeviceInfoResult;

    return-object p0
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

    .line 600
    sget-object v0, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->getDeviceInfo:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final isSimulator()Z
    .locals 3

    .line 698
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getUniActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 699
    sget-object v1, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil;->Companion:Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Luts/sdk/modules/DCloudUniGetDeviceInfo/DeviceUtil$Companion;->isSimulator(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isSimulatorByJs()Z
    .locals 1

    .line 713
    invoke-static {}, Luts/sdk/modules/DCloudUniGetDeviceInfo/IndexKt;->isSimulator()Z

    move-result v0

    return v0
.end method
