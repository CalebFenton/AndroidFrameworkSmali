.class final Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;

.field private final timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 326
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    #@7
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@9
    invoke-static {v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@c
    move-result-object v1

    #@d
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    #@14
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@16
    .line 325
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 349
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 350
    :cond_0
    const/4 v0, 0x1

    #@8
    :try_start_1
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z

    #@a
    .line 351
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@c
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "0\r\n\r\n"

    #@13
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@16
    .line 352
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@18
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@1a
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-wrap0(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    #@1d
    .line 353
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@1f
    const/4 v1, 0x3

    #@20
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-set1(Lcom/android/okhttp/internal/http/HttpConnection;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 348
    return-void

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@9
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 343
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@2
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 335
    :cond_0
    const-wide/16 v0, 0x0

    #@f
    cmp-long v0, p2, v0

    #@11
    if-nez v0, :cond_1

    #@13
    return-void

    #@14
    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@16
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@1d
    .line 338
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@1f
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "\r\n"

    #@26
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@29
    .line 339
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2b
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@2e
    move-result-object v0

    #@2f
    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@32
    .line 340
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@34
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@37
    move-result-object v0

    #@38
    const-string/jumbo v1, "\r\n"

    #@3b
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@3e
    .line 333
    return-void
.end method
