.class public final Lcom/android/okhttp/internal/http/RetryableSink;
.super Ljava/lang/Object;
.source "RetryableSink.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# instance fields
.field private closed:Z

.field private final content:Lcom/android/okhttp/okio/Buffer;

.field private final limit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/RetryableSink;-><init>(I)V

    #@4
    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@a
    .line 38
    iput p1, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    #@c
    .line 37
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
    .line 46
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 47
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

    #@8
    .line 48
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@a
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@d
    move-result-wide v0

    #@e
    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    #@10
    int-to-long v2, v2

    #@11
    cmp-long v0, v0, v2

    #@13
    if-gez v0, :cond_1

    #@15
    .line 49
    new-instance v0, Ljava/net/ProtocolException;

    #@17
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "content-length promised "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, " bytes, but received "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@32
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@35
    move-result-wide v2

    #@36
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 49
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 45
    :cond_1
    return-void
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 67
    sget-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

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
    .line 55
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->closed:Z

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
    .line 56
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
    .line 57
    iget v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    #@19
    const/4 v1, -0x1

    #@1a
    if-eq v0, v1, :cond_1

    #@1c
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@1e
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@21
    move-result-wide v0

    #@22
    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    #@24
    int-to-long v2, v2

    #@25
    sub-long/2addr v2, p2

    #@26
    cmp-long v0, v0, v2

    #@28
    if-lez v0, :cond_1

    #@2a
    .line 58
    new-instance v0, Ljava/net/ProtocolException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "exceeded content-length limit of "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget v2, p0, Lcom/android/okhttp/internal/http/RetryableSink;->limit:I

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, " bytes"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@4f
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@52
    .line 54
    return-void
.end method

.method public writeToSocket(Lcom/android/okhttp/okio/Sink;)V
    .locals 6
    .param p1, "socketOut"    # Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    .line 77
    .local v1, "buffer":Lcom/android/okhttp/okio/Buffer;
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@7
    const-wide/16 v2, 0x0

    #@9
    iget-object v4, p0, Lcom/android/okhttp/internal/http/RetryableSink;->content:Lcom/android/okhttp/okio/Buffer;

    #@b
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@e
    move-result-wide v4

    #@f
    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    #@12
    .line 78
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@15
    move-result-wide v2

    #@16
    invoke-interface {p1, v1, v2, v3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@19
    .line 74
    return-void
.end method
