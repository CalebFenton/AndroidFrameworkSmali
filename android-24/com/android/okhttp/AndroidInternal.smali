.class public Lcom/android/okhttp/AndroidInternal;
.super Ljava/lang/Object;
.source "AndroidInternal.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V
    .locals 4
    .param p0, "okUrlFactory"    # Lcom/android/okhttp/OkUrlFactory;
    .param p1, "responseCache"    # Ljava/net/ResponseCache;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 34
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    #@4
    move-result-object v0

    #@5
    .line 35
    .local v0, "client":Lcom/android/okhttp/OkHttpClient;
    instance-of v3, p1, Lcom/android/okhttp/OkCacheContainer;

    #@7
    if-eqz v3, :cond_0

    #@9
    move-object v1, p1

    #@a
    .line 39
    check-cast v1, Lcom/android/okhttp/OkCacheContainer;

    #@c
    .line 40
    .local v1, "okCacheContainer":Lcom/android/okhttp/OkCacheContainer;
    invoke-interface {v1}, Lcom/android/okhttp/OkCacheContainer;->getCache()Lcom/android/okhttp/Cache;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    #@13
    .line 33
    .end local v1    # "okCacheContainer":Lcom/android/okhttp/OkCacheContainer;
    :goto_0
    return-void

    #@14
    .line 42
    :cond_0
    if-eqz p1, :cond_1

    #@16
    new-instance v2, Lcom/android/okhttp/internal/huc/CacheAdapter;

    #@18
    invoke-direct {v2, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    #@1b
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    #@1e
    goto :goto_0
.end method
