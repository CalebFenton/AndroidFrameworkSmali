.class final Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpReachabilityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetlinkSocketObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkSocketObserver"


# instance fields
.field private mSocket:Landroid/net/netlink/NetlinkSocket;

.field final synthetic this$0:Landroid/net/IpReachabilityMonitor;


# direct methods
.method static synthetic -wrap0(Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/net/IpReachabilityMonitor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpReachabilityMonitor;

    #@0
    .prologue
    .line 304
    iput-object p1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/IpReachabilityMonitor;Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpReachabilityMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;-><init>(Landroid/net/IpReachabilityMonitor;)V

    #@3
    return-void
.end method

.method private clearNetlinkSocket()V
    .locals 1

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 343
    iget-object v0, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@6
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkSocket;->close()V

    #@9
    .line 341
    :cond_0
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .locals 10
    .param p1, "neighMsg"    # Landroid/net/netlink/RtNetlinkNeighborMessage;
    .param p2, "whenMs"    # J

    #@0
    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    #@3
    move-result-object v3

    #@4
    .line 411
    .local v3, "ndMsg":Landroid/net/netlink/StructNdMsg;
    if-eqz v3, :cond_0

    #@6
    iget v6, v3, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    #@8
    iget-object v7, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@a
    invoke-static {v7}, Landroid/net/IpReachabilityMonitor;->-get0(Landroid/net/IpReachabilityMonitor;)I

    #@d
    move-result v7

    #@e
    if-eq v6, v7, :cond_1

    #@10
    .line 412
    :cond_0
    return-void

    #@11
    .line 415
    :cond_1
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    #@14
    move-result-object v0

    #@15
    .line 416
    .local v0, "destination":Ljava/net/InetAddress;
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@17
    invoke-static {v6, v0}, Landroid/net/IpReachabilityMonitor;->-wrap0(Landroid/net/IpReachabilityMonitor;Ljava/net/InetAddress;)Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_2

    #@1d
    .line 417
    return-void

    #@1e
    .line 420
    :cond_2
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@21
    move-result-object v6

    #@22
    iget-short v2, v6, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    #@24
    .line 421
    .local v2, "msgType":S
    iget-short v4, v3, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    #@26
    .line 422
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
    .line 423
    const-string/jumbo v7, ", "

    #@39
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    .line 424
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    .line 424
    const-string/jumbo v7, ", "

    #@48
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 425
    const-string/jumbo v7, "["

    #@4f
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    .line 425
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    #@56
    move-result-object v7

    #@57
    invoke-static {v7}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 425
    const-string/jumbo v7, "], "

    #@62
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    .line 426
    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    .line 426
    const-string/jumbo v7, ", "

    #@71
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    .line 427
    invoke-static {v4}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    .line 428
    const-string/jumbo v7, "}"

    #@80
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 433
    .local v1, "eventMsg":Ljava/lang/String;
    const-string/jumbo v6, "NetlinkSocketObserver"

    #@8b
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 436
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@90
    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    #@93
    move-result-object v7

    #@94
    monitor-enter v7

    #@95
    .line 437
    :try_start_0
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@97
    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->-get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;

    #@9a
    move-result-object v6

    #@9b
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9e
    move-result v6

    #@9f
    if-eqz v6, :cond_3

    #@a1
    .line 439
    const/16 v6, 0x1d

    #@a3
    if-ne v2, v6, :cond_5

    #@a5
    .line 440
    const/4 v5, 0x0

    #@a6
    .line 442
    :goto_0
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@a8
    invoke-static {v6}, Landroid/net/IpReachabilityMonitor;->-get1(Landroid/net/IpReachabilityMonitor;)Ljava/util/Map;

    #@ab
    move-result-object v6

    #@ac
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@af
    move-result-object v8

    #@b0
    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b3
    :cond_3
    monitor-exit v7

    #@b4
    .line 446
    const/16 v6, 0x20

    #@b6
    if-ne v4, v6, :cond_4

    #@b8
    .line 447
    const-string/jumbo v6, "NetlinkSocketObserver"

    #@bb
    new-instance v7, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v8, "ALERT: "

    #@c3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 448
    iget-object v6, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@d4
    invoke-static {v6, v1}, Landroid/net/IpReachabilityMonitor;->-wrap2(Landroid/net/IpReachabilityMonitor;Ljava/lang/String;)V

    #@d7
    .line 409
    :cond_4
    return-void

    #@d8
    .line 441
    :cond_5
    move v5, v4

    #@d9
    .local v5, "value":S
    goto :goto_0

    #@da
    .line 436
    .end local v5    # "value":S
    :catchall_0
    move-exception v6

    #@db
    monitor-exit v7

    #@dc
    throw v6
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 8
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "whenMs"    # J

    #@0
    .prologue
    .line 379
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v3

    #@4
    if-lez v3, :cond_1

    #@6
    .line 380
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@9
    move-result v1

    #@a
    .line 381
    .local v1, "position":I
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    #@d
    move-result-object v0

    #@e
    .line 382
    .local v0, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@13
    move-result-object v3

    #@14
    if-nez v3, :cond_2

    #@16
    .line 383
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@19
    .line 384
    const-string/jumbo v3, "NetlinkSocketObserver"

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
    .line 378
    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .end local v1    # "position":I
    :cond_1
    :goto_1
    return-void

    #@38
    .line 388
    .restart local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .restart local v1    # "position":I
    :cond_2
    invoke-virtual {v0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    #@3b
    move-result-object v3

    #@3c
    iget v2, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    #@3e
    .line 389
    .local v2, "srcPortId":I
    if-eqz v2, :cond_3

    #@40
    .line 390
    const-string/jumbo v3, "NetlinkSocketObserver"

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
    .line 394
    :cond_3
    instance-of v3, v0, Landroid/net/netlink/NetlinkErrorMessage;

    #@60
    if-eqz v3, :cond_4

    #@62
    .line 395
    const-string/jumbo v3, "NetlinkSocketObserver"

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
    .line 397
    :cond_4
    instance-of v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@7f
    if-nez v3, :cond_5

    #@81
    .line 399
    const-string/jumbo v3, "NetlinkSocketObserver"

    #@84
    new-instance v4, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v5, "non-rtnetlink neighbor msg: "

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v4

    #@98
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9b
    goto/16 :goto_0

    #@9d
    .line 404
    :cond_5
    check-cast v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    #@9f
    .end local v0    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-direct {p0, v0, p2, p3}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    #@a2
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
    .line 367
    :try_start_0
    iget-object v2, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

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
    .line 370
    :catch_0
    move-exception v0

    #@a
    .line 371
    .local v0, "e":Landroid/system/ErrnoException;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    #@c
    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 372
    throw v0

    #@11
    .line 368
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@12
    .line 375
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
    .line 349
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    #@3
    .line 350
    new-instance v1, Landroid/net/netlink/NetlinkSocket;

    #@5
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    #@7
    invoke-direct {v1, v2}, Landroid/net/netlink/NetlinkSocket;-><init>(I)V

    #@a
    iput-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@c
    .line 352
    new-instance v0, Landroid/system/NetlinkSocketAddress;

    #@e
    .line 353
    sget v1, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    #@10
    const/4 v2, 0x0

    #@11
    .line 352
    invoke-direct {v0, v2, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    #@14
    .line 354
    .local v0, "listenAddr":Landroid/system/NetlinkSocketAddress;
    iget-object v1, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->mSocket:Landroid/net/netlink/NetlinkSocket;

    #@16
    invoke-virtual {v1, v0}, Landroid/net/netlink/NetlinkSocket;->bind(Landroid/system/NetlinkSocketAddress;)V

    #@19
    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 311
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@2
    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    :try_start_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@9
    const/4 v7, 0x1

    #@a
    invoke-static {v3, v7}, Landroid/net/IpReachabilityMonitor;->-set0(Landroid/net/IpReachabilityMonitor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v6

    #@e
    .line 314
    :try_start_1
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->setupNetlinkSocket()V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 321
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@13
    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-wrap1(Landroid/net/IpReachabilityMonitor;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 323
    :try_start_2
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->recvKernelReply()Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    #@1c
    move-result-object v0

    #@1d
    .line 328
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v4

    #@21
    .line 329
    .local v4, "whenMs":J
    if-eqz v0, :cond_0

    #@23
    .line 332
    invoke-direct {p0, v0, v4, v5}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    #@26
    goto :goto_0

    #@27
    .line 311
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "whenMs":J
    :catchall_0
    move-exception v3

    #@28
    monitor-exit v6

    #@29
    throw v3

    #@2a
    .line 315
    :catch_0
    move-exception v2

    #@2b
    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NetlinkSocketObserver"

    #@2e
    const-string/jumbo v6, "Failed to suitably initialize a netlink socket"

    #@31
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    .line 317
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@36
    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    monitor-enter v6

    #@3b
    :try_start_3
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@3d
    const/4 v7, 0x0

    #@3e
    invoke-static {v3, v7}, Landroid/net/IpReachabilityMonitor;->-set0(Landroid/net/IpReachabilityMonitor;Z)Z
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
    .line 324
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@47
    .line 325
    .local v1, "e":Landroid/system/ErrnoException;
    const-string/jumbo v3, "NetlinkSocketObserver"

    #@4a
    const-string/jumbo v6, "ErrnoException: "

    #@4d
    invoke-static {v3, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    .line 335
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_1
    invoke-direct {p0}, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->clearNetlinkSocket()V

    #@53
    .line 337
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@55
    invoke-static {v3}, Landroid/net/IpReachabilityMonitor;->-get2(Landroid/net/IpReachabilityMonitor;)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    monitor-enter v6

    #@5a
    :try_start_4
    iget-object v3, p0, Landroid/net/IpReachabilityMonitor$NetlinkSocketObserver;->this$0:Landroid/net/IpReachabilityMonitor;

    #@5c
    const/4 v7, 0x0

    #@5d
    invoke-static {v3, v7}, Landroid/net/IpReachabilityMonitor;->-set0(Landroid/net/IpReachabilityMonitor;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@60
    monitor-exit v6

    #@61
    .line 309
    return-void

    #@62
    .line 337
    :catchall_2
    move-exception v3

    #@63
    monitor-exit v6

    #@64
    throw v3
.end method
