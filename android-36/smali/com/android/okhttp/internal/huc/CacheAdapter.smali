.class public final Lcom/android/okhttp/internal/huc/CacheAdapter;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/android/okhttp/internal/InternalCache;


# instance fields
.field private final blacklist delegate:Ljava/net/ResponseCache;


# direct methods
.method public constructor blacklist <init>(Ljava/net/ResponseCache;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    return-void
.end method

.method private blacklist getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;

    move-result-object v0

    .line 105
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;->getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_8
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDelegate()Ljava/net/ResponseCache;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    return-object p0
.end method

.method public blacklist put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v0

    .line 58
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    invoke-virtual {v1, v0, p1}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_16
    new-instance v0, Lcom/android/okhttp/internal/huc/CacheAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter$1;-><init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V

    return-object v0
.end method

.method public blacklist remove(Lcom/android/okhttp/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist trackConditionalCacheHit()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method
