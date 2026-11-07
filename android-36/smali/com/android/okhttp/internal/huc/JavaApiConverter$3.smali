.class Lcom/android/okhttp/internal/huc/JavaApiConverter$3;
.super Ljava/net/CacheRequest;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/http/CacheRequest;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api abort()V
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {p0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    return-void
.end method

.method public whitelist test-api getBody()Ljava/io/OutputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {p0}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 371
    :cond_a
    invoke-static {p0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
