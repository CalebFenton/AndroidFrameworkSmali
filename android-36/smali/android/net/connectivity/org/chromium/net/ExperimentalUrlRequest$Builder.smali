.class public abstract Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
.source "ExperimentalUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist DEFAULT_IDEMPOTENCY:I = 0x0

.field public static final blacklist IDEMPOTENT:I = 0x1

.field public static final blacklist NOT_IDEMPOTENT:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .param p1, "annotation"    # Ljava/lang/Object;

    .line 97
    return-object p0
.end method

.method public bridge synthetic blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->allowDirectExecutor()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
.end method

.method public bridge synthetic blacklist build()Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist disableCache()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist disableCache()Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->disableCache()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist disableConnectionMigration()Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 1

    .line 42
    return-object p0
.end method

.method public abstract blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setIdempotency(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .param p1, "idempotency"    # I

    .line 67
    return-object p0
.end method

.method public abstract blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;

    .line 112
    return-object p0
.end method

.method public bridge synthetic blacklist setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setRequestFinishedListener(Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .param p1, "tag"    # I

    .line 102
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 107
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
.end method

.method public bridge synthetic blacklist setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;->setUploadDataProvider(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method
