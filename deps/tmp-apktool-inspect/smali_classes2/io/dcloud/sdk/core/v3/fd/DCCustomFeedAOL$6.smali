.class Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL$6;
.super Ljava/util/ArrayList;
.source "r8-map-id-4693bad0aaa94051d701483b5008bd96bc8e944ba1f0761f87775fd00bab3ef9"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL;->getFeedAOLView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL$6;->b:Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL;

    iput-object p2, p0, Lio/dcloud/sdk/core/v3/fd/DCCustomFeedAOL$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
