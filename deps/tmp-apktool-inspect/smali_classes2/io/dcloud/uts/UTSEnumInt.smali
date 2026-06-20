.class public interface abstract Lio/dcloud/uts/UTSEnumInt;
.super Ljava/lang/Object;
.source "UTSEnumInt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/uts/UTSEnumInt$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0011\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0000H\u0096\u0004J\u0011\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0000H\u0096\u0004R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/dcloud/uts/UTSEnumInt;",
        "",
        "value",
        "",
        "getValue",
        "()I",
        "and",
        "other",
        "or",
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
.method public static synthetic access$and$jd(Lio/dcloud/uts/UTSEnumInt;Lio/dcloud/uts/UTSEnumInt;)I
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/dcloud/uts/UTSEnumInt;->and(Lio/dcloud/uts/UTSEnumInt;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$or$jd(Lio/dcloud/uts/UTSEnumInt;Lio/dcloud/uts/UTSEnumInt;)I
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lio/dcloud/uts/UTSEnumInt;->or(Lio/dcloud/uts/UTSEnumInt;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public and(Lio/dcloud/uts/UTSEnumInt;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lio/dcloud/uts/UTSEnumInt;->getValue()I

    move-result v0

    invoke-interface {p1}, Lio/dcloud/uts/UTSEnumInt;->getValue()I

    move-result p1

    and-int/2addr p1, v0

    return p1
.end method

.method public abstract getValue()I
.end method

.method public or(Lio/dcloud/uts/UTSEnumInt;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/dcloud/uts/UTSEnumInt;->getValue()I

    move-result v0

    invoke-interface {p1}, Lio/dcloud/uts/UTSEnumInt;->getValue()I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method
