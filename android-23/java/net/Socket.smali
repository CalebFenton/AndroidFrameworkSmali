.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final connectLock:Ljava/lang/Object;

.field final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private localAddress:Ljava/net/InetAddress;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    #@7
    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    #@9
    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@b
    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    #@d
    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    #@f
    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    #@11
    .line 44
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@13
    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@15
    .line 46
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    #@1c
    .line 57
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@1e
    if-eqz v0, :cond_0

    #@20
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@22
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    #@25
    move-result-object v0

    #@26
    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@28
    .line 58
    iput-object v1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    #@2a
    .line 56
    return-void

    #@2b
    .line 57
    :cond_0
    new-instance v0, Ljava/net/PlainSocketImpl;

    #@2d
    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    #@30
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    #@5
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    #@3
    .line 178
    const/4 v5, 0x1

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move v2, p2

    #@7
    move-object v3, p3

    #@8
    move v4, p4

    #@9
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    #@c
    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    #@3
    .line 208
    const/4 v3, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v2, p2

    #@8
    move v5, p3

    #@9
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    #@c
    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    #@3
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    #@6
    .line 226
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    const/4 v5, 0x1

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move v2, p2

    #@c
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    #@f
    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    #@3
    .line 251
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    #@6
    .line 252
    const/4 v5, 0x1

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move v4, p4

    #@c
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    #@f
    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 275
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    #@3
    .line 276
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    #@6
    .line 277
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move v2, p2

    #@b
    move v5, p3

    #@c
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    #@f
    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    #@6
    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    #@8
    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@a
    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    #@c
    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    #@e
    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    #@10
    .line 44
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@12
    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@14
    .line 46
    new-instance v0, Ljava/lang/Object;

    #@16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@19
    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    #@1b
    .line 81
    if-eqz p1, :cond_0

    #@1d
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@20
    move-result-object v0

    #@21
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    #@23
    if-ne v0, v1, :cond_1

    #@25
    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Invalid proxy: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 84
    :cond_1
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    #@41
    .line 85
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@43
    if-eqz v0, :cond_2

    #@45
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@47
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    #@4a
    move-result-object v0

    #@4b
    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@4d
    .line 80
    return-void

    #@4e
    .line 85
    :cond_2
    new-instance v0, Ljava/net/PlainSocketImpl;

    #@50
    invoke-direct {v0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/net/Proxy;)V

    #@53
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    #@6
    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    #@8
    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@a
    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    #@c
    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    #@e
    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    #@10
    .line 44
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@12
    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@14
    .line 46
    new-instance v0, Ljava/lang/Object;

    #@16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@19
    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    #@1b
    .line 289
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@1d
    .line 290
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    #@20
    .line 288
    return-void
.end method

.method private cacheLocalAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1003
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@a
    .line 1002
    return-void
.end method

.method private checkDestination(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "destAddr"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I

    #@0
    .prologue
    .line 303
    if-ltz p2, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p2, v0, :cond_1

    #@7
    .line 304
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
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 302
    :cond_1
    return-void
.end method

.method private checkOpenAndCreate(Z)V
    .locals 4
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 666
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 667
    new-instance v2, Ljava/net/SocketException;

    #@8
    const-string/jumbo v3, "Socket is closed"

    #@b
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 669
    :cond_0
    if-nez p1, :cond_2

    #@11
    .line 670
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 671
    new-instance v2, Ljava/net/SocketException;

    #@19
    const-string/jumbo v3, "Socket is not connected"

    #@1c
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 679
    :cond_1
    return-void

    #@21
    .line 681
    :cond_2
    iget-boolean v2, p0, Ljava/net/Socket;->isCreated:Z

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 682
    return-void

    #@26
    .line 684
    :cond_3
    monitor-enter p0

    #@27
    .line 685
    :try_start_0
    iget-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    if-eqz v2, :cond_4

    #@2b
    monitor-exit p0

    #@2c
    .line 686
    return-void

    #@2d
    .line 689
    :cond_4
    :try_start_1
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2f
    const/4 v3, 0x1

    #@30
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 695
    const/4 v2, 0x1

    #@34
    :try_start_2
    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 665
    return-void

    #@38
    .line 692
    :catch_0
    move-exception v0

    #@39
    .line 693
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljava/net/SocketException;

    #@3b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@43
    .line 684
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit p0

    #@45
    throw v2

    #@46
    .line 690
    :catch_1
    move-exception v1

    #@47
    .line 691
    .local v1, "e":Ljava/net/SocketException;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Ljava/net/Socket;

    #@2
    monitor-enter v1

    #@3
    .line 492
    :try_start_0
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 493
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
    .line 495
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 491
    return-void
.end method

.method private startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .locals 5
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    if-ltz p4, :cond_0

    #@2
    const v2, 0xffff

    #@5
    if-le p4, v2, :cond_1

    #@7
    .line 579
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Local port out of range: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 582
    :cond_1
    if-nez p3, :cond_2

    #@23
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@25
    .line 583
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    monitor-enter p0

    #@26
    .line 584
    :try_start_0
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@28
    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    #@2b
    .line 585
    const/4 v2, 0x1

    #@2c
    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 587
    if-eqz p5, :cond_3

    #@30
    :try_start_1
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 590
    :goto_1
    const/4 v2, 0x1

    #@37
    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    #@39
    .line 591
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    #@3c
    .line 592
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@3e
    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    #@41
    .line 593
    const/4 v2, 0x1

    #@42
    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z

    #@44
    .line 594
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    monitor-exit p0

    #@48
    .line 576
    return-void

    #@49
    .line 582
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_2
    move-object v0, p3

    #@4a
    .restart local v0    # "addr":Ljava/net/InetAddress;
    goto :goto_0

    #@4b
    .line 588
    :cond_3
    :try_start_2
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@4d
    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    goto :goto_1

    #@51
    .line 595
    :catch_0
    move-exception v1

    #@52
    .line 596
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@54
    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    #@57
    .line 597
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    .line 583
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@59
    monitor-exit p0

    #@5a
    throw v2
.end method

.method private tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V
    .locals 9
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@3
    move-result-object v6

    #@4
    .line 114
    .local v6, "dstAddresses":[Ljava/net/InetAddress;
    const/4 v8, 0x0

    #@5
    .local v8, "i":I
    :goto_0
    array-length v0, v6

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    if-ge v8, v0, :cond_0

    #@a
    .line 115
    aget-object v1, v6, v8

    #@c
    .line 117
    .local v1, "dstAddress":Ljava/net/InetAddress;
    :try_start_0
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    #@f
    move-object v0, p0

    #@10
    move v2, p2

    #@11
    move-object v3, p3

    #@12
    move v4, p4

    #@13
    move v5, p5

    #@14
    .line 118
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 119
    return-void

    #@18
    .line 120
    :catch_0
    move-exception v7

    #@19
    .line 114
    .local v7, "ex":Ljava/io/IOException;
    add-int/lit8 v8, v8, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 126
    .end local v1    # "dstAddress":Ljava/net/InetAddress;
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_0
    array-length v0, v6

    #@1d
    add-int/lit8 v0, v0, -0x1

    #@1f
    aget-object v1, v6, v0

    #@21
    .line 127
    .restart local v1    # "dstAddress":Ljava/net/InetAddress;
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    #@24
    move-object v0, p0

    #@25
    move v2, p2

    #@26
    move-object v3, p3

    #@27
    move v4, p4

    #@28
    move v5, p5

    #@29
    .line 128
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    #@2c
    .line 108
    return-void
.end method

.method private usingSocks()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 603
    iget-object v1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    #@7
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@a
    move-result-object v1

    #@b
    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method


# virtual methods
.method accepted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 998
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@3
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    #@5
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    #@7
    .line 999
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    #@a
    .line 997
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 7
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 768
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 769
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 770
    new-instance v4, Ljava/net/BindException;

    #@c
    const-string/jumbo v5, "Socket is already bound"

    #@f
    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 775
    :cond_0
    if-nez p1, :cond_1

    #@15
    .line 776
    const/4 v3, 0x0

    #@16
    .line 777
    .local v3, "port":I
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@18
    .line 790
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    monitor-enter p0

    #@19
    .line 792
    :try_start_0
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@1b
    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@1e
    .line 793
    const/4 v4, 0x1

    #@1f
    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    #@21
    .line 794
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 767
    return-void

    #@26
    .line 779
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "port":I
    :cond_1
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    #@28
    if-nez v4, :cond_2

    #@2a
    .line 780
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v6, "Local address not an InetSocketAddress: "

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 781
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@3b
    move-result-object v6

    #@3c
    .line 780
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v4

    #@48
    :cond_2
    move-object v2, p1

    #@49
    .line 783
    check-cast v2, Ljava/net/InetSocketAddress;

    #@4b
    .line 784
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@4e
    move-result-object v0

    #@4f
    .restart local v0    # "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_3

    #@51
    .line 785
    new-instance v4, Ljava/net/UnknownHostException;

    #@53
    new-instance v5, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v6, "Host is unresolved: "

    #@5b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v4

    #@6f
    .line 787
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@72
    move-result v3

    #@73
    .restart local v3    # "port":I
    goto :goto_0

    #@74
    .line 795
    .end local v2    # "inetAddr":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    #@75
    .line 796
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@77
    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    #@7a
    .line 797
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 790
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@7c
    monitor-exit p0

    #@7d
    throw v4
.end method

.method public declared-synchronized close()V
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
    .line 316
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    #@4
    .line 317
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@7
    .line 320
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@9
    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@b
    .line 321
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@d
    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 315
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 827
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@4
    .line 826
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 8
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 849
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 850
    if-gez p2, :cond_0

    #@6
    .line 851
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v5, "timeout < 0"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 853
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 854
    new-instance v4, Ljava/net/SocketException;

    #@17
    const-string/jumbo v5, "Already connected"

    #@1a
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v4

    #@1e
    .line 856
    :cond_1
    if-nez p1, :cond_2

    #@20
    .line 857
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v5, "remoteAddr == null"

    #@25
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 860
    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    #@2b
    if-nez v4, :cond_3

    #@2d
    .line 861
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v6, "Remote address not an InetSocketAddress: "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    .line 862
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v6

    #@3f
    .line 861
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v4

    #@4b
    :cond_3
    move-object v2, p1

    #@4c
    .line 864
    check-cast v2, Ljava/net/InetSocketAddress;

    #@4e
    .line 866
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@51
    move-result-object v0

    #@52
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_4

    #@54
    .line 867
    new-instance v4, Ljava/net/UnknownHostException;

    #@56
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v6, "Host is unresolved: "

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@71
    throw v4

    #@72
    .line 869
    :cond_4
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@75
    move-result v3

    #@76
    .line 871
    .local v3, "port":I
    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    #@79
    .line 872
    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    #@7b
    monitor-enter v5

    #@7c
    .line 874
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@7f
    move-result v4

    #@80
    if-nez v4, :cond_6

    #@82
    .line 879
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    #@85
    move-result v4

    #@86
    if-nez v4, :cond_5

    #@88
    .line 880
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@8a
    sget-object v6, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@8c
    const/4 v7, 0x0

    #@8d
    invoke-virtual {v4, v6, v7}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@90
    .line 882
    :cond_5
    const/4 v4, 0x1

    #@91
    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    #@93
    .line 884
    :cond_6
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@95
    invoke-virtual {v4, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@98
    .line 885
    const/4 v4, 0x1

    #@99
    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    #@9b
    .line 886
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9e
    monitor-exit v5

    #@9f
    .line 848
    return-void

    #@a0
    .line 887
    :catch_0
    move-exception v1

    #@a1
    .line 888
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a3
    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    #@a6
    .line 889
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    .line 872
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@a8
    monitor-exit v5

    #@a9
    throw v4
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    .line 1015
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 1022
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 345
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 347
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 362
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 363
    new-instance v0, Ljava/net/SocketException;

    #@c
    const-string/jumbo v1, "Socket input is shutdown"

    #@f
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 365
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 373
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Boolean;

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 390
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 392
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 706
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 707
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 709
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@15
    return-object v0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 955
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 956
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    const/16 v1, 0x1003

    #@8
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Boolean;

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 407
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 408
    new-instance v0, Ljava/net/SocketException;

    #@c
    const-string/jumbo v1, "Socket output is shutdown"

    #@f
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 410
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 418
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 419
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 421
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    #@d
    move-result v0

    #@e
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
    .line 443
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@5
    .line 444
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@7
    const/16 v1, 0x1002

    #@9
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    monitor-exit p0

    #@14
    return v0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 719
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 720
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 722
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

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
    .line 939
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 940
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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
    .line 451
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@5
    .line 452
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@7
    const/16 v1, 0x1001

    #@9
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    monitor-exit p0

    #@14
    return v0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 431
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    const/16 v2, 0x80

    #@8
    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 432
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 433
    check-cast v0, Ljava/lang/Integer;

    #@12
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 435
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    #@18
    return v1
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
    .line 459
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@5
    .line 460
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@7
    const/16 v1, 0x1006

    #@9
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    monitor-exit p0

    #@14
    return v0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 467
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 468
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 974
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 975
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Integer;

    #@d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 732
    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    #@2
    return v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 750
    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    #@2
    return v0
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 741
    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@2
    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 913
    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    #@2
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 924
    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    #@2
    return v0
.end method

.method public onBind(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    #@0
    .prologue
    .line 809
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    #@3
    .line 810
    iput-object p1, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@5
    .line 811
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@7
    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->onBind(Ljava/net/InetAddress;I)V

    #@a
    .line 808
    return-void
.end method

.method public onClose()V
    .locals 1

    #@0
    .prologue
    .line 331
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    #@3
    .line 332
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@6
    .line 335
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@8
    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    #@a
    .line 336
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@c
    invoke-virtual {v0}, Ljava/net/SocketImpl;->onClose()V

    #@f
    .line 330
    return-void
.end method

.method public onConnect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    #@0
    .prologue
    .line 901
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    #@3
    .line 902
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->onConnect(Ljava/net/InetAddress;I)V

    #@8
    .line 900
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 988
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    #@5
    .line 987
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 476
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@8
    .line 477
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x8

    #@10
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@13
    .line 474
    :cond_0
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "oobinline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 947
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 948
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x1003

    #@c
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@f
    .line 946
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    #@0
    .prologue
    .line 1038
    return-void
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
    const/4 v1, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 513
    const/4 v0, 0x1

    #@3
    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@6
    .line 514
    if-ge p1, v1, :cond_0

    #@8
    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "size < 1"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0

    #@14
    .line 517
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    const/16 v2, 0x1002

    #@1c
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 512
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
    .line 931
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 932
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x4

    #@b
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@e
    .line 930
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
    const/4 v1, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 502
    const/4 v0, 0x1

    #@3
    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@6
    .line 503
    if-ge p1, v1, :cond_0

    #@8
    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "size < 1"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0

    #@14
    .line 506
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    const/16 v2, 0x1001

    #@1c
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 501
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x80

    #@2
    .line 525
    const/4 v0, 0x1

    #@3
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@6
    .line 527
    if-eqz p1, :cond_0

    #@8
    if-gez p2, :cond_0

    #@a
    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "timeout < 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 530
    :cond_0
    if-eqz p1, :cond_1

    #@15
    .line 531
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1e
    .line 524
    :goto_0
    return-void

    #@1f
    .line 533
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@21
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@23
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@26
    goto :goto_0
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
    .line 543
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@5
    .line 544
    if-gez p1, :cond_0

    #@7
    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "timeout < 0"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 547
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/16 v2, 0x1006

    #@1b
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 542
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 554
    invoke-direct {p0, v2}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 555
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@d
    .line 553
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
    .line 963
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@4
    .line 964
    if-ltz p1, :cond_0

    #@6
    const/16 v0, 0xff

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 965
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Value doesn\'t fit in an unsigned byte: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 967
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x3

    #@2b
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@2e
    .line 962
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 632
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket input is shutdown"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 634
    :cond_0
    const/4 v0, 0x0

    #@10
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@13
    .line 635
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    #@18
    .line 636
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    #@1b
    .line 630
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 650
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 651
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket output is shutdown"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 653
    :cond_0
    const/4 v0, 0x0

    #@10
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    #@13
    .line 654
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    #@18
    .line 655
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    #@1b
    .line 649
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 614
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 615
    const-string/jumbo v0, "Socket[unconnected]"

    #@9
    return-object v0

    #@a
    .line 617
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@c
    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
