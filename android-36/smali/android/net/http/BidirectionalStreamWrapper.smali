.class public Landroid/net/http/BidirectionalStreamWrapper;
.super Landroid/net/http/BidirectionalStream;
.source "BidirectionalStreamWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

.field private blacklist mDelayRequestHeadersUntilFirstFlush:Z

.field private blacklist mHasTrafficStatsTag:Z

.field private blacklist mHasTrafficStatsUid:Z

.field private blacklist mHeaders:Landroid/net/http/HeaderBlock;

.field private final blacklist mHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mHttpMethod:Ljava/lang/String;

.field private blacklist mPriority:I

.field private blacklist mTrafficStatsTag:I

.field private blacklist mTrafficStatsUid:I


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V
    .registers 4
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    .line 38
    invoke-direct {p0}, Landroid/net/http/BidirectionalStream;-><init>()V

    .line 28
    const-string v0, "POST"

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHttpMethod:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mPriority:I

    .line 39
    iput-object p1, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHeadersList:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/net/http/HeaderBlockImpl;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHeadersList:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/net/http/HeaderBlockImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHeaders:Landroid/net/http/HeaderBlock;

    .line 42
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Ljava/lang/String;ZIZIILandroid/net/http/HeaderBlock;Z)V
    .registers 10
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "hasTrafficStatsTag"    # Z
    .param p4, "trafficStatsTag"    # I
    .param p5, "hasTrafficStatsUid"    # Z
    .param p6, "trafficStatsUid"    # I
    .param p7, "priority"    # I
    .param p8, "headers"    # Landroid/net/http/HeaderBlock;
    .param p9, "delayRequestHeadersUntilFirstFlush"    # Z

    .line 54
    invoke-direct {p0, p1}, Landroid/net/http/BidirectionalStreamWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V

    .line 55
    iput-boolean p3, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHasTrafficStatsTag:Z

    .line 56
    iput-boolean p5, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHasTrafficStatsUid:Z

    .line 57
    iput-object p2, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHttpMethod:Ljava/lang/String;

    .line 58
    iput p4, p0, Landroid/net/http/BidirectionalStreamWrapper;->mTrafficStatsTag:I

    .line 59
    iput p6, p0, Landroid/net/http/BidirectionalStreamWrapper;->mTrafficStatsUid:I

    .line 60
    iput p7, p0, Landroid/net/http/BidirectionalStreamWrapper;->mPriority:I

    .line 61
    iput-object p8, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHeaders:Landroid/net/http/HeaderBlock;

    .line 62
    iput-boolean p9, p0, Landroid/net/http/BidirectionalStreamWrapper;->mDelayRequestHeadersUntilFirstFlush:Z

    .line 63
    return-void
.end method


# virtual methods
.method blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHeadersList:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public whitelist cancel()V
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream;->cancel()V

    .line 88
    return-void
.end method

.method public whitelist flush()V
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream;->flush()V

    .line 83
    return-void
.end method

.method public whitelist getHeaders()Landroid/net/http/HeaderBlock;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHeaders:Landroid/net/http/HeaderBlock;

    return-object v0
.end method

.method public whitelist getHttpMethod()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHttpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mPriority:I

    return v0
.end method

.method public whitelist getTrafficStatsTag()I
    .registers 3

    .line 117
    invoke-virtual {p0}, Landroid/net/http/BidirectionalStreamWrapper;->hasTrafficStatsTag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 120
    iget v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mTrafficStatsTag:I

    return v0

    .line 118
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrafficStatsTag is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTrafficStatsUid()I
    .registers 3

    .line 130
    invoke-virtual {p0}, Landroid/net/http/BidirectionalStreamWrapper;->hasTrafficStatsUid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    iget v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mTrafficStatsUid:I

    return v0

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrafficStatsUid is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasTrafficStatsTag()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHasTrafficStatsTag:Z

    return v0
.end method

.method public whitelist hasTrafficStatsUid()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHasTrafficStatsUid:Z

    return v0
.end method

.method public whitelist isDelayRequestHeadersUntilFirstFlushEnabled()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mDelayRequestHeadersUntilFirstFlush:Z

    return v0
.end method

.method public whitelist isDone()Z
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream;->isDone()Z

    move-result v0

    return v0
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 72
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream;->read(Ljava/nio/ByteBuffer;)V

    .line 73
    return-void
.end method

.method blacklist setDelayRequestHeadersUntilFirstFlushEnabled(Z)V
    .registers 2
    .param p1, "delayRequestHeadersUntilFirstFlushEnabled"    # Z

    .line 161
    iput-boolean p1, p0, Landroid/net/http/BidirectionalStreamWrapper;->mDelayRequestHeadersUntilFirstFlush:Z

    .line 162
    return-void
.end method

.method blacklist setHttpMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "httpMethod"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHttpMethod:Ljava/lang/String;

    .line 143
    return-void
.end method

.method blacklist setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 156
    iput p1, p0, Landroid/net/http/BidirectionalStreamWrapper;->mPriority:I

    .line 157
    return-void
.end method

.method blacklist setTrafficStatsTag(I)V
    .registers 3
    .param p1, "trafficStatsTag"    # I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHasTrafficStatsTag:Z

    .line 147
    iput p1, p0, Landroid/net/http/BidirectionalStreamWrapper;->mTrafficStatsTag:I

    .line 148
    return-void
.end method

.method blacklist setTrafficStatsUid(I)V
    .registers 3
    .param p1, "trafficStatsUid"    # I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->mHasTrafficStatsUid:Z

    .line 152
    iput p1, p0, Landroid/net/http/BidirectionalStreamWrapper;->mTrafficStatsUid:I

    .line 153
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream;->start()V

    .line 68
    return-void
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;Z)V
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "endOfStream"    # Z

    .line 77
    iget-object v0, p0, Landroid/net/http/BidirectionalStreamWrapper;->backend:Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream;->write(Ljava/nio/ByteBuffer;Z)V

    .line 78
    return-void
.end method
