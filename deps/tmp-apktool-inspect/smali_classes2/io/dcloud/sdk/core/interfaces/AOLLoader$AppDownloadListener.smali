.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;
.super Ljava/lang/Object;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onIdle()V
.end method

.method public abstract onInstalled(Ljava/lang/String;Ljava/lang/String;)V
.end method
