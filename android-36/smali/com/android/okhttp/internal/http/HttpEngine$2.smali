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
.field blacklist cacheRequestClosed:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic blacklist val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

.field final synthetic blacklist val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field final synthetic blacklist val$source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 786
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 820
    invoke-static {p0, v0, v1}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 821
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 822
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 824
    :cond_16
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->close()V

    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 792
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_2f

    const-wide/16 p2, -0x1

    cmp-long v0, v6, p2

    if-nez v0, :cond_19

    .line 802
    iget-boolean p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez p1, :cond_18

    .line 803
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 804
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->close()V

    :cond_18
    return-wide p2

    .line 809
    :cond_19
    iget-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p2}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide p2

    sub-long v4, p2, v6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 810
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    return-wide v6

    :catch_2f
    move-exception v0

    move-object p1, v0

    .line 794
    iget-boolean p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez p2, :cond_3c

    .line 795
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 796
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {p0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 798
    :cond_3c
    throw p1
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 815
    iget-object p0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p0

    return-object p0
.end method
