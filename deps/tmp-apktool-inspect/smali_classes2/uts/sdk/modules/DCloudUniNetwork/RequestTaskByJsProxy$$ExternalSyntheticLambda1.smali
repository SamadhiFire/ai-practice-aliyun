.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/UTSCallback;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/UTSCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/uts/UTSCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy$$ExternalSyntheticLambda1;->f$0:Lio/dcloud/uts/UTSCallback;

    check-cast p1, Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniNetwork/RequestTaskByJsProxy;->$r8$lambda$w_Obp3FxrIlbk6zUGbciFwGzk4w(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniNetwork/RequestTaskOnChunkReceivedListenerResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
