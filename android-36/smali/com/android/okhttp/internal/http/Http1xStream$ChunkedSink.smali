.class final Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private blacklist closed:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field private final blacklist timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V
    .registers 3

    .line 313
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 338
    :try_start_8
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z

    .line 339
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 340
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    # invokes: Lcom/android/okhttp/internal/http/Http1xStream;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$400(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 341
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x3

    # setter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$502(Lcom/android/okhttp/internal/http/Http1xStream;I)I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_24

    .line 342
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public declared-synchronized whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 332
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 333
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    .line 334
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z

    if-nez v0, :cond_32

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_b

    return-void

    .line 325
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 326
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 327
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 328
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    return-void

    .line 322
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
