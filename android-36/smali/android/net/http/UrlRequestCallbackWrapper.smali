.class Landroid/net/http/UrlRequestCallbackWrapper;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
.source "UrlRequestCallbackWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/http/UrlRequest$Callback;

.field private blacklist mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/net/http/UrlRequest$Callback;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/http/UrlRequest$Callback;

    .line 29
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    .line 31
    return-void
.end method

.method private blacklist createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;
    .registers 13
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;

    .line 45
    new-instance v0, Landroid/net/http/UrlRequestWrapper;

    iget-object v1, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 47
    invoke-virtual {v1}, Landroid/net/http/UrlRequestWrapper;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 48
    invoke-virtual {v1}, Landroid/net/http/UrlRequestWrapper;->hasTrafficStatsTag()Z

    move-result v3

    .line 49
    iget-object v1, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    invoke-virtual {v1}, Landroid/net/http/UrlRequestWrapper;->hasTrafficStatsTag()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    invoke-virtual {v1}, Landroid/net/http/UrlRequestWrapper;->getTrafficStatsTag()I

    move-result v1

    goto :goto_1f

    :cond_1e
    move v1, v4

    :goto_1f
    iget-object v5, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 50
    invoke-virtual {v5}, Landroid/net/http/UrlRequestWrapper;->hasTrafficStatsUid()Z

    move-result v5

    .line 51
    iget-object v6, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    invoke-virtual {v6}, Landroid/net/http/UrlRequestWrapper;->hasTrafficStatsUid()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v4, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    invoke-virtual {v4}, Landroid/net/http/UrlRequestWrapper;->getTrafficStatsUid()I

    move-result v4

    :cond_33
    move v6, v4

    iget-object v4, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 52
    invoke-virtual {v4}, Landroid/net/http/UrlRequestWrapper;->getPriority()I

    move-result v7

    iget-object v4, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 53
    invoke-virtual {v4}, Landroid/net/http/UrlRequestWrapper;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v8

    iget-object v4, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 54
    invoke-virtual {v4}, Landroid/net/http/UrlRequestWrapper;->isCacheDisabled()Z

    move-result v9

    iget-object v4, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 55
    invoke-virtual {v4}, Landroid/net/http/UrlRequestWrapper;->isDirectExecutorAllowed()Z

    move-result v10

    move v4, v1

    move-object v1, p1

    .end local p1    # "request":Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .local v1, "request":Landroid/net/connectivity/org/chromium/net/UrlRequest;
    invoke-direct/range {v0 .. v10}, Landroid/net/http/UrlRequestWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlRequest;Ljava/lang/String;ZIZIILandroid/net/http/HeaderBlock;ZZ)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public blacklist onCanceled(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 111
    invoke-direct {p0, p1}, Landroid/net/http/UrlRequestCallbackWrapper;->createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;

    move-result-object v0

    .line 112
    .local v0, "wrappedRequest":Landroid/net/http/UrlRequestWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 113
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    invoke-interface {v2, v0, v1}, Landroid/net/http/UrlRequest$Callback;->onCanceled(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V

    .line 114
    return-void
.end method

.method public blacklist onFailed(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 8
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "e"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 102
    invoke-direct {p0, p1}, Landroid/net/http/UrlRequestCallbackWrapper;->createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;

    move-result-object v0

    .line 103
    .local v0, "wrappedRequest":Landroid/net/http/UrlRequestWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 104
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    invoke-static {p3}, Landroid/net/http/CronetExceptionTranslationUtils;->translateException(Landroid/net/connectivity/org/chromium/net/CronetException;)Landroid/net/http/HttpException;

    move-result-object v2

    .line 105
    .local v2, "translatedException":Landroid/net/http/HttpException;
    iget-object v3, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    invoke-interface {v3, v0, v1, v2}, Landroid/net/http/UrlRequest$Callback;->onFailed(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HttpException;)V

    .line 106
    return-void
.end method

.method public blacklist onReadCompleted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Landroid/net/http/UrlRequestCallbackWrapper;->createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;

    move-result-object v0

    .line 85
    .local v0, "wrappedRequest":Landroid/net/http/UrlRequestWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 86
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    invoke-interface {v2, v0, v1, p3}, Landroid/net/http/UrlRequest$Callback;->onReadCompleted(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    .line 87
    return-void
.end method

.method public blacklist onRedirectReceived(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 7
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "newLocationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Landroid/net/http/UrlRequestCallbackWrapper;->createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;

    move-result-object v0

    .line 65
    .local v0, "wrappedRequest":Landroid/net/http/UrlRequestWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 66
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    invoke-interface {v2, v0, v1, p3}, Landroid/net/http/UrlRequest$Callback;->onRedirectReceived(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public blacklist onResponseStarted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Landroid/net/http/UrlRequestCallbackWrapper;->createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;

    move-result-object v0

    .line 74
    .local v0, "wrappedRequest":Landroid/net/http/UrlRequestWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 75
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    invoke-interface {v2, v0, v1}, Landroid/net/http/UrlRequest$Callback;->onResponseStarted(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V

    .line 76
    return-void
.end method

.method public blacklist onSucceeded(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 92
    invoke-direct {p0, p1}, Landroid/net/http/UrlRequestCallbackWrapper;->createWrapperFromRequest(Landroid/net/connectivity/org/chromium/net/UrlRequest;)Landroid/net/http/UrlRequestWrapper;

    move-result-object v0

    .line 93
    .local v0, "wrappedRequest":Landroid/net/http/UrlRequestWrapper;
    new-instance v1, Landroid/net/http/UrlResponseInfoWrapper;

    invoke-direct {v1, p2}, Landroid/net/http/UrlResponseInfoWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 94
    .local v1, "wrappedInfo":Landroid/net/http/UrlResponseInfoWrapper;
    iget-object v2, p0, Landroid/net/http/UrlRequestCallbackWrapper;->backend:Landroid/net/http/UrlRequest$Callback;

    invoke-interface {v2, v0, v1}, Landroid/net/http/UrlRequest$Callback;->onSucceeded(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V

    .line 95
    return-void
.end method

.method public blacklist setOriginalRequestWrapper(Landroid/net/http/UrlRequestWrapper;)V
    .registers 2
    .param p1, "wrapper"    # Landroid/net/http/UrlRequestWrapper;

    .line 34
    iput-object p1, p0, Landroid/net/http/UrlRequestCallbackWrapper;->mOriginalWrapper:Landroid/net/http/UrlRequestWrapper;

    .line 35
    return-void
.end method
