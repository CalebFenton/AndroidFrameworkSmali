.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    #@0
    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    .line 568
    const-string/jumbo v0, "OkHttp %s"

    #@5
    const/4 v1, 0x1

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get3(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@12
    .line 567
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FramedConnection$Reader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;)V

    #@3
    return-void
.end method

.method private ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V
    .locals 6
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    #@0
    .prologue
    .line 717
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;

    #@6
    const-string/jumbo v2, "OkHttp %s ACK Settings"

    #@9
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@e
    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get3(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/Settings;)V

    #@18
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@1b
    .line 716
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    #@0
    .prologue
    .line 727
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
    .line 790
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
    .line 597
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    invoke-static {v1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 598
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@a
    invoke-static {v1, p2, p3, p4, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap3(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V

    #@d
    .line 599
    return-void

    #@e
    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@10
    invoke-virtual {v1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    #@13
    move-result-object v0

    #@14
    .line 602
    .local v0, "dataStream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-nez v0, :cond_1

    #@16
    .line 603
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@18
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@1a
    invoke-virtual {v1, p2, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    #@1d
    .line 604
    int-to-long v2, p4

    #@1e
    invoke-interface {p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@21
    .line 605
    return-void

    #@22
    .line 607
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V

    #@25
    .line 608
    if-eqz p1, :cond_2

    #@27
    .line 609
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    #@2a
    .line 596
    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 7

    #@0
    .prologue
    .line 572
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@2
    .line 573
    .local v0, "connectionErrorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@4
    .line 575
    .local v3, "streamErrorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@6
    iget-object v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    #@8
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@a
    iget-object v5, v5, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    #@c
    invoke-static {v5}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    #@f
    move-result-object v5

    #@10
    invoke-static {v5}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@13
    move-result-object v5

    #@14
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@16
    iget-boolean v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    #@18
    invoke-interface {v4, v5, v6}, Lcom/android/okhttp/internal/framed/Variant;->newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;

    #@1b
    move-result-object v4

    #@1c
    iput-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    #@1e
    .line 576
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@20
    iget-boolean v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    #@22
    if-nez v4, :cond_0

    #@24
    .line 577
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    #@26
    invoke-interface {v4}, Lcom/android/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    #@29
    .line 579
    :cond_0
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    #@2b
    invoke-interface {v4, p0}, Lcom/android/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_0

    #@31
    .line 581
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@33
    .line 582
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 588
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@37
    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    #@3a
    .line 591
    :goto_0
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    #@3c
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@3f
    .line 571
    :goto_1
    return-void

    #@40
    .line 583
    :catch_0
    move-exception v1

    #@41
    .line 584
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@43
    .line 585
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 588
    :try_start_3
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@47
    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@4a
    .line 591
    :goto_2
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    #@4c
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@4f
    goto :goto_1

    #@50
    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@51
    .line 588
    :try_start_4
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@53
    invoke-static {v5, v0, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@56
    .line 591
    :goto_3
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    #@58
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@5b
    .line 586
    throw v4

    #@5c
    .line 589
    :catch_1
    move-exception v2

    #@5d
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_3

    #@5e
    .end local v2    # "ignored":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@5f
    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_2

    #@60
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ignored":Ljava/io/IOException;
    :catch_3
    move-exception v2

    #@61
    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 744
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@4
    move-result v3

    #@5
    if-lez v3, :cond_0

    #@7
    .line 749
    :cond_0
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@9
    monitor-enter v3

    #@a
    .line 750
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@c
    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    #@f
    move-result-object v4

    #@10
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@13
    move-result-object v4

    #@14
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@16
    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    #@19
    move-result-object v5

    #@1a
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@1d
    move-result v5

    #@1e
    new-array v5, v5, [Lcom/android/okhttp/internal/framed/FramedStream;

    #@20
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, [Lcom/android/okhttp/internal/framed/FramedStream;

    #@26
    .line 751
    .local v1, "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@28
    const/4 v5, 0x1

    #@29
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-set2(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    monitor-exit v3

    #@2d
    .line 755
    array-length v3, v1

    #@2e
    :goto_0
    if-ge v2, v3, :cond_2

    #@30
    aget-object v0, v1, v2

    #@32
    .line 756
    .local v0, "framedStream":Lcom/android/okhttp/internal/framed/FramedStream;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    #@35
    move-result v4

    #@36
    if-le v4, p1, :cond_1

    #@38
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 757
    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@40
    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    #@43
    .line 758
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@45
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    #@48
    move-result v5

    #@49
    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    #@4c
    .line 755
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 749
    .end local v0    # "framedStream":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local v1    # "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_0
    move-exception v2

    #@50
    monitor-exit v3

    #@51
    throw v2

    #@52
    .line 743
    .restart local v1    # "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_2
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/android/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 615
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    invoke-static {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 616
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@a
    invoke-static {v1, p3, p5, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap4(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    #@d
    .line 617
    return-void

    #@e
    .line 620
    :cond_0
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@10
    monitor-enter v7

    #@11
    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@13
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get8(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
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
    .line 624
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@1d
    invoke-virtual {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    #@20
    move-result-object v6

    #@21
    .line 626
    .local v6, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-nez v6, :cond_5

    #@23
    .line 628
    invoke-virtual {p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 629
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2b
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@2d
    invoke-virtual {v1, p3, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    monitor-exit v7

    #@31
    .line 630
    return-void

    #@32
    .line 634
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@34
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get4(Lcom/android/okhttp/internal/framed/FramedConnection;)I
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
    .line 637
    :cond_3
    :try_start_3
    rem-int/lit8 v1, p3, 0x2

    #@3e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@40
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get5(Lcom/android/okhttp/internal/framed/FramedConnection;)I

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
    .line 641
    :cond_4
    :try_start_4
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream;

    #@4c
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4e
    move v1, p3

    #@4f
    move v3, p1

    #@50
    move v4, p2

    #@51
    move-object v5, p5

    #@52
    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    #@55
    .line 643
    .local v0, "newStream":Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@57
    invoke-static {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-set0(Lcom/android/okhttp/internal/framed/FramedConnection;I)I

    #@5a
    .line 644
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@5c
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    #@5f
    move-result-object v1

    #@60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 645
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    #@6a
    move-result-object v1

    #@6b
    new-instance v2, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;

    #@6d
    const-string/jumbo v3, "OkHttp %s stream %d"

    #@70
    const/4 v4, 0x2

    #@71
    new-array v4, v4, [Ljava/lang/Object;

    #@73
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@75
    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get3(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

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
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V

    #@86
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    monitor-exit v7

    #@8a
    .line 658
    return-void

    #@8b
    .end local v0    # "newStream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_5
    monitor-exit v7

    #@8c
    .line 663
    invoke-virtual {p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    #@8f
    move-result v1

    #@90
    if-eqz v1, :cond_6

    #@92
    .line 664
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    #@94
    invoke-virtual {v6, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    #@97
    .line 665
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@99
    invoke-virtual {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    #@9c
    .line 666
    return-void

    #@9d
    .line 620
    .end local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_0
    move-exception v1

    #@9e
    monitor-exit v7

    #@9f
    throw v1

    #@a0
    .line 670
    .restart local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_6
    invoke-virtual {v6, p5, p6}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    #@a3
    .line 671
    if-eqz p2, :cond_7

    #@a5
    invoke-virtual {v6}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    #@a8
    .line 614
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
    .line 732
    if-eqz p1, :cond_1

    #@3
    .line 733
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@5
    invoke-static {v1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap1(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;

    #@8
    move-result-object v0

    #@9
    .line 734
    .local v0, "ping":Lcom/android/okhttp/internal/framed/Ping;
    if-eqz v0, :cond_0

    #@b
    .line 735
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Ping;->receive()V

    #@e
    .line 731
    .end local v0    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    :cond_0
    :goto_0
    return-void

    #@f
    .line 739
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@11
    const/4 v2, 0x1

    #@12
    invoke-static {v1, v2, p2, p3, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap7(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V

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
    .line 780
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
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 786
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    invoke-static {v0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap5(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    #@5
    .line 785
    return-void
.end method

.method public rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    #@0
    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2
    invoke-static {v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 676
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@a
    invoke-static {v1, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap6(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    #@d
    .line 677
    return-void

    #@e
    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    #@13
    move-result-object v0

    #@14
    .line 680
    .local v0, "rstStream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_1

    #@16
    .line 681
    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    #@19
    .line 674
    :cond_1
    return-void
.end method

.method public settings(ZLcom/android/okhttp/internal/framed/Settings;)V
    .locals 9
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    #@0
    .prologue
    .line 686
    const-wide/16 v0, 0x0

    #@2
    .line 687
    .local v0, "delta":J
    const/4 v5, 0x0

    #@3
    .line 688
    .local v5, "streamsToNotify":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@5
    monitor-enter v7

    #@6
    .line 689
    :try_start_0
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@8
    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    #@a
    const/high16 v8, 0x10000

    #@c
    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    #@f
    move-result v3

    #@10
    .line 690
    .local v3, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    #@12
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@14
    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    #@16
    invoke-virtual {v6}, Lcom/android/okhttp/internal/framed/Settings;->clear()V

    #@19
    .line 691
    :cond_0
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@1b
    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    #@1d
    invoke-virtual {v6, p2}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    #@20
    .line 692
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@22
    invoke-virtual {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    #@25
    move-result-object v6

    #@26
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@28
    if-ne v6, v8, :cond_1

    #@2a
    .line 693
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V

    #@2d
    .line 695
    :cond_1
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@2f
    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    #@31
    const/high16 v8, 0x10000

    #@33
    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    #@36
    move-result v2

    #@37
    .line 696
    .local v2, "peerInitialWindowSize":I
    const/4 v6, -0x1

    #@38
    if-eq v2, v6, :cond_3

    #@3a
    if-eq v2, v3, :cond_3

    #@3c
    .line 697
    sub-int v6, v2, v3

    #@3e
    int-to-long v0, v6

    #@3f
    .line 698
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@41
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get7(Lcom/android/okhttp/internal/framed/FramedConnection;)Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_2

    #@47
    .line 699
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@49
    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    #@4c
    .line 700
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4e
    const/4 v8, 0x1

    #@4f
    invoke-static {v6, v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->-set1(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z

    #@52
    .line 702
    :cond_2
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@54
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    #@57
    move-result-object v6

    #@58
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    #@5b
    move-result v6

    #@5c
    if-nez v6, :cond_3

    #@5e
    .line 703
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@60
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    #@63
    move-result-object v6

    #@64
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@67
    move-result-object v6

    #@68
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@6a
    invoke-static {v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    #@6d
    move-result-object v8

    #@6e
    invoke-interface {v8}, Ljava/util/Map;->size()I

    #@71
    move-result v8

    #@72
    new-array v8, v8, [Lcom/android/okhttp/internal/framed/FramedStream;

    #@74
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@77
    move-result-object v5

    #@78
    .end local v5    # "streamsToNotify":[Lcom/android/okhttp/internal/framed/FramedStream;
    check-cast v5, [Lcom/android/okhttp/internal/framed/FramedStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    :cond_3
    monitor-exit v7

    #@7b
    .line 707
    if-eqz v5, :cond_4

    #@7d
    const-wide/16 v6, 0x0

    #@7f
    cmp-long v6, v0, v6

    #@81
    if-eqz v6, :cond_4

    #@83
    .line 708
    const/4 v6, 0x0

    #@84
    array-length v7, v5

    #@85
    :goto_0
    if-ge v6, v7, :cond_4

    #@87
    aget-object v4, v5, v6

    #@89
    .line 709
    .local v4, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    monitor-enter v4

    #@8a
    .line 710
    :try_start_1
    invoke-virtual {v4, v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8d
    monitor-exit v4

    #@8e
    .line 708
    add-int/lit8 v6, v6, 0x1

    #@90
    goto :goto_0

    #@91
    .line 688
    .end local v2    # "peerInitialWindowSize":I
    .end local v3    # "priorWriteWindowSize":I
    .end local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_0
    move-exception v6

    #@92
    monitor-exit v7

    #@93
    throw v6

    #@94
    .line 709
    .restart local v2    # "peerInitialWindowSize":I
    .restart local v3    # "priorWriteWindowSize":I
    .restart local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_1
    move-exception v6

    #@95
    monitor-exit v4

    #@96
    throw v6

    #@97
    .line 685
    .end local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_4
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    #@0
    .prologue
    .line 764
    if-nez p1, :cond_1

    #@2
    .line 765
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@4
    monitor-enter v2

    #@5
    .line 766
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@7
    iget-wide v4, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    #@9
    add-long/2addr v4, p2

    #@a
    iput-wide v4, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    #@c
    .line 767
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 763
    :cond_0
    :goto_0
    return-void

    #@13
    .line 765
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1

    #@16
    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    #@18
    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    #@1b
    move-result-object v0

    #@1c
    .line 771
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_0

    #@1e
    .line 772
    monitor-enter v0

    #@1f
    .line 773
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@22
    monitor-exit v0

    #@23
    goto :goto_0

    #@24
    .line 772
    :catchall_1
    move-exception v1

    #@25
    monitor-exit v0

    #@26
    throw v1
.end method
