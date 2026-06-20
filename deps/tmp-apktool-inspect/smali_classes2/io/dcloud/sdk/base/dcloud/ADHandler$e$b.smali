.class Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;
.super Ljava/lang/Object;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"

# interfaces
.implements Lio/dcloud/p/y0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/p/y0;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v5, v4, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/p/c;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    :cond_0
    :try_start_0
    const-string p1, "io.dcloud.feature.pack.FileUtils"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 14
    const-string v0, "addFileToSystem"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Lio/dcloud/p/y0;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e$b;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    iget-object v5, v4, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->h:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$e;Ljava/lang/String;)V

    return-void
.end method
