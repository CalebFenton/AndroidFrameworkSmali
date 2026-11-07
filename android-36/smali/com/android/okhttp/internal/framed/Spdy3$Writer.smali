.class final Lcom/android/okhttp/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final blacklist client:Z

.field private blacklist closed:Z

.field private final blacklist headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final blacklist headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

.field private final blacklist sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .registers 4

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 298
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->client:Z

    .line 300
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    .line 301
    sget-object p2, Lcom/android/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 302
    new-instance p2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {p2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    iput-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    .line 303
    new-instance v0, Lcom/android/okhttp/okio/DeflaterSink;

    invoke-direct {v0, p2, p1}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    return-void
.end method

.method private blacklist writeNameValueBlockToBuffer(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 411
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 412
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3f

    .line 413
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/framed/Header;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 414
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 415
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, v2}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 416
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/framed/Header;

    iget-object v2, v2, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 417
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 418
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3, v2}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 420
    :cond_3f
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0}, Lcom/android/okhttp/okio/Sink;->flush()V

    return-void
.end method


# virtual methods
.method public blacklist ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 2

    .line 0
    return-void
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 489
    :try_start_2
    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    .line 490
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 491
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized blacklist connectionPreface()V
    .registers 1

    monitor-enter p0

    .line 318
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist data(ZILcom/android/okhttp/okio/Buffer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_1
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 395
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public declared-synchronized blacklist flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 321
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_e

    .line 322
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 323
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    goto :goto_16

    .line 321
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_c

    throw v0
.end method

.method public declared-synchronized blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_1
    iget-boolean p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez p3, :cond_36

    .line 458
    iget p3, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2e

    .line 464
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v0, -0x7ffcfff9

    invoke-interface {p3, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 465
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 466
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p3, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 467
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget p2, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 468
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 469
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    goto :goto_3e

    .line 459
    :cond_2e
    :try_start_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_36
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_2c

    throw p1
.end method

.method public declared-synchronized blacklist headers(ILjava/util/List;)V
    .registers 7
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

    .line 361
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_37

    .line 362
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 365
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 367
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, -0x7ffcfff8

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 368
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, 0xffffff

    and-int/2addr p2, v1

    invoke-interface {v0, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 369
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-interface {p2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 370
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 371
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    goto :goto_3f

    .line 361
    :cond_37
    :try_start_37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_35

    throw p1
.end method

.method public blacklist maxDataLength()I
    .registers 1

    .line 0
    const/16 p0, 0x3fff

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

    .line 443
    :try_start_1
    iget-boolean p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez p3, :cond_39

    .line 444
    iget-boolean p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    if-eq p3, v0, :cond_13

    move v1, v2

    :cond_13
    if-ne p1, v1, :cond_31

    .line 449
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const p3, -0x7ffcfffa

    invoke-interface {p1, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 450
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/4 p3, 0x4

    invoke-interface {p1, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 451
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 452
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 453
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    goto :goto_41

    .line 445
    :cond_31
    :try_start_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "payload != reply"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    :cond_39
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_2f

    throw p1
.end method

.method public blacklist pushPromise(IILjava/util/List;)V
    .registers 4
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

    .line 0
    return-void
.end method

.method public declared-synchronized blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 375
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_38

    .line 376
    iget v0, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    .line 380
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 381
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 382
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 383
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget p2, p2, Lcom/android/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 384
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 385
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    goto :goto_40

    .line 376
    :cond_32
    :try_start_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 375
    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_30

    throw p1
.end method

.method blacklist sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_42

    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2b

    .line 403
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v3, 0x7fffffff

    and-int/2addr p1, v3

    invoke-interface {v2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 404
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr p2, v2

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    if-lez p4, :cond_2a

    .line 406
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p0, p3, v0, v1}, Lcom/android/okhttp/okio/Sink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    :cond_2a
    return-void

    .line 401
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized blacklist settings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 424
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_54

    .line 427
    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    .line 429
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 430
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v3, 0xffffff

    and-int/2addr v1, v3

    invoke-interface {v2, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 431
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    const/4 v0, 0x0

    :goto_24
    const/16 v1, 0xa

    if-gt v0, v1, :cond_4d

    .line 433
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_48

    .line 434
    :cond_2f
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->flags(I)I

    move-result v1

    .line 435
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v4, v0, v3

    or-int/2addr v1, v4

    invoke-interface {v2, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 436
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :catchall_4b
    move-exception p1

    goto :goto_5c

    .line 438
    :cond_4d
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_4b

    .line 439
    monitor-exit p0

    return-void

    .line 424
    :cond_54
    :try_start_54
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :goto_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_4b

    throw p1
.end method

.method public declared-synchronized blacklist synReply(ZILjava/util/List;)V
    .registers 8
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

    .line 346
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_41

    .line 347
    invoke-direct {p0, p3}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 350
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p3}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int p3, v0

    .line 352
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, -0x7ffcfffe

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 353
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p1, p3

    invoke-interface {v0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 354
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 355
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 356
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 357
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    goto :goto_49

    .line 346
    :cond_41
    :try_start_41
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :goto_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_3f

    throw p1
.end method

.method public declared-synchronized blacklist synStream(ZZIILjava/util/List;)V
    .registers 10
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

    .line 328
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_53

    .line 329
    invoke-direct {p0, p5}, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 330
    iget-object p5, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    long-to-int p5, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_17

    const/4 p2, 0x2

    goto :goto_18

    :cond_17
    move p2, v0

    :goto_18
    or-int/2addr p1, p2

    .line 335
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, -0x7ffcffff

    invoke-interface {p2, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 336
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const v1, 0xffffff

    and-int/2addr p5, v1

    or-int/2addr p1, p5

    invoke-interface {p2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 337
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const p2, 0x7fffffff

    and-int/2addr p3, p2

    invoke-interface {p1, p3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 338
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    and-int/2addr p2, p4

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 339
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 340
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    iget-object p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    .line 341
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 342
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    goto :goto_5b

    .line 328
    :cond_53
    :try_start_53
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :goto_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_51

    throw p1
.end method

.method public declared-synchronized blacklist windowUpdate(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 473
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_4c

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_35

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_35

    .line 481
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 482
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 483
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 484
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 485
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->flush()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 486
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    goto :goto_54

    .line 475
    :cond_35
    :try_start_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_4c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_35 .. :try_end_55} :catchall_33

    throw p1
.end method
