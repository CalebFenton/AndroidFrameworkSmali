.class public final Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;
.super Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
.source "UrlResponseInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;
    }
.end annotation


# instance fields
.field private final blacklist mHeaders:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;

.field private final blacklist mHttpStatusCode:I

.field private final blacklist mHttpStatusText:Ljava/lang/String;

.field private final blacklist mNegotiatedProtocol:Ljava/lang/String;

.field private final blacklist mProxyServer:Ljava/lang/String;

.field private final blacklist mReceivedByteCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mResponseInfoUrlChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWasCached:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p2, "httpStatusCode"    # I
    .param p3, "httpStatusText"    # Ljava/lang/String;
    .param p5, "wasCached"    # Z
    .param p6, "negotiatedProtocol"    # Ljava/lang/String;
    .param p7, "proxyServer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    .local p1, "urlChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "allHeadersList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 121
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p2, "httpStatusCode"    # I
    .param p3, "httpStatusText"    # Ljava/lang/String;
    .param p5, "wasCached"    # Z
    .param p6, "negotiatedProtocol"    # Ljava/lang/String;
    .param p7, "proxyServer"    # Ljava/lang/String;
    .param p8, "receivedByteCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 91
    .local p1, "urlChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "allHeadersList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mResponseInfoUrlChain:Ljava/util/List;

    .line 93
    iput p2, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHttpStatusCode:I

    .line 94
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHttpStatusText:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHeaders:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;

    .line 96
    iput-boolean p5, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mWasCached:Z

    .line 97
    iput-object p6, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mNegotiatedProtocol:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mProxyServer:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p8, p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mReceivedByteCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    return-void
.end method


# virtual methods
.method public blacklist getAllHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHeaders:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;->getAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllHeadersAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHeaders:Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl$HeaderBlockImpl;->getAsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHttpStatusCode()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHttpStatusCode:I

    return v0
.end method

.method public blacklist getHttpStatusText()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mHttpStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNegotiatedProtocol()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mNegotiatedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProxyServer()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReceivedByteCount()J
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mReceivedByteCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .registers 3

    .line 125
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mResponseInfoUrlChain:Ljava/util/List;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mResponseInfoUrlChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUrlChain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mResponseInfoUrlChain:Ljava/util/List;

    return-object v0
.end method

.method public blacklist setReceivedByteCount(J)V
    .registers 4
    .param p1, "currentReceivedByteCount"    # J

    .line 195
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mReceivedByteCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 196
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 14

    .line 175
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 181
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getUrlChain()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getHttpStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 185
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getHttpStatusText()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->wasCached()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 188
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v9

    .line 189
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getProxyServer()Ljava/lang/String;

    move-result-object v10

    .line 190
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->getReceivedByteCount()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    .line 175
    const-string v2, "UrlResponseInfo@[%s][%s]: urlChain = %s, httpStatus = %d %s, headers = %s, wasCached = %b, negotiatedProtocol = %s, proxyServer= %s, receivedByteCount = %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist wasCached()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/UrlResponseInfoImpl;->mWasCached:Z

    return v0
.end method
