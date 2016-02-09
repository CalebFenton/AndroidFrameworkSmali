.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .locals 2
    .param p1, "socketImpl"    # Ljava/net/PlainSocketImpl;
    .param p2, "channel"    # Ljava/nio/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    #@3
    .line 501
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    #@5
    .line 502
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@7
    .line 503
    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    #@a
    .line 506
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->-get1(Ljava/nio/SocketChannelImpl;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 507
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->-get2(Ljava/nio/SocketChannelImpl;)Ljava/net/InetAddress;

    #@13
    move-result-object v0

    #@14
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->-get3(Ljava/nio/SocketChannelImpl;)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v0, v1}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    #@1b
    .line 509
    :cond_0
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 510
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->-get0(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@28
    move-result-object v0

    #@29
    invoke-static {p2}, Ljava/nio/SocketChannelImpl;->-get0(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@30
    move-result v1

    #@31
    invoke-virtual {p0, v0, v1}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    #@34
    .line 512
    :cond_1
    invoke-virtual {p2}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_2

    #@3a
    .line 513
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onClose()V

    #@3d
    .line 499
    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@2
    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 543
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    #@a
    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    #@d
    throw v0

    #@e
    .line 545
    :cond_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@10
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->-get4(Ljava/nio/SocketChannelImpl;)I

    #@13
    move-result v0

    #@14
    const/4 v1, 0x1

    #@15
    if-ne v1, v0, :cond_1

    #@17
    .line 546
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    #@19
    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 548
    :cond_1
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@20
    .line 549
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {v0, v1}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    #@26
    .line 541
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 554
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@2
    monitor-enter v1

    #@3
    .line 555
    :try_start_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    #@6
    .line 556
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@8
    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 559
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@10
    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 553
    return-void

    #@15
    .line 554
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 4
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 525
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@3
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 526
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    #@b
    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    #@e
    throw v1

    #@f
    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 529
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    #@17
    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 531
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@1e
    .line 532
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@20
    invoke-virtual {v1, v3}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    #@23
    .line 533
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    move-object v0, p1

    #@2a
    .line 534
    check-cast v0, Ljava/net/InetSocketAddress;

    #@2c
    .line 535
    .local v0, "remoteInetAddress":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@2e
    .line 536
    const/4 v2, 0x2

    #@2f
    .line 535
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    #@32
    .line 524
    .end local v0    # "remoteInetAddress":Ljava/net/InetSocketAddress;
    :cond_2
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@2
    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    #@2
    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->getFD$()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 571
    new-instance v0, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;

    #@2
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@8
    invoke-direct {v0, v1, v2}, Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/channels/SocketChannel;)V

    #@b
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 566
    new-instance v0, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;

    #@2
    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #@8
    invoke-direct {v0, v1, v2}, Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/channels/SocketChannel;)V

    #@b
    return-object v0
.end method
