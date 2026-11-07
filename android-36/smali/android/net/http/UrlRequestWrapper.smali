.class Landroid/net/http/UrlRequestWrapper;
.super Landroid/net/http/UrlRequest;
.source "UrlRequestWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

.field private final blacklist mCacheDisabled:Z

.field private final blacklist mDirectExecutorAllowed:Z

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
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UrlRequest;Ljava/lang/String;ZIZIILandroid/net/http/HeaderBlock;ZZ)V
    .registers 11
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "httpMethod"    # Ljava/lang/String;
    .param p3, "hasTrafficStatsTag"    # Z
    .param p4, "trafficStatsTag"    # I
    .param p5, "hasTrafficStatsUid"    # Z
    .param p6, "trafficStatsUid"    # I
    .param p7, "priority"    # I
    .param p8, "headerBlock"    # Landroid/net/http/HeaderBlock;
    .param p9, "cacheDisabled"    # Z
    .param p10, "directExecutorAllowed"    # Z

    .line 61
    invoke-direct {p0, p1, p9, p10}, Landroid/net/http/UrlRequestWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlRequest;ZZ)V

    .line 62
    iput-object p2, p0, Landroid/net/http/UrlRequestWrapper;->mHttpMethod:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Landroid/net/http/UrlRequestWrapper;->mHasTrafficStatsTag:Z

    .line 64
    iput-boolean p5, p0, Landroid/net/http/UrlRequestWrapper;->mHasTrafficStatsUid:Z

    .line 65
    iput p4, p0, Landroid/net/http/UrlRequestWrapper;->mTrafficStatsTag:I

    .line 66
    iput p6, p0, Landroid/net/http/UrlRequestWrapper;->mTrafficStatsUid:I

    .line 67
    iput-object p8, p0, Landroid/net/http/UrlRequestWrapper;->mHeaders:Landroid/net/http/HeaderBlock;

    .line 68
    iput p7, p0, Landroid/net/http/UrlRequestWrapper;->mPriority:I

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UrlRequest;ZZ)V
    .registers 6
    .param p1, "backend"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "cacheDisabled"    # Z
    .param p3, "directExecutorAllowed"    # Z

    .line 42
    invoke-direct {p0}, Landroid/net/http/UrlRequest;-><init>()V

    .line 28
    const-string v0, "GET"

    iput-object v0, p0, Landroid/net/http/UrlRequestWrapper;->mHttpMethod:Ljava/lang/String;

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/http/UrlRequestWrapper;->mPriority:I

    .line 43
    iput-object p1, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    .line 44
    iput-boolean p2, p0, Landroid/net/http/UrlRequestWrapper;->mCacheDisabled:Z

    .line 45
    iput-boolean p3, p0, Landroid/net/http/UrlRequestWrapper;->mDirectExecutorAllowed:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/http/UrlRequestWrapper;->mHeadersList:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/net/http/HeaderBlockImpl;

    iget-object v1, p0, Landroid/net/http/UrlRequestWrapper;->mHeadersList:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/net/http/HeaderBlockImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroid/net/http/UrlRequestWrapper;->mHeaders:Landroid/net/http/HeaderBlock;

    .line 48
    return-void
.end method


# virtual methods
.method blacklist addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->mHeadersList:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public whitelist cancel()V
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->cancel()V

    .line 89
    return-void
.end method

.method public whitelist followRedirect()V
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->followRedirect()V

    .line 79
    return-void
.end method

.method public whitelist getHeaders()Landroid/net/http/HeaderBlock;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->mHeaders:Landroid/net/http/HeaderBlock;

    return-object v0
.end method

.method public whitelist getHttpMethod()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->mHttpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/net/http/UrlRequestWrapper;->mPriority:I

    return v0
.end method

.method public whitelist getStatus(Landroid/net/http/UrlRequest$StatusListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/http/UrlRequest$StatusListener;

    .line 98
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    new-instance v1, Landroid/net/http/UrlRequestStatusListenerWrapper;

    invoke-direct {v1, p1}, Landroid/net/http/UrlRequestStatusListenerWrapper;-><init>(Landroid/net/http/UrlRequest$StatusListener;)V

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->getStatus(Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;)V

    .line 99
    return-void
.end method

.method public whitelist getTrafficStatsTag()I
    .registers 3

    .line 133
    invoke-virtual {p0}, Landroid/net/http/UrlRequestWrapper;->hasTrafficStatsTag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 136
    iget v0, p0, Landroid/net/http/UrlRequestWrapper;->mTrafficStatsTag:I

    return v0

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrafficStatsTag is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTrafficStatsUid()I
    .registers 3

    .line 146
    invoke-virtual {p0}, Landroid/net/http/UrlRequestWrapper;->hasTrafficStatsUid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    iget v0, p0, Landroid/net/http/UrlRequestWrapper;->mTrafficStatsUid:I

    return v0

    .line 147
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrafficStatsUid is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasTrafficStatsTag()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/net/http/UrlRequestWrapper;->mHasTrafficStatsTag:Z

    return v0
.end method

.method public whitelist hasTrafficStatsUid()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/net/http/UrlRequestWrapper;->mHasTrafficStatsUid:Z

    return v0
.end method

.method public whitelist isCacheDisabled()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Landroid/net/http/UrlRequestWrapper;->mCacheDisabled:Z

    return v0
.end method

.method public whitelist isDirectExecutorAllowed()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Landroid/net/http/UrlRequestWrapper;->mDirectExecutorAllowed:Z

    return v0
.end method

.method public whitelist isDone()Z
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->isDone()Z

    move-result v0

    return v0
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 83
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 84
    return-void
.end method

.method blacklist setHttpMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "httpMethod"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Landroid/net/http/UrlRequestWrapper;->mHttpMethod:Ljava/lang/String;

    .line 154
    return-void
.end method

.method blacklist setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 157
    iput p1, p0, Landroid/net/http/UrlRequestWrapper;->mPriority:I

    .line 158
    return-void
.end method

.method blacklist setTrafficStatsTag(I)V
    .registers 3
    .param p1, "trafficStatsTag"    # I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/UrlRequestWrapper;->mHasTrafficStatsTag:Z

    .line 162
    iput p1, p0, Landroid/net/http/UrlRequestWrapper;->mTrafficStatsTag:I

    .line 163
    return-void
.end method

.method blacklist setTrafficStatsUid(I)V
    .registers 3
    .param p1, "trafficStatsUid"    # I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/UrlRequestWrapper;->mHasTrafficStatsUid:Z

    .line 167
    iput p1, p0, Landroid/net/http/UrlRequestWrapper;->mTrafficStatsUid:I

    .line 168
    return-void
.end method

.method public whitelist start()V
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/net/http/UrlRequestWrapper;->backend:Landroid/net/connectivity/org/chromium/net/UrlRequest;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->start()V

    .line 74
    return-void
.end method
