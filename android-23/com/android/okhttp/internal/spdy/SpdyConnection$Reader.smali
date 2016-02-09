.class Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"

# interfaces
.implements Lcom/android/okhttp/internal/spdy/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@0
    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    .line 566
    const-string/jumbo v0, "OkHttp %s"

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    invoke-static {p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get3(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@12
    .line 565
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection;)V

    #@3
    return-void
.end method

.method private ackSettingsLater(Lcom/android/okhttp/internal/spdy/Settings;)V
    .locals 6
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/spdy/Settings;

    #@0
    .prologue
    .line 713
    invoke-static {}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$2;

    #@6
    const-string/jumbo v2, "OkHttp %s ACK Settings"

    #@9
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@e
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get3(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$2;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/spdy/Settings;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@1b
    .line 712
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    #@0
    .prologue
    .line 723
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lcom/android/okhttp/okio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    #@0
    .prologue
    .line 786
    return-void
.end method

.method public data(ZILcom/android/okhttp/okio/BufferedSource;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    invoke-static {v1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap0(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 596
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@a
    invoke-static {v1, p2, p3, p4, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap3(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V

    #@d
    .line 597
    return-void

    #@e
    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@10
    invoke-virtual {v1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@13
    move-result-object v0

    #@14
    .line 600
    .local v0, "dataStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-nez v0, :cond_1

    #@16
    .line 601
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@18
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@1a
    invoke-virtual {v1, p2, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@1d
    .line 602
    int-to-long v2, p4

    #@1e
    invoke-interface {p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@21
    .line 603
    return-void

    #@22
    .line 605
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V

    #@25
    .line 606
    if-eqz p1, :cond_2

    #@27
    .line 607
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    #@2a
    .line 594
    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 7

    #@0
    .prologue
    .line 570
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2
    .line 571
    .local v0, "connectionErrorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    sget-object v3, Lcom/android/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@4
    .line 573
    .local v3, "streamErrorCode":Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@6
    iget-object v4, v4, Lcom/android/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/android/okhttp/internal/spdy/Variant;

    #@8
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@a
    iget-object v5, v5, Lcom/android/okhttp/internal/spdy/SpdyConnection;->socket:Ljava/net/Socket;

    #@c
    invoke-static {v5}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    #@f
    move-result-object v5

    #@10
    invoke-static {v5}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@13
    move-result-object v5

    #@14
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@16
    iget-boolean v6, v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@18
    invoke-interface {v4, v5, v6}, Lcom/android/okhttp/internal/spdy/Variant;->newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;

    #@1b
    move-result-object v4

    #@1c
    iput-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    #@1e
    .line 574
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@20
    iget-boolean v4, v4, Lcom/android/okhttp/internal/spdy/SpdyConnection;->client:Z

    #@22
    if-nez v4, :cond_0

    #@24
    .line 575
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    #@26
    invoke-interface {v4}, Lcom/android/okhttp/internal/spdy/FrameReader;->readConnectionPreface()V

    #@29
    .line 577
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    #@2b
    invoke-interface {v4, p0}, Lcom/android/okhttp/internal/spdy/FrameReader;->nextFrame(Lcom/android/okhttp/internal/spdy/FrameReader$Handler;)Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_0

    #@31
    .line 579
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@33
    .line 580
    sget-object v3, Lcom/android/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 586
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@37
    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap2(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    #@3a
    .line 589
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    #@3c
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@3f
    .line 569
    :goto_1
    return-void

    #@40
    .line 581
    :catch_0
    move-exception v1

    #@41
    .line 582
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@43
    .line 583
    sget-object v3, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 586
    :try_start_3
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@47
    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap2(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@4a
    .line 589
    :goto_2
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    #@4c
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@4f
    goto :goto_1

    #@50
    .line 584
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@51
    .line 586
    :try_start_4
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@53
    invoke-static {v5, v0, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap2(Lcom/android/okhttp/internal/spdy/SpdyConnection;Lcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@56
    .line 589
    :goto_3
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->frameReader:Lcom/android/okhttp/internal/spdy/FrameReader;

    #@58
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@5b
    .line 584
    throw v4

    #@5c
    .line 587
    :catch_1
    move-exception v2

    #@5d
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_3

    #@5e
    .end local v2    # "ignored":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    #@5f
    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_2

    #@60
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ignored":Ljava/io/IOException;
    :catch_3
    move-exception v2

    #@61
    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;
    .param p3, "debugData"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 740
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@4
    move-result v3

    #@5
    if-lez v3, :cond_0

    #@7
    .line 745
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@9
    monitor-enter v3

    #@a
    .line 746
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@c
    invoke-static {v4}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    #@f
    move-result-object v4

    #@10
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@13
    move-result-object v4

    #@14
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@16
    invoke-static {v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@1d
    move-result v5

    #@1e
    new-array v5, v5, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@20
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@26
    .line 747
    .local v1, "streamsCopy":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@28
    const/4 v5, 0x1

    #@29
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-set2(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v3

    #@2d
    .line 751
    array-length v3, v1

    #@2e
    :goto_0
    if-ge v2, v3, :cond_2

    #@30
    aget-object v0, v1, v2

    #@32
    .line 752
    .local v0, "spdyStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getId()I

    #@35
    move-result v4

    #@36
    if-le v4, p1, :cond_1

    #@38
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 753
    sget-object v4, Lcom/android/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@40
    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@43
    .line 754
    iget-object v4, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@45
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/SpdyStream;->getId()I

    #@48
    move-result v5

    #@49
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@4c
    .line 751
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 745
    .end local v0    # "spdyStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    .end local v1    # "streamsCopy":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v2

    #@50
    monitor-exit v3

    #@51
    throw v2

    #@52
    .line 739
    .restart local v1    # "streamsCopy":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_2
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/android/okhttp/internal/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 613
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    invoke-static {v1, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap0(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 614
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@a
    invoke-static {v1, p3, p5, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap4(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V

    #@d
    .line 615
    return-void

    #@e
    .line 618
    :cond_0
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@10
    monitor-enter v7

    #@11
    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@13
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get8(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    monitor-exit v7

    #@1a
    return-void

    #@1b
    .line 622
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@1d
    invoke-virtual {v1, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@20
    move-result-object v6

    #@21
    .line 624
    .local v6, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-nez v6, :cond_5

    #@23
    .line 626
    invoke-virtual {p6}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 627
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2b
    sget-object v2, Lcom/android/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@2d
    invoke-virtual {v1, p3, v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v7

    #@31
    .line 628
    return-void

    #@32
    .line 632
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@34
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get4(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    move-result v1

    #@38
    if-gt p3, v1, :cond_3

    #@3a
    monitor-exit v7

    #@3b
    return-void

    #@3c
    .line 635
    :cond_3
    :try_start_3
    rem-int/lit8 v1, p3, 0x2

    #@3e
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@40
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get5(Lcom/android/okhttp/internal/spdy/SpdyConnection;)I

    #@43
    move-result v2

    #@44
    rem-int/lit8 v2, v2, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@46
    if-ne v1, v2, :cond_4

    #@48
    monitor-exit v7

    #@49
    return-void

    #@4a
    .line 638
    :cond_4
    :try_start_4
    new-instance v0, Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@4c
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4e
    move v1, p3

    #@4f
    move v3, p1

    #@50
    move v4, p2

    #@51
    move-object v5, p5

    #@52
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/android/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V

    #@55
    .line 640
    .local v0, "newStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@57
    invoke-static {v1, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-set0(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)I

    #@5a
    .line 641
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@5c
    invoke-static {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    #@5f
    move-result-object v1

    #@60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 642
    invoke-static {}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    #@6a
    move-result-object v1

    #@6b
    new-instance v2, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;

    #@6d
    const-string/jumbo v3, "OkHttp %s stream %d"

    #@70
    const/4 v4, 0x2

    #@71
    new-array v4, v4, [Ljava/lang/Object;

    #@73
    iget-object v5, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@75
    invoke-static {v5}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get3(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    const/4 v8, 0x0

    #@7a
    aput-object v5, v4, v8

    #@7c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v5

    #@80
    const/4 v8, 0x1

    #@81
    aput-object v5, v4, v8

    #@83
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/spdy/SpdyStream;)V

    #@86
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    monitor-exit v7

    #@8a
    .line 654
    return-void

    #@8b
    .end local v0    # "newStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_5
    monitor-exit v7

    #@8c
    .line 659
    invoke-virtual {p6}, Lcom/android/okhttp/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    #@8f
    move-result v1

    #@90
    if-eqz v1, :cond_6

    #@92
    .line 660
    sget-object v1, Lcom/android/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@94
    invoke-virtual {v6, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@97
    .line 661
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@99
    invoke-virtual {v1, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@9c
    .line 662
    return-void

    #@9d
    .line 618
    .end local v6    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v1

    #@9e
    monitor-exit v7

    #@9f
    throw v1

    #@a0
    .line 666
    .restart local v6    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_6
    invoke-virtual {v6, p5, p6}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V

    #@a3
    .line 667
    if-eqz p2, :cond_7

    #@a5
    invoke-virtual {v6}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    #@a8
    .line 612
    :cond_7
    return-void
.end method

.method public ping(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 728
    if-eqz p1, :cond_1

    #@3
    .line 729
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@5
    invoke-static {v1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap1(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Lcom/android/okhttp/internal/spdy/Ping;

    #@8
    move-result-object v0

    #@9
    .line 730
    .local v0, "ping":Lcom/android/okhttp/internal/spdy/Ping;
    if-eqz v0, :cond_0

    #@b
    .line 731
    invoke-virtual {v0}, Lcom/android/okhttp/internal/spdy/Ping;->receive()V

    #@e
    .line 727
    .end local v0    # "ping":Lcom/android/okhttp/internal/spdy/Ping;
    :cond_0
    :goto_0
    return-void

    #@f
    .line 735
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-static {v1, v2, p2, p3, v3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap7(Lcom/android/okhttp/internal/spdy/SpdyConnection;ZIILcom/android/okhttp/internal/spdy/Ping;)V

    #@15
    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    #@0
    .prologue
    .line 776
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
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

    #@0
    .prologue
    .line 782
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    invoke-static {v0, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap5(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V

    #@5
    .line 781
    return-void
.end method

.method public rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/spdy/ErrorCode;

    #@0
    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2
    invoke-static {v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap0(Lcom/android/okhttp/internal/spdy/SpdyConnection;I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 672
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@a
    invoke-static {v1, p1, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-wrap6(Lcom/android/okhttp/internal/spdy/SpdyConnection;ILcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@d
    .line 673
    return-void

    #@e
    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@13
    move-result-object v0

    #@14
    .line 676
    .local v0, "rstStream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_1

    #@16
    .line 677
    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/android/okhttp/internal/spdy/ErrorCode;)V

    #@19
    .line 670
    :cond_1
    return-void
.end method

.method public settings(ZLcom/android/okhttp/internal/spdy/Settings;)V
    .locals 9
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/android/okhttp/internal/spdy/Settings;

    #@0
    .prologue
    .line 682
    const-wide/16 v0, 0x0

    #@2
    .line 683
    .local v0, "delta":J
    const/4 v5, 0x0

    #@3
    .line 684
    .local v5, "streamsToNotify":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    iget-object v7, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@5
    monitor-enter v7

    #@6
    .line 685
    :try_start_0
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@8
    iget-object v6, v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@a
    const/high16 v8, 0x10000

    #@c
    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@f
    move-result v3

    #@10
    .line 686
    .local v3, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    #@12
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@14
    iget-object v6, v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@16
    invoke-virtual {v6}, Lcom/android/okhttp/internal/spdy/Settings;->clear()V

    #@19
    .line 687
    :cond_0
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@1b
    iget-object v6, v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@1d
    invoke-virtual {v6, p2}, Lcom/android/okhttp/internal/spdy/Settings;->merge(Lcom/android/okhttp/internal/spdy/Settings;)V

    #@20
    .line 688
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@22
    invoke-virtual {v6}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@25
    move-result-object v6

    #@26
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@28
    if-ne v6, v8, :cond_1

    #@2a
    .line 689
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/spdy/Settings;)V

    #@2d
    .line 691
    :cond_1
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@2f
    iget-object v6, v6, Lcom/android/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/android/okhttp/internal/spdy/Settings;

    #@31
    const/high16 v8, 0x10000

    #@33
    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    #@36
    move-result v2

    #@37
    .line 692
    .local v2, "peerInitialWindowSize":I
    const/4 v6, -0x1

    #@38
    if-eq v2, v6, :cond_3

    #@3a
    if-eq v2, v3, :cond_3

    #@3c
    .line 693
    sub-int v6, v2, v3

    #@3e
    int-to-long v0, v6

    #@3f
    .line 694
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@41
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get7(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_2

    #@47
    .line 695
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@49
    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->addBytesToWriteWindow(J)V

    #@4c
    .line 696
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4e
    const/4 v8, 0x1

    #@4f
    invoke-static {v6, v8}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-set1(Lcom/android/okhttp/internal/spdy/SpdyConnection;Z)Z

    #@52
    .line 698
    :cond_2
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@54
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    #@57
    move-result-object v6

    #@58
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    #@5b
    move-result v6

    #@5c
    if-nez v6, :cond_3

    #@5e
    .line 699
    iget-object v6, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@60
    invoke-static {v6}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    #@63
    move-result-object v6

    #@64
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@67
    move-result-object v6

    #@68
    iget-object v8, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@6a
    invoke-static {v8}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->-get9(Lcom/android/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    #@6d
    move-result-object v8

    #@6e
    invoke-interface {v8}, Ljava/util/Map;->size()I

    #@71
    move-result v8

    #@72
    new-array v8, v8, [Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@74
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@77
    move-result-object v5

    #@78
    .end local v5    # "streamsToNotify":[Lcom/android/okhttp/internal/spdy/SpdyStream;
    check-cast v5, [Lcom/android/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    :cond_3
    monitor-exit v7

    #@7b
    .line 703
    if-eqz v5, :cond_4

    #@7d
    const-wide/16 v6, 0x0

    #@7f
    cmp-long v6, v0, v6

    #@81
    if-eqz v6, :cond_4

    #@83
    .line 704
    const/4 v6, 0x0

    #@84
    array-length v7, v5

    #@85
    :goto_0
    if-ge v6, v7, :cond_4

    #@87
    aget-object v4, v5, v6

    #@89
    .line 705
    .local v4, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    monitor-enter v4

    #@8a
    .line 706
    :try_start_1
    invoke-virtual {v4, v0, v1}, Lcom/android/okhttp/internal/spdy/SpdyStream;->addBytesToWriteWindow(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8d
    monitor-exit v4

    #@8e
    .line 704
    add-int/lit8 v6, v6, 0x1

    #@90
    goto :goto_0

    #@91
    .line 684
    .end local v2    # "peerInitialWindowSize":I
    .end local v3    # "priorWriteWindowSize":I
    .end local v4    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v6

    #@92
    monitor-exit v7

    #@93
    throw v6

    #@94
    .line 705
    .restart local v2    # "peerInitialWindowSize":I
    .restart local v3    # "priorWriteWindowSize":I
    .restart local v4    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :catchall_1
    move-exception v6

    #@95
    monitor-exit v4

    #@96
    throw v6

    #@97
    .line 681
    .end local v4    # "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    :cond_4
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    #@0
    .prologue
    .line 760
    if-nez p1, :cond_1

    #@2
    .line 761
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@4
    monitor-enter v2

    #@5
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@7
    iget-wide v4, v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@9
    add-long/2addr v4, p2

    #@a
    iput-wide v4, v1, Lcom/android/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    #@c
    .line 763
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@e
    invoke-virtual {v1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 759
    :cond_0
    :goto_0
    return-void

    #@13
    .line 761
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1

    #@16
    .line 766
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/android/okhttp/internal/spdy/SpdyConnection;

    #@18
    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/android/okhttp/internal/spdy/SpdyStream;

    #@1b
    move-result-object v0

    #@1c
    .line 767
    .local v0, "stream":Lcom/android/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    #@1e
    .line 768
    monitor-enter v0

    #@1f
    .line 769
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/okhttp/internal/spdy/SpdyStream;->addBytesToWriteWindow(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@22
    monitor-exit v0

    #@23
    goto :goto_0

    #@24
    .line 768
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v0

    #@26
    throw v1
.end method
