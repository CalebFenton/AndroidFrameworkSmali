.class public Landroid/net/http/BidirectionalStreamCallbackWrapper;
.super Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;
.source "BidirectionalStreamCallbackWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/http/BidirectionalStream$Callback;

.field private blacklist mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/net/http/BidirectionalStream$Callback;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/http/BidirectionalStream$Callback;

    .line 34
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;
    .registers 12
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    .line 51
    new-instance v0, Landroid/net/http/BidirectionalStreamWrapper;

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 53
    invoke-virtual {v1}, Landroid/net/http/BidirectionalStreamWrapper;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 54
    invoke-virtual {v1}, Landroid/net/http/BidirectionalStreamWrapper;->hasTrafficStatsTag()Z

    move-result v3

    .line 55
    iget-object v1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    invoke-virtual {v1}, Landroid/net/http/BidirectionalStreamWrapper;->hasTrafficStatsTag()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    .line 56
    iget-object v1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    invoke-virtual {v1}, Landroid/net/http/BidirectionalStreamWrapper;->getTrafficStatsTag()I

    move-result v1

    goto :goto_1f

    .line 57
    :cond_1e
    move v1, v4

    :goto_1f
    iget-object v5, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 58
    invoke-virtual {v5}, Landroid/net/http/BidirectionalStreamWrapper;->hasTrafficStatsUid()Z

    move-result v5

    .line 59
    iget-object v6, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    invoke-virtual {v6}, Landroid/net/http/BidirectionalStreamWrapper;->hasTrafficStatsUid()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 60
    iget-object v4, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    invoke-virtual {v4}, Landroid/net/http/BidirectionalStreamWrapper;->getTrafficStatsUid()I

    move-result v4

    move v6, v4

    goto :goto_36

    .line 61
    :cond_35
    move v6, v4

    :goto_36
    iget-object v4, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 62
    invoke-virtual {v4}, Landroid/net/http/BidirectionalStreamWrapper;->getPriority()I

    move-result v7

    iget-object v4, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 63
    invoke-virtual {v4}, Landroid/net/http/BidirectionalStreamWrapper;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v8

    iget-object v4, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 64
    invoke-virtual {v4}, Landroid/net/http/BidirectionalStreamWrapper;->isDelayRequestHeadersUntilFirstFlushEnabled()Z

    move-result v9

    move v4, v1

    move-object v1, p1

    .end local p1    # "stream":Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .local v1, "stream":Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    invoke-direct/range {v0 .. v9}, Landroid/net/http/BidirectionalStreamWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Ljava/lang/String;ZIZIILandroid/net/http/HeaderBlock;Z)V

    .line 51
    return-object v0
.end method

.method public blacklist onCanceled(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 137
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 138
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v2, v0, v1}, Landroid/net/http/BidirectionalStream$Callback;->onCanceled(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V

    .line 139
    return-void
.end method

.method public blacklist onFailed(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 8
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "e"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 127
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 128
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 129
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    invoke-static {p3}, Landroid/net/http/CronetExceptionTranslationUtils;->translateException(Landroid/net/connectivity/org/chromium/net/CronetException;)Landroid/net/http/HttpException;

    move-result-object v2

    .line 130
    .local v2, "wrappedException":Landroid/net/http/HttpException;
    iget-object v3, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v3, v0, v1, v2}, Landroid/net/http/BidirectionalStream$Callback;->onFailed(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HttpException;)V

    .line 131
    return-void
.end method

.method public blacklist onReadCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .registers 8
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "endOfStream"    # Z

    .line 87
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 88
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 89
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v2, v0, v1, p3, p4}, Landroid/net/http/BidirectionalStream$Callback;->onReadCompleted(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 90
    return-void
.end method

.method public blacklist onResponseHeadersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 76
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 77
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 78
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v2, v0, v1}, Landroid/net/http/BidirectionalStream$Callback;->onResponseHeadersReceived(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V

    .line 79
    return-void
.end method

.method public blacklist onResponseTrailersReceived(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V
    .registers 8
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "headers"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;

    .line 108
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 109
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 110
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    new-instance v2, Landroid/net/http/HeaderBlockWrapper;

    invoke-direct {v2, p3}, Landroid/net/http/HeaderBlockWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo$HeaderBlock;)V

    .line 111
    .local v2, "wrappedHeaders":Landroid/net/http/HeaderBlockWrapper;
    iget-object v3, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v3, v0, v1, v2}, Landroid/net/http/BidirectionalStream$Callback;->onResponseTrailersReceived(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HeaderBlock;)V

    .line 112
    return-void
.end method

.method public blacklist onStreamReady(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)V
    .registers 4
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;

    .line 69
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 70
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    iget-object v1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v1, v0}, Landroid/net/http/BidirectionalStream$Callback;->onStreamReady(Landroid/net/http/BidirectionalStream;)V

    .line 71
    return-void
.end method

.method public blacklist onSucceeded(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 117
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 118
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 119
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v2, v0, v1}, Landroid/net/http/BidirectionalStream$Callback;->onSucceeded(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;)V

    .line 120
    return-void
.end method

.method public blacklist onWriteCompleted(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .registers 8
    .param p1, "stream"    # Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "endOfStream"    # Z

    .line 98
    invoke-virtual {p0, p1}, Landroid/net/http/BidirectionalStreamCallbackWrapper;->createWrapperFromStream(Landroid/net/connectivity/org/chromium/net/BidirectionalStream;)Landroid/net/http/BidirectionalStreamWrapper;

    move-result-object v0

    .line 99
    .local v0, "wrappedStream":Landroid/net/http/BidirectionalStreamWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 100
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->backend:Landroid/net/http/BidirectionalStream$Callback;

    invoke-interface {v2, v0, v1, p3, p4}, Landroid/net/http/BidirectionalStream$Callback;->onWriteCompleted(Landroid/net/http/BidirectionalStream;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    .line 101
    return-void
.end method

.method public blacklist setOriginalStreamWrapper(Landroid/net/http/BidirectionalStreamWrapper;)V
    .registers 2
    .param p1, "wrapper"    # Landroid/net/http/BidirectionalStreamWrapper;

    .line 39
    iput-object p1, p0, Landroid/net/http/BidirectionalStreamCallbackWrapper;->mOriginalStreamWrapper:Landroid/net/http/BidirectionalStreamWrapper;

    .line 40
    return-void
.end method
