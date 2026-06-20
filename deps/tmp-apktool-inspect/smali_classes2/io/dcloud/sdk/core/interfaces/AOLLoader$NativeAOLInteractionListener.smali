.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLInteractionListener;
.super Ljava/lang/Object;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"

# interfaces
.implements Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAOLInteractionListener"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract getAppInfo()Lio/dcloud/sdk/core/interfaces/AOLLoader$AppInfo;
.end method

.method public abstract getButtonText()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/interfaces/AOLLoader$AdImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getMaterialType()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoDuration()D
.end method

.method public abstract getVideoView(Landroid/app/Activity;)Landroid/view/View;
.end method

.method public abstract isExpressAd()Z
.end method

.method public abstract setAppDownloadListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;)V
.end method

.method public abstract setVideoAdListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$VideoAdListener;)V
.end method
