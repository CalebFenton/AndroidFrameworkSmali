.class public Lcom/android/okhttp/AndroidShimResponseCache;
.super Ljava/net/ResponseCache;
.source "AndroidShimResponseCache.java"


# instance fields
.field private final greylist-max-o delegate:Lcom/android/okhttp/Cache;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Cache;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    return-void
.end method

.method public static greylist-max-o create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/android/okhttp/Cache;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/Cache;-><init>(Ljava/io/File;J)V

    .line 46
    new-instance p0, Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-direct {p0, v0}, Lcom/android/okhttp/AndroidShimResponseCache;-><init>(Lcom/android/okhttp/Cache;)V

    return-object p0
.end method


# virtual methods
.method public greylist-max-o close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->close()V

    return-void
.end method

.method public greylist-max-o delete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->delete()V

    return-void
.end method

.method public greylist-max-o flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->flush()V

    return-void
.end method

.method public whitelist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
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

    .line 62
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object p1

    .line 63
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    iget-object p0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    invoke-interface {p0, p1}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_10
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o getCache()Lcom/android/okhttp/Cache;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    return-object p0
.end method

.method public greylist-max-o getHitCount()I
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getHitCount()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getNetworkCount()I
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getNetworkCount()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getRequestCount()I
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getRequestCount()I

    move-result p0

    return p0
.end method

.method public greylist-max-o isEquivalent(Ljava/io/File;J)Z
    .registers 6

    .line 50
    invoke-virtual {p0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 52
    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_1e

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->isClosed()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o maxSize()J
    .registers 3

    .line 98
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return-object p2

    .line 76
    :cond_8
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    iget-object p0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 77
    invoke-interface {p0, p1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object p0

    if-nez p0, :cond_13

    return-object p2

    .line 81
    :cond_13
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/android/okhttp/AndroidShimResponseCache;->delegate:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method
