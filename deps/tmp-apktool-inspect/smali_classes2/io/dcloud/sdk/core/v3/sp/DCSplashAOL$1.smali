.class Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;
.super Ljava/lang/Object;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"

# interfaces
.implements Lio/dcloud/p/v2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;->load(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

.field final synthetic b:Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->b:Lio/dcloud/sdk/core/v3/sp/DCSplashAOL;

    iput-object p2, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getConfig"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lorg/json/JSONObject;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/sdk/core/v3/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v3/sp/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/v3/sp/DCSplashAOLLoadListener;->onSplashAOLLoad()V

    return-void
.end method
