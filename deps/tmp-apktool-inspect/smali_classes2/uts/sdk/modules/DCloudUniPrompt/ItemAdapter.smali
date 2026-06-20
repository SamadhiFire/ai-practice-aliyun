.class public Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "index.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001%B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u001c\u0010\u001d\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u001c\u0010!\u001a\u00020\"2\n\u0010#\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0008\u0010$\u001a\u00020\u001bH\u0016R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0006X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006&"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;",
        "dialog",
        "Landroid/app/Dialog;",
        "style",
        "Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "<init>",
        "(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V",
        "mItemList",
        "Lio/dcloud/uts/UTSArray;",
        "",
        "getMItemList",
        "()Lio/dcloud/uts/UTSArray;",
        "setMItemList",
        "(Lio/dcloud/uts/UTSArray;)V",
        "hostStyle",
        "getHostStyle",
        "()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;",
        "setHostStyle",
        "(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V",
        "hostDialog",
        "getHostDialog",
        "()Landroid/app/Dialog;",
        "setHostDialog",
        "(Landroid/app/Dialog;)V",
        "getItemViewType",
        "",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "",
        "holder",
        "getItemCount",
        "ViewHolder",
        "uni-prompt_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public hostDialog:Landroid/app/Dialog;

.field public hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

.field public mItemList:Lio/dcloud/uts/UTSArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 855
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->setHostDialog(Landroid/app/Dialog;)V

    .line 856
    invoke-virtual {p2}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemList()Lio/dcloud/uts/UTSArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->setMItemList(Lio/dcloud/uts/UTSArray;)V

    .line 857
    invoke-virtual {p0, p2}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V

    return-void
.end method


# virtual methods
.method public getHostDialog()Landroid/app/Dialog;
    .locals 1

    .line 853
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->hostDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hostDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;
    .locals 1

    .line 852
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hostStyle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 901
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getMItemList()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/uts/UTSArray;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 866
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x3ea

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/16 p1, 0x3e9

    return p1

    :cond_2
    return v1
.end method

.method public getMItemList()Lio/dcloud/uts/UTSArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->mItemList:Lio/dcloud/uts/UTSArray;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mItemList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 850
    check-cast p1, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->onBindViewHolder(Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getMItemList()Lio/dcloud/uts/UTSArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/dcloud/uts/UTSArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 894
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;->getItemName()Landroid/widget/TextView;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v0

    invoke-virtual {v0}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Luts/sdk/modules/DCloudUniPrompt/IndexKt;->isValidColor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;->getItemName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v1

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;->getItemColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 898
    :cond_0
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;->getItemName()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getHostDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {v0, v1, v2, p2}, Luts/sdk/modules/DCloudUniPrompt/ItemClickListener;-><init>(Landroid/app/Dialog;Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;Ljava/lang/Number;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 850
    invoke-virtual {p0, p1, p2}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3ea

    .line 877
    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 878
    sget-object p2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p2}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 879
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_ac_recyclerview_layout_night:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_ac_recyclerview_layout:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_1
    sget-object p2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p2}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 885
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_ac_recyclerview_layout_top_night:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_ac_recyclerview_layout_top:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    :goto_0
    new-instance p2, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter$ViewHolder;-><init>(Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setHostDialog(Landroid/app/Dialog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->hostDialog:Landroid/app/Dialog;

    return-void
.end method

.method public setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowActionSheetOptions;

    return-void
.end method

.method public setMItemList(Lio/dcloud/uts/UTSArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/uts/UTSArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/ItemAdapter;->mItemList:Lio/dcloud/uts/UTSArray;

    return-void
.end method
