.class public final Lcom/android/okhttp/internal/huc/CacheAdapter;
.super Ljava/lang/Object;
.source "CacheAdapter.java"

# interfaces
.implements Lcom/android/okhttp/internal/InternalCache;


# instance fields
.field private final delegate:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .locals 0
    .param p1, "delegate"    # Ljava/net/ResponseCache;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    #@5
    .line 38
    return-void
.end method

.method private getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;
    .locals 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->extractJavaHeaders(Lcom/android/okhttp/Request;)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 103
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    #@6
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v2, v3, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method


# virtual methods
.method public get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;->getJavaCachedResponse(Lcom/android/okhttp/Request;)Ljava/net/CacheResponse;

    #@4
    move-result-object v0

    #@5
    .line 48
    .local v0, "javaResponse":Ljava/net/CacheResponse;
    if-nez v0, :cond_0

    #@7
    .line 49
    return-object v1

    #@8
    .line 51
    :cond_0
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkResponseForCacheGet(Lcom/android/okhttp/Request;Ljava/net/CacheResponse;)Lcom/android/okhttp/Response;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getDelegate()Ljava/net/ResponseCache;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    #@2
    return-object v0
.end method

.method public put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .locals 5
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 55
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    #@8
    move-result-object v2

    #@9
    .line 56
    .local v2, "uri":Ljava/net/URI;
    invoke-static {p1}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaUrlConnectionForCachePut(Lcom/android/okhttp/Response;)Ljava/net/HttpURLConnection;

    #@c
    move-result-object v0

    #@d
    .line 57
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v3, p0, Lcom/android/okhttp/internal/huc/CacheAdapter;->delegate:Ljava/net/ResponseCache;

    #@f
    invoke-virtual {v3, v2, v0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    #@12
    move-result-object v1

    #@13
    .line 58
    .local v1, "request":Ljava/net/CacheRequest;
    if-nez v1, :cond_0

    #@15
    .line 59
    return-object v4

    #@16
    .line 61
    :cond_0
    new-instance v3, Lcom/android/okhttp/internal/huc/CacheAdapter$1;

    #@18
    invoke-direct {v3, p0, v1}, Lcom/android/okhttp/internal/huc/CacheAdapter$1;-><init>(Lcom/android/okhttp/internal/huc/CacheAdapter;Ljava/net/CacheRequest;)V

    #@1b
    return-object v3
.end method

.method public remove(Lcom/android/okhttp/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 0

    #@0
    .prologue
    .line 89
    return-void
.end method

.method public trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .param p1, "cacheStrategy"    # Lcom/android/okhttp/internal/http/CacheStrategy;

    #@0
    .prologue
    .line 93
    return-void
.end method

.method public update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .locals 0
    .param p1, "cached"    # Lcom/android/okhttp/Response;
    .param p2, "network"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    return-void
.end method
