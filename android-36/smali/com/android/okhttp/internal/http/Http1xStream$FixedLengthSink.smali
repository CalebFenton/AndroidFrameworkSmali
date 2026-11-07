.class final Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;
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
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private blacklist bytesRemaining:J

.field private blacklist closed:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;

.field private final blacklist timeout:Lcom/android/okhttp/okio/ForwardingTimeout;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Lcom/android/okhttp/okio/ForwardingTimeout;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/okhttp/okio/ForwardingTimeout;-><init>(Lcom/android/okhttp/okio/Timeout;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    .line 276
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;JLcom/android/okhttp/internal/http/Http1xStream$1;)V
    .registers 5

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 302
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    # invokes: Lcom/android/okhttp/internal/http/Http1xStream;->detachTimeout(Lcom/android/okhttp/okio/ForwardingTimeout;)V
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->access$400(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/okio/ForwardingTimeout;)V

    .line 304
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x3

    # setter for: Lcom/android/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {p0, v0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$502(Lcom/android/okhttp/internal/http/Http1xStream;I)I

    return-void

    .line 302
    :cond_1e
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 296
    :cond_5
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {p0}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->flush()V

    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/android/okhttp/okio/ForwardingTimeout;

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-nez v0, :cond_44

    .line 285
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 286
    iget-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long p2, v5, p2

    if-gtz p2, :cond_23

    .line 290
    iget-object p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static {p2}, Lcom/android/okhttp/internal/http/Http1xStream;->access$300(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1, v5, v6}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    .line 291
    iget-wide p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr p1, v5

    iput-wide p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    return-void

    .line 287
    :cond_23
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes but received "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
