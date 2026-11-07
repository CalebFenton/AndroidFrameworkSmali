.class public interface abstract Lcom/android/okhttp/internal/InternalCache;
.super Ljava/lang/Object;
.source "InternalCache.java"


# virtual methods
.method public abstract blacklist get(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist put(Lcom/android/okhttp/Response;)Lcom/android/okhttp/internal/http/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist remove(Lcom/android/okhttp/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist trackConditionalCacheHit()V
.end method

.method public abstract blacklist trackResponse(Lcom/android/okhttp/internal/http/CacheStrategy;)V
.end method

.method public abstract blacklist update(Lcom/android/okhttp/Response;Lcom/android/okhttp/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
