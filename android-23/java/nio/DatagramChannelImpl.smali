.class Ljava/nio/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private final fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/nio/DatagramChannelImpl;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    #@2
    return v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@8
    .line 70
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    #@a
    .line 73
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@c
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@13
    .line 76
    new-instance v0, Ljava/lang/Object;

    #@15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@18
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@1a
    .line 92
    new-instance v0, Ljava/io/FileDescriptor;

    #@1c
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@1f
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@21
    .line 93
    new-instance v0, Ljava/net/InetSocketAddress;

    #@23
    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@26
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@28
    .line 90
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@4
    .line 70
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    #@6
    .line 73
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@8
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@f
    .line 76
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@16
    .line 83
    invoke-static {v1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1c
    .line 81
    return-void
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 483
    if-nez p1, :cond_0

    #@2
    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "source == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 482
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 464
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 465
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v0

    #@c
    .line 463
    :cond_0
    return-void
.end method

.method private checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    #@3
    .line 474
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 475
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@e
    throw v0

    #@f
    .line 472
    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 373
    iget-object v9, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@3
    monitor-enter v9

    #@4
    .line 376
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    #@7
    .line 377
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@9
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@c
    move-result v5

    #@d
    const/4 v0, 0x0

    #@e
    const/4 v3, 0x0

    #@f
    const/4 v4, 0x0

    #@10
    move-object v2, p1

    #@11
    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v7

    #@15
    .line 382
    .local v7, "readCount":I
    if-lez v7, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1b
    monitor-exit v9

    #@1c
    .line 384
    return v7

    #@1d
    :cond_0
    move v0, v8

    #@1e
    .line 382
    goto :goto_0

    #@1f
    .line 378
    .end local v7    # "readCount":I
    :catch_0
    move-exception v6

    #@20
    .line 382
    .local v6, "e":Ljava/io/InterruptedIOException;
    const/4 v0, 0x0

    #@21
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl;->end(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    monitor-exit v9

    #@25
    .line 380
    return v8

    #@26
    .line 381
    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v0

    #@27
    .line 382
    const/4 v1, 0x0

    #@28
    :try_start_3
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@2b
    .line 381
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2c
    .line 373
    :catchall_1
    move-exception v0

    #@2d
    monitor-exit v9

    #@2e
    throw v0
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 7
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 275
    const/4 v6, 0x0

    #@2
    .line 276
    .local v6, "retAddr":Ljava/net/SocketAddress;
    new-instance v4, Ljava/net/DatagramPacket;

    #@4
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@6
    invoke-direct {v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@9
    .line 278
    .local v4, "receivePacket":Ljava/net/DatagramPacket;
    :goto_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@b
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@e
    move-result v5

    #@f
    move-object v2, p1

    #@10
    move v3, v0

    #@11
    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    #@14
    .line 279
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 280
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    #@1d
    move-result-object v6

    #@1e
    .line 284
    .end local v6    # "retAddr":Ljava/net/SocketAddress;
    :cond_0
    return-object v6

    #@1f
    .line 283
    .restart local v6    # "retAddr":Ljava/net/SocketAddress;
    :cond_1
    if-eqz p2, :cond_0

    #@21
    goto :goto_0
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 11
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 246
    const/4 v10, 0x0

    #@2
    .line 248
    .local v10, "retAddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v8

    #@6
    .line 251
    .local v8, "oldposition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 252
    new-instance v6, Ljava/net/DatagramPacket;

    #@e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@19
    move-result v3

    #@1a
    add-int/2addr v2, v3

    #@1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1e
    move-result v3

    #@1f
    invoke-direct {v6, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    #@22
    .line 257
    .local v6, "receivePacket":Ljava/net/DatagramPacket;
    :goto_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@24
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getOffset()I

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    #@2f
    move-result v4

    #@30
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@33
    move-result v7

    #@34
    move v5, v0

    #@35
    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    #@38
    move-result v9

    #@39
    .line 258
    .local v9, "received":I
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@3c
    move-result-object v1

    #@3d
    if-eqz v1, :cond_4

    #@3f
    .line 259
    if-lez v9, :cond_0

    #@41
    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_3

    #@47
    .line 261
    add-int v0, v8, v9

    #@49
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4c
    .line 267
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    #@4f
    move-result-object v10

    #@50
    .line 271
    .end local v10    # "retAddr":Ljava/net/SocketAddress;
    :cond_1
    return-object v10

    #@51
    .line 254
    .end local v6    # "receivePacket":Ljava/net/DatagramPacket;
    .end local v9    # "received":I
    .restart local v10    # "retAddr":Ljava/net/SocketAddress;
    :cond_2
    new-instance v6, Ljava/net/DatagramPacket;

    #@53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@56
    move-result v1

    #@57
    new-array v1, v1, [B

    #@59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@5c
    move-result v2

    #@5d
    invoke-direct {v6, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@60
    .restart local v6    # "receivePacket":Ljava/net/DatagramPacket;
    goto :goto_0

    #@61
    .line 264
    .restart local v9    # "received":I
    :cond_3
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    #@64
    move-result-object v1

    #@65
    invoke-virtual {p1, v1, v0, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@68
    goto :goto_1

    #@69
    .line 270
    :cond_4
    if-eqz p2, :cond_1

    #@6b
    goto :goto_0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 434
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 437
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    #@7
    .line 438
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@9
    const/4 v4, 0x0

    #@a
    const/4 v5, 0x0

    #@b
    const/4 v6, 0x0

    #@c
    invoke-static {v3, p1, v4, v5, v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v0

    #@10
    .line 440
    .local v0, "result":I
    if-lez v0, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@16
    monitor-exit v2

    #@17
    .line 442
    return v0

    #@18
    .line 439
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@19
    .line 440
    const/4 v3, 0x0

    #@1a
    :try_start_2
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@1d
    .line 439
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    .line 434
    :catchall_1
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 6
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 141
    :try_start_0
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    #@4
    .line 143
    iget-boolean v4, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 144
    new-instance v4, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v4

    #@f
    monitor-exit p0

    #@10
    throw v4

    #@11
    .line 148
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@14
    move-result-object v1

    #@15
    .line 149
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@18
    move-result-object v2

    #@19
    .line 150
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    move-result v3

    #@1d
    .line 152
    .local v3, "remotePort":I
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    #@20
    .line 153
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@22
    invoke-static {v4, v2, v3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    .line 157
    const/4 v4, 0x1

    #@26
    :try_start_3
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@29
    .line 162
    :goto_0
    iget-boolean v4, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@2b
    if-nez v4, :cond_1

    #@2d
    .line 163
    const/4 v4, 0x1

    #@2e
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V

    #@31
    .line 167
    :cond_1
    const/4 v4, 0x1

    #@32
    invoke-virtual {p0, v2, v3, v4}, Ljava/nio/DatagramChannelImpl;->onConnect(Ljava/net/InetAddress;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 168
    return-object p0

    #@37
    .line 154
    :catch_0
    move-exception v0

    #@38
    .line 157
    .local v0, "e":Ljava/net/ConnectException;
    const/4 v4, 0x1

    #@39
    :try_start_4
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@3c
    goto :goto_0

    #@3d
    .line 156
    .end local v0    # "e":Ljava/net/ConnectException;
    :catchall_1
    move-exception v4

    #@3e
    .line 157
    const/4 v5, 0x1

    #@3f
    invoke-virtual {p0, v5}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@42
    .line 156
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 191
    const/4 v1, 0x1

    #@e
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 194
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@13
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@15
    sget-object v3, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 198
    return-object p0

    #@1d
    :cond_0
    monitor-exit p0

    #@1e
    .line 187
    return-object p0

    #@1f
    .line 195
    :catch_0
    move-exception v0

    #@20
    .line 196
    .local v0, "errnoException":Landroid/system/ErrnoException;
    :try_start_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@23
    move-result-object v1

    #@24
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 448
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/DatagramChannelImpl;->onDisconnect(Z)V

    #@5
    .line 449
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@a
    .line 451
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@10
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    :cond_0
    :goto_0
    monitor-exit p0

    #@17
    .line 446
    return-void

    #@18
    .line 452
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@1a
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->onClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@5
    .line 456
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method onBind(Z)V
    .locals 6
    .param p1, "updateSocketState"    # Z

    #@0
    .prologue
    .line 120
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    .line 124
    .local v2, "sa":Ljava/net/SocketAddress;
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@b
    move-object v1, v2

    #@c
    .line 125
    check-cast v1, Ljava/net/InetSocketAddress;

    #@e
    .line 126
    .local v1, "localSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@11
    move-result-object v3

    #@12
    iput-object v3, p0, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@14
    .line 127
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@17
    move-result v3

    #@18
    iput v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    #@1a
    .line 128
    if-eqz p1, :cond_0

    #@1c
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 129
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@22
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@24
    iget v5, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    #@26
    invoke-virtual {v3, v4, v5}, Ljava/net/DatagramSocket;->onBind(Ljava/net/InetAddress;I)V

    #@29
    .line 117
    :cond_0
    return-void

    #@2a
    .line 121
    .end local v1    # "localSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    #@2b
    .line 122
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    #@2d
    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@30
    throw v3
.end method

.method onConnect(Ljava/net/InetAddress;IZ)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .param p3, "updateSocketState"    # Z

    #@0
    .prologue
    .line 177
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    #@3
    .line 178
    new-instance v0, Ljava/net/InetSocketAddress;

    #@5
    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@8
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@a
    .line 179
    if-eqz p3, :cond_0

    #@c
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 180
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@12
    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocket;->onConnect(Ljava/net/InetAddress;I)V

    #@15
    .line 176
    :cond_0
    return-void
.end method

.method onDisconnect(Z)V
    .locals 2
    .param p1, "updateSocketState"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 207
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    #@4
    .line 208
    iput-object v1, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@6
    .line 209
    if-eqz p1, :cond_0

    #@8
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@e
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 210
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@16
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->onDisconnect()V

    #@19
    .line 206
    :cond_0
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    #@4
    .line 320
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    #@7
    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 323
    return v4

    #@e
    .line 327
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_1

    #@14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 328
    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    #@1d
    move-result v2

    #@1e
    .line 337
    .local v2, "readCount":I
    :cond_2
    :goto_0
    return v2

    #@1f
    .line 330
    .end local v2    # "readCount":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@22
    move-result v3

    #@23
    new-array v0, v3, [B

    #@25
    .line 331
    .local v0, "readArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@28
    move-result-object v1

    #@29
    .line 332
    .local v1, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    #@2c
    move-result v2

    #@2d
    .line 333
    .restart local v2    # "readCount":I
    if-lez v2, :cond_2

    #@2f
    .line 334
    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@32
    goto :goto_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .param p1, "targets"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    array-length v7, p1

    #@1
    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 345
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    #@7
    .line 346
    const/4 v7, 0x1

    #@8
    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    #@b
    move-result v6

    #@c
    .line 347
    .local v6, "totalCount":I
    if-nez v6, :cond_0

    #@e
    .line 348
    const-wide/16 v8, 0x0

    #@10
    return-wide v8

    #@11
    .line 353
    :cond_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@14
    move-result-object v4

    #@15
    .line 355
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    #@18
    move-result v5

    #@19
    .line 356
    .local v5, "readCount":I
    move v1, v5

    #@1a
    .line 357
    .local v1, "left":I
    move v0, p2

    #@1b
    .line 359
    .local v0, "index":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    #@1e
    move-result-object v3

    #@1f
    .line 360
    .local v3, "readArray":[B
    :goto_0
    if-lez v1, :cond_1

    #@21
    .line 361
    aget-object v7, p1, v0

    #@23
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    #@26
    move-result v7

    #@27
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 362
    .local v2, "putLength":I
    aget-object v7, p1, v0

    #@2d
    sub-int v8, v5, v1

    #@2f
    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@32
    .line 363
    add-int/lit8 v0, v0, 0x1

    #@34
    .line 364
    sub-int/2addr v1, v2

    #@35
    goto :goto_0

    #@36
    .line 366
    .end local v2    # "putLength":I
    :cond_1
    int-to-long v8, v5

    #@37
    return-wide v8
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 8
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    #@6
    .line 217
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    #@9
    .line 219
    iget-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@b
    if-nez v3, :cond_0

    #@d
    .line 220
    return-object v7

    #@e
    .line 223
    :cond_0
    const/4 v2, 0x0

    #@f
    .line 225
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    #@12
    .line 228
    iget-object v6, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@14
    monitor-enter v6
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@15
    .line 229
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    #@18
    move-result v1

    #@19
    .line 230
    .local v1, "loop":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_1

    #@1f
    .line 231
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result-object v2

    #@23
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@24
    .line 240
    if-eqz v2, :cond_2

    #@26
    move v3, v4

    #@27
    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@2a
    .line 242
    return-object v2

    #@2b
    .line 233
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2e
    move-result-object v2

    #@2f
    .local v2, "retAddr":Ljava/net/SocketAddress;
    goto :goto_0

    #@30
    .line 228
    .end local v1    # "loop":Z
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :catchall_0
    move-exception v3

    #@31
    :try_start_4
    monitor-exit v6

    #@32
    throw v3
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@33
    .line 236
    .end local v2    # "retAddr":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    #@34
    .line 240
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz v2, :cond_3

    #@36
    :goto_2
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@39
    .line 238
    return-object v7

    #@3a
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v1    # "loop":Z
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :cond_2
    move v3, v5

    #@3b
    .line 240
    goto :goto_1

    #@3c
    .end local v1    # "loop":Z
    .end local v2    # "retAddr":Ljava/net/SocketAddress;
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3
    move v4, v5

    #@3d
    goto :goto_2

    #@3e
    .line 239
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_1
    move-exception v3

    #@3f
    .line 240
    if-eqz v2, :cond_4

    #@41
    :goto_3
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@44
    .line 239
    throw v3

    #@45
    :cond_4
    move v4, v5

    #@46
    .line 240
    goto :goto_3
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 9
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 289
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    #@5
    .line 290
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    #@8
    move-object v0, p2

    #@9
    .line 292
    check-cast v0, Ljava/net/InetSocketAddress;

    #@b
    .line 293
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@e
    move-result-object v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 294
    new-instance v2, Ljava/io/IOException;

    #@13
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #@16
    throw v2

    #@17
    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@1f
    invoke-virtual {v2, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 302
    :cond_1
    iget-object v5, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@27
    monitor-enter v5

    #@28
    .line 303
    const/4 v1, 0x0

    #@29
    .line 305
    .local v1, "sendCount":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    #@2c
    .line 306
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@35
    move-result v7

    #@36
    const/4 v8, 0x0

    #@37
    invoke-static {v2, p1, v8, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    #@3a
    move-result v1

    #@3b
    .line 307
    iget-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 308
    const/4 v2, 0x1

    #@40
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->onBind(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    .line 311
    :cond_2
    if-ltz v1, :cond_4

    #@45
    :goto_0
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@48
    monitor-exit v5

    #@49
    .line 313
    return v1

    #@4a
    .line 298
    .end local v1    # "sendCount":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "Connected to "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    .line 299
    const-string/jumbo v4, ", not "

    #@61
    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .restart local v1    # "sendCount":I
    :cond_4
    move v3, v4

    #@72
    .line 311
    goto :goto_0

    #@73
    .line 310
    :catchall_0
    move-exception v2

    #@74
    .line 311
    if-ltz v1, :cond_5

    #@76
    :goto_1
    :try_start_2
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    #@79
    .line 310
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7a
    .line 302
    :catchall_1
    move-exception v2

    #@7b
    monitor-exit v5

    #@7c
    throw v2

    #@7d
    :cond_5
    move v3, v4

    #@7e
    .line 311
    goto :goto_1
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 103
    new-instance v0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;

    #@7
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    #@9
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@b
    iget v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    #@d
    invoke-direct {v1, v2, v3}, Ljava/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    #@10
    invoke-direct {v0, v1, p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V

    #@13
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@15
    .line 105
    :cond_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    return-object v0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    #@3
    .line 390
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    #@6
    .line 391
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 392
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 395
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 404
    array-length v8, p1

    #@2
    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 407
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    #@8
    .line 408
    invoke-static {p1, p2, p3, v9}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    #@b
    move-result v0

    #@c
    .line 409
    .local v0, "count":I
    if-nez v0, :cond_0

    #@e
    .line 410
    const-wide/16 v8, 0x0

    #@10
    return-wide v8

    #@11
    .line 412
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@14
    move-result-object v6

    #@15
    .line 413
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    #@16
    .local v5, "val":I
    :goto_0
    add-int v8, p3, p2

    #@18
    if-ge v5, v8, :cond_1

    #@1a
    .line 414
    aget-object v4, p1, v5

    #@1c
    .line 415
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@1f
    move-result v2

    #@20
    .line 416
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@23
    .line 417
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@26
    .line 413
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_0

    #@29
    .line 419
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@2c
    .line 420
    invoke-direct {p0, v6}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    #@2f
    move-result v3

    #@30
    .line 421
    .local v3, "result":I
    move v5, p2

    #@31
    .line 422
    move v7, v3

    #@32
    .line 423
    .local v7, "written":I
    :goto_1
    if-lez v3, :cond_2

    #@34
    .line 424
    aget-object v4, p1, v5

    #@36
    .line 425
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    #@39
    move-result v8

    #@3a
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v1

    #@3e
    .line 426
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@41
    move-result v8

    #@42
    add-int/2addr v8, v1

    #@43
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@46
    .line 427
    add-int/lit8 v5, v5, 0x1

    #@48
    .line 428
    sub-int/2addr v3, v1

    #@49
    goto :goto_1

    #@4a
    .line 430
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_2
    int-to-long v8, v7

    #@4b
    return-wide v8
.end method
