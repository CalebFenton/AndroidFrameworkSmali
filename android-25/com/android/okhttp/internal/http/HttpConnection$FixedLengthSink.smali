.class final Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;
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
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;

.field private final timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p2, "bytesRemaining"    # J

    #@0
    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 283
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    #@7
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

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
    iput-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@16
    .line 288
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    #@18
    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;JLcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p2, "bytesRemaining"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;J)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 313
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    #@8
    .line 314
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_1

    #@10
    new-instance v0, Ljava/net/ProtocolException;

    #@12
    const-string/jumbo v1, "unexpected end of stream"

    #@15
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@1b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@1d
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-wrap0(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    #@20
    .line 316
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@22
    const/4 v1, 0x3

    #@23
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/HttpConnection;->-set1(Lcom/android/okhttp/internal/http/HttpConnection;I)I

    #@26
    .line 311
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@7
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    #@e
    .line 306
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    #@2
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->closed:Z

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
    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@10
    move-result-wide v0

    #@11
    const-wide/16 v2, 0x0

    #@13
    move-wide v4, p2

    #@14
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    #@17
    .line 298
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    #@19
    cmp-long v0, p2, v0

    #@1b
    if-lez v0, :cond_1

    #@1d
    .line 299
    new-instance v0, Ljava/net/ProtocolException;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "expected "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    #@2d
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 300
    const-string/jumbo v2, " bytes but received "

    #@34
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@46
    invoke-static {v0}, Lcom/android/okhttp/internal/http/HttpConnection;->-get3(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSink;

    #@49
    move-result-object v0

    #@4a
    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@4d
    .line 303
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    #@4f
    sub-long/2addr v0, p2

    #@50
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSink;->bytesRemaining:J

    #@52
    .line 295
    return-void
.end method
