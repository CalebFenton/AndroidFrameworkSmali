.class Lcom/android/okhttp/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field final synthetic val$source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p2, "val$source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "val$cacheRequest"    # Lcom/android/okhttp/internal/http/CacheRequest;
    .param p4, "val$cacheBody"    # Lcom/android/okhttp/okio/BufferedSink;

    #@0
    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    #@4
    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@6
    iput-object p4, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 970
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@6
    const/16 v1, 0x64

    #@8
    invoke-static {p0, v1, v0}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 974
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    #@10
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    #@13
    .line 968
    return-void

    #@14
    .line 971
    :cond_1
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    #@17
    .line 972
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@19
    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    #@1c
    goto :goto_0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const/4 v1, 0x1

    #@3
    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    #@5
    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-wide v4

    #@9
    .line 951
    .local v4, "bytesRead":J
    cmp-long v0, v4, v2

    #@b
    if-nez v0, :cond_2

    #@d
    .line 952
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    #@f
    if-nez v0, :cond_0

    #@11
    .line 953
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    #@13
    .line 954
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    #@15
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@18
    .line 956
    :cond_0
    return-wide v2

    #@19
    .line 943
    .end local v4    # "bytesRead":J
    :catch_0
    move-exception v6

    #@1a
    .line 944
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 945
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    #@20
    .line 946
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    #@22
    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    #@25
    .line 948
    :cond_1
    throw v6

    #@26
    .line 959
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":J
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    #@28
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@2f
    move-result-wide v2

    #@30
    sub-long/2addr v2, v4

    #@31
    move-object v0, p1

    #@32
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    #@35
    .line 960
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    #@37
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    .line 961
    return-wide v4
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
