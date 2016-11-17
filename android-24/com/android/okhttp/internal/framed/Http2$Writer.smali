.class final Lcom/android/okhttp/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .locals 2
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 372
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@5
    .line 373
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z

    #@7
    .line 374
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@9
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@e
    .line 375
    new-instance v0, Lcom/android/okhttp/internal/framed/Hpack$Writer;

    #@10
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@12
    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/framed/Hpack$Writer;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    #@15
    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    #@17
    .line 376
    const/16 v0, 0x4000

    #@19
    iput v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@1b
    .line 371
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 457
    :goto_0
    cmp-long v1, p2, v6

    #@4
    if-lez v1, :cond_1

    #@6
    .line 458
    iget v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@8
    int-to-long v2, v1

    #@9
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    #@c
    move-result-wide v2

    #@d
    long-to-int v0, v2

    #@e
    .line 459
    .local v0, "length":I
    int-to-long v2, v0

    #@f
    sub-long/2addr p2, v2

    #@10
    .line 460
    cmp-long v1, p2, v6

    #@12
    if-nez v1, :cond_0

    #@14
    const/4 v1, 0x4

    #@15
    :goto_1
    const/16 v2, 0x9

    #@17
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@1a
    .line 461
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@1c
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@1e
    int-to-long v4, v0

    #@1f
    invoke-interface {v1, v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@22
    goto :goto_0

    #@23
    .line 460
    :cond_0
    const/4 v1, 0x0

    #@24
    goto :goto_1

    #@25
    .line 456
    .end local v0    # "length":I
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .locals 6
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 385
    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    new-instance v4, Ljava/io/IOException;

    #@7
    const-string/jumbo v5, "closed"

    #@a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v4

    #@f
    monitor-exit p0

    #@10
    throw v4

    #@11
    .line 386
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@13
    invoke-virtual {p1, v4}, Lcom/android/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    #@16
    move-result v4

    #@17
    iput v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@19
    .line 387
    const/4 v1, 0x0

    #@1a
    .line 388
    .local v1, "length":I
    const/4 v3, 0x4

    #@1b
    .line 389
    .local v3, "type":B
    const/4 v0, 0x1

    #@1c
    .line 390
    .local v0, "flags":B
    const/4 v2, 0x0

    #@1d
    .line 391
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@20
    .line 392
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@22
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 384
    return-void
.end method

.method public declared-synchronized close()V
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
    .line 562
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@4
    .line 563
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@6
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 561
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 396
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "closed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 397
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-nez v0, :cond_1

    #@15
    monitor-exit p0

    #@16
    return-void

    #@17
    .line 398
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    #@1a
    move-result-object v0

    #@1b
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 399
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, ">> CONNECTION %s"

    #@2a
    const/4 v2, 0x1

    #@2b
    new-array v2, v2, [Ljava/lang/Object;

    #@2d
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    const/4 v4, 0x0

    #@36
    aput-object v3, v2, v4

    #@38
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    #@3f
    .line 401
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@41
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    #@48
    move-result-object v1

    #@49
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@4c
    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@4e
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    monitor-exit p0

    #@52
    .line 395
    return-void
.end method

.method public declared-synchronized data(ZILcom/android/okhttp/okio/Buffer;I)V
    .locals 3
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 484
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    new-instance v1, Ljava/io/IOException;

    #@7
    const-string/jumbo v2, "closed"

    #@a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 485
    :cond_0
    const/4 v0, 0x0

    #@12
    .line 486
    .local v0, "flags":B
    if-eqz p1, :cond_1

    #@14
    const/4 v1, 0x1

    #@15
    int-to-byte v0, v1

    #@16
    .line 487
    .end local v0    # "flags":B
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit p0

    #@1a
    .line 483
    return-void
.end method

.method dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    const/4 v0, 0x0

    #@1
    .line 492
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@4
    .line 493
    if-lez p4, :cond_0

    #@6
    .line 494
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@8
    int-to-long v2, p4

    #@9
    invoke-interface {v1, p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@c
    .line 490
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
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
    .line 380
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "closed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 381
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@13
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 379
    return-void
.end method

.method frameHeader(IIBB)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 567
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@8
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    #@11
    move-result-object v0

    #@12
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    #@19
    .line 568
    :cond_0
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@1b
    if-le p2, v0, :cond_1

    #@1d
    .line 569
    const-string/jumbo v0, "FRAME_SIZE_ERROR length > %d: %d"

    #@20
    const/4 v1, 0x2

    #@21
    new-array v1, v1, [Ljava/lang/Object;

    #@23
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v1, v3

    #@2b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v1, v4

    #@31
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@34
    move-result-object v0

    #@35
    throw v0

    #@36
    .line 571
    :cond_1
    const/high16 v0, -0x80000000

    #@38
    and-int/2addr v0, p1

    #@39
    if-eqz v0, :cond_2

    #@3b
    const-string/jumbo v0, "reserved bit set: %s"

    #@3e
    new-array v1, v4, [Ljava/lang/Object;

    #@40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v2

    #@44
    aput-object v2, v1, v3

    #@46
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@49
    move-result-object v0

    #@4a
    throw v0

    #@4b
    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@4d
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/Http2;->-wrap4(Lcom/android/okhttp/okio/BufferedSink;I)V

    #@50
    .line 573
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@52
    and-int/lit16 v1, p3, 0xff

    #@54
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@57
    .line 574
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@59
    and-int/lit16 v1, p4, 0xff

    #@5b
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@5e
    .line 575
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@60
    const v1, 0x7fffffff

    #@63
    and-int/2addr v1, p1

    #@64
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@67
    .line 566
    return-void
.end method

.method public declared-synchronized goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 531
    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    new-instance v4, Ljava/io/IOException;

    #@7
    const-string/jumbo v5, "closed"

    #@a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v4

    #@f
    monitor-exit p0

    #@10
    throw v4

    #@11
    .line 532
    :cond_0
    :try_start_1
    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    #@13
    const/4 v5, -0x1

    #@14
    if-ne v4, v5, :cond_1

    #@16
    const-string/jumbo v4, "errorCode.httpCode == -1"

    #@19
    const/4 v5, 0x0

    #@1a
    new-array v5, v5, [Ljava/lang/Object;

    #@1c
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@1f
    move-result-object v4

    #@20
    throw v4

    #@21
    .line 533
    :cond_1
    array-length v4, p3

    #@22
    add-int/lit8 v1, v4, 0x8

    #@24
    .line 534
    .local v1, "length":I
    const/4 v3, 0x7

    #@25
    .line 535
    .local v3, "type":B
    const/4 v0, 0x0

    #@26
    .line 536
    .local v0, "flags":B
    const/4 v2, 0x0

    #@27
    .line 537
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@2a
    .line 538
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2c
    invoke-interface {v4, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@2f
    .line 539
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@31
    iget v5, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    #@33
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@36
    .line 540
    array-length v4, p3

    #@37
    if-lez v4, :cond_2

    #@39
    .line 541
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3b
    invoke-interface {v4, p3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    #@3e
    .line 543
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@40
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 530
    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    #@1
    .line 421
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "closed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 422
    :cond_0
    const/4 v0, 0x0

    #@12
    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 420
    return-void
.end method

.method headers(ZILjava/util/List;)V
    .locals 10
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-boolean v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    new-instance v5, Ljava/io/IOException;

    #@6
    const-string/jumbo v6, "closed"

    #@9
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 443
    :cond_0
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    #@f
    invoke-virtual {v5, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    #@12
    .line 445
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@14
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@17
    move-result-wide v0

    #@18
    .line 446
    .local v0, "byteCount":J
    iget v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@1a
    int-to-long v6, v5

    #@1b
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@1e
    move-result-wide v6

    #@1f
    long-to-int v3, v6

    #@20
    .line 447
    .local v3, "length":I
    const/4 v4, 0x1

    #@21
    .line 448
    .local v4, "type":B
    int-to-long v6, v3

    #@22
    cmp-long v5, v0, v6

    #@24
    if-nez v5, :cond_3

    #@26
    const/4 v2, 0x4

    #@27
    .line 449
    .local v2, "flags":B
    :goto_0
    if-eqz p1, :cond_1

    #@29
    or-int/lit8 v5, v2, 0x1

    #@2b
    int-to-byte v2, v5

    #@2c
    .line 450
    .end local v2    # "flags":B
    :cond_1
    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@2f
    .line 451
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@31
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@33
    int-to-long v8, v3

    #@34
    invoke-interface {v5, v6, v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@37
    .line 453
    int-to-long v6, v3

    #@38
    cmp-long v5, v0, v6

    #@3a
    if-lez v5, :cond_2

    #@3c
    int-to-long v6, v3

    #@3d
    sub-long v6, v0, v6

    #@3f
    invoke-direct {p0, p2, v6, v7}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    #@42
    .line 441
    :cond_2
    return-void

    #@43
    .line 448
    :cond_3
    const/4 v2, 0x0

    #@44
    .restart local v2    # "flags":B
    goto :goto_0
.end method

.method public maxDataLength()I
    .locals 1

    #@0
    .prologue
    .line 479
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@2
    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 6
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 518
    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    new-instance v4, Ljava/io/IOException;

    #@7
    const-string/jumbo v5, "closed"

    #@a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v4

    #@f
    monitor-exit p0

    #@10
    throw v4

    #@11
    .line 519
    :cond_0
    const/16 v1, 0x8

    #@13
    .line 520
    .local v1, "length":I
    const/4 v3, 0x6

    #@14
    .line 521
    .local v3, "type":B
    if-eqz p1, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    .line 522
    .local v0, "flags":B
    :goto_0
    const/4 v2, 0x0

    #@18
    .line 523
    .local v2, "streamId":I
    :try_start_1
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@1b
    .line 524
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@1d
    invoke-interface {v4, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@20
    .line 525
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@22
    invoke-interface {v4, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@25
    .line 526
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@27
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 517
    return-void

    #@2c
    .line 521
    .end local v0    # "flags":B
    .end local v2    # "streamId":I
    :cond_1
    const/4 v0, 0x0

    #@2d
    goto :goto_0
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    #@1
    .line 427
    :try_start_0
    iget-boolean v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v5, :cond_0

    #@5
    new-instance v5, Ljava/io/IOException;

    #@7
    const-string/jumbo v6, "closed"

    #@a
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v5

    #@f
    monitor-exit p0

    #@10
    throw v5

    #@11
    .line 428
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    #@13
    invoke-virtual {v5, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    #@16
    .line 430
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@18
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@1b
    move-result-wide v0

    #@1c
    .line 431
    .local v0, "byteCount":J
    iget v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    #@1e
    add-int/lit8 v5, v5, -0x4

    #@20
    int-to-long v6, v5

    #@21
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@24
    move-result-wide v6

    #@25
    long-to-int v3, v6

    #@26
    .line 432
    .local v3, "length":I
    const/4 v4, 0x5

    #@27
    .line 433
    .local v4, "type":B
    int-to-long v6, v3

    #@28
    cmp-long v5, v0, v6

    #@2a
    if-nez v5, :cond_2

    #@2c
    const/4 v2, 0x4

    #@2d
    .line 434
    .local v2, "flags":B
    :goto_0
    add-int/lit8 v5, v3, 0x4

    #@2f
    invoke-virtual {p0, p1, v5, v4, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@32
    .line 435
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@34
    const v6, 0x7fffffff

    #@37
    and-int/2addr v6, p2

    #@38
    invoke-interface {v5, v6}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3b
    .line 436
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3d
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    #@3f
    int-to-long v8, v3

    #@40
    invoke-interface {v5, v6, v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@43
    .line 438
    int-to-long v6, v3

    #@44
    cmp-long v5, v0, v6

    #@46
    if-lez v5, :cond_1

    #@48
    int-to-long v6, v3

    #@49
    sub-long v6, v0, v6

    #@4b
    invoke-direct {p0, p1, v6, v7}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    :cond_1
    monitor-exit p0

    #@4f
    .line 426
    return-void

    #@50
    .line 433
    .end local v2    # "flags":B
    :cond_2
    const/4 v2, 0x0

    #@51
    goto :goto_0
.end method

.method public declared-synchronized rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 467
    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    new-instance v3, Ljava/io/IOException;

    #@7
    const-string/jumbo v4, "closed"

    #@a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v3

    #@f
    monitor-exit p0

    #@10
    throw v3

    #@11
    .line 468
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    #@13
    const/4 v4, -0x1

    #@14
    if-ne v3, v4, :cond_1

    #@16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1b
    throw v3

    #@1c
    .line 470
    :cond_1
    const/4 v1, 0x4

    #@1d
    .line 471
    .local v1, "length":I
    const/4 v2, 0x3

    #@1e
    .line 472
    .local v2, "type":B
    const/4 v0, 0x0

    #@1f
    .line 473
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@22
    .line 474
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@24
    iget v4, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    #@26
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@29
    .line 475
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2b
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 466
    return-void
.end method

.method public declared-synchronized settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 499
    :try_start_0
    iget-boolean v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    new-instance v6, Ljava/io/IOException;

    #@7
    const-string/jumbo v7, "closed"

    #@a
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v6

    #@f
    monitor-exit p0

    #@10
    throw v6

    #@11
    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    #@14
    move-result v6

    #@15
    mul-int/lit8 v3, v6, 0x6

    #@17
    .line 501
    .local v3, "length":I
    const/4 v5, 0x4

    #@18
    .line 502
    .local v5, "type":B
    const/4 v0, 0x0

    #@19
    .line 503
    .local v0, "flags":B
    const/4 v4, 0x0

    #@1a
    .line 504
    .local v4, "streamId":I
    invoke-virtual {p0, v4, v3, v5, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@1d
    .line 505
    const/4 v1, 0x0

    #@1e
    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    #@20
    if-ge v1, v6, :cond_4

    #@22
    .line 506
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    #@25
    move-result v6

    #@26
    if-nez v6, :cond_1

    #@28
    .line 505
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 507
    :cond_1
    move v2, v1

    #@2c
    .line 508
    .local v2, "id":I
    const/4 v6, 0x4

    #@2d
    if-ne v1, v6, :cond_3

    #@2f
    const/4 v2, 0x3

    #@30
    .line 510
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@32
    invoke-interface {v6, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    #@35
    .line 511
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@37
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    #@3a
    move-result v7

    #@3b
    invoke-interface {v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3e
    goto :goto_1

    #@3f
    .line 509
    :cond_3
    const/4 v6, 0x7

    #@40
    if-ne v2, v6, :cond_2

    #@42
    const/4 v2, 0x4

    #@43
    goto :goto_2

    #@44
    .line 513
    .end local v2    # "id":I
    :cond_4
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@46
    invoke-interface {v6}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    monitor-exit p0

    #@4a
    .line 498
    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    #@1
    .line 415
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "closed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 416
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 414
    return-void
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    #@1
    .line 408
    if-eqz p2, :cond_0

    #@3
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@8
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 409
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "closed"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 410
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 407
    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 548
    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    new-instance v3, Ljava/io/IOException;

    #@7
    const-string/jumbo v4, "closed"

    #@a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v3

    #@f
    monitor-exit p0

    #@10
    throw v3

    #@11
    .line 549
    :cond_0
    const-wide/16 v4, 0x0

    #@13
    cmp-long v3, p2, v4

    #@15
    if-eqz v3, :cond_1

    #@17
    const-wide/32 v4, 0x7fffffff

    #@1a
    cmp-long v3, p2, v4

    #@1c
    if-lez v3, :cond_2

    #@1e
    .line 550
    :cond_1
    :try_start_1
    const-string/jumbo v3, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    #@21
    const/4 v4, 0x1

    #@22
    new-array v4, v4, [Ljava/lang/Object;

    #@24
    .line 551
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v5

    #@28
    const/4 v6, 0x0

    #@29
    aput-object v5, v4, v6

    #@2b
    .line 550
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Http2;->-wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    #@2e
    move-result-object v3

    #@2f
    throw v3

    #@30
    .line 553
    :cond_2
    const/4 v1, 0x4

    #@31
    .line 554
    .local v1, "length":I
    const/16 v2, 0x8

    #@33
    .line 555
    .local v2, "type":B
    const/4 v0, 0x0

    #@34
    .line 556
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    #@37
    .line 557
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@39
    long-to-int v4, p2

    #@3a
    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3d
    .line 558
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3f
    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    monitor-exit p0

    #@43
    .line 547
    return-void
.end method
