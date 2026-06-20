.class public final Lio/dcloud/uts/DateParser;
.super Ljava/lang/Object;
.source "Date2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eJ\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u0006J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J&\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J \u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J&\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J \u0010\"\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0006H\u0002J\u0010\u0010$\u001a\u0004\u0018\u00010\u00172\u0006\u0010%\u001a\u00020\u0006J6\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\u0010H\u0002J$\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u001d2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J&\u0010*\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001d2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0010H\u0002R\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006+"
    }
    d2 = {
        "Lio/dcloud/uts/DateParser;",
        "",
        "<init>",
        "()V",
        "DAY_NAMES",
        "",
        "",
        "getDAY_NAMES",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "MONTH_NAMES",
        "getMONTH_NAMES",
        "getDateString",
        "dateDouble",
        "",
        "magic",
        "",
        "timeClip",
        "t",
        "parseAndValidateDate",
        "dateString",
        "(Ljava/lang/String;)Ljava/lang/Double;",
        "parseOtherString",
        "Lio/dcloud/uts/ISODateResult;",
        "skipSpaces",
        "",
        "str",
        "startPos",
        "parseMonth",
        "Lkotlin/Pair;",
        "matchString",
        "match",
        "parseTimeZoneAbbr",
        "skipSeparators",
        "skipUntil",
        "chars",
        "parseISOString",
        "isoString",
        "getDigits",
        "minDigits",
        "maxDigits",
        "parseMilliseconds",
        "parseTzOffset",
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


# static fields
.field private static final DAY_NAMES:[Ljava/lang/String;

.field public static final INSTANCE:Lio/dcloud/uts/DateParser;

.field private static final MONTH_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/dcloud/uts/DateParser;

    invoke-direct {v0}, Lio/dcloud/uts/DateParser;-><init>()V

    sput-object v0, Lio/dcloud/uts/DateParser;->INSTANCE:Lio/dcloud/uts/DateParser;

    const/4 v0, 0x7

    .line 1066
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Sun"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Mon"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Tue"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Wed"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Thu"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "Fri"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "Sat"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lio/dcloud/uts/DateParser;->DAY_NAMES:[Ljava/lang/String;

    const/16 v1, 0xc

    .line 1068
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Jan"

    aput-object v2, v1, v3

    .line 1069
    const-string v2, "Feb"

    aput-object v2, v1, v4

    .line 1070
    const-string v2, "Mar"

    aput-object v2, v1, v5

    .line 1071
    const-string v2, "Apr"

    aput-object v2, v1, v6

    .line 1072
    const-string v2, "May"

    aput-object v2, v1, v7

    .line 1073
    const-string v2, "Jun"

    aput-object v2, v1, v8

    .line 1074
    const-string v2, "Jul"

    aput-object v2, v1, v9

    .line 1075
    const-string v2, "Aug"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    .line 1076
    const-string v2, "Sep"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    .line 1077
    const-string v2, "Oct"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    .line 1078
    const-string v2, "Nov"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    .line 1079
    const-string v2, "Dec"

    aput-object v2, v1, v0

    .line 1067
    sput-object v1, Lio/dcloud/uts/DateParser;->MONTH_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDigits(Ljava/lang/String;III)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1709
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_0

    if-ge v0, p4, :cond_0

    .line 1710
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-gt v3, v2, :cond_0

    const/16 v3, 0x3a

    if-ge v2, v3, :cond_0

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v0, p3, :cond_1

    .line 1718
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final matchString(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1555
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1556
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-static {p1, v0, p2}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 1557
    invoke-static {p1, p3, p2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final parseMilliseconds(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x64

    move v2, v1

    move v1, v0

    :goto_0
    const/4 v3, 0x3

    const/16 v4, 0x3a

    const/16 v5, 0x30

    if-ge v0, v3, :cond_0

    .line 1728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v5, v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 1729
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v5

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 1730
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1736
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v5, v0, :cond_1

    if-ge v0, v4, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1738
    :cond_1
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final parseMonth(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 1533
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "jan"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "feb"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "mar"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "apr"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "may"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "jun"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    .line 1534
    const-string v4, "jul"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "aug"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "sep"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "oct"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "nov"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "dec"

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1538
    aget-object v2, v1, v3

    .line 1539
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 1541
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {p1, v4, v5}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toLowerCase(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1540
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1543
    new-instance p1, Lkotlin/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final parseTimeZoneAbbr(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xb

    .line 1563
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "ut"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "utc"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gmt"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, -0x12c

    .line 1564
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "est"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/16 v2, -0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "edt"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/16 v2, -0x168

    .line 1565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cst"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string v3, "cdt"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const/16 v1, -0x1a4

    .line 1566
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mst"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string v3, "mdt"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, -0x1e0

    .line 1567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pst"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const-string v2, "pdt"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1562
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 1570
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1571
    invoke-direct {p0, p1, p2, v2}, Lio/dcloud/uts/DateParser;->matchString(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1572
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final parseTzOffset(Ljava/lang/String;I)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return-object v1

    .line 1747
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    add-int/2addr p2, v3

    const/4 v2, 0x2

    .line 1754
    invoke-direct {p0, p1, p2, v2, v2}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v1

    .line 1755
    :cond_3
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1756
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    .line 1758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 1760
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1761
    invoke-direct {p0, p1, v1, v2, v2}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1763
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr p2, v1

    .line 1764
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1768
    :cond_5
    new-instance p1, Lkotlin/Pair;

    mul-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final skipSeparators(Ljava/lang/String;I)I
    .locals 2

    .line 1581
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private final skipSpaces(Ljava/lang/String;I)Z
    .locals 1

    .line 1524
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1527
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7

    .line 1590
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public final getDAY_NAMES()[Ljava/lang/String;
    .locals 1

    .line 1065
    sget-object v0, Lio/dcloud/uts/DateParser;->DAY_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public final getDateString(DI)Ljava/lang/String;
    .locals 19

    shr-int/lit8 v0, p3, 0x4

    and-int/lit8 v1, v0, 0xf

    and-int/lit8 v2, p3, 0xf

    .line 1095
    sget-object v3, Lio/dcloud/uts/DateHolder;->INSTANCE:Lio/dcloud/uts/DateHolder;

    const/4 v4, 0x1

    and-int/2addr v0, v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move-wide/from16 v6, p1

    invoke-virtual {v3, v6, v7, v0, v5}, Lio/dcloud/uts/DateHolder;->getDateFields(DZZ)[D

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    if-eq v1, v3, :cond_1

    .line 1096
    const-string v0, "Invalid Date"

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Date value is NaN"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_2
    aget-wide v6, v0, v5

    double-to-int v6, v6

    .line 1100
    aget-wide v7, v0, v4

    double-to-int v7, v7

    .line 1101
    aget-wide v8, v0, v3

    double-to-int v8, v8

    const/4 v9, 0x3

    .line 1102
    aget-wide v10, v0, v9

    double-to-int v10, v10

    const/4 v11, 0x4

    .line 1103
    aget-wide v12, v0, v11

    double-to-int v12, v12

    const/4 v13, 0x5

    .line 1104
    aget-wide v13, v0, v13

    double-to-int v13, v13

    const/16 p1, 0x6

    .line 1105
    aget-wide v14, v0, p1

    double-to-int v14, v14

    const/4 v15, 0x7

    move/from16 p2, v11

    move/from16 v16, v12

    .line 1106
    aget-wide v11, v0, v15

    double-to-int v11, v11

    const/16 v12, 0x8

    move/from16 v17, v6

    .line 1107
    aget-wide v5, v0, v12

    double-to-int v0, v5

    .line 1109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v6, p3, 0x1

    .line 1112
    const-string v12, "+"

    const/16 v15, 0x30

    if-eqz v6, :cond_d

    .line 1113
    const-string v6, ", "

    if-eqz v1, :cond_b

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_5

    if-eq v1, v9, :cond_3

    goto/16 :goto_6

    .line 1155
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v7, v4

    .line 1156
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 1155
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v11, 0x2f

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1157
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v8

    .line 1155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1158
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    if-gez v17, :cond_4

    move/from16 v18, v4

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    :goto_1
    add-int/lit8 v11, v18, 0x4

    invoke-static {v8, v11, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v8

    .line 1155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1154
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v9, :cond_d

    .line 1161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_5
    if-ltz v17, :cond_6

    const/16 v2, 0x270f

    move/from16 v6, v17

    if-gt v6, v2, :cond_7

    .line 1141
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v6, p2

    invoke-static {v2, v6, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move/from16 v6, v17

    .line 1143
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v6, :cond_8

    move-object v11, v12

    goto :goto_2

    :cond_8
    const-string v11, ""

    :goto_2
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v11, p1

    .line 1144
    invoke-static {v6, v11, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 1143
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1147
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/2addr v7, v4

    .line 1148
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 1147
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1149
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 1147
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x54

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_9
    move/from16 v6, v17

    .line 1127
    sget-object v17, Lio/dcloud/uts/DateParser;->DAY_NAMES:[Ljava/lang/String;

    aget-object v11, v17, v11

    .line 1128
    sget-object v17, Lio/dcloud/uts/DateParser;->MONTH_NAMES:[Ljava/lang/String;

    aget-object v7, v17, v7

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v11, 0x20

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1131
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    .line 1130
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1133
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    if-gez v6, :cond_a

    const/16 v18, 0x1

    goto :goto_4

    :cond_a
    const/16 v18, 0x0

    :goto_4
    const/4 v6, 0x4

    add-int/lit8 v6, v18, 0x4

    invoke-static {v7, v6, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 1130
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v9, :cond_d

    .line 1136
    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    move/from16 v2, v17

    .line 1115
    sget-object v4, Lio/dcloud/uts/DateParser;->DAY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v11

    .line 1116
    sget-object v11, Lio/dcloud/uts/DateParser;->MONTH_NAMES:[Ljava/lang/String;

    aget-object v7, v11, v7

    .line 1118
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1119
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 1118
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v11, 0x20

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1121
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-gez v2, :cond_c

    const/16 v18, 0x1

    goto :goto_5

    :cond_c
    const/16 v18, 0x0

    :goto_5
    const/4 v2, 0x4

    add-int/lit8 v2, v18, 0x4

    invoke-static {v6, v2, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 1118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_6
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_14

    .line 1168
    const-string v2, " GMT"

    const/16 v4, 0x3a

    if-eqz v1, :cond_13

    const/4 v6, 0x1

    if-eq v1, v6, :cond_11

    if-eq v1, v3, :cond_10

    if-eq v1, v9, :cond_e

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v0, v10, 0xb

    const/16 v1, 0xc

    .line 1212
    rem-int/2addr v0, v1

    add-int/2addr v0, v6

    if-ge v10, v1, :cond_f

    const/16 v1, 0x41

    goto :goto_7

    :cond_f
    const/16 v1, 0x50

    .line 1215
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1217
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 1215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1218
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 1215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v11, 0x20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1203
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1205
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1206
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1207
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 1181
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 1181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1183
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    .line 1181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1184
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    .line 1181
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v0, :cond_12

    .line 1188
    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v0

    goto :goto_8

    .line 1191
    :cond_12
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    div-int/lit8 v2, v0, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1197
    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1171
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1173
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v15}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :cond_14
    :goto_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMONTH_NAMES()[Ljava/lang/String;
    .locals 1

    .line 1067
    sget-object v0, Lio/dcloud/uts/DateParser;->MONTH_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public final parseAndValidateDate(Ljava/lang/String;)Ljava/lang/Double;
    .locals 9

    const-string v0, "dateString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1250
    sget-object v0, Lio/dcloud/uts/DateParser;->INSTANCE:Lio/dcloud/uts/DateParser;

    invoke-virtual {v0, p1}, Lio/dcloud/uts/DateParser;->parseISOString(Ljava/lang/String;)Lio/dcloud/uts/ISODateResult;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1251
    invoke-virtual {v0, p1}, Lio/dcloud/uts/DateParser;->parseOtherString(Ljava/lang/String;)Lio/dcloud/uts/ISODateResult;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    .line 1254
    :cond_0
    invoke-virtual {v1}, Lio/dcloud/uts/ISODateResult;->getFields()[I

    move-result-object p1

    .line 1255
    invoke-virtual {v1}, Lio/dcloud/uts/ISODateResult;->isLocal()Z

    move-result v0

    const/4 v1, 0x6

    .line 1258
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v1, :cond_2

    .line 1263
    aget v7, p1, v5

    aget v8, v3, v5

    if-le v7, v8, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v3, 0x3

    .line 1270
    aget v3, p1, v3

    const/16 v5, 0x18

    if-ne v3, v5, :cond_4

    const/4 v3, 0x4

    aget v3, p1, v3

    if-nez v3, :cond_3

    const/4 v3, 0x5

    aget v3, p1, v3

    if-nez v3, :cond_3

    aget v1, p1, v1

    if-eqz v1, :cond_4

    :cond_3
    move v4, v6

    :cond_4
    if-eqz v4, :cond_6

    const/4 v1, 0x7

    .line 1276
    new-array v2, v1, [D

    :goto_2
    if-ge v6, v1, :cond_5

    aget v3, p1, v6

    int-to-double v3, v3

    aput-wide v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1280
    :cond_5
    sget-object v1, Lio/dcloud/uts/DateHolder;->INSTANCE:Lio/dcloud/uts/DateHolder;

    invoke-virtual {v1, v2, v0}, Lio/dcloud/uts/DateHolder;->setDateFields([DZ)D

    move-result-wide v0

    const/16 v2, 0x8

    .line 1283
    aget p1, p1, v2

    int-to-double v2, p1

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 1284
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2

    :array_0
    .array-data 4
        0x0
        0xb
        0x1f
        0x18
        0x3b
        0x3b
    .end array-data
.end method

.method public final parseISOString(Ljava/lang/String;)Lio/dcloud/uts/ISODateResult;
    .locals 13

    const-string v0, "isoString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    new-instance v0, Lio/dcloud/uts/ISODateResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Lio/dcloud/uts/ISODateResult;-><init>([IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1603
    invoke-virtual {v0}, Lio/dcloud/uts/ISODateResult;->getFields()[I

    move-result-object v4

    move v5, v2

    :goto_0
    const/16 v6, 0x9

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    move v8, v2

    .line 1607
    :goto_1
    aput v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1613
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    const/4 v9, 0x4

    const/4 v10, 0x6

    const/16 v11, 0x2d

    if-eq v5, v6, :cond_3

    if-eq v5, v11, :cond_3

    .line 1624
    invoke-direct {p0, p1, v2, v9, v9}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v1

    .line 1625
    :cond_2
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1626
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v2

    goto :goto_2

    .line 1616
    :cond_3
    invoke-direct {p0, p1, v8, v10, v10}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v6

    if-nez v6, :cond_4

    return-object v1

    .line 1617
    :cond_4
    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 1618
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    aput v6, v4, v2

    if-ne v5, v11, :cond_6

    if-nez v6, :cond_5

    return-object v1

    :cond_5
    neg-int v5, v6

    .line 1621
    aput v5, v4, v2

    :cond_6
    move v6, v12

    .line 1630
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_a

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_a

    add-int/lit8 v6, v6, 0x1

    .line 1632
    invoke-direct {p0, p1, v6, v7, v7}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v5

    if-nez v5, :cond_7

    return-object v1

    .line 1633
    :cond_7
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1634
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sub-int/2addr v5, v8

    aput v5, v4, v8

    if-gez v5, :cond_8

    return-object v1

    .line 1637
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_a

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_a

    add-int/lit8 v6, v6, 0x1

    .line 1639
    invoke-direct {p0, p1, v6, v7, v7}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v5

    if-nez v5, :cond_9

    return-object v1

    .line 1640
    :cond_9
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1641
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v7

    if-ge v5, v8, :cond_a

    return-object v1

    .line 1647
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_10

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x54

    if-ne v5, v11, :cond_10

    add-int/lit8 v6, v6, 0x1

    .line 1649
    invoke-virtual {v0, v8}, Lio/dcloud/uts/ISODateResult;->setLocal(Z)V

    .line 1651
    invoke-direct {p0, p1, v6, v7, v7}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v5

    if-nez v5, :cond_b

    return-object v1

    .line 1652
    :cond_b
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1653
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v3

    .line 1655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v6, v5, :cond_f

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x3a

    if-eq v5, v11, :cond_c

    goto/16 :goto_3

    :cond_c
    add-int/2addr v6, v8

    .line 1661
    invoke-direct {p0, p1, v6, v7, v7}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v3

    if-nez v3, :cond_d

    return-object v1

    .line 1662
    :cond_d
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1663
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v4, v9

    .line 1665
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v6, v3, :cond_10

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_10

    add-int/lit8 v6, v6, 0x1

    .line 1667
    invoke-direct {p0, p1, v6, v7, v7}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v3

    if-nez v3, :cond_e

    return-object v1

    .line 1668
    :cond_e
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1669
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v5, 0x5

    aput v3, v4, v5

    .line 1672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v6, v3, :cond_10

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_10

    add-int/lit8 v6, v6, 0x1

    .line 1674
    invoke-direct {p0, p1, v6}, Lio/dcloud/uts/DateParser;->parseMilliseconds(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v3

    .line 1675
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v4, v10

    .line 1676
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    goto :goto_4

    :cond_f
    :goto_3
    const/16 p1, 0x64

    .line 1656
    aput p1, v4, v3

    return-object v0

    .line 1682
    :cond_10
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v6, v3, :cond_13

    .line 1683
    invoke-virtual {v0, v2}, Lio/dcloud/uts/ISODateResult;->setLocal(Z)V

    .line 1685
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_11

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1688
    :cond_11
    invoke-direct {p0, p1, v6}, Lio/dcloud/uts/DateParser;->parseTzOffset(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v2

    if-nez v2, :cond_12

    return-object v1

    .line 1689
    :cond_12
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v5, 0x8

    aput v3, v4, v5

    .line 1690
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 1695
    :cond_13
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v6, p1, :cond_14

    return-object v0

    :cond_14
    return-object v1
.end method

.method public final parseOtherString(Ljava/lang/String;)Lio/dcloud/uts/ISODateResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "dateString"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    new-instance v2, Lio/dcloud/uts/ISODateResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5, v3}, Lio/dcloud/uts/ISODateResult;-><init>([IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1298
    invoke-virtual {v2}, Lio/dcloud/uts/ISODateResult;->getFields()[I

    move-result-object v6

    .line 1304
    new-array v7, v5, [I

    const/16 v8, 0x7d1

    .line 1308
    aput v8, v6, v4

    const/4 v8, 0x1

    .line 1309
    aput v4, v6, v8

    const/4 v9, 0x2

    .line 1310
    aput v8, v6, v9

    move v10, v5

    :goto_0
    const/16 v11, 0x9

    if-ge v10, v11, :cond_0

    .line 1313
    aput v4, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {v2, v8}, Lio/dcloud/uts/ISODateResult;->setLocal(Z)V

    move v10, v4

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    .line 1318
    :goto_1
    invoke-direct {v0, v1, v10}, Lio/dcloud/uts/DateParser;->skipSpaces(Ljava/lang/String;I)Z

    move-result v16

    move-object/from16 v17, v3

    const/16 v18, 0x76c

    move/from16 v19, v4

    if-eqz v16, :cond_21

    .line 1320
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v10, v3, :cond_21

    .line 1322
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    const/16 v21, 0x8

    move/from16 v22, v5

    const v5, 0x7fffffff

    const/16 v9, 0x2d

    if-eq v3, v4, :cond_1b

    if-ne v3, v9, :cond_1

    goto/16 :goto_a

    :cond_1
    const/16 v4, 0x30

    if-gt v4, v3, :cond_c

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_c

    .line 1350
    invoke-direct {v0, v1, v10, v8, v5}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1355
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1359
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 1361
    aput v5, v6, v22

    .line 1362
    sget-object v5, Lio/dcloud/uts/DateParser;->INSTANCE:Lio/dcloud/uts/DateParser;

    const/4 v9, 0x2

    invoke-direct {v5, v1, v3, v8, v9}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1367
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v10, 0x4

    .line 1368
    aput v9, v6, v10

    .line 1371
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    .line 1373
    invoke-direct {v5, v1, v3, v8, v9}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1378
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v9, 0x5

    .line 1379
    aput v4, v6, v9

    .line 1383
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x2e

    if-ne v4, v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 1386
    invoke-direct {v5, v1, v3}, Lio/dcloud/uts/DateParser;->parseMilliseconds(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v3

    .line 1387
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x6

    aput v4, v6, v5

    .line 1388
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_2

    :cond_2
    return-object v17

    :cond_3
    :goto_2
    move v10, v3

    move v14, v8

    goto/16 :goto_d

    :cond_4
    return-object v17

    :cond_5
    sub-int v4, v3, v10

    const/4 v9, 0x2

    if-le v4, v9, :cond_6

    .line 1399
    aput v5, v6, v19

    :goto_3
    move v10, v3

    goto/16 :goto_c

    :cond_6
    if-lt v5, v8, :cond_9

    const/16 v4, 0x1f

    if-le v5, v4, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v4, v22

    if-lt v12, v4, :cond_8

    return-object v17

    :cond_8
    add-int/lit8 v4, v12, 0x1

    .line 1412
    aput v5, v7, v12

    move v10, v3

    move v12, v4

    goto/16 :goto_d

    :cond_9
    :goto_4
    const/16 v4, 0x64

    if-ge v5, v4, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v18, v19

    :goto_5
    add-int v18, v5, v18

    const/16 v4, 0x32

    if-ge v5, v4, :cond_b

    const/16 v20, 0x64

    goto :goto_6

    :cond_b
    move/from16 v20, v19

    :goto_6
    add-int v18, v18, v20

    .line 1406
    aput v18, v6, v19

    goto :goto_3

    .line 1421
    :cond_c
    invoke-direct {v0, v1, v10}, Lio/dcloud/uts/DateParser;->parseMonth(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1422
    aput v3, v6, v8

    .line 1425
    sget-object v3, Lio/dcloud/uts/DateParser;->INSTANCE:Lio/dcloud/uts/DateParser;

    const-string v5, "0123456789 -/("

    invoke-direct {v3, v1, v4, v5}, Lio/dcloud/uts/DateParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    move v13, v8

    move v15, v13

    goto/16 :goto_d

    :cond_d
    const/16 v4, 0xc

    if-eqz v14, :cond_f

    .line 1428
    const-string v5, "PM"

    invoke-direct {v0, v1, v10, v5}, Lio/dcloud/uts/DateParser;->matchString(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v22, 0x3

    .line 1429
    aget v3, v6, v22

    if-eq v3, v4, :cond_e

    add-int/lit8 v3, v3, 0xc

    aput v3, v6, v22

    :cond_e
    :goto_7
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_d

    :cond_f
    if-eqz v14, :cond_11

    .line 1433
    const-string v5, "AM"

    invoke-direct {v0, v1, v10, v5}, Lio/dcloud/uts/DateParser;->matchString(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 v22, 0x3

    .line 1434
    aget v3, v6, v22

    if-le v3, v4, :cond_10

    return-object v17

    :cond_10
    if-ne v3, v4, :cond_e

    .line 1435
    aput v19, v6, v22

    goto :goto_7

    .line 1439
    :cond_11
    invoke-direct {v0, v1, v10}, Lio/dcloud/uts/DateParser;->parseTimeZoneAbbr(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1442
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 1443
    aput v5, v6, v21

    move/from16 v4, v19

    .line 1444
    invoke-virtual {v2, v4}, Lio/dcloud/uts/ISODateResult;->setLocal(Z)V

    .line 1442
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :cond_12
    move-object/from16 v4, v17

    :goto_8
    if-nez v4, :cond_20

    const/16 v4, 0x29

    const/16 v5, 0x28

    if-ne v3, v5, :cond_17

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    .line 1453
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v10, v9, :cond_16

    add-int/lit8 v9, v10, 0x1

    .line 1454
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    if-ne v10, v4, :cond_15

    add-int/lit8 v3, v3, -0x1

    :cond_15
    move v10, v9

    if-gtz v3, :cond_13

    :cond_16
    if-lez v3, :cond_20

    return-object v17

    :cond_17
    if-ne v3, v4, :cond_18

    return-object v17

    :cond_18
    if-nez v11, :cond_1a

    if-nez v13, :cond_1a

    if-nez v14, :cond_1a

    if-lez v12, :cond_19

    goto :goto_9

    :cond_19
    add-int/lit8 v10, v10, 0x1

    .line 1471
    const-string v3, " -/("

    invoke-direct {v0, v1, v10, v3}, Lio/dcloud/uts/DateParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    goto :goto_d

    :cond_1a
    :goto_9
    return-object v17

    :cond_1b
    :goto_a
    if-eqz v14, :cond_1d

    .line 1326
    invoke-direct {v0, v1, v10}, Lio/dcloud/uts/DateParser;->parseTzOffset(Ljava/lang/String;I)Lkotlin/Pair;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 1327
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    aput v10, v6, v21

    .line 1328
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/4 v4, 0x0

    .line 1329
    invoke-virtual {v2, v4}, Lio/dcloud/uts/ISODateResult;->setLocal(Z)V

    move v4, v8

    goto :goto_b

    :cond_1c
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_20

    :cond_1d
    add-int/2addr v10, v8

    .line 1335
    invoke-direct {v0, v1, v10, v8, v5}, Lio/dcloud/uts/DateParser;->getDigits(Ljava/lang/String;III)Lkotlin/Pair;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 1336
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 1337
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ne v3, v9, :cond_1f

    if-nez v5, :cond_1e

    return-object v17

    :cond_1e
    neg-int v5, v5

    :cond_1f
    const/16 v19, 0x0

    .line 1342
    aput v5, v6, v19

    :goto_c
    move v11, v8

    .line 1477
    :cond_20
    :goto_d
    invoke-direct {v0, v1, v10}, Lio/dcloud/uts/DateParser;->skipSeparators(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v3, v17

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_21
    add-int v1, v12, v11

    add-int/2addr v1, v13

    const/4 v4, 0x3

    if-le v1, v4, :cond_22

    return-object v17

    :cond_22
    if-eqz v12, :cond_30

    if-eq v12, v8, :cond_2e

    const/4 v9, 0x2

    if-eq v12, v9, :cond_27

    if-eq v12, v4, :cond_23

    goto/16 :goto_12

    .line 1509
    :cond_23
    aget v1, v7, v9

    const/16 v4, 0x64

    if-ge v1, v4, :cond_24

    goto :goto_e

    :cond_24
    const/16 v18, 0x0

    :goto_e
    add-int v18, v1, v18

    const/16 v4, 0x32

    if-ge v1, v4, :cond_25

    const/16 v20, 0x64

    goto :goto_f

    :cond_25
    const/16 v20, 0x0

    :goto_f
    add-int v18, v18, v20

    const/16 v19, 0x0

    aput v18, v6, v19

    .line 1510
    aget v1, v7, v19

    aput v1, v6, v8

    if-nez v15, :cond_26

    add-int/lit8 v1, v1, -0x1

    .line 1511
    aput v1, v6, v8

    .line 1512
    :cond_26
    aget v1, v7, v8

    const/16 v23, 0x2

    aput v1, v6, v23

    goto :goto_12

    :cond_27
    move/from16 v23, v9

    const/16 v19, 0x0

    if-eqz v11, :cond_29

    .line 1495
    aget v1, v7, v19

    aput v1, v6, v8

    if-nez v15, :cond_28

    add-int/lit8 v1, v1, -0x1

    .line 1496
    aput v1, v6, v8

    .line 1497
    :cond_28
    aget v1, v7, v8

    aput v1, v6, v23

    goto :goto_12

    :cond_29
    if-eqz v13, :cond_2c

    .line 1499
    aget v1, v7, v8

    const/16 v4, 0x64

    if-ge v1, v4, :cond_2a

    goto :goto_10

    :cond_2a
    const/16 v18, 0x0

    :goto_10
    add-int v18, v1, v18

    const/16 v3, 0x32

    if-ge v1, v3, :cond_2b

    goto :goto_11

    :cond_2b
    const/4 v4, 0x0

    :goto_11
    add-int v18, v18, v4

    const/16 v19, 0x0

    aput v18, v6, v19

    .line 1500
    aget v1, v7, v19

    const/16 v23, 0x2

    aput v1, v6, v23

    goto :goto_12

    :cond_2c
    const/16 v19, 0x0

    const/16 v23, 0x2

    .line 1502
    aget v1, v7, v19

    aput v1, v6, v8

    if-nez v15, :cond_2d

    add-int/lit8 v1, v1, -0x1

    .line 1503
    aput v1, v6, v8

    .line 1504
    :cond_2d
    aget v1, v7, v8

    aput v1, v6, v23

    goto :goto_12

    :cond_2e
    const/16 v19, 0x0

    const/16 v23, 0x2

    if-eqz v13, :cond_2f

    .line 1487
    aget v1, v7, v19

    aput v1, v6, v23

    goto :goto_12

    .line 1489
    :cond_2f
    aget v1, v7, v19

    aput v1, v6, v8

    if-nez v15, :cond_31

    add-int/lit8 v1, v1, -0x1

    .line 1490
    aput v1, v6, v8

    goto :goto_12

    :cond_30
    if-nez v11, :cond_31

    return-object v17

    .line 1516
    :cond_31
    :goto_12
    aget v1, v6, v8

    if-ltz v1, :cond_33

    const/16 v3, 0xb

    if-le v1, v3, :cond_32

    goto :goto_13

    :cond_32
    return-object v2

    :cond_33
    :goto_13
    return-object v17
.end method

.method public final timeClip(D)D
    .locals 2

    const-wide v0, -0x3cc14df73d240000L    # -8.64E15

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x433eb208c2dc0000L    # 8.64E15

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 1237
    invoke-static {p1, p2}, Lkotlin/math/MathKt;->truncate(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    add-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method
