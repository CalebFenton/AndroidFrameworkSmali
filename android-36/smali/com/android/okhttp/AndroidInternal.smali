.class public Lcom/android/okhttp/AndroidInternal;
.super Ljava/lang/Object;
.source "AndroidInternal.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setResponseCache(Lcom/android/okhttp/OkUrlFactory;Ljava/net/ResponseCache;)V
    .registers 3

    .line 38
    invoke-virtual {p0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object p0

    .line 39
    instance-of v0, p1, Lcom/android/okhttp/OkCacheContainer;

    if-eqz v0, :cond_12

    .line 43
    check-cast p1, Lcom/android/okhttp/OkCacheContainer;

    .line 44
    invoke-interface {p1}, Lcom/android/okhttp/OkCacheContainer;->getCache()Lcom/android/okhttp/Cache;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    return-void

    .line 46
    :cond_12
    instance-of v0, p1, Lcom/android/okhttp/internalandroidapi/HasCacheHolder;

    if-eqz v0, :cond_24

    .line 50
    check-cast p1, Lcom/android/okhttp/internalandroidapi/HasCacheHolder;

    .line 51
    invoke-interface {p1}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder;->getCacheHolder()Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/android/okhttp/internalandroidapi/HasCacheHolder$CacheHolder;->getCache()Lcom/android/okhttp/Cache;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkHttpClient;->setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;

    return-void

    :cond_24
    if-eqz p1, :cond_2c

    .line 55
    new-instance v0, Lcom/android/okhttp/internal/huc/CacheAdapter;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internal/huc/CacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/android/okhttp/OkHttpClient;->setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V

    return-void
.end method
