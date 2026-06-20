.class public interface abstract Lio/dcloud/uts/component/IUTSComWrap;
.super Ljava/lang/Object;
.source "IUTSComWrap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/component/IUTSComWrap$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0016\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/dcloud/uts/component/IUTSComWrap;",
        "T",
        "",
        "wrapComponentHostView",
        "",
        "rootView",
        "Landroid/view/View;",
        "hostCom",
        "Lcom/taobao/weex/ui/component/WXComponent;",
        "utsplugin_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$wrapComponentHostView$jd(Lio/dcloud/uts/component/IUTSComWrap;Landroid/view/View;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lio/dcloud/uts/component/IUTSComWrap;->wrapComponentHostView(Landroid/view/View;Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method


# virtual methods
.method public wrapComponentHostView(Landroid/view/View;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/taobao/weex/ui/component/WXComponent<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hostCom"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
