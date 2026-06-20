.class public interface abstract Lio/dcloud/sdk/core/interfaces/AOLLoader$NativeAOLListener;
.super Ljava/lang/Object;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/interfaces/AOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAOLListener"
.end annotation


# virtual methods
.method public abstract dislike(Landroid/app/Activity;)V
.end method

.method public abstract getVideoView(Landroid/app/Activity;)Landroid/view/View;
.end method

.method public abstract registerViewForInteraction(Landroid/app/Activity;Landroid/widget/FrameLayout;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/FrameLayout;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAppDownloadListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$AppDownloadListener;)V
.end method

.method public abstract setVideoAdListener(Lio/dcloud/sdk/core/interfaces/AOLLoader$VideoAdListener;)V
.end method
