.class public Lcom/android/okhttp/AndroidShimResponseCache;
.super Ljava/net/ResponseCache;
.source "AndroidShimResponseCache.java"


# instance fields
.field private final delegate:Lcom/android/okhttp/Cache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Cache;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/Cache;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@5
    .line 38
    return-void
.end method

.method public static create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;
    .locals 3
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    new-instance v0, Lcom/android/okhttp/Cache;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;J)V

    #@5
    .line 44
    .local v0, "cache":Lcom/android/okhttp/Cache;
    new-instance v1, Lcom/android/okhttp/AndroidShimResponseCache;

    #@7
    invoke-direct {v1, v0}, Lcom/android/okhttp/AndroidShimResponseCache;-><init>(Lcom/android/okhttp/Cache;)V

    #@a
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->close()V

    #@5
    .line 138
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->delete()V

    #@5
    .line 145
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->flush()V

    #@5
    .line 104
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    #@1
    .line 60
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    #@4
    move-result-object v0

    #@5
    .line 61
    .local v0, "okRequest":Lcom/android/okhttp/Request;
    iget-object v2, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@7
    iget-object v2, v2, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@9
    invoke-interface {v2, v0}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    #@c
    move-result-object v1

    #@d
    .line 62
    .local v1, "okResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_0

    #@f
    .line 63
    return-object v3

    #@10
    .line 65
    :cond_0
    invoke-static {v1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    #@13
    move-result-object v2

    #@14
    return-object v2
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getHitCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getNetworkCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRequestCount()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getRequestCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEquivalent(Ljava/io/File;J)Z
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 48
    invoke-virtual {p0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    #@4
    move-result-object v0

    #@5
    .line 49
    .local v0, "installedCache":Lcom/android/okhttp/Cache;
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getDirectory()Ljava/io/File;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 50
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    #@12
    move-result-wide v2

    #@13
    cmp-long v2, v2, p2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 51
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->isClosed()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 49
    :cond_0
    :goto_0
    return v1

    #@1e
    .line 51
    :cond_1
    const/4 v1, 0x1

    #@1f
    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 69
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    #@4
    move-result-object v1

    #@5
    .line 70
    .local v1, "okResponse":Lcom/android/okhttp/Response;
    if-nez v1, :cond_0

    #@7
    .line 72
    return-object v3

    #@8
    .line 75
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@a
    iget-object v2, v2, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    #@c
    invoke-interface {v2, v1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    #@f
    move-result-object v0

    #@10
    .line 76
    .local v0, "okCacheRequest":Lcom/android/okhttp/internal/http/CacheRequest;
    if-nez v0, :cond_1

    #@12
    .line 77
    return-object v3

    #@13
    .line 79
    :cond_1
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;

    #@16
    move-result-object v2

    #@17
    return-object v2
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/Cache;->getSize()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
