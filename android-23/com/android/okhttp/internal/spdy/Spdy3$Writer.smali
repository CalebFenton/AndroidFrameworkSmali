.class final Lcom/android/okhttp/internal/spdy/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

.field private final headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

.field private final sink:Lcom/android/okhttp/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSink;Z)V
    .locals 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 295
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@5
    .line 296
    iput-boolean p2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    #@7
    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    #@9
    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    #@c
    .line 299
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/android/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    #@e
    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    #@11
    .line 300
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    #@13
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@16
    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@18
    .line 301
    new-instance v1, Lcom/android/okhttp/okio/DeflaterSink;

    #@1a
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@1c
    invoke-direct {v1, v2, v0}, Lcom/android/okhttp/okio/DeflaterSink;-><init>(Lcom/android/okhttp/okio/Sink;Ljava/util/zip/Deflater;)V

    #@1f
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@25
    .line 294
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
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
    .line 409
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@5
    move-result-wide v4

    #@6
    const-wide/16 v6, 0x0

    #@8
    cmp-long v4, v4, v6

    #@a
    if-eqz v4, :cond_0

    #@c
    new-instance v4, Ljava/lang/IllegalStateException;

    #@e
    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    #@11
    throw v4

    #@12
    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@14
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@17
    move-result v5

    #@18
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@1b
    .line 411
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@22
    .line 412
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    #@28
    iget-object v1, v4, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@2a
    .line 413
    .local v1, "name":Lcom/android/okhttp/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@2c
    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@2f
    move-result v5

    #@30
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@33
    .line 414
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@35
    invoke-interface {v4, v1}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    #@38
    .line 415
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Lcom/android/okhttp/internal/spdy/Header;

    #@3e
    iget-object v3, v4, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@40
    .line 416
    .local v3, "value":Lcom/android/okhttp/okio/ByteString;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@42
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@45
    move-result v5

    #@46
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@49
    .line 417
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@4b
    invoke-interface {v4, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    #@4e
    .line 411
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_0

    #@51
    .line 419
    .end local v1    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v3    # "value":Lcom/android/okhttp/okio/ByteString;
    :cond_1
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@53
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    #@56
    .line 408
    return-void
.end method


# virtual methods
.method public ackSettings(Lcom/android/okhttp/internal/spdy/Settings;)V
    .locals 0
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/spdy/Settings;

    #@0
    .prologue
    .line 304
    return-void
.end method

.method public declared-synchronized close()V
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
    .line 488
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    #@4
    .line 489
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@6
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockOut:Lcom/android/okhttp/okio/BufferedSink;

    #@8
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 487
    return-void

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 0

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 314
    return-void
.end method

.method public declared-synchronized data(ZILcom/android/okhttp/okio/Buffer;I)V
    .locals 2
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
    .line 391
    if-eqz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    .line 392
    .local v0, "flags":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 390
    return-void

    #@9
    .line 391
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    #@a
    .restart local v0    # "flags":I
    goto :goto_0

    #@b
    :catchall_0
    move-exception v1

    #@c
    monitor-exit p0

    #@d
    throw v1
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
    .line 319
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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
    .line 320
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@13
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 318
    return-void
.end method

.method public declared-synchronized goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;[B)V
    .locals 2
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 456
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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
    .line 457
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    #@13
    const/4 v1, -0x1

    #@14
    if-ne v0, v1, :cond_1

    #@16
    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "errorCode.spdyGoAwayCode == -1"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@21
    const v1, -0x7ffcfff9

    #@24
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@27
    .line 464
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@29
    const/16 v1, 0x8

    #@2b
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@2e
    .line 465
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@30
    invoke-interface {v0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@33
    .line 466
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@35
    iget v1, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    #@37
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    .line 467
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3c
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    .line 455
    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 6
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
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
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    #@1
    .line 359
    :try_start_0
    iget-boolean v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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
    .line 360
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    #@14
    .line 363
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@16
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@19
    move-result-wide v2

    #@1a
    const-wide/16 v4, 0x4

    #@1c
    add-long/2addr v2, v4

    #@1d
    long-to-int v0, v2

    #@1e
    .line 365
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@20
    const v2, -0x7ffcfff8

    #@23
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@26
    .line 366
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@28
    const v2, 0xffffff

    #@2b
    and-int/2addr v2, v0

    #@2c
    or-int/lit8 v2, v2, 0x0

    #@2e
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@31
    .line 367
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@33
    const v2, 0x7fffffff

    #@36
    and-int/2addr v2, p1

    #@37
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    .line 368
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3c
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@3e
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    monitor-exit p0

    #@42
    .line 358
    return-void
.end method

.method public maxDataLength()I
    .locals 1

    #@0
    .prologue
    .line 386
    const/16 v0, 0x3fff

    #@2
    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 5
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 442
    :try_start_0
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    new-instance v1, Ljava/io/IOException;

    #@9
    const-string/jumbo v2, "closed"

    #@c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1

    #@13
    .line 443
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    #@15
    and-int/lit8 v4, p2, 0x1

    #@17
    if-ne v4, v1, :cond_1

    #@19
    :goto_0
    if-eq v3, v1, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 444
    .local v0, "payloadIsReply":Z
    :goto_1
    if-eq p1, v0, :cond_3

    #@1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v2, "payload != reply"

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .end local v0    # "payloadIsReply":Z
    :cond_1
    move v1, v2

    #@28
    .line 443
    goto :goto_0

    #@29
    :cond_2
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "payloadIsReply":Z
    goto :goto_1

    #@2b
    .line 448
    :cond_3
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2d
    const v2, -0x7ffcfffa

    #@30
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@33
    .line 449
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@35
    const/4 v2, 0x4

    #@36
    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@39
    .line 450
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3b
    invoke-interface {v1, p2}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3e
    .line 451
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@40
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 441
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
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
    .line 310
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    return-void
.end method

.method public declared-synchronized rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 373
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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
    .line 374
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    #@13
    const/4 v1, -0x1

    #@14
    if-ne v0, v1, :cond_1

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@1e
    const v1, -0x7ffcfffd

    #@21
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@24
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@26
    const/16 v1, 0x8

    #@28
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@2b
    .line 380
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2d
    const v1, 0x7fffffff

    #@30
    and-int/2addr v1, p1

    #@31
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@34
    .line 381
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@36
    iget v1, p2, Lcom/android/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    #@38
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@3b
    .line 382
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3d
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit p0

    #@41
    .line 372
    return-void
.end method

.method sendDataFrame(IILcom/android/okhttp/okio/Buffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 398
    :cond_0
    int-to-long v0, p4

    #@e
    const-wide/32 v2, 0xffffff

    #@11
    cmp-long v0, v0, v2

    #@13
    if-lez v0, :cond_1

    #@15
    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "FRAME_TOO_LARGE max size is 16Mib: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@31
    const v1, 0x7fffffff

    #@34
    and-int/2addr v1, p1

    #@35
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@38
    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    and-int/lit16 v1, p2, 0xff

    #@3c
    shl-int/lit8 v1, v1, 0x18

    #@3e
    const v2, 0xffffff

    #@41
    and-int/2addr v2, p4

    #@42
    or-int/2addr v1, v2

    #@43
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@46
    .line 403
    if-lez p4, :cond_2

    #@48
    .line 404
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@4a
    int-to-long v2, p4

    #@4b
    invoke-interface {v0, p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/Buffer;J)V

    #@4e
    .line 396
    :cond_2
    return-void
.end method

.method public declared-synchronized settings(Lcom/android/okhttp/internal/spdy/Settings;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/okhttp/internal/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v7, 0xffffff

    #@3
    monitor-enter p0

    #@4
    .line 423
    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    new-instance v4, Ljava/io/IOException;

    #@a
    const-string/jumbo v5, "closed"

    #@d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v4

    #@12
    monitor-exit p0

    #@13
    throw v4

    #@14
    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/okhttp/internal/spdy/Settings;->size()I

    #@17
    move-result v3

    #@18
    .line 427
    .local v3, "size":I
    mul-int/lit8 v4, v3, 0x8

    #@1a
    add-int/lit8 v1, v4, 0x4

    #@1c
    .line 428
    .local v1, "length":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@1e
    const v5, -0x7ffcfffc

    #@21
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@24
    .line 429
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@26
    and-int v5, v1, v7

    #@28
    or-int/lit8 v5, v5, 0x0

    #@2a
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@2d
    .line 430
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2f
    invoke-interface {v4, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@32
    .line 431
    const/4 v0, 0x0

    #@33
    .local v0, "i":I
    :goto_0
    const/16 v4, 0xa

    #@35
    if-gt v0, v4, :cond_2

    #@37
    .line 432
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/Settings;->isSet(I)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_1

    #@3d
    .line 431
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 433
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/Settings;->flags(I)I

    #@43
    move-result v2

    #@44
    .line 434
    .local v2, "settingsFlags":I
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@46
    and-int/lit16 v5, v2, 0xff

    #@48
    shl-int/lit8 v5, v5, 0x18

    #@4a
    and-int v6, v0, v7

    #@4c
    or-int/2addr v5, v6

    #@4d
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@50
    .line 435
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@52
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/Settings;->get(I)I

    #@55
    move-result v5

    #@56
    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@59
    goto :goto_1

    #@5a
    .line 437
    .end local v2    # "settingsFlags":I
    :cond_2
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@5c
    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    monitor-exit p0

    #@60
    .line 422
    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
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
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    #@1
    .line 344
    :try_start_0
    iget-boolean v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    new-instance v2, Ljava/io/IOException;

    #@7
    const-string/jumbo v3, "closed"

    #@a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v2

    #@f
    monitor-exit p0

    #@10
    throw v2

    #@11
    .line 345
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    #@14
    .line 347
    if-eqz p1, :cond_1

    #@16
    const/4 v0, 0x1

    #@17
    .line 348
    .local v0, "flags":I
    :goto_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@19
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@1c
    move-result-wide v2

    #@1d
    const-wide/16 v4, 0x4

    #@1f
    add-long/2addr v2, v4

    #@20
    long-to-int v1, v2

    #@21
    .line 350
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@23
    const v3, -0x7ffcfffe

    #@26
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@29
    .line 351
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2b
    and-int/lit16 v3, v0, 0xff

    #@2d
    shl-int/lit8 v3, v3, 0x18

    #@2f
    const v4, 0xffffff

    #@32
    and-int/2addr v4, v1

    #@33
    or-int/2addr v3, v4

    #@34
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@37
    .line 352
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@39
    const v3, 0x7fffffff

    #@3c
    and-int/2addr v3, p2

    #@3d
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@40
    .line 353
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@42
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@44
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@47
    .line 354
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@49
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    monitor-exit p0

    #@4d
    .line 343
    return-void

    #@4e
    .line 347
    .end local v0    # "flags":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
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
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const v8, 0x7fffffff

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    monitor-enter p0

    #@6
    .line 326
    :try_start_0
    iget-boolean v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

    #@8
    if-eqz v4, :cond_0

    #@a
    new-instance v2, Ljava/io/IOException;

    #@c
    const-string/jumbo v3, "closed"

    #@f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :catchall_0
    move-exception v2

    #@14
    monitor-exit p0

    #@15
    throw v2

    #@16
    .line 327
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    #@19
    .line 328
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@1b
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@1e
    move-result-wide v4

    #@1f
    const-wide/16 v6, 0xa

    #@21
    add-long/2addr v4, v6

    #@22
    long-to-int v1, v4

    #@23
    .line 330
    .local v1, "length":I
    if-eqz p1, :cond_2

    #@25
    :goto_0
    if-eqz p2, :cond_1

    #@27
    const/4 v2, 0x2

    #@28
    :cond_1
    or-int v0, v3, v2

    #@2a
    .line 333
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@2c
    const v3, -0x7ffcffff

    #@2f
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@32
    .line 334
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@34
    and-int/lit16 v3, v0, 0xff

    #@36
    shl-int/lit8 v3, v3, 0x18

    #@38
    const v4, 0xffffff

    #@3b
    and-int/2addr v4, v1

    #@3c
    or-int/2addr v3, v4

    #@3d
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@40
    .line 335
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@42
    and-int v3, p3, v8

    #@44
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@47
    .line 336
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@49
    and-int v3, p4, v8

    #@4b
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@4e
    .line 337
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@50
    const/4 v3, 0x0

    #@51
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeShort(I)Lcom/android/okhttp/okio/BufferedSink;

    #@54
    .line 338
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@56
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->headerBlockBuffer:Lcom/android/okhttp/okio/Buffer;

    #@58
    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J

    #@5b
    .line 339
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@5d
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    monitor-exit p0

    #@61
    .line 325
    return-void

    #@62
    .end local v0    # "flags":I
    :cond_2
    move v3, v2

    #@63
    .line 330
    goto :goto_0
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 472
    :try_start_0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->closed:Z

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
    .line 473
    :cond_0
    const-wide/16 v0, 0x0

    #@13
    cmp-long v0, p2, v0

    #@15
    if-eqz v0, :cond_1

    #@17
    const-wide/32 v0, 0x7fffffff

    #@1a
    cmp-long v0, p2, v0

    #@1c
    if-lez v0, :cond_2

    #@1e
    .line 474
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 474
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 480
    :cond_2
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    const v1, -0x7ffcfff7

    #@3d
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@40
    .line 481
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@42
    const/16 v1, 0x8

    #@44
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@47
    .line 482
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@49
    invoke-interface {v0, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@4c
    .line 483
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@4e
    long-to-int v1, p2

    #@4f
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeInt(I)Lcom/android/okhttp/okio/BufferedSink;

    #@52
    .line 484
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Spdy3$Writer;->sink:Lcom/android/okhttp/okio/BufferedSink;

    #@54
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    monitor-exit p0

    #@58
    .line 471
    return-void
.end method
