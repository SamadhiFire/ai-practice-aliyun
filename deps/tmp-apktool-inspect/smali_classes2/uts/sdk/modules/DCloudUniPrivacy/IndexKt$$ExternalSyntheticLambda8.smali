.class public final synthetic Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda8;
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

    iput-object p1, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda8;->f$0:Lio/dcloud/uts/UTSCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniPrivacy/IndexKt$$ExternalSyntheticLambda8;->f$0:Lio/dcloud/uts/UTSCallback;

    check-cast p1, Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniPrivacy/IndexKt;->$r8$lambda$E4LizqSaDmDkGOfJ_PmAWivZEEo(Lio/dcloud/uts/UTSCallback;Luts/sdk/modules/DCloudUniPrivacy/PrivacyChangeResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
