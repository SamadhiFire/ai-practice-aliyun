.class public Luts/sdk/modules/DCloudUniPrompt/UTSDialog;
.super Landroid/app/Dialog;
.source "index.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020#H\u0016J\u0010\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u001dH\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR\u001a\u0010\u0010\u001a\u00020\u0011X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\n\"\u0004\u0008\u0018\u0010\u000cR\u001a\u0010\u0019\u001a\u00020\u0008X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\n\"\u0004\u0008\u001b\u0010\u000cR\u001a\u0010\u001c\u001a\u00020\u001dX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006."
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniPrompt/UTSDialog;",
        "Landroid/app/Dialog;",
        "Landroid/view/View$OnClickListener;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "tv_title",
        "Landroid/widget/TextView;",
        "getTv_title",
        "()Landroid/widget/TextView;",
        "setTv_title",
        "(Landroid/widget/TextView;)V",
        "tv_content",
        "getTv_content",
        "setTv_content",
        "et_content",
        "Landroid/widget/EditText;",
        "getEt_content",
        "()Landroid/widget/EditText;",
        "setEt_content",
        "(Landroid/widget/EditText;)V",
        "tvCancelAction",
        "getTvCancelAction",
        "setTvCancelAction",
        "tvSureAction",
        "getTvSureAction",
        "setTvSureAction",
        "view_split_line_v",
        "Landroid/view/View;",
        "getView_split_line_v",
        "()Landroid/view/View;",
        "setView_split_line_v",
        "(Landroid/view/View;)V",
        "hostStyle",
        "Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "getHostStyle",
        "()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;",
        "setHostStyle",
        "(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V",
        "dismiss",
        "",
        "initStyle",
        "style",
        "onClick",
        "view",
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
.field public et_content:Landroid/widget/EditText;

.field private hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

.field public tvCancelAction:Landroid/widget/TextView;

.field public tvSureAction:Landroid/widget/TextView;

.field public tv_content:Landroid/widget/TextView;

.field public tv_title:Landroid/widget/TextView;

.field public view_split_line_v:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 577
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    sget p1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_modal_dialog_night:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setContentView(I)V

    goto :goto_0

    .line 580
    :cond_0
    sget p1, Lio/dcloud/uts/prompt/R$layout;->uni_app_uni_prompt_modal_dialog:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setContentView(I)V

    .line 582
    :goto_0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 583
    :cond_1
    sget p1, Lio/dcloud/uts/prompt/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTv_title(Landroid/widget/TextView;)V

    .line 584
    sget p1, Lio/dcloud/uts/prompt/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTv_content(Landroid/widget/TextView;)V

    .line 585
    sget p1, Lio/dcloud/uts/prompt/R$id;->et_content:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setEt_content(Landroid/widget/EditText;)V

    .line 586
    sget p1, Lio/dcloud/uts/prompt/R$id;->tvCancelAction:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTvCancelAction(Landroid/widget/TextView;)V

    .line 587
    sget p1, Lio/dcloud/uts/prompt/R$id;->tvSureAction:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setTvSureAction(Landroid/widget/TextView;)V

    .line 588
    sget p1, Lio/dcloud/uts/prompt/R$id;->view_split_line_v:I

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setView_split_line_v(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 6

    .line 592
    new-instance v0, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 593
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->setComplete(Lkotlin/jvm/functions/Function1;)V

    .line 597
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getEt_content()Landroid/widget/EditText;
    .locals 1

    .line 572
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->et_content:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "et_content"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;
    .locals 1

    .line 590
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    return-object v0
.end method

.method public getTvCancelAction()Landroid/widget/TextView;
    .locals 1

    .line 573
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvCancelAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tvCancelAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTvSureAction()Landroid/widget/TextView;
    .locals 1

    .line 574
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvSureAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tvSureAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTv_content()Landroid/widget/TextView;
    .locals 1

    .line 571
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tv_content"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTv_title()Landroid/widget/TextView;
    .locals 1

    .line 570
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tv_title"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView_split_line_v()Landroid/view/View;
    .locals 1

    .line 575
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->view_split_line_v:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "view_split_line_v"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V
    .locals 6

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0, v0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->setCanceledOnTouchOutside(Z)V

    .line 602
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getShowCancel()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getShowCancel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getView_split_line_v()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 605
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_right_night:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_right:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getView_split_line_v()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 614
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_total_night:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v1

    sget v5, Lio/dcloud/uts/prompt/R$drawable;->uni_app_uni_prompt_dialog_button_select_total:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 621
    :goto_0
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getEditable()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getEditable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 622
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 623
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 625
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 626
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 627
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 628
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 629
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 631
    :cond_3
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getPlaceholderText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 632
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getPlaceholderText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 634
    :cond_4
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 635
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 638
    :cond_5
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 641
    :cond_6
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 642
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 643
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 646
    :cond_7
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    :goto_1
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 649
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getContent()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 652
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 653
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 655
    :cond_8
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 659
    :cond_9
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 660
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_title()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppDarkMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 664
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text_night:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 666
    :cond_a
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/uts/prompt/R$color;->uni_app_uni_prompt_dialog_title_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 669
    :cond_b
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTv_content()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    :cond_c
    :goto_2
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 674
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    :cond_d
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 678
    :try_start_0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getCancelColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :catchall_0
    :cond_e
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 683
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    :cond_f
    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 687
    :try_start_1
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getConfirmColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 691
    :catchall_1
    :cond_10
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvCancelAction()Landroid/widget/TextView;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getTvSureAction()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    new-instance v1, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lio/dcloud/uts/prompt/R$id;->tvCancelAction:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 p1, 0x0

    .line 697
    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setConfirm(Z)V

    const/4 p1, 0x1

    .line 698
    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setCancel(Z)V

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lio/dcloud/uts/prompt/R$id;->tvSureAction:I

    if-ne p1, v0, :cond_2

    .line 700
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getEt_content()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p1, v0}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    .line 701
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {v1, v3}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setContent(Ljava/lang/String;)V

    .line 704
    :cond_1
    invoke-virtual {v1, p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalSuccess;->setContent(Ljava/lang/String;)V

    .line 706
    :cond_2
    :goto_0
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_3
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_4
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 709
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->getHostStyle()Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;->setComplete(Lkotlin/jvm/functions/Function1;)V

    .line 711
    :cond_5
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->dismiss()V

    return-void
.end method

.method public setEt_content(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->et_content:Landroid/widget/EditText;

    return-void
.end method

.method public setHostStyle(Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;)V
    .locals 0

    .line 590
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->hostStyle:Luts/sdk/modules/DCloudUniPrompt/ShowModalOptions;

    return-void
.end method

.method public setTvCancelAction(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvCancelAction:Landroid/widget/TextView;

    return-void
.end method

.method public setTvSureAction(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tvSureAction:Landroid/widget/TextView;

    return-void
.end method

.method public setTv_content(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_content:Landroid/widget/TextView;

    return-void
.end method

.method public setTv_title(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->tv_title:Landroid/widget/TextView;

    return-void
.end method

.method public setView_split_line_v(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrompt/UTSDialog;->view_split_line_v:Landroid/view/View;

    return-void
.end method
