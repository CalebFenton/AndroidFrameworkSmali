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
.field private final blacklist client:Z

.field private blacklist closed:Z

.field private final blacklist hpackBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final blacklist hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

.field private blacklist maxFrameSize:I

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .registers 3

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 375
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z

    .line 376
    new-instance p1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 377
    new-instance p2, Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-direct {p2, p1}, Lcom/android/okhttp/internal/framed/Hpack$Writer;-><init>(Lcom/android/okhttp/okio/Buffer;)V

    iput-object p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    const/16 p1, 0x4000

    .line 378
    iput p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return-void
.end method

.method private blacklist writeContinuationFrames(IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_24

    .line 460
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr p2, v3

    cmp-long v0, p2, v0

    if-nez v0, :cond_16

    const/4 v0, 0x4

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/16 v1, 0x9

    .line 462
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 463
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {v0, v1, v3, v4}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    goto :goto_0

    :cond_24
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1c

    .line 388
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 394
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 395
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    goto :goto_24

    .line 387
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_1a

    throw p1
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 564
    :try_start_2
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    .line 565
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 566
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized blacklist connectionPreface()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 398
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_47

    .line 399
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_31

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 400
    :cond_b
    :try_start_b
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 401
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_33

    :catchall_31
    move-exception v0

    goto :goto_4f

    .line 403
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 404
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_45
    .catchall {:try_start_b .. :try_end_45} :catchall_31

    .line 405
    monitor-exit p0

    return-void

    .line 398
    :cond_47
    :try_start_47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :goto_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_31

    throw v0
.end method

.method public declared-synchronized blacklist data(ZILcom/android/okhttp/okio/Buffer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 486
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    int-to-byte p1, p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 489
    :goto_b
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 490
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    goto :goto_1a

    .line 486
    :cond_12
    :try_start_12
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_10

    throw p1
.end method

.method blacklist dataFrame(IBLcom/android/okhttp/okio/Buffer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    if-lez p4, :cond_c

    .line 496
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    int-to-long p1, p4

    invoke-interface {p0, p3, p1, p2}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    :cond_c
    return-void
.end method

.method public declared-synchronized blacklist flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_e

    .line 383
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 384
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    .line 382
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_c

    throw v0
.end method

.method blacklist frameHeader(IIBB)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_18

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 570
    :cond_18
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    if-gt p2, v0, :cond_4d

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3e

    .line 574
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/Http2;->access$600(Lcom/android/okhttp/okio/BufferedSink;I)V

    .line 575
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 576
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 577
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-interface {p0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    return-void

    .line 573
    :cond_3e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "reserved bit set: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 571
    :cond_4d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "FRAME_SIZE_ERROR length > %d: %d"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {p1, p0}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public declared-synchronized blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_39

    .line 534
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_30

    .line 535
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 539
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 540
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 541
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget p2, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 542
    array-length p1, p3

    if-lez p1, :cond_29

    .line 543
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, p3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_29

    :catchall_27
    move-exception p1

    goto :goto_41

    .line 545
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_27

    .line 546
    monitor-exit p0

    return-void

    .line 534
    :cond_30
    :try_start_30
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 533
    :cond_39
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_27

    throw p1
.end method

.method public declared-synchronized blacklist headers(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 423
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 425
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_15

    .line 423
    :cond_d
    :try_start_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_b

    throw p1
.end method

.method blacklist headers(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_36

    .line 445
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 447
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    .line 448
    iget p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 v5, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-eqz p1, :cond_24

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_24
    const/4 p1, 0x1

    .line 452
    invoke-virtual {p0, p2, p3, p1, v5}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 453
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, p3, v2, v3}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    if-lez v4, :cond_35

    sub-long/2addr v0, v2

    .line 455
    invoke-direct {p0, p2, v0, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    :cond_35
    return-void

    .line 444
    :cond_36
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist maxDataLength()I
    .registers 1

    .line 481
    iget p0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return p0
.end method

.method public declared-synchronized blacklist ping(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x6

    .line 525
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 526
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 527
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 528
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 529
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    goto :goto_27

    .line 520
    :cond_1f
    :try_start_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_1d

    throw p1
.end method

.method public declared-synchronized blacklist pushPromise(IILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 429
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_42

    .line 430
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/android/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 432
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    .line 433
    iget p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    int-to-long v3, p3

    cmp-long v5, v0, v3

    if-nez v5, :cond_21

    move v6, v2

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    :goto_22
    add-int/2addr p3, v2

    const/4 v2, 0x5

    .line 436
    invoke-virtual {p0, p1, p3, v2, v6}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 437
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 438
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p2, p3, v3, v4}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    if-lez v5, :cond_40

    sub-long/2addr v0, v3

    .line 440
    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_40

    :catchall_3e
    move-exception p1

    goto :goto_4a

    .line 441
    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    .line 429
    :cond_42
    :try_start_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :goto_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_3e

    throw p1
.end method

.method public declared-synchronized blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 469
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_26

    .line 470
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 475
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 476
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget p2, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 477
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 478
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    goto :goto_2e

    .line 470
    :cond_20
    :try_start_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 469
    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_1e

    throw p1
.end method

.method public declared-synchronized blacklist settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 501
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3f

    .line 502
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 506
    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    :goto_10
    const/16 v0, 0xa

    if-ge v1, v0, :cond_38

    .line 508
    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_33

    :cond_1b
    if-ne v1, v2, :cond_1f

    const/4 v0, 0x3

    goto :goto_25

    :cond_1f
    const/4 v0, 0x7

    if-ne v1, v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    .line 512
    :goto_25
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 513
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catchall_36
    move-exception p1

    goto :goto_47

    .line 515
    :cond_38
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_36

    .line 516
    monitor-exit p0

    return-void

    .line 501
    :cond_3f
    :try_start_3f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :goto_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_36

    throw p1
.end method

.method public declared-synchronized blacklist synReply(ZILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 417
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 418
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 419
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    goto :goto_14

    .line 417
    :cond_c
    :try_start_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_a

    throw p1
.end method

.method public declared-synchronized blacklist synStream(ZZIILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_16

    .line 411
    :try_start_3
    iget-boolean p2, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez p2, :cond_e

    .line 412
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 413
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    goto :goto_1c

    .line 411
    :cond_e
    :try_start_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 413
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist windowUpdate(IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 550
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_37

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_28

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_28

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 558
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 559
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 560
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 561
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    goto :goto_3f

    .line 552
    :cond_28
    :try_start_28
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    .line 553
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 552
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {p1, p2}, Lcom/android/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 550
    :cond_37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_26

    throw p1
.end method
