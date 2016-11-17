.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$3;
.super Ljava/net/CacheRequest;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/CacheRequest;)V
    .locals 0
    .param p1, "val$okCacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;

    #@0
    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@2
    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    #@5
    .line 360
    return-void
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 365
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@3
    invoke-interface {v1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    #@6
    move-result-object v0

    #@7
    .line 366
    .local v0, "body":Lcom/android/okhttp/okio/Sink;
    if-nez v0, :cond_0

    #@9
    .line 367
    return-object v2

    #@a
    .line 369
    :cond_0
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method
