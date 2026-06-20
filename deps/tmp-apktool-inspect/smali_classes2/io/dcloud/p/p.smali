.class public abstract Lio/dcloud/p/p;
.super Ljava/lang/Object;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/su/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/local/xbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/data/local/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/data/local/su"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/xbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/bin/su"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/system/sd/xbin/su"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/system/bin/failsafe/su"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/system/bin/cufsdosck"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/system/xbin/cufsdosck"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/system/bin/cufsmgr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/system/xbin/cufsmgr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/system/bin/cufaevdd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/system/xbin/cufaevdd"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/system/bin/conbb"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/system/xbin/conbb"

    aput-object v2, v0, v1

    sput-object v0, Lio/dcloud/p/p;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 7

    .line 2
    sget-object v0, Lio/dcloud/p/p;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 4
    aget-object v5, v0, v3

    .line 5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 10
    :goto_1
    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "test-keys"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    return v4

    :cond_4
    return v2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "accessibility_enabled"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :catch_0
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "-1"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
