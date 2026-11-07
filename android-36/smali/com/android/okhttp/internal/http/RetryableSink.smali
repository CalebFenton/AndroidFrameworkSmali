.class public final Lcom/android/okhttp/internal/http/RetryableSink;
.super Ljava/lang/Object;
.source "RetryableSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private greylist-max-o closed:Z

.field private final greylist-max-o content:Lcom/android/okhttp/okio/Buffer;

.field private final greylist-max-o limit:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    .line 40
    iput p1, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

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

    .line 48
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    if-eqz v0, :cond_5

    goto :goto_15

    :cond_5
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    .line 50
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    :goto_15
    return-void

    .line 51
    :cond_16
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    .line 52
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist-max-o timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 69
    sget-object p0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    return-object p0
.end method

.method public greylist-max-o write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    if-nez v0, :cond_46

    .line 58
    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 59
    iget p2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_40

    iget-object p2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide p2

    iget v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    int-to-long v0, v0

    sub-long/2addr v0, v5

    cmp-long p2, p2, v0

    if-gtz p2, :cond_22

    goto :goto_40

    .line 60
    :cond_22
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exceeded content-length limit of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    return-void

    .line 57
    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o writeToSocket(Lcom/android/okhttp/okio/Sink;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 80
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    return-void
.end method
