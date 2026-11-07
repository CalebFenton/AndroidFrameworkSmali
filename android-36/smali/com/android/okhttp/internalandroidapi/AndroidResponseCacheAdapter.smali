.class public final Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;
.super Ljava/lang/Object;
.source "AndroidResponseCacheAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist cacheHolder:Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

.field private final blacklist okHttpCache:Lcom/android/okhttp/Cache;


# direct methods
.method public constructor blacklist test-api <init>(Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->cacheHolder:Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    .line 68
    invoke-virtual {p1}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->getCache()Lcom/android/okhttp/Cache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    return-void
.end method


# virtual methods
.method public blacklist test-api close()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->close()V

    return-void
.end method

.method public blacklist test-api delete()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->delete()V

    return-void
.end method

.method public blacklist test-api flush()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->flush()V

    return-void
.end method

.method public blacklist test-api get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

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

    .line 93
    invoke-static {p1, p2, p3}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkRequest(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Lcom/android/okhttp/Request;

    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    iget-object p0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    invoke-interface {p0, p1}, Lcom/android/okhttp/internal/InternalCache;->get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_10
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheResponse(Lcom/android/okhttp/Response;)Ljava/net/CacheResponse;

    move-result-object p0

    return-object p0
.end method

.method public blacklist test-api getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->cacheHolder:Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    return-object p0
.end method

.method public blacklist test-api getHitCount()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getHitCount()I

    move-result p0

    return p0
.end method

.method public blacklist test-api getMaxSize()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist test-api getNetworkCount()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getNetworkCount()I

    move-result p0

    return p0
.end method

.method public blacklist test-api getRequestCount()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getRequestCount()I

    move-result p0

    return p0
.end method

.method public blacklist test-api getSize()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    invoke-virtual {p0}, Lcom/android/okhttp/Cache;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist test-api put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCachePut(Ljava/net/URI;Ljava/net/URLConnection;)Lcom/android/okhttp/Response;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return-object p2

    .line 116
    :cond_8
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/AndroidResponseCacheAdapter;->okHttpCache:Lcom/android/okhttp/Cache;

    iget-object p0, p0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 117
    invoke-interface {p0, p1}, Lcom/android/okhttp/internal/InternalCache;->put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;

    move-result-object p0

    if-nez p0, :cond_13

    return-object p2

    .line 121
    :cond_13
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;

    move-result-object p0

    return-object p0
.end method
