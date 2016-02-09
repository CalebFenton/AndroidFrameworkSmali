.class Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;
.super Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedSource"
.end annotation


# static fields
.field private static final NO_CHUNK_YET:J = -0x1L


# instance fields
.field private bytesRemainingInChunk:J

.field private hasMoreChunks:Z

.field private final httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpConnection;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpEngine;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpConnection;
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;-><init>(Lcom/android/okhttp/internal/http/HttpConnection;Lcom/android/okhttp/internal/http/HttpConnection$AbstractSource;)V

    #@6
    .line 446
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@a
    .line 447
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    #@d
    .line 451
    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@f
    .line 450
    return-void
.end method

.method private readChunkSize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 475
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@4
    const-wide/16 v6, -0x1

    #@6
    cmp-long v3, v4, v6

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 476
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@c
    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@13
    .line 479
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@15
    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readHexadecimalUnsignedLong()J

    #@1c
    move-result-wide v4

    #@1d
    iput-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@1f
    .line 480
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@21
    invoke-static {v3}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@24
    move-result-object v3

    #@25
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 481
    .local v1, "extensions":Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@2f
    cmp-long v3, v4, v8

    #@31
    if-ltz v3, :cond_3

    #@33
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_1

    #@39
    const-string/jumbo v3, ";"

    #@3c
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_3

    #@42
    .line 488
    :cond_1
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@44
    cmp-long v3, v4, v8

    #@46
    if-nez v3, :cond_2

    #@48
    .line 489
    const/4 v3, 0x0

    #@49
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    #@4b
    .line 490
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    #@4d
    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@50
    .line 491
    .local v2, "trailersBuilder":Lcom/android/okhttp/Headers$Builder;
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@52
    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/android/okhttp/Headers$Builder;)V

    #@55
    .line 492
    iget-object v3, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    #@57
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/HttpEngine;->receiveHeaders(Lcom/android/okhttp/Headers;)V

    #@5e
    .line 493
    const/4 v3, 0x1

    #@5f
    invoke-virtual {p0, v3}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->endOfInput(Z)V

    #@62
    .line 473
    .end local v2    # "trailersBuilder":Lcom/android/okhttp/Headers$Builder;
    :cond_2
    return-void

    #@63
    .line 482
    :cond_3
    :try_start_1
    new-instance v3, Ljava/net/ProtocolException;

    #@65
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "expected chunk size and optional extensions but was \""

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    .line 483
    iget-wide v6, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@73
    .line 482
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    .line 483
    const-string/jumbo v5, "\""

    #@7e
    .line 482
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@89
    throw v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@8a
    .line 485
    .end local v1    # "extensions":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@8b
    .line 486
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/net/ProtocolException;

    #@8d
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@94
    throw v3
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
    .line 498
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    return-void

    #@5
    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@b
    const/16 v1, 0x64

    #@d
    invoke-static {p0, v1, v0}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 502
    :cond_1
    :goto_0
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

    #@16
    .line 497
    return-void

    #@17
    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->unexpectedEndOfInput()V

    #@1a
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
    const-wide/16 v4, 0x0

    #@2
    const-wide/16 v6, -0x1

    #@4
    .line 455
    cmp-long v2, p2, v4

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
    .line 456
    :cond_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->closed:Z

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
    .line 457
    :cond_1
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    #@31
    if-nez v2, :cond_2

    #@33
    return-wide v6

    #@34
    .line 459
    :cond_2
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@36
    cmp-long v2, v2, v4

    #@38
    if-eqz v2, :cond_3

    #@3a
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@3c
    cmp-long v2, v2, v6

    #@3e
    if-nez v2, :cond_4

    #@40
    .line 460
    :cond_3
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->readChunkSize()V

    #@43
    .line 461
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->hasMoreChunks:Z

    #@45
    if-nez v2, :cond_4

    #@47
    return-wide v6

    #@48
    .line 464
    :cond_4
    iget-object v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->this$0:Lcom/android/okhttp/internal/http/HttpConnection;

    #@4a
    invoke-static {v2}, Lcom/android/okhttp/internal/http/HttpConnection;->-get4(Lcom/android/okhttp/internal/http/HttpConnection;)Lcom/android/okhttp/okio/BufferedSource;

    #@4d
    move-result-object v2

    #@4e
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@50
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@53
    move-result-wide v4

    #@54
    invoke-interface {v2, p1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@57
    move-result-wide v0

    #@58
    .line 465
    .local v0, "read":J
    cmp-long v2, v0, v6

    #@5a
    if-nez v2, :cond_5

    #@5c
    .line 466
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->unexpectedEndOfInput()V

    #@5f
    .line 467
    new-instance v2, Ljava/io/IOException;

    #@61
    const-string/jumbo v3, "unexpected end of stream"

    #@64
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 469
    :cond_5
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@6a
    sub-long/2addr v2, v0

    #@6b
    iput-wide v2, p0, Lcom/android/okhttp/internal/http/HttpConnection$ChunkedSource;->bytesRemainingInChunk:J

    #@6d
    .line 470
    return-wide v0
.end method
