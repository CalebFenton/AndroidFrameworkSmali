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
.field final blacklist frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 599
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 600
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V
    .registers 4

    .line 596
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;)V

    return-void
.end method

.method private blacklist ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 6

    .line 754
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist ackSettings()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist alternateService(ILjava/lang/String;Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;IJ)V
    .registers 8

    .line 0
    return-void
.end method

.method public blacklist data(ZILcom/android/okhttp/okio/BufferedSource;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 630
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
    invoke-static {p0, p2, p3, p4, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1400(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V

    return-void

    .line 633
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    if-nez v0, :cond_22

    .line 635
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    sget-object p1, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p2, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    int-to-long p0, p4

    .line 636
    invoke-interface {p3, p0, p1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    return-void

    .line 639
    :cond_22
    invoke-virtual {v0, p3, p4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V

    if-eqz p1, :cond_2a

    .line 641
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    :cond_2a
    return-void
.end method

.method protected blacklist execute()V
    .registers 6

    .line 605
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 608
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v1, :cond_13

    .line 609
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-interface {v1}, Lcom/android/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    goto :goto_13

    :catchall_e
    move-exception v1

    move-object v2, v0

    goto :goto_39

    :catch_11
    move-object v1, v0

    goto :goto_30

    .line 611
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-interface {v1, p0}, Lcom/android/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_13

    .line 613
    :cond_1c
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1e} :catch_11
    .catchall {:try_start_2 .. :try_end_1e} :catchall_e

    .line 614
    :try_start_1e
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_20} :catch_30
    .catchall {:try_start_1e .. :try_end_20} :catchall_2b

    .line 620
    :try_start_20
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v2, v1, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_25

    .line 623
    :catch_25
    :goto_25
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_38

    :catchall_2b
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_39

    .line 616
    :catch_30
    :goto_30
    :try_start_30
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_2b

    .line 620
    :try_start_32
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v1, v0, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_25

    goto :goto_25

    :goto_38
    return-void

    :goto_39
    :try_start_39
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v3, v2, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_3e

    .line 623
    :catch_3e
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 624
    throw v1
.end method

.method public blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
    .registers 7

    .line 781
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    .line 786
    iget-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter p2

    .line 787
    :try_start_6
    iget-object p3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/android/okhttp/internal/framed/FramedStream;

    .line 788
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1602(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z

    .line 789
    monitor-exit p2
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_4d

    .line 792
    array-length p2, p3

    const/4 v0, 0x0

    :goto_2b
    if-ge v0, p2, :cond_4c

    aget-object v1, p3, v0

    .line 793
    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    move-result v2

    if-le v2, p1, :cond_49

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 794
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 795
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4c
    return-void

    :catchall_4d
    move-exception p0

    .line 789
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public blacklist headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 647
    iget-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {p4, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 648
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {p0, p3, p5, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1500(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    return-void

    .line 652
    :cond_e
    iget-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter p4

    .line 654
    :try_start_11
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1600(Lcom/android/okhttp/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_1f

    monitor-exit p4

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a7

    .line 656
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    if-nez v0, :cond_89

    .line 660
    invoke-virtual {p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result p6

    if-eqz p6, :cond_36

    .line 661
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    sget-object p1, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p3, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 662
    monitor-exit p4

    return-void

    .line 666
    :cond_36
    iget-object p6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {p6}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/android/okhttp/internal/framed/FramedConnection;)I

    move-result p6

    if-gt p3, p6, :cond_40

    monitor-exit p4

    return-void

    .line 669
    :cond_40
    rem-int/lit8 p6, p3, 0x2

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1800(Lcom/android/okhttp/internal/framed/FramedConnection;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne p6, v0, :cond_4e

    monitor-exit p4

    return-void

    .line 673
    :cond_4e
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    move v3, p1

    move v4, p2

    move v1, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 675
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # setter for: Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {p1, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1702(Lcom/android/okhttp/internal/framed/FramedConnection;I)I

    .line 676
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;

    const-string p3, "OkHttp %s stream %d"

    iget-object p5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {p5}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object p5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p5, p6}, [Ljava/lang/Object;

    move-result-object p5

    invoke-direct {p2, p0, p3, p5, v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 690
    monitor-exit p4

    return-void

    :cond_89
    move v4, p2

    move v1, p3

    move-object v5, p5

    .line 692
    monitor-exit p4
    :try_end_8d
    .catchall {:try_start_11 .. :try_end_8d} :catchall_1b

    .line 695
    invoke-virtual {p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 696
    sget-object p1, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 697
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    return-void

    .line 702
    :cond_9e
    invoke-virtual {v0, v5, p6}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    if-eqz v4, :cond_a6

    .line 703
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    :cond_a6
    return-void

    .line 692
    :goto_a7
    :try_start_a7
    monitor-exit p4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_1b

    throw p0
.end method

.method public blacklist ping(ZII)V
    .registers 5

    if-eqz p1, :cond_e

    .line 770
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/android/okhttp/internal/framed/Ping;
    invoke-static {p0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2400(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 772
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/Ping;->receive()V

    :cond_d
    return-void

    .line 776
    :cond_e
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 p1, 0x1

    const/4 v0, 0x0

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2500(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method public blacklist priority(IIIZ)V
    .registers 5

    .line 0
    return-void
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

    .line 823
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {p0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2600(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    return-void
.end method

.method public blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 708
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2200(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void

    .line 711
    :cond_e
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 713
    invoke-virtual {p0, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    :cond_19
    return-void
.end method

.method public blacklist settings(ZLcom/android/okhttp/internal/framed/Settings;)V
    .registers 11

    .line 720
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 721
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    if-eqz p1, :cond_1a

    .line 722
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object p1, p1, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/Settings;->clear()V

    goto :goto_1a

    :catchall_17
    move-exception p0

    goto/16 :goto_af

    .line 723
    :cond_1a
    :goto_1a
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object p1, p1, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {p1, p2}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 724
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object p1

    sget-object v3, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne p1, v3, :cond_2e

    .line 725
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 727
    :cond_2e
    iget-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object p1, p1, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {p1, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, p2, :cond_7d

    if-eq p1, v1, :cond_7d

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 730
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2300(Lcom/android/okhttp/internal/framed/FramedConnection;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 731
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 732
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v5, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v1, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2302(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z

    .line 734
    :cond_53
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 735
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Lcom/android/okhttp/internal/framed/FramedStream;

    goto :goto_7e

    :cond_7d
    move-wide p1, v2

    .line 738
    :cond_7e
    :goto_7e
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v5, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;

    const-string v6, "OkHttp %s settings"

    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 743
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_17

    if-eqz v4, :cond_ae

    cmp-long p0, p1, v2

    if-eqz p0, :cond_ae

    .line 745
    array-length p0, v4

    const/4 v0, 0x0

    :goto_9f
    if-ge v0, p0, :cond_ae

    aget-object v1, v4, v0

    .line 746
    monitor-enter v1

    .line 747
    :try_start_a4
    invoke-virtual {v1, p1, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 748
    monitor-exit v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :catchall_ab
    move-exception p0

    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ab

    throw p0

    :cond_ae
    return-void

    .line 743
    :goto_af
    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_17

    throw p0
.end method

.method public blacklist windowUpdate(IJ)V
    .registers 7

    if-nez p1, :cond_14

    .line 802
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 803
    :try_start_5
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-wide v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 804
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 805
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0

    .line 807
    :cond_14
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 809
    monitor-enter p0

    .line 810
    :try_start_1d
    invoke-virtual {p0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 811
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p1

    :cond_25
    return-void
.end method
