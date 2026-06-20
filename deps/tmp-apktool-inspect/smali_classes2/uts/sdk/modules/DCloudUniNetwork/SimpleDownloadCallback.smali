.class public Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;
.super Ljava/lang/Object;
.source "index.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J+\u0010\u001c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0002\u0010 R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;",
        "Lokhttp3/Callback;",
        "listener",
        "Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;",
        "specifyPath",
        "",
        "<init>",
        "(Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;Ljava/lang/String;)V",
        "downloadFilePath",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "exception",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "getTempFile",
        "Ljava/io/File;",
        "getRealPath",
        "getFile",
        "isAbsolute",
        "",
        "path",
        "isDescendant",
        "parent",
        "child",
        "stringSplit",
        "",
        "str",
        "delim",
        "(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;",
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
.field private downloadFilePath:Ljava/lang/String;

.field private listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

.field private specifyPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;Ljava/lang/String;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specifyPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1834
    const-string v0, "/uni-download/"

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->downloadFilePath:Ljava/lang/String;

    .line 1836
    const-string v0, ""

    iput-object v0, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    .line 1838
    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1839
    const-string v1, "unifile://"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1840
    sget-object p1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {p1, p2}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    return-void

    .line 1842
    :cond_0
    iput-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile(Lokhttp3/Response;)Ljava/io/File;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1934
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xa

    .line 1985
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1934
    const-string v7, "."

    const-string v8, "/"

    const-string v9, "cause"

    const-string v10, "errorMsg"

    const-string v11, "602001"

    const-string v12, "errorCode"

    const-string v13, "-1"

    const-string v14, "statusCode"

    const/4 v15, 0x1

    .line 2048
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move/from16 v17, v15

    const/4 v4, 0x0

    .line 2047
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v4, 0x0

    if-nez v2, :cond_b

    .line 1935
    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2, v8}, Lio/dcloud/uts/UTSAndroid;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1936
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1937
    new-instance v2, Ljava/io/File;

    iget-object v15, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isDescendant(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1938
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1939
    invoke-virtual {v0, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1940
    invoke-virtual {v0, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1941
    const-string v2, "This path is not supported"

    invoke-virtual {v0, v10, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1942
    invoke-virtual {v0, v9, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1943
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1944
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1946
    :cond_1
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v2, v8, v4, v6, v4}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    .line 1947
    iget-object v6, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lio/dcloud/uts/NumberKt;->numberEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v6, 0x2f

    if-eqz v2, :cond_3

    .line 1948
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isAbsolute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1949
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    goto/16 :goto_3

    .line 1951
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v15}, Lio/dcloud/uts/UTSAndroid;->getAppTempPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1955
    :cond_3
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isAbsolute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1956
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    goto :goto_0

    .line 1958
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v2}, Lio/dcloud/uts/UTSAndroid;->getAppTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->specifyPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1960
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1963
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1964
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1967
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1968
    new-instance v6, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v6}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1969
    invoke-virtual {v6, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1970
    invoke-virtual {v6, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1971
    const-string v8, "The target file path is already a directory file, and file creation failed."

    invoke-virtual {v6, v10, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1972
    invoke-virtual {v6, v9, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1973
    iget-object v8, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v8, :cond_6

    invoke-interface {v8, v6}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    .line 1975
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x2

    .line 1976
    invoke-static {v0, v7, v4, v6, v4}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    .line 1979
    move-object/from16 v7, v18

    check-cast v7, Ljava/lang/Number;

    invoke-static {v2, v7}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v7

    if-ltz v7, :cond_7

    .line 1980
    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/Number;

    invoke-static {v0, v3, v2}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v3

    .line 1981
    invoke-static {v0, v2, v4, v6, v4}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v2, v3

    move-object v3, v0

    .line 1983
    :goto_1
    check-cast v16, Ljava/lang/Number;

    move-object/from16 v6, v16

    .line 1984
    :goto_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    invoke-static {v6, v7}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1986
    invoke-static {v6}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v6

    goto :goto_2

    .line 1988
    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1990
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1992
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 1995
    new-instance v3, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v3}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1996
    invoke-virtual {v3, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1997
    invoke-virtual {v3, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1998
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1999
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move/from16 v5, v17

    invoke-static {v0, v4, v5, v4}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2000
    new-instance v4, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v4, v0}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2001
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_a
    return-object v2

    .line 2007
    :cond_b
    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->getRealPath()Ljava/lang/String;

    move-result-object v2

    .line 2010
    :goto_3
    const-string v6, "content-disposition"

    invoke-virtual {v0, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2011
    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 2012
    const-string v15, ";"

    invoke-virtual {v1, v6, v15}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 2014
    move-object v15, v1

    check-cast v15, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;

    move-object/from16 v19, v3

    const/4 v15, 0x0

    .line 2016
    :goto_4
    array-length v4, v6

    if-ge v15, v4, :cond_10

    .line 2017
    aget-object v4, v6, v15

    if-eqz v4, :cond_e

    .line 2019
    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v20, v5

    const-string v5, "filename"

    move-object/from16 v21, v6

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v22, v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x2

    invoke-static {v4, v6, v9, v15, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2020
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v1, v4, v6}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 2021
    array-length v6, v4

    const/4 v10, 0x1

    if-le v6, v10, :cond_f

    .line 2022
    aget-object v6, v4, v9

    .line 2023
    aget-object v4, v4, v10

    .line 2024
    new-instance v9, Lio/dcloud/uts/UTSRegExp;

    const-string v10, "^\"|\"$"

    const-string v15, "g"

    invoke-direct {v9, v10, v15}, Lio/dcloud/uts/UTSRegExp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_c

    .line 2026
    invoke-static {v6, v9, v3}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Lio/dcloud/uts/UTSRegExp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_c
    if-eqz v4, :cond_d

    .line 2029
    invoke-static {v4, v9, v3}, Lio/dcloud/uts/StringKt;->replace(Ljava/lang/String;Lio/dcloud/uts/UTSRegExp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2031
    :cond_d
    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x1

    invoke-static {v6, v5, v10}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v4, :cond_f

    move-object/from16 v19, v4

    goto :goto_5

    :cond_e
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v22, v15

    :cond_f
    :goto_5
    add-int/lit8 v15, v22, 0x1

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto/16 :goto_4

    :cond_10
    move-object/from16 v20, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    goto :goto_6

    :cond_11
    move-object/from16 v20, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v19, v3

    .line 2044
    :goto_6
    move-object/from16 v4, v19

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "?"

    if-eqz v4, :cond_14

    .line 2045
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v4

    .line 2046
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-static {v4, v8, v10, v6, v10}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v8

    .line 2047
    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/Number;

    invoke-static {v8, v9}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v9

    if-ltz v9, :cond_14

    .line 2048
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Number;

    invoke-static {v8, v9}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-static {v4, v8, v10, v6, v10}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2049
    invoke-static {v4, v7, v10, v6, v10}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v8

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/Number;

    invoke-static {v8, v9}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v8

    if-gez v8, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_14

    .line 2050
    :cond_12
    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-static {v8, v9, v15, v6, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2051
    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/Number;

    invoke-static {v4, v5, v10, v6, v10}, Lio/dcloud/uts/StringKt;->indexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    :cond_13
    move-object/from16 v19, v4

    .line 2057
    :cond_14
    move-object/from16 v4, v19

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2059
    const-string v6, "content-type"

    invoke-virtual {v0, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_15
    move-object/from16 v4, v19

    .line 2065
    :cond_16
    const-string v0, "UTF-8"

    invoke-static {v4, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "decode(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2066
    check-cast v0, Ljava/lang/CharSequence;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v6, "separator"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lkotlin/text/Regex;

    invoke-direct {v6, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2067
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-static {v4, v5, v15, v6, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2068
    new-instance v0, Lkotlin/text/Regex;

    const-string v5, "\\?"

    invoke-direct {v0, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2070
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x50

    if-le v4, v5, :cond_18

    .line 2071
    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/Number;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v0, v4, v5}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 2072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2074
    :cond_18
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v6, 0x2

    const/4 v10, 0x0

    .line 2075
    invoke-static {v0, v7, v10, v6, v10}, Lio/dcloud/uts/StringKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/Number;

    move-result-object v4

    .line 2078
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lio/dcloud/uts/NumberKt;->compareTo(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v5

    if-ltz v5, :cond_1a

    .line 2079
    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/Number;

    invoke-static {v0, v5, v4}, Lio/dcloud/uts/StringKt;->substring(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    .line 2080
    invoke-static {v0, v4, v10, v6, v10}, Lio/dcloud/uts/StringKt;->substring$default(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2081
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move-object v5, v4

    goto :goto_7

    :cond_19
    move-object v3, v4

    goto :goto_7

    :cond_1a
    move-object v5, v0

    .line 2088
    :goto_7
    check-cast v16, Ljava/lang/Number;

    move-object/from16 v4, v16

    .line 2089
    :goto_8
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v20

    check-cast v6, Ljava/lang/Number;

    invoke-static {v4, v6}, Lio/dcloud/uts/NumberKt;->toString(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2091
    invoke-static {v4}, Lio/dcloud/uts/NumberKt;->inc(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v4

    goto :goto_8

    .line 2094
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2095
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2098
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2099
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2102
    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2104
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 2107
    new-instance v3, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v3}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 2108
    invoke-virtual {v3, v14, v13}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2109
    invoke-virtual {v3, v12, v11}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2110
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v24

    invoke-virtual {v3, v5, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2111
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v4, v10, v4}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2112
    new-instance v4, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v4, v0}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v23

    invoke-virtual {v3, v5, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2113
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_1d

    invoke-interface {v0, v3}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_1d
    return-object v2
.end method

.method public getRealPath()Ljava/lang/String;
    .locals 2

    .line 1929
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppTempPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 1930
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->downloadFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 5

    .line 1926
    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v1}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAbsolute(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2119
    sget-object v0, Lio/dcloud/uts/UTSAndroid;->INSTANCE:Lio/dcloud/uts/UTSAndroid;

    invoke-virtual {v0}, Lio/dcloud/uts/UTSAndroid;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2120
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getParent(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    return v5

    .line 2123
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 2124
    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method public isDescendant(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2133
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2137
    :cond_1
    invoke-virtual {p0, p1, p2}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->isDescendant(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1846
    new-instance p1, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {p1}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1847
    const-string v0, "statusCode"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1848
    const-string v0, "errorCode"

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1849
    const-string v0, "errorMsg"

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1850
    invoke-virtual {p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lio/dcloud/uts/NumberKt;->toString_number_nullable$default(Ljava/lang/Object;Ljava/lang/Number;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1851
    new-instance v0, Lio/dcloud/uniapp/SourceError;

    invoke-direct {v0, p2}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    const-string p2, "cause"

    invoke-virtual {p1, p2, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1852
    iget-object p2, p0, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "call"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    const-string v3, "cause"

    const-string v4, "errorMsg"

    const-string v5, "errorCode"

    const-string v6, "statusCode"

    const-string v7, ""

    if-eqz v2, :cond_10

    .line 1856
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_13

    .line 1858
    invoke-virtual {v1}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->getTempFile()Ljava/io/File;

    move-result-object v9

    .line 1863
    :try_start_0
    invoke-static {v9}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1865
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    const/16 v13, 0x2000

    .line 1867
    new-array v13, v13, [B

    const-wide/16 v14, 0x0

    .line 1869
    :goto_1
    invoke-interface {v2, v13}, Lokio/BufferedSource;->read([B)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-ne v8, v2, :cond_6

    .line 1880
    :try_start_2
    invoke-interface {v10}, Lokio/BufferedSink;->flush()V

    .line 1881
    invoke-static {v9}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1882
    :try_start_3
    invoke-virtual {v1, v0}, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->getFile(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v8

    .line 1883
    invoke-static {v8}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v11

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1884
    :try_start_4
    move-object v12, v2

    check-cast v12, Lokio/Source;

    invoke-interface {v11, v12}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 1885
    invoke-interface {v11}, Lokio/BufferedSink;->flush()V

    .line 1886
    new-instance v12, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v12}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1887
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1888
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1889
    const-string v0, "tempFilePath"

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v0, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1891
    :cond_1
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v12}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    if-eqz v10, :cond_3

    .line 1905
    invoke-interface {v10}, Lokio/BufferedSink;->close()V

    :cond_3
    if-eqz v11, :cond_4

    .line 1906
    invoke-interface {v11}, Lokio/BufferedSink;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 1907
    invoke-interface {v2}, Lokio/BufferedSource;->close()V

    .line 1908
    :cond_5
    invoke-interface/range {v16 .. v16}, Lokio/BufferedSource;->close()V

    .line 1909
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    move-object v8, v10

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v18, v9

    move-object v8, v10

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v18, v9

    move-object v8, v10

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v18, v9

    move-object v8, v10

    goto/16 :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 1873
    :try_start_5
    invoke-interface {v10, v13, v2, v8}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v2, v9

    int-to-long v8, v8

    add-long/2addr v14, v8

    long-to-float v8, v14

    long-to-float v9, v11

    div-float/2addr v8, v9

    const/16 v9, 0x64

    int-to-float v9, v9

    mul-float/2addr v8, v9

    .line 1876
    :try_start_6
    new-instance v9, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Number;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v2

    :try_start_7
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/Number;

    invoke-direct {v9, v8, v0, v2}, Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 1877
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, v9}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onProgress(Luts/sdk/modules/DCloudUniNetwork/OnProgressDownloadResult;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v2, v16

    move-object/from16 v9, v18

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v16, v2

    :goto_2
    move-object/from16 v18, v9

    :goto_3
    move-object v8, v10

    const/4 v2, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    :goto_4
    move-object/from16 v18, v9

    :goto_5
    move-object v8, v10

    const/4 v2, 0x0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v9

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_6
    const/4 v11, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v9

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_7
    const/4 v11, 0x0

    .line 1894
    :goto_8
    :try_start_8
    new-instance v9, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v9}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1895
    const-string v10, "-1"

    .line 1896
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1897
    invoke-virtual {v9, v6, v10}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1898
    invoke-virtual {v9, v5, v10}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1899
    invoke-virtual {v9, v4, v0}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1900
    new-instance v4, Lio/dcloud/uniapp/SourceError;

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    move-object v7, v0

    :goto_9
    invoke-direct {v4, v7}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v9, v3, v4}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1902
    iget-object v0, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, v9}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :cond_9
    if-eqz v8, :cond_a

    .line 1905
    invoke-interface {v8}, Lokio/BufferedSink;->close()V

    :cond_a
    if-eqz v11, :cond_b

    .line 1906
    invoke-interface {v11}, Lokio/BufferedSink;->close()V

    :cond_b
    if-eqz v2, :cond_c

    .line 1907
    invoke-interface {v2}, Lokio/BufferedSource;->close()V

    .line 1908
    :cond_c
    invoke-interface/range {v16 .. v16}, Lokio/BufferedSource;->close()V

    .line 1909
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    return-void

    :catchall_7
    move-exception v0

    :goto_a
    if-eqz v8, :cond_d

    .line 1905
    invoke-interface {v8}, Lokio/BufferedSink;->close()V

    :cond_d
    if-eqz v11, :cond_e

    .line 1906
    invoke-interface {v11}, Lokio/BufferedSink;->close()V

    :cond_e
    if-eqz v2, :cond_f

    .line 1907
    invoke-interface {v2}, Lokio/BufferedSource;->close()V

    .line 1908
    :cond_f
    invoke-interface/range {v16 .. v16}, Lokio/BufferedSource;->close()V

    .line 1909
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    throw v0

    .line 1913
    :cond_10
    new-instance v0, Lio/dcloud/uts/UTSJSONObject;

    invoke-direct {v0}, Lio/dcloud/uts/UTSJSONObject;-><init>()V

    .line 1914
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v7}, Lio/dcloud/uts/NumberKt;->plus(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1915
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    .line 1916
    :goto_b
    invoke-virtual {v0, v6, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1917
    invoke-virtual {v0, v5, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1918
    invoke-virtual {v0, v4, v8}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1919
    new-instance v2, Lio/dcloud/uniapp/SourceError;

    if-nez v8, :cond_12

    goto :goto_c

    :cond_12
    move-object v7, v8

    :goto_c
    invoke-direct {v2, v7}, Lio/dcloud/uniapp/SourceError;-><init>(Ljava/lang/String;)V

    .line 1920
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v2, v4}, Lio/dcloud/uniapp/SourceError;->setCode(Ljava/lang/Number;)V

    .line 1921
    invoke-virtual {v0, v3, v2}, Lio/dcloud/uts/UTSJSONObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1922
    iget-object v2, v1, Luts/sdk/modules/DCloudUniNetwork/SimpleDownloadCallback;->listener:Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;

    if-eqz v2, :cond_13

    invoke-interface {v2, v0}, Luts/sdk/modules/DCloudUniNetwork/NetworkDownloadFileListener;->onComplete(Lio/dcloud/uts/UTSJSONObject;)V

    :cond_13
    return-void
.end method

.method public stringSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 2140
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2141
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2142
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 2144
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2145
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string v2, "nextToken(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
