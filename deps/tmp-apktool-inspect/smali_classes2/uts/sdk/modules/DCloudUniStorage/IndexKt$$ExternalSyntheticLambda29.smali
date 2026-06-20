.class public final synthetic Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;


# direct methods
.method public synthetic constructor <init>(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Luts/sdk/modules/DCloudUniStorage/IndexKt$$ExternalSyntheticLambda29;->f$0:Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;

    check-cast p1, Lio/dcloud/uniapp/UniError;

    invoke-static {v0, p1}, Luts/sdk/modules/DCloudUniStorage/IndexKt;->$r8$lambda$ORfmdEk755tjZKnmZTOdSZMXeAQ(Luts/sdk/modules/DCloudUniStorage/GetStorageInfoOptionsJSONObject;Lio/dcloud/uniapp/UniError;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
