.class Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
.super Ljava/net/DatagramSocket;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketAdapter"
.end annotation


# instance fields
.field private final channelImpl:Ljava/nio/DatagramChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V
    .locals 2
    .param p1, "socketimpl"    # Ljava/net/DatagramSocketImpl;
    .param p2, "channelImpl"    # Ljava/nio/DatagramChannelImpl;

    #@0
    .prologue
    .line 509
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    #@3
    .line 510
    iput-object p2, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@5
    .line 513
    iget-boolean v0, p2, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 514
    iget-object v0, p2, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@b
    invoke-static {p2}, Ljava/nio/DatagramChannelImpl;->-get0(Ljava/nio/DatagramChannelImpl;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    #@12
    .line 516
    :cond_0
    iget-boolean v0, p2, Ljava/nio/DatagramChannelImpl;->connected:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 518
    iget-object v0, p2, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@18
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@1b
    move-result-object v0

    #@1c
    .line 519
    iget-object v1, p2, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@1e
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@21
    move-result v1

    #@22
    .line 517
    invoke-virtual {p0, v0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    #@25
    .line 523
    :goto_0
    invoke-virtual {p2}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 524
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onClose()V

    #@2e
    .line 508
    :cond_1
    return-void

    #@2f
    .line 521
    :cond_2
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->onDisconnect()V

    #@32
    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@2
    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 539
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    #@a
    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    #@d
    throw v0

    #@e
    .line 541
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    #@11
    .line 542
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    #@17
    .line 537
    return-void
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 606
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@2
    monitor-enter v2

    #@3
    .line 607
    :try_start_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    #@6
    .line 608
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@8
    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 610
    :try_start_1
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@10
    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :cond_0
    :goto_0
    monitor-exit v2

    #@14
    .line 605
    return-void

    #@15
    .line 606
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1

    #@18
    .line 611
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 566
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    #@2
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@5
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 562
    :goto_0
    return-void

    #@9
    .line 567
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "peer"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 547
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isConnected()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 549
    new-instance v1, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Socket is already connected."

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 551
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    #@13
    .line 553
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@15
    invoke-virtual {v1, v4}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    #@18
    move-object v0, p1

    #@19
    .line 555
    check-cast v0, Ljava/net/InetSocketAddress;

    #@1b
    .line 556
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@1d
    .line 557
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@24
    move-result v3

    #@25
    .line 556
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/DatagramChannelImpl;->onConnect(Ljava/net/InetAddress;IZ)V

    #@28
    .line 546
    return-void
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 620
    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    #@3
    .line 621
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V

    #@9
    .line 619
    return-void
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@2
    return-object v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 574
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@2
    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 575
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@a
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@d
    throw v1

    #@e
    .line 578
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isBound()Z

    #@11
    move-result v0

    #@12
    .line 579
    .local v0, "wasBound":Z
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    #@15
    .line 580
    if-nez v0, :cond_1

    #@17
    .line 583
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v1, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    #@1d
    .line 573
    :cond_1
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 589
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@2
    invoke-virtual {v1}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 590
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@a
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@d
    throw v1

    #@e
    .line 595
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->isBound()Z

    #@11
    move-result v0

    #@12
    .line 596
    .local v0, "wasBound":Z
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    #@15
    .line 597
    if-nez v0, :cond_1

    #@17
    .line 600
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v1, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    #@1d
    .line 588
    :cond_1
    return-void
.end method
