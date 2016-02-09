.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static factory:Ljava/net/DatagramSocketImplFactory;


# instance fields
.field address:Ljava/net/InetAddress;

.field impl:Ljava/net/DatagramSocketImpl;

.field isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field private lock:Ljava/lang/Object;

.field private pendingConnectException:Ljava/net/SocketException;

.field port:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    #@4
    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "aPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    #@7
    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@9
    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@b
    .line 53
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@d
    .line 55
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    #@14
    .line 79
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkPort(I)V

    #@17
    .line 80
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@19
    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    #@1c
    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 2
    .param p1, "aPort"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    #@7
    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@9
    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@b
    .line 53
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@d
    .line 55
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    #@14
    .line 96
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkPort(I)V

    #@17
    .line 97
    if-nez p2, :cond_0

    #@19
    sget-object p2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@1b
    .end local p2    # "addr":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    #@1e
    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .locals 2
    .param p1, "socketImpl"    # Ljava/net/DatagramSocketImpl;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    #@7
    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@9
    .line 49
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@b
    .line 53
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@d
    .line 55
    new-instance v0, Ljava/lang/Object;

    #@f
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    #@14
    .line 397
    if-nez p1, :cond_0

    #@16
    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    #@18
    const-string/jumbo v1, "socketImpl == null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 400
    :cond_0
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@21
    .line 396
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const/4 v1, -0x1

    #@5
    iput v1, p0, Ljava/net/DatagramSocket;->port:I

    #@7
    .line 47
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@9
    .line 49
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@b
    .line 53
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@d
    .line 55
    new-instance v1, Ljava/lang/Object;

    #@f
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v1, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    #@14
    .line 416
    if-eqz p1, :cond_1

    #@16
    .line 417
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Local address not an InetSocketAddress: "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 419
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@2b
    move-result-object v3

    #@2c
    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    :cond_0
    move-object v1, p1

    #@39
    .line 421
    check-cast v1, Ljava/net/InetSocketAddress;

    #@3b
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@3e
    move-result v1

    #@3f
    invoke-direct {p0, v1}, Ljava/net/DatagramSocket;->checkPort(I)V

    #@42
    .line 423
    :cond_1
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@44
    if-eqz v1, :cond_3

    #@46
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@48
    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    #@4b
    move-result-object v1

    #@4c
    :goto_0
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@4e
    .line 425
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@50
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V

    #@53
    .line 426
    if-eqz p1, :cond_2

    #@55
    .line 428
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 435
    :cond_2
    const/4 v1, 0x1

    #@59
    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    #@5c
    .line 415
    return-void

    #@5d
    .line 424
    :cond_3
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    #@5f
    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    #@62
    goto :goto_0

    #@63
    .line 429
    :catch_0
    move-exception v0

    #@64
    .line 430
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    #@67
    .line 431
    throw v0
.end method

.method private checkPort(I)V
    .locals 3
    .param p1, "aPort"    # I

    #@0
    .prologue
    .line 101
    if-ltz p1, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Port out of range: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 100
    :cond_1
    return-void
.end method

.method private ensureBound()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 445
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 446
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@8
    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    #@e
    .line 447
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@11
    .line 444
    :cond_0
    return-void
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .locals 3
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Ljava/net/DatagramSocket;

    #@2
    monitor-enter v1

    #@3
    .line 382
    :try_start_0
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 383
    new-instance v0, Ljava/net/SocketException;

    #@9
    const-string/jumbo v2, "Factory already set"

    #@c
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 385
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 381
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 6
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 468
    if-nez p1, :cond_0

    #@5
    .line 469
    const/4 v2, 0x0

    #@6
    .line 470
    .local v2, "localPort":I
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@8
    .line 484
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@a
    invoke-virtual {v3, v2, v0}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    #@d
    .line 485
    const/4 v3, 0x1

    #@e
    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@10
    .line 464
    return-void

    #@11
    .line 472
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "localPort":I
    :cond_0
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    #@13
    if-nez v3, :cond_1

    #@15
    .line 473
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Local address not an InetSocketAddress: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 474
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@26
    move-result-object v5

    #@27
    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    :cond_1
    move-object v1, p1

    #@34
    .line 476
    check-cast v1, Ljava/net/InetSocketAddress;

    #@36
    .line 477
    .local v1, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@39
    move-result-object v0

    #@3a
    .line 478
    .restart local v0    # "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_2

    #@3c
    .line 479
    new-instance v3, Ljava/net/SocketException;

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "Host is unresolved: "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@59
    throw v3

    #@5a
    .line 481
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@5d
    move-result v2

    #@5e
    .line 482
    .restart local v2    # "localPort":I
    invoke-direct {p0, v2}, Ljava/net/DatagramSocket;->checkPort(I)V

    #@61
    goto :goto_0
.end method

.method checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 440
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 438
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@3
    .line 113
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    #@8
    .line 111
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 554
    if-nez p1, :cond_0

    #@2
    .line 555
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "address == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 558
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    #@d
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@10
    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 553
    :goto_0
    return-void

    #@14
    .line 559
    :catch_0
    move-exception v0

    #@15
    .line 561
    .local v0, "connectException":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    #@17
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
    .line 507
    if-nez p1, :cond_0

    #@2
    .line 508
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "peer == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 511
    :cond_0
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "peer not an InetSocketAddress: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    :cond_1
    move-object v0, p1

    #@2e
    .line 515
    check-cast v0, Ljava/net/InetSocketAddress;

    #@30
    .line 516
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@33
    move-result-object v1

    #@34
    if-nez v1, :cond_2

    #@36
    .line 517
    new-instance v1, Ljava/net/SocketException;

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Host is unresolved: "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1

    #@54
    .line 520
    :cond_2
    iget-object v2, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    #@56
    monitor-enter v2

    #@57
    .line 521
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@5a
    .line 522
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    #@5d
    .line 524
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@60
    move-result-object v1

    #@61
    iput-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@63
    .line 525
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@66
    move-result v1

    #@67
    iput v1, p0, Ljava/net/DatagramSocket;->port:I

    #@69
    .line 526
    const/4 v1, 0x1

    #@6a
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@6c
    .line 528
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@6e
    iget-object v3, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@70
    iget v4, p0, Ljava/net/DatagramSocket;->port:I

    #@72
    invoke-virtual {v1, v3, v4}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@75
    monitor-exit v2

    #@76
    .line 506
    return-void

    #@77
    .line 520
    :catchall_0
    move-exception v1

    #@78
    monitor-exit v2

    #@79
    throw v1
.end method

.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .locals 2
    .param p1, "aPort"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    :try_start_0
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@3
    if-eqz v1, :cond_0

    #@5
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@7
    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    #@a
    move-result-object v1

    #@b
    :goto_0
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@d
    .line 157
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@f
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 159
    :try_start_1
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    #@17
    .line 160
    const/4 v1, 0x1

    #@18
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 154
    return-void

    #@1c
    .line 156
    :cond_0
    :try_start_2
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    #@1e
    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1

    #@25
    .line 161
    :catch_0
    move-exception v0

    #@26
    .line 162
    .local v0, "e":Ljava/net/SocketException;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    #@29
    .line 163
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 135
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@e
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    #@11
    .line 136
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@14
    .line 137
    const/4 v0, -0x1

    #@15
    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    #@17
    .line 138
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@1a
    .line 131
    return-void

    #@1b
    .line 133
    :cond_0
    return-void
.end method

.method public getBroadcast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 653
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 654
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    const/16 v1, 0x20

    #@7
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Boolean;

    #@d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    #@0
    .prologue
    .line 699
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@2
    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    #@0
    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@2
    iget-object v1, v1, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    invoke-static {v1}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 185
    :catch_0
    move-exception v0

    #@a
    .line 186
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v1, 0x0

    #@b
    return-object v1
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 198
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 201
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 203
    :cond_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@12
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 595
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 598
    new-instance v0, Ljava/net/InetSocketAddress;

    #@e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    #@15
    move-result v2

    #@16
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@19
    return-object v0

    #@1a
    .line 596
    :cond_0
    const/4 v0, 0x0

    #@1b
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Ljava/net/DatagramSocket;->port:I

    #@2
    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 229
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@4
    .line 230
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@6
    const/16 v1, 0x1002

    #@8
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 585
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 587
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@15
    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 628
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    const/4 v1, 0x4

    #@6
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Boolean;

    #@c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 237
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@4
    .line 238
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@6
    const/16 v1, 0x1001

    #@8
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@4
    .line 249
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@6
    const/16 v1, 0x1006

    #@8
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 679
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    const/4 v1, 0x3

    #@6
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 569
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@2
    return v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 688
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@2
    return v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 576
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@2
    return v0
.end method

.method isMulticastSocket()Z
    .locals 1

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    #@0
    .prologue
    .line 495
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    #@3
    .line 496
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->onBind(Ljava/net/InetAddress;I)V

    #@8
    .line 494
    return-void
.end method

.method public onClose()V
    .locals 1

    #@0
    .prologue
    .line 123
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    #@3
    .line 124
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->onClose()V

    #@8
    .line 122
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    #@0
    .prologue
    .line 539
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@3
    .line 540
    iput-object p1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@5
    .line 541
    iput p2, p0, Ljava/net/DatagramSocket;->port:I

    #@7
    .line 542
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@9
    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->onConnect(Ljava/net/InetAddress;I)V

    #@c
    .line 538
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@3
    .line 149
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    #@6
    .line 150
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    #@9
    .line 151
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@b
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->onDisconnect()V

    #@e
    .line 147
    return-void
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .locals 3
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 265
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@4
    .line 266
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    #@7
    .line 267
    if-nez p1, :cond_0

    #@9
    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "pack == null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0

    #@15
    .line 270
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 271
    new-instance v0, Ljava/net/SocketException;

    #@1b
    const-string/jumbo v1, "Pending connect failure"

    #@1e
    iget-object v2, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    #@20
    invoke-direct {v0, v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v0

    #@24
    .line 273
    :cond_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->resetLengthForReceive()V

    #@27
    .line 274
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@29
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 264
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 3
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 287
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    #@6
    .line 289
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    .line 290
    .local v0, "packAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@c
    if-eqz v1, :cond_3

    #@e
    .line 291
    if-eqz v0, :cond_1

    #@10
    .line 292
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@12
    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    iget v1, p0, Ljava/net/DatagramSocket;->port:I

    #@1a
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@1d
    move-result v2

    #@1e
    if-eq v1, v2, :cond_2

    #@20
    .line 293
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v2, "Packet address mismatch with connected address"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 296
    :cond_1
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    #@2b
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@2e
    .line 297
    iget v1, p0, Ljava/net/DatagramSocket;->port:I

    #@30
    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    #@33
    .line 305
    :cond_2
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@35
    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    #@38
    .line 285
    return-void

    #@39
    .line 301
    :cond_3
    if-nez v0, :cond_2

    #@3b
    .line 302
    new-instance v1, Ljava/lang/NullPointerException;

    #@3d
    const-string/jumbo v2, "Destination address is null"

    #@40
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1
.end method

.method public setBroadcast(Z)V
    .locals 3
    .param p1, "broadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 641
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 642
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    const/16 v2, 0x20

    #@b
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@e
    .line 640
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 6
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    if-nez p1, :cond_0

    #@2
    .line 319
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "netInterface == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 322
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@f
    iget-object v2, v2, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@11
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@13
    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    #@15
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 317
    return-void

    #@1d
    .line 323
    :catch_0
    move-exception v0

    #@1e
    .line 324
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@21
    move-result-object v1

    #@22
    throw v1
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 343
    const/4 v0, 0x1

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 344
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "size < 1"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    .line 346
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@13
    .line 347
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/16 v2, 0x1002

    #@1b
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 342
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "reuse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 616
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x4

    #@a
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@d
    .line 614
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 332
    const/4 v0, 0x1

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 333
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "size < 1"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    .line 335
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@13
    .line 336
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/16 v2, 0x1001

    #@1b
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 331
    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 362
    if-gez p1, :cond_0

    #@3
    .line 363
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "timeout < 0"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 365
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@12
    .line 366
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/16 v2, 0x1006

    #@1a
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    .line 361
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    #@3
    .line 665
    if-ltz p1, :cond_0

    #@5
    const/16 v0, 0xff

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 666
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Value doesn\'t fit in an unsigned byte: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 668
    :cond_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    const/4 v2, 0x3

    #@2a
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@2d
    .line 663
    return-void
.end method
