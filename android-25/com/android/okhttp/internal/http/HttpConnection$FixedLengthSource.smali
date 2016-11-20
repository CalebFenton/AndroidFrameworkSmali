.class Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;
.super Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;J)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;)V

    #@6
    .line 407
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@8
    .line 408
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-nez v0, :cond_0

    #@10
    .line 409
    const/4 v0, 0x1

    #@11
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    #@14
    .line 406
    :cond_0
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
    .line 432
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 434
    :cond_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 435
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@f
    const/16 v1, 0x64

    #@11
    invoke-static {p0, v1, v0}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 439
    :cond_1
    :goto_0
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    #@1a
    .line 431
    return-void

    #@1b
    .line 436
    :cond_2
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    #@1e
    goto :goto_0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const-wide/16 v6, 0x0

    #@4
    .line 414
    cmp-long v2, p2, v6

    #@6
    if-gez v2, :cond_0

    #@8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "byteCount < 0: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 415
    :cond_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->closed:Z

    #@24
    if-eqz v2, :cond_1

    #@26
    new-instance v2, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v3, "closed"

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 416
    :cond_1
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@31
    cmp-long v2, v2, v6

    #@33
    if-nez v2, :cond_2

    #@35
    return-wide v8

    #@36
    .line 418
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@38
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@3b
    move-result-object v2

    #@3c
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@3e
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    #@41
    move-result-wide v4

    #@42
    invoke-interface {v2, p1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@45
    move-result-wide v0

    #@46
    .line 419
    .local v0, "read":J
    cmp-long v2, v0, v8

    #@48
    if-nez v2, :cond_3

    #@4a
    .line 420
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->unexpectedEndOfInput()V

    #@4d
    .line 421
    new-instance v2, Ljava/net/ProtocolException;

    #@4f
    const-string/jumbo v3, "unexpected end of stream"

    #@52
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@55
    throw v2

    #@56
    .line 424
    :cond_3
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@58
    sub-long/2addr v2, v0

    #@59
    iput-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@5b
    .line 425
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->bytesRemaining:J

    #@5d
    cmp-long v2, v2, v6

    #@5f
    if-nez v2, :cond_4

    #@61
    .line 426
    const/4 v2, 0x1

    #@62
    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/http/HttpConnection$FixedLengthSource;->endOfInput(Z)V

    #@65
    .line 428
    :cond_4
    return-wide v0
.end method
