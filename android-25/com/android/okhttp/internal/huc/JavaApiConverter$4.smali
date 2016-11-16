.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$4;
.super Lcom/android/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic val$cacheResponse:Ljava/net/CacheResponse;

.field final synthetic val$okHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V
    .locals 0
    .param p1, "val$okHeaders"    # Lcom/android/okhttp/Headers;
    .param p2, "val$cacheResponse"    # Ljava/net/CacheResponse;

    #@0
    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$cacheResponse:Ljava/net/CacheResponse;

    #@4
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 479
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    #@3
    const-string/jumbo v3, "Content-Type"

    #@6
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 480
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_0

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@10
    move-result-object v1

    #@11
    goto :goto_0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 489
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$cacheResponse:Ljava/net/CacheResponse;

    #@6
    invoke-virtual {v1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    #@9
    move-result-object v0

    #@a
    .line 490
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    #@d
    move-result-object v1

    #@e
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    #@14
    .line 492
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    #@16
    return-object v1
.end method
