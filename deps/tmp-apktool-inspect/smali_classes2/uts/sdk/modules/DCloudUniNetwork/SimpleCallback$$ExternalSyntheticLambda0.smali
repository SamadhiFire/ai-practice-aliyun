.class public final synthetic Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lio/dcloud/uts/UTSJSONObject;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSJSONObject;

    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$0:Lio/dcloud/uts/UTSJSONObject;

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    check-cast p2, Ljava/lang/Number;

    invoke-static {v0, v1, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleCallback;->$r8$lambda$CW6JUZELM2KeqXW_zPn49UMhHjA(Lio/dcloud/uts/UTSJSONObject;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Ljava/lang/Number;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
