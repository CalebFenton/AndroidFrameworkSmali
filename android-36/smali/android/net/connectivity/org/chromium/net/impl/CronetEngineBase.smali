.class public abstract Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;
.super Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
.source "CronetEngineBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase$Idempotency;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase$StreamPriority;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase$RequestPriority;
    }
.end annotation


# static fields
.field protected static final blacklist DEFAULT_NETWORK_HANDLE:J = -0x1L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist createBidirectionalStream(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZIJ)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZIJ)",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;"
        }
    .end annotation
.end method

.method protected abstract blacklist createRequest(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILandroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;IJLjava/lang/String;Ljava/util/ArrayList;Landroid/net/connectivity/org/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;[BLjava/nio/ByteBuffer;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Listener;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/net/connectivity/org/chromium/net/UploadDataProvider;",
            "Ljava/util/concurrent/Executor;",
            "[B",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;"
        }
    .end annotation
.end method

.method public blacklist newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 145
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlRequestBuilderImpl;-><init>(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;)V

    return-object v0
.end method

.method public bridge synthetic blacklist newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;->newUrlRequestBuilder(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object p1

    return-object p1
.end method
