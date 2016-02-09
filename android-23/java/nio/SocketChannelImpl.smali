.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$SocketAdapter;,
        Ljava/nio/SocketChannelImpl$BlockingCheckOutputStream;,
        Ljava/nio/SocketChannelImpl$BlockingCheckInputStream;
    }
.end annotation


# static fields
.field private static final SOCKET_STATUS_CLOSED:I = 0x3

.field private static final SOCKET_STATUS_CONNECTED:I = 0x2

.field private static final SOCKET_STATUS_PENDING:I = 0x1

.field private static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field private static final SOCKET_STATUS_UNINITIALIZED:I = -0x1


# instance fields
.field private connectAddress:Ljava/net/InetSocketAddress;

.field private final fd:Ljava/io/FileDescriptor;

.field private volatile isBound:Z

.field private localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field private status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/nio/SocketChannelImpl;)Ljava/net/InetSocketAddress;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/nio/SocketChannelImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Ljava/nio/SocketChannelImpl;)Ljava/net/InetAddress;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/nio/SocketChannelImpl;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    #@2
    return v0
.end method

.method static synthetic -get4(Ljava/nio/SocketChannelImpl;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@2
    return v0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    #@4
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "existingFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 112
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@4
    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@6
    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@8
    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@a
    .line 83
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@d
    .line 86
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    #@10
    .line 88
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@17
    .line 90
    new-instance v0, Ljava/lang/Object;

    #@19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1c
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@1e
    .line 113
    const/4 v0, 0x2

    #@1f
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@21
    .line 114
    iput-object p2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@23
    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "connect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 103
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    .line 74
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@7
    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@9
    .line 80
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@b
    .line 83
    const/4 v0, -0x1

    #@c
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@e
    .line 86
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    #@10
    .line 88
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@17
    .line 90
    new-instance v0, Ljava/lang/Object;

    #@19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1c
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@1e
    .line 104
    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@20
    .line 105
    if-eqz p2, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    #@26
    move-result-object v0

    #@27
    :goto_0
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@29
    .line 102
    return-void

    #@2a
    .line 105
    :cond_0
    new-instance v0, Ljava/io/FileDescriptor;

    #@2c
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@2f
    goto :goto_0
.end method

.method private declared-synchronized checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 417
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 418
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@9
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    .line 420
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 421
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    #@18
    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@1b
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_1
    monitor-exit p0

    #@1d
    .line 416
    return-void
.end method

.method private declared-synchronized checkUnconnected()V
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
    .line 429
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 430
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@9
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    .line 432
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@12
    const/4 v1, 0x2

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 433
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    #@17
    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 435
    :cond_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@1d
    const/4 v1, 0x1

    #@1e
    if-ne v0, v1, :cond_2

    #@20
    .line 436
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    #@22
    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    #@25
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    :cond_2
    monitor-exit p0

    #@27
    .line 428
    return-void
.end method

.method private isEINPROGRESS(Ljava/io/IOException;)Z
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 246
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 247
    return v1

    #@8
    .line 249
    :cond_0
    instance-of v2, p1, Ljava/net/ConnectException;

    #@a
    if-eqz v2, :cond_2

    #@c
    .line 250
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    #@f
    move-result-object v0

    #@10
    .line 251
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Landroid/system/ErrnoException;

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 252
    check-cast v0, Landroid/system/ErrnoException;

    #@16
    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v2, v0, Landroid/system/ErrnoException;->errno:I

    #@18
    sget v3, Landroid/system/OsConstants;->EINPROGRESS:I

    #@1a
    if-ne v2, v3, :cond_1

    #@1c
    const/4 v1, 0x1

    #@1d
    :cond_1
    return v1

    #@1e
    .line 255
    :cond_2
    return v1
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
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 336
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@4
    monitor-enter v9

    #@5
    .line 339
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 340
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    #@e
    .line 342
    :cond_0
    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@10
    const/4 v0, 0x1

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x0

    #@13
    const/4 v5, 0x0

    #@14
    move-object v2, p1

    #@15
    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v6

    #@19
    .line 344
    .local v6, "readCount":I
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 345
    if-lez v6, :cond_2

    #@21
    move v0, v7

    #@22
    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/SocketChannelImpl;->end(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@25
    :cond_1
    monitor-exit v9

    #@26
    .line 348
    return v6

    #@27
    :cond_2
    move v0, v8

    #@28
    .line 345
    goto :goto_0

    #@29
    .line 343
    .end local v6    # "readCount":I
    :catchall_0
    move-exception v0

    #@2a
    .line 344
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 345
    const/4 v1, 0x0

    #@31
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@34
    .line 343
    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 336
    :catchall_1
    move-exception v0

    #@36
    monitor-exit v9

    #@37
    throw v0
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "socketAddress"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    .line 445
    if-nez p0, :cond_0

    #@2
    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "socketAddress == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 448
    :cond_0
    instance-of v1, p0, Ljava/net/InetSocketAddress;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 449
    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    #@11
    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    #@14
    throw v1

    #@15
    :cond_1
    move-object v0, p0

    #@16
    .line 451
    check-cast v0, Ljava/net/InetSocketAddress;

    #@18
    .line 452
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 453
    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    #@20
    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    #@23
    throw v1

    #@24
    .line 455
    :cond_2
    return-object v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
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
    .line 394
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 395
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_0

    #@b
    monitor-exit v3

    #@c
    .line 396
    return v2

    #@d
    .line 400
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 401
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    #@16
    .line 403
    :cond_1
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@18
    const/4 v5, 0x0

    #@19
    const/4 v6, 0x0

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-static {v4, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v0

    #@1f
    .line 405
    .local v0, "writeCount":I
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 406
    if-ltz v0, :cond_3

    #@27
    :goto_0
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    :cond_2
    monitor-exit v3

    #@2b
    .line 409
    return v0

    #@2c
    :cond_3
    move v1, v2

    #@2d
    .line 406
    goto :goto_0

    #@2e
    .line 404
    .end local v0    # "writeCount":I
    :catchall_0
    move-exception v1

    #@2f
    .line 405
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_4

    #@35
    .line 406
    const/4 v2, 0x1

    #@36
    invoke-virtual {p0, v2}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@39
    .line 404
    :cond_4
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    .line 394
    :catchall_1
    move-exception v1

    #@3b
    monitor-exit v3

    #@3c
    throw v1
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .locals 10
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 177
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    #@4
    .line 180
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@7
    move-result-object v2

    #@8
    .line 181
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@b
    move-result-object v5

    #@c
    .line 182
    .local v5, "normalAddr":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@f
    move-result v6

    #@10
    .line 185
    .local v6, "port":I
    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_0

    #@16
    .line 186
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@19
    move-result-object v5

    #@1a
    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    #@1d
    move-result v3

    #@1e
    .line 190
    .local v3, "isBlocking":Z
    const/4 v1, 0x0

    #@1f
    .line 193
    .local v1, "finished":Z
    if-eqz v3, :cond_1

    #@21
    .line 194
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    #@24
    .line 199
    :cond_1
    iget-object v8, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@26
    invoke-static {v8, v5, v6}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 200
    if-eqz v3, :cond_4

    #@2b
    const/4 v4, 0x2

    #@2c
    .line 201
    .local v4, "newStatus":I
    :goto_0
    const/4 v1, 0x1

    #@2d
    .line 213
    if-eqz v3, :cond_2

    #@2f
    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@32
    .line 220
    :cond_2
    :goto_1
    iget-boolean v8, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    #@34
    if-nez v8, :cond_3

    #@36
    .line 221
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    #@39
    .line 225
    :cond_3
    invoke-virtual {p0, v2, v4, v7}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    #@3c
    .line 227
    iget v8, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@3e
    const/4 v9, 0x2

    #@3f
    if-ne v8, v9, :cond_8

    #@41
    :goto_2
    return v7

    #@42
    .line 200
    .end local v4    # "newStatus":I
    :cond_4
    const/4 v4, 0x1

    #@43
    .restart local v4    # "newStatus":I
    goto :goto_0

    #@44
    .line 202
    .end local v4    # "newStatus":I
    :catch_0
    move-exception v0

    #@45
    .line 203
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-direct {p0, v0}, Ljava/nio/SocketChannelImpl;->isEINPROGRESS(Ljava/io/IOException;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_5

    #@4b
    .line 204
    const/4 v4, 0x1

    #@4c
    .line 213
    .restart local v4    # "newStatus":I
    if-eqz v3, :cond_2

    #@4e
    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@51
    goto :goto_1

    #@52
    .line 206
    .end local v4    # "newStatus":I
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@55
    move-result v7

    #@56
    if-eqz v7, :cond_6

    #@58
    .line 207
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    #@5b
    .line 208
    const/4 v1, 0x1

    #@5c
    .line 210
    :cond_6
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@5e
    .line 213
    if-eqz v3, :cond_7

    #@60
    .line 214
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@63
    .line 212
    :cond_7
    throw v7

    #@64
    .line 227
    .restart local v4    # "newStatus":I
    :cond_8
    const/4 v7, 0x0

    #@65
    goto :goto_2
.end method

.method public finishConnect()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 260
    monitor-enter p0

    #@3
    .line 261
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 262
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 260
    :catchall_0
    move-exception v4

    #@10
    monitor-exit p0

    #@11
    throw v4

    #@12
    .line 264
    :cond_0
    :try_start_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-ne v5, v4, :cond_1

    #@16
    monitor-exit p0

    #@17
    .line 265
    return v6

    #@18
    .line 267
    :cond_1
    :try_start_2
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@1a
    if-eq v5, v6, :cond_2

    #@1c
    .line 268
    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    #@1e
    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    #@21
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    :cond_2
    monitor-exit p0

    #@23
    .line 272
    const/4 v1, 0x0

    #@24
    .line 274
    .local v1, "finished":Z
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    #@27
    .line 275
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@29
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2c
    move-result-object v2

    #@2d
    .line 276
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@2f
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@32
    move-result v3

    #@33
    .line 277
    .local v3, "port":I
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@35
    const/4 v6, 0x0

    #@36
    const/4 v7, 0x0

    #@37
    invoke-static {v5, v2, v3, v6, v7}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3a
    move-result v1

    #@3b
    .line 285
    .local v1, "finished":Z
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@3e
    .line 288
    monitor-enter p0

    #@3f
    .line 289
    if-eqz v1, :cond_5

    #@41
    :goto_0
    :try_start_4
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@43
    .line 290
    if-eqz v1, :cond_3

    #@45
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@47
    if-eqz v4, :cond_3

    #@49
    .line 291
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@4b
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@4d
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@50
    move-result-object v5

    #@51
    iget-object v6, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@53
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    #@56
    move-result v6

    #@57
    invoke-virtual {v4, v5, v6}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@5a
    :cond_3
    monitor-exit p0

    #@5b
    .line 294
    return v1

    #@5c
    .line 278
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "port":I
    .local v1, "finished":Z
    :catch_0
    move-exception v0

    #@5d
    .line 279
    .local v0, "e":Ljava/net/ConnectException;
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_4

    #@63
    .line 280
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    #@66
    .line 281
    const/4 v1, 0x1

    #@67
    .line 283
    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@68
    .line 284
    .end local v0    # "e":Ljava/net/ConnectException;
    :catchall_1
    move-exception v4

    #@69
    .line 285
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    #@6c
    .line 284
    throw v4

    #@6d
    .line 289
    .local v1, "finished":Z
    .restart local v2    # "inetAddress":Ljava/net/InetAddress;
    .restart local v3    # "port":I
    :cond_5
    :try_start_6
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@6f
    goto :goto_0

    #@70
    .line 288
    :catchall_2
    move-exception v4

    #@71
    monitor-exit p0

    #@72
    throw v4
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    monitor-enter p0

    #@2
    .line 463
    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 464
    const/4 v0, 0x3

    #@7
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@9
    .line 467
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@b
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@e
    .line 468
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@14
    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    :cond_0
    :goto_0
    monitor-exit p0

    #@1b
    .line 462
    return-void

    #@1c
    .line 469
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@1e
    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    goto :goto_0

    #@22
    :catchall_0
    move-exception v0

    #@23
    monitor-exit p0

    #@24
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
    .line 475
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    #@5
    .line 474
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 166
    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 171
    :try_start_0
    iget v1, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-ne v1, v0, :cond_0

    #@6
    :goto_0
    monitor-exit p0

    #@7
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public onAccept(Ljava/net/InetSocketAddress;Z)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "updateSocketState"    # Z

    #@0
    .prologue
    .line 487
    invoke-virtual {p0, p2}, Ljava/nio/SocketChannelImpl;->onBind(Z)V

    #@3
    .line 488
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, p1, v0, p2}, Ljava/nio/SocketChannelImpl;->onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V

    #@7
    .line 486
    return-void
.end method

.method onBind(Z)V
    .locals 6
    .param p1, "updateSocketState"    # Z

    #@0
    .prologue
    .line 151
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v2

    #@8
    .line 155
    .local v2, "sa":Ljava/net/SocketAddress;
    const/4 v3, 0x1

    #@9
    iput-boolean v3, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    #@b
    move-object v1, v2

    #@c
    .line 156
    check-cast v1, Ljava/net/InetSocketAddress;

    #@e
    .line 157
    .local v1, "localSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@11
    move-result-object v3

    #@12
    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@14
    .line 158
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@17
    move-result v3

    #@18
    iput v3, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    #@1a
    .line 159
    if-eqz p1, :cond_0

    #@1c
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 160
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@22
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    #@24
    iget v5, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    #@26
    invoke-virtual {v3, v4, v5}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onBind(Ljava/net/InetAddress;I)V

    #@29
    .line 148
    :cond_0
    return-void

    #@2a
    .line 152
    .end local v1    # "localSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "sa":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    #@2b
    .line 153
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    #@2d
    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@30
    throw v3
.end method

.method onConnectStatusChanged(Ljava/net/InetSocketAddress;IZ)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "status"    # I
    .param p3, "updateSocketState"    # Z

    #@0
    .prologue
    .line 238
    iput p2, p0, Ljava/nio/SocketChannelImpl;->status:I

    #@2
    .line 239
    iput-object p1, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@4
    .line 240
    const/4 v0, 0x2

    #@5
    if-ne p2, v0, :cond_0

    #@7
    if-eqz p3, :cond_0

    #@9
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 241
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@f
    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@11
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@17
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0, v1, v2}, Ljava/nio/SocketChannelImpl$SocketAdapter;->onConnect(Ljava/net/InetAddress;I)V

    #@1e
    .line 237
    :cond_0
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    #@3
    .line 300
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    #@6
    .line 301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 302
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 304
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    #@11
    move-result v0

    #@12
    return v0
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
    .line 309
    array-length v7, p1

    #@1
    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 310
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    #@7
    .line 311
    const/4 v7, 0x1

    #@8
    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    #@b
    move-result v6

    #@c
    .line 312
    .local v6, "totalCount":I
    if-nez v6, :cond_0

    #@e
    .line 313
    const-wide/16 v8, 0x0

    #@10
    return-wide v8

    #@11
    .line 315
    :cond_0
    new-array v3, v6, [B

    #@13
    .line 316
    .local v3, "readArray":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v4

    #@17
    .line 319
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    #@1a
    move-result v5

    #@1b
    .line 320
    .local v5, "readCount":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@1e
    .line 321
    if-lez v5, :cond_1

    #@20
    .line 322
    move v1, v5

    #@21
    .line 323
    .local v1, "left":I
    move v0, p2

    #@22
    .line 325
    .local v0, "index":I
    :goto_0
    if-lez v1, :cond_1

    #@24
    .line 326
    aget-object v7, p1, v0

    #@26
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    #@29
    move-result v7

    #@2a
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v2

    #@2e
    .line 327
    .local v2, "putLength":I
    aget-object v7, p1, v0

    #@30
    sub-int v8, v5, v1

    #@32
    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@35
    .line 328
    add-int/lit8 v0, v0, 0x1

    #@37
    .line 329
    sub-int/2addr v1, v2

    #@38
    goto :goto_0

    #@39
    .line 332
    .end local v0    # "index":I
    .end local v1    # "left":I
    .end local v2    # "putLength":I
    :cond_1
    int-to-long v8, v5

    #@3a
    return-wide v8
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 123
    :try_start_0
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-nez v3, :cond_1

    #@6
    .line 125
    const/4 v0, 0x0

    #@7
    .line 126
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    #@8
    .line 127
    .local v2, "port":I
    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 128
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@e
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@11
    move-result-object v0

    #@12
    .line 129
    .local v0, "addr":Ljava/net/InetAddress;
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    #@14
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    #@17
    move-result v2

    #@18
    .line 131
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    #@1a
    new-instance v4, Ljava/net/PlainSocketImpl;

    #@1c
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1e
    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    #@20
    invoke-direct {v4, v5, v6, v0, v2}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    #@23
    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    #@26
    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 136
    .end local v2    # "port":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    return-object v3

    #@2c
    .line 132
    .restart local v2    # "port":I
    :catch_0
    move-exception v1

    #@2d
    .local v1, "e":Ljava/net/SocketException;
    monitor-exit p0

    #@2e
    .line 133
    return-object v7

    #@2f
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v2    # "port":I
    :catchall_0
    move-exception v3

    #@30
    monitor-exit p0

    #@31
    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 354
    if-nez p1, :cond_0

    #@2
    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "src == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 357
    :cond_0
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    #@e
    .line 358
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 359
    const/4 v0, 0x0

    #@15
    return v0

    #@16
    .line 361
    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    #@19
    move-result v0

    #@1a
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
    .line 366
    array-length v8, p1

    #@2
    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 367
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    #@8
    .line 368
    invoke-static {p1, p2, p3, v9}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    #@b
    move-result v0

    #@c
    .line 369
    .local v0, "count":I
    if-nez v0, :cond_0

    #@e
    .line 370
    const-wide/16 v8, 0x0

    #@10
    return-wide v8

    #@11
    .line 372
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@14
    move-result-object v6

    #@15
    .line 373
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    #@16
    .local v5, "val":I
    :goto_0
    add-int v8, p3, p2

    #@18
    if-ge v5, v8, :cond_1

    #@1a
    .line 374
    aget-object v4, p1, v5

    #@1c
    .line 375
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@1f
    move-result v2

    #@20
    .line 376
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@23
    .line 377
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@26
    .line 373
    add-int/lit8 v5, v5, 0x1

    #@28
    goto :goto_0

    #@29
    .line 379
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@2c
    .line 380
    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    #@2f
    move-result v3

    #@30
    .line 381
    .local v3, "result":I
    move v5, p2

    #@31
    .line 382
    move v7, v3

    #@32
    .line 383
    .local v7, "written":I
    :goto_1
    if-lez v3, :cond_2

    #@34
    .line 384
    aget-object v4, p1, v5

    #@36
    .line 385
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    #@39
    move-result v8

    #@3a
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    #@3d
    move-result v1

    #@3e
    .line 386
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    #@41
    move-result v8

    #@42
    add-int/2addr v8, v1

    #@43
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@46
    .line 387
    add-int/lit8 v5, v5, 0x1

    #@48
    .line 388
    sub-int/2addr v3, v1

    #@49
    goto :goto_1

    #@4a
    .line 390
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_2
    int-to-long v8, v7

    #@4b
    return-wide v8
.end method
