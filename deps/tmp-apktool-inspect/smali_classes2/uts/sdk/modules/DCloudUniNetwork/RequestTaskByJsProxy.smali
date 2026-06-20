.class public Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;
.super Ljava/lang/Object;
.source "index.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\u0013"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;",
        "",
        "ins",
        "Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/RequestTask;)V",
        "__instance",
        "get__instance",
        "()Luts/sdk/modules/DCloudUniNetwork/RequestTask;",
        "set__instance",
        "abortByJs",
        "",
        "onChunkReceivedByJs",
        "",
        "listener",
        "Lio/dcloud/uts/UTSCallback;",
        "offChunkReceivedByJs",
        "onHeadersReceivedByJs",
        "offHeadersReceivedByJs",
        "uni-network_release"
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
.field public __instance:Luts/sdk/modules/DCloudUniNetwork/RequestTask;


# direct methods
.method public static synthetic $r8$lambda$ZGNo5M4yyRBBTakX76wJisQpHKg(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->onHeadersReceivedByJs$lambda$1(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w_Obp3FxrIlbk6zUGbciFwGzk4w(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->onChunkReceivedByJs$lambda$0(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/RequestTask;)V
    .locals 1

    const-string v0, "ins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2757
    invoke-virtual {p0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->set__instance(Luts/sdk/modules/DCloudUniNetwork/RequestTask;)V

    return-void
.end method

.method private static final onChunkReceivedByJs$lambda$0(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;)Lkotlin/Unit;
    .locals 0

    .line 2767
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onHeadersReceivedByJs$lambda$1(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnHeadersReceivedListenerResult;)Lkotlin/Unit;
    .locals 0

    .line 2781
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/uts/UTSCallback;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abortByJs()V
    .locals 1

    .line 2760
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    move-result-object v0

    invoke-interface {v0}, Luts/sdk/modules/DCloudUniNetwork/RequestTask;->abort()V

    return-void
.end method

.method public get__instance()Luts/sdk/modules/DCloudUniNetwork/RequestTask;
    .locals 1

    .line 2755
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->__instance:Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "__instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public offChunkReceivedByJs(Ljava/lang/Object;)V
    .locals 1

    .line 2774
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    move-result-object v0

    invoke-interface {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTask;->offChunkReceived(Ljava/lang/Object;)V

    return-void
.end method

.method public offHeadersReceivedByJs(Ljava/lang/Object;)V
    .locals 1

    .line 2788
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    move-result-object v0

    invoke-interface {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTask;->offHeadersReceived(Ljava/lang/Object;)V

    return-void
.end method

.method public onChunkReceivedByJs(Lio/dcloud/uts/UTSCallback;)Ljava/lang/Number;
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2763
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2764
    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2766
    :cond_0
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda1;-><init>(Lio/dcloud/uts/UTSCallback;)V

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSCallback;->setFnJS(Ljava/lang/Object;)V

    .line 2769
    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p1

    .line 2763
    :goto_0
    const-string v1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"result\")] uts.sdk.modules.DCloudUniNetwork.RequestTaskOnChunkReceivedListenerResult, kotlin.Unit>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTask;->onChunkReceived(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public onHeadersReceivedByJs(Lio/dcloud/uts/UTSCallback;)Ljava/lang/Number;
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2777
    invoke-virtual {p0}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->get__instance()Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2778
    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2780
    :cond_0
    new-instance v1, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda0;-><init>(Lio/dcloud/uts/UTSCallback;)V

    invoke-virtual {p1, v1}, Lio/dcloud/uts/UTSCallback;->setFnJS(Ljava/lang/Object;)V

    .line 2783
    invoke-virtual {p1}, Lio/dcloud/uts/UTSCallback;->getFnJS()Ljava/lang/Object;

    move-result-object p1

    .line 2777
    :goto_0
    const-string v1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"result\")] uts.sdk.modules.DCloudUniNetwork.RequestTaskOnHeadersReceivedListenerResult, kotlin.Unit>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTask;->onHeadersReceived(Lkotlin/jvm/functions/Function1;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public set__instance(Luts/sdk/modules/DCloudUniNetwork/RequestTask;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2755
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->__instance:Luts/sdk/modules/DCloudUniNetwork/RequestTask;

    return-void
.end method
