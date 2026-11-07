.class public Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;
.super Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
.source "BidirectionalStreamBuilderImpl.java"


# instance fields
.field private final blacklist mCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

.field private blacklist mDelayRequestHeadersUntilFirstFlush:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mHttpMethod:Ljava/lang/String;

.field private blacklist mNetworkHandle:J

.field private blacklist mPriority:I

.field private blacklist mRequestAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTrafficStatsTag:I

.field private blacklist mTrafficStatsTagSet:Z

.field private blacklist mTrafficStatsUid:I

.field private blacklist mTrafficStatsUidSet:Z

.field private final blacklist mUrl:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    .line 68
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    .line 36
    const-string v0, "POST"

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mHttpMethod:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mPriority:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mNetworkHandle:J

    .line 70
    const-string v0, "URL is required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mUrl:Ljava/lang/String;

    .line 71
    const-string v0, "Callback is required."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    .line 72
    const-string v0, "Executor is required."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 73
    const-string v0, "CronetEngine is required."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
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

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
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

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 84
    const-string v0, "Invalid header name."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const-string v0, "Invalid header value."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public bridge synthetic blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addRequestAnnotation(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 3
    .param p1, "annotation"    # Ljava/lang/Object;

    .line 107
    const-string v0, "Invalid metrics annotation."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    if-nez v0, :cond_10

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    .line 111
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    return-object p0
.end method

.method public bridge synthetic blacklist bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist bindToNetwork(J)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 3
    .param p1, "networkHandle"    # J

    .line 131
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mNetworkHandle:J

    .line 132
    return-object p0
.end method

.method public bridge synthetic blacklist build()Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .registers 2

    .line 20
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;
    .registers 16

    .line 138
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mCallback:Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mHttpMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    iget v6, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mPriority:I

    iget-boolean v7, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mDelayRequestHeadersUntilFirstFlush:Z

    iget-object v8, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    iget-boolean v9, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsTagSet:Z

    iget v10, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsTag:I

    iget-boolean v11, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsUidSet:Z

    iget v12, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsUid:I

    iget-wide v13, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mNetworkHandle:J

    invoke-virtual/range {v0 .. v14}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBase;->createBidirectionalStream(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZIJ)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist delayRequestHeadersUntilFirstFlush(Z)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;
    .registers 2
    .param p1, "delayRequestHeadersUntilFirstFlush"    # Z

    .line 101
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mDelayRequestHeadersUntilFirstFlush:Z

    .line 102
    return-object p0
.end method

.method public bridge synthetic blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setHttpMethod(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .line 78
    const-string v0, "Method is required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mHttpMethod:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->setPriority(I)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->setPriority(I)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPriority(I)Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;
    .registers 2
    .param p1, "priority"    # I

    .line 94
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mPriority:I

    .line 95
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsTag(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 3
    .param p1, "tag"    # I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsTagSet:Z

    .line 118
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsTag:I

    .line 119
    return-object p0
.end method

.method public bridge synthetic blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTrafficStatsUid(I)Landroid/net/connectivity/org/chromium/net/ExperimentalBidirectionalStream$Builder;
    .registers 3
    .param p1, "uid"    # I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsUidSet:Z

    .line 125
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/BidirectionalStreamBuilderImpl;->mTrafficStatsUid:I

    .line 126
    return-object p0
.end method
