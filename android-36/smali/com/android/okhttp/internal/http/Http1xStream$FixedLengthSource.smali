.class Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;
.super Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private blacklist bytesRemaining:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/Http1xStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/Http1xStream;J)V
    .registers 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/Http1xStream;Lcom/android/okhttp/internal/http/Http1xStream$1;)V

    .line 384
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_11

    .line 386
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->endOfInput()V

    :cond_11
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

    .line 409
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 411
    :cond_5
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 412
    invoke-static {p0, v0, v1}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 413
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->unexpectedEndOfInput()V

    :cond_1a
    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->closed:Z

    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_47

    .line 392
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->closed:Z

    if-nez v2, :cond_3f

    .line 393
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v0

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    return-wide v3

    .line 395
    :cond_13
    iget-object v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/android/okhttp/internal/http/Http1xStream;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/Http1xStream;->access$600(Lcom/android/okhttp/internal/http/Http1xStream;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_34

    .line 401
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_33

    .line 403
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->endOfInput()V

    :cond_33
    return-wide p1

    .line 397
    :cond_34
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/Http1xStream$AbstractSource;->unexpectedEndOfInput()V

    .line 398
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
