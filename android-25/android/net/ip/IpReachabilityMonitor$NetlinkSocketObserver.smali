.class final Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetlinkSocketObserver"
.end annotation


# instance fields
.field private mSocket:Landroid/net/netlink/NetlinkSocket;

.field final synthetic this$0:Landroid/net/ip/IpReachabilityMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/net/ip/IpReachabilityMonitor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpReachabilityMonitor;

    #@0
    .prologue
    .line 448
    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpReachabilityMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    #@3
    return-void
.end method

.method private clearNetlinkSocket()V
    .locals 1

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 486
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@6
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkSocket;->close()V

    #@9
    .line 484
    :cond_0
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .locals 10
    .param p1, "neighMsg"    # Landroid/net/netlink/RtNetlinkNeighborMessage;
    .param p2, "whenMs"    # J

    #@0
    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    #@3
    move-result-object v3

    #@4
    .line 554
    .local v3, "ndMsg":Landroid/net/netlink/StructNdMsg;
    if-eqz v3, :cond_0

    #@6
    iget v6, v3, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    #@8
    iget-object v7, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@a
    invoke-static {v7}, Landroid/net/ip/IpReachabilityMonitor;->-get0(Landroid/net/ip/IpReachabilityMonitor;)I

    #@d
    move-result v7

    #@e
    if-eq v6, v7, :cond_1

    #@10
    .line 555
    :cond_0
    return-void

    #@11
    .line 558
    :cond_1
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    #@14
    move-result-object v0

    #@15
    .line 559
    .local v0, "destination":Ljava/net/InetAddress;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@17
    invoke-static {v6, v0}, Landroid/net/ip/IpReachabilityMonitor;->-wrap0(Landroid/net/ip/IpReachabilityMonitor;Ljava/net/InetAddress;)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_2

    #@1d
    .line 560
    return-void

    #@1e
    .line 563
    :cond_2
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@21
    move-result-object v6

    #@22
    iget-short v2, v6, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@24
    .line 564
    .local v2, "msgType":S
    iget-short v4, v3, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@26
    .line 565
    .local v4, "nudState":S
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "NeighborEvent{elapsedMs="

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    .line 566
    const-string/jumbo v7, ", "

    #@39
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    .line 567
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    .line 567
    const-string/jumbo v7, ", "

    #@48
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 568
    const-string/jumbo v7, "["

    #@4f
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    .line 568
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    #@56
    move-result-object v7

    #@57
    invoke-static {v7}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 568
    const-string/jumbo v7, "], "

    #@62
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    .line 569
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    .line 569
    const-string/jumbo v7, ", "

    #@71
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    .line 570
    invoke-static {v4}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    .line 571
    const-string/jumbo v7, "}"

    #@80
    .line 565
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 579
    .local v1, "eventMsg":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@8a
    invoke-static {v6}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    #@8d
    move-result-object v7

    #@8e
    monitor-enter v7

    #@8f
    .line 580
    :try_start_0
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@91
    invoke-static {v6}, Landroid/net/ip/IpReachabilityMonitor;->-get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;

    #@94
    move-result-object v6

    #@95
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@98
    move-result v6

    #@99
    if-eqz v6, :cond_3

    #@9b
    .line 582
    const/16 v6, 0x1d

    #@9d
    if-ne v2, v6, :cond_5

    #@9f
    .line 583
    const/4 v5, 0x0

    #@a0
    .line 585
    :goto_0
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@a2
    invoke-static {v6}, Landroid/net/ip/IpReachabilityMonitor;->-get1(Landroid/net/ip/IpReachabilityMonitor;)Ljava/util/Map;

    #@a5
    move-result-object v6

    #@a6
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@a9
    move-result-object v8

    #@aa
    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ad
    :cond_3
    monitor-exit v7

    #@ae
    .line 589
    const/16 v6, 0x20

    #@b0
    if-ne v4, v6, :cond_4

    #@b2
    .line 590
    const-string/jumbo v6, "IpReachabilityMonitor"

    #@b5
    new-instance v7, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v8, "ALERT: "

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v7

    #@c9
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    .line 591
    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@ce
    invoke-static {v6, v1}, Landroid/net/ip/IpReachabilityMonitor;->-wrap2(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)V

    #@d1
    .line 552
    :cond_4
    return-void

    #@d2
    .line 584
    :cond_5
    move v5, v4

    #@d3
    .local v5, "value":S
    goto :goto_0

    #@d4
    .line 579
    .end local v5    # "value":S
    :catchall_0
    move-exception v6

    #@d5
    monitor-exit v7

    #@d6
    throw v6
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "whenMs"    # J

    #@0
    .prologue
    .line 522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v3

    #@4
    if-lez v3, :cond_2

    #@6
    .line 523
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@9
    move-result v1

    #@a
    .line 524
    .local v1, "position":I
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    #@d
    move-result-object v0

    #@e
    .line 525
    .local v0, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    if-eqz v0, :cond_1

    #@10
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@13
    move-result-object v3

    #@14
    if-nez v3, :cond_3

    #@16
    .line 526
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@19
    .line 527
    const-string/jumbo v3, "IpReachabilityMonitor"

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "unparsable netlink msg: "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 521
    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .end local v1    # "position":I
    :cond_2
    :goto_1
    return-void

    #@38
    .line 531
    .restart local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .restart local v1    # "position":I
    :cond_3
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@3b
    move-result-object v3

    #@3c
    iget v2, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    #@3e
    .line 532
    .local v2, "srcPortId":I
    if-eqz v2, :cond_4

    #@40
    .line 533
    const-string/jumbo v3, "IpReachabilityMonitor"

    #@43
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v5, "non-kernel source portId: "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    and-int/lit8 v5, v2, -0x1

    #@51
    int-to-long v6, v5

    #@52
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_1

    #@5e
    .line 537
    :cond_4
    instance-of v3, v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@60
    if-eqz v3, :cond_5

    #@62
    .line 538
    const-string/jumbo v3, "IpReachabilityMonitor"

    #@65
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "netlink error: "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    goto :goto_0

    #@7d
    .line 540
    :cond_5
    instance-of v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@7f
    if-eqz v3, :cond_0

    #@81
    .line 547
    check-cast v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@83
    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-direct {p0, v0, p2, p3}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    #@86
    goto/16 :goto_0
.end method

.method private recvKernelReply()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    .line 510
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@2
    const-wide/16 v4, 0x0

    #@4
    invoke-virtual {v2, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 513
    :catch_0
    move-exception v0

    #@a
    .line 514
    .local v0, "e":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    #@c
    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 515
    throw v0

    #@11
    .line 511
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@12
    .line 518
    :cond_0
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method private setupNetlinkSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 492
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    #@3
    .line 493
    new-instance v1, Landroid/net/netlink/NetlinkSocket;

    #@5
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    #@7
    invoke-direct {v1, v2}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V

    #@a
    iput-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@c
    .line 495
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    #@e
    .line 496
    sget v1, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    #@10
    const/4 v2, 0x0

    #@11
    .line 495
    invoke-direct {v0, v2, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    #@14
    .line 497
    .local v0, "listenAddr":Landroid/system/NetlinkSocketAddress;
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@16
    invoke-virtual {v1, v0}, Landroid/net/netlink/NetlinkSocket;->bind(Landroid/system/NetlinkSocketAddress;)V

    #@19
    .line 491
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 454
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@2
    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    :try_start_0
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@9
    const/4 v7, 0x1

    #@a
    invoke-static {v3, v7}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v6

    #@e
    .line 457
    :try_start_1
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->setupNetlinkSocket()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 464
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@13
    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-wrap1(Landroid/net/ip/IpReachabilityMonitor;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 466
    :try_start_2
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->recvKernelReply()Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    #@1c
    move-result-object v0

    #@1d
    .line 471
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v4

    #@21
    .line 472
    .local v4, "whenMs":J
    if-eqz v0, :cond_0

    #@23
    .line 475
    invoke-direct {p0, v0, v4, v5}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    #@26
    goto :goto_0

    #@27
    .line 454
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "whenMs":J
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v6

    #@29
    throw v3

    #@2a
    .line 458
    :catch_0
    move-exception v2

    #@2b
    .line 459
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "IpReachabilityMonitor"

    #@2e
    const-string/jumbo v6, "Failed to suitably initialize a netlink socket"

    #@31
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    .line 460
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@36
    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    monitor-enter v6

    #@3b
    :try_start_3
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@3d
    const/4 v7, 0x0

    #@3e
    invoke-static {v3, v7}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    monitor-exit v6

    #@42
    goto :goto_0

    #@43
    :catchall_1
    move-exception v3

    #@44
    monitor-exit v6

    #@45
    throw v3

    #@46
    .line 467
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@47
    .line 468
    .local v1, "e":Landroid/system/ErrnoException;
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@49
    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-wrap1(Landroid/net/ip/IpReachabilityMonitor;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_1

    #@4f
    const-string/jumbo v3, "IpReachabilityMonitor"

    #@52
    const-string/jumbo v6, "ErrnoException: "

    #@55
    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    .line 478
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_1
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    #@5b
    .line 480
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@5d
    invoke-static {v3}, Landroid/net/ip/IpReachabilityMonitor;->-get2(Landroid/net/ip/IpReachabilityMonitor;)Ljava/lang/Object;

    #@60
    move-result-object v6

    #@61
    monitor-enter v6

    #@62
    :try_start_4
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/ip/IpReachabilityMonitor;

    #@64
    const/4 v7, 0x0

    #@65
    invoke-static {v3, v7}, Landroid/net/ip/IpReachabilityMonitor;->-set0(Landroid/net/ip/IpReachabilityMonitor;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@68
    monitor-exit v6

    #@69
    .line 452
    return-void

    #@6a
    .line 480
    :catchall_2
    move-exception v3

    #@6b
    monitor-exit v6

    #@6c
    throw v3
.end method
