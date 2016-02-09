.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x32

.field static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private localAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@5
    if-eqz v0, :cond_0

    #@7
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@9
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    #@c
    move-result-object v0

    #@d
    :goto_0
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@f
    .line 64
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->create(Z)V

    #@15
    .line 61
    return-void

    #@16
    .line 63
    :cond_0
    new-instance v0, Ljava/net/PlainServerSocketImpl;

    #@18
    invoke-direct {v0}, Ljava/net/PlainServerSocketImpl;-><init>()V

    #@1b
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@2
    const/16 v1, 0x32

    #@4
    invoke-direct {p0, p1, v1, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@7
    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@5
    .line 85
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    invoke-direct {p0, p1}, Ljava/net/ServerSocket;->checkListen(I)V

    #@6
    .line 99
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@8
    if-eqz v2, :cond_0

    #@a
    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@c
    invoke-interface {v2}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    #@f
    move-result-object v2

    #@10
    :goto_0
    iput-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@12
    .line 101
    if-nez p3, :cond_1

    #@14
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@16
    .line 103
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_1
    monitor-enter p0

    #@17
    .line 104
    :try_start_0
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@19
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 106
    :try_start_1
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@1f
    invoke-virtual {v2, v0, p1}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@22
    .line 107
    invoke-direct {p0}, Ljava/net/ServerSocket;->readBackBindState()V

    #@25
    .line 108
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@27
    if-lez p2, :cond_2

    #@29
    .end local p2    # "backlog":I
    :goto_2
    invoke-virtual {v2, p2}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 97
    return-void

    #@2e
    .line 100
    .end local v0    # "addr":Ljava/net/InetAddress;
    .restart local p2    # "backlog":I
    :cond_0
    new-instance v2, Ljava/net/PlainServerSocketImpl;

    #@30
    invoke-direct {v2}, Ljava/net/PlainServerSocketImpl;-><init>()V

    #@33
    goto :goto_0

    #@34
    .line 101
    :cond_1
    move-object v0, p3

    #@35
    .restart local v0    # "addr":Ljava/net/InetAddress;
    goto :goto_1

    #@36
    .line 108
    :cond_2
    const/16 p2, 0x32

    #@38
    goto :goto_2

    #@39
    .line 109
    .end local p2    # "backlog":I
    :catch_0
    move-exception v1

    #@3a
    .line 110
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    #@3d
    .line 111
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@3f
    monitor-exit p0

    #@40
    throw v2
.end method

.method private checkListen(I)V
    .locals 3
    .param p1, "aPort"    # I

    #@0
    .prologue
    .line 150
    if-ltz p1, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 151
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
    .line 149
    :cond_1
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 381
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 379
    :cond_0
    return-void
.end method

.method private readBackBindState()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@2
    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/net/ServerSocket;->localAddress:Ljava/net/InetAddress;

    #@a
    .line 121
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    #@d
    .line 119
    return-void
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .param p0, "aFactory"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v1, Ljava/net/ServerSocket;

    #@2
    monitor-enter v1

    #@3
    .line 234
    :try_start_0
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 235
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
    .line 237
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 233
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@3
    .line 135
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 136
    new-instance v2, Ljava/net/SocketException;

    #@b
    const-string/jumbo v3, "Socket is not bound"

    #@e
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 139
    :cond_0
    new-instance v0, Ljava/net/Socket;

    #@14
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    #@17
    .line 141
    .local v0, "aSocket":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 146
    return-object v0

    #@1b
    .line 142
    :catch_0
    move-exception v1

    #@1c
    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    #@1f
    .line 144
    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 296
    const/16 v0, 0x32

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    #@5
    .line 295
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 7
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@3
    .line 314
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 315
    new-instance v4, Ljava/net/BindException;

    #@b
    const-string/jumbo v5, "Socket is already bound"

    #@e
    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 319
    :cond_0
    if-nez p1, :cond_1

    #@14
    .line 320
    sget-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    #@16
    .line 321
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v3, 0x0

    #@17
    .line 334
    .local v3, "port":I
    :goto_0
    monitor-enter p0

    #@18
    .line 336
    :try_start_0
    iget-object v4, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@1a
    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@1d
    .line 337
    invoke-direct {p0}, Ljava/net/ServerSocket;->readBackBindState()V

    #@20
    .line 338
    iget-object v4, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@22
    if-lez p2, :cond_4

    #@24
    .end local p2    # "backlog":I
    :goto_1
    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 312
    return-void

    #@29
    .line 323
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "port":I
    .restart local p2    # "backlog":I
    :cond_1
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    #@2b
    if-nez v4, :cond_2

    #@2d
    .line 324
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v6, "Local address not an InetSocketAddress: "

    #@37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    .line 325
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v6

    #@3f
    .line 324
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
    :cond_2
    move-object v2, p1

    #@4c
    .line 327
    check-cast v2, Ljava/net/InetSocketAddress;

    #@4e
    .line 328
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@51
    move-result-object v0

    #@52
    .restart local v0    # "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_3

    #@54
    .line 329
    new-instance v4, Ljava/net/SocketException;

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
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@71
    throw v4

    #@72
    .line 331
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@75
    move-result v3

    #@76
    .restart local v3    # "port":I
    goto :goto_0

    #@77
    .line 338
    .end local v2    # "inetAddr":Ljava/net/InetSocketAddress;
    :cond_4
    const/16 p2, 0x32

    #@79
    goto :goto_1

    #@7a
    .line 339
    .end local p2    # "backlog":I
    :catch_0
    move-exception v1

    #@7b
    .line 340
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    #@7e
    .line 341
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7f
    .line 334
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@80
    monitor-exit p0

    #@81
    throw v4
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    #@3
    .line 164
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@5
    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    #@8
    .line 162
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    #@0
    .prologue
    .line 437
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getImpl$()Ljava/net/SocketImpl;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@2
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 175
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 177
    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->localAddress:Ljava/net/InetAddress;

    #@a
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    #@0
    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 189
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 191
    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

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
    .line 354
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 355
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 357
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    iget-object v1, p0, Ljava/net/ServerSocket;->localAddress:Ljava/net/InetAddress;

    #@c
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    #@f
    move-result v2

    #@10
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@13
    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 425
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@3
    .line 426
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@5
    const/16 v1, 0x1002

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

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@3
    .line 407
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@5
    const/4 v1, 0x4

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

.method public declared-synchronized getSoTimeout()I
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
    .line 201
    :try_start_0
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@4
    .line 202
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@6
    const/16 v1, 0x1006

    #@8
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

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

.method protected final implAccept(Ljava/net/Socket;)V
    .locals 2
    .param p1, "aSocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    monitor-enter p0

    #@1
    .line 217
    :try_start_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@3
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@5
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    #@8
    .line 218
    invoke-virtual {p1}, Ljava/net/Socket;->accepted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 215
    return-void

    #@d
    .line 216
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 367
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    #@2
    return v0
.end method

.method public isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 376
    iget-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    #@2
    return v0
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    #@0
    .prologue
    .line 453
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@3
    .line 415
    const/4 v0, 0x1

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size < 1"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 418
    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/16 v2, 0x1002

    #@17
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1a
    .line 413
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
    .line 394
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@3
    .line 395
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x4

    #@a
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@d
    .line 393
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
    .line 252
    :try_start_0
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    #@4
    .line 253
    if-gez p1, :cond_0

    #@6
    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "timeout < 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0

    #@12
    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/16 v2, 0x1006

    #@1a
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 269
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ServerSocket["

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 270
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 271
    const-string/jumbo v1, "unbound]"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    return-object v1

    #@1f
    .line 273
    :cond_0
    const-string/jumbo v1, "addr="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 274
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 274
    const-string/jumbo v2, "/"

    #@35
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 275
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 276
    const-string/jumbo v2, ",port=0,localport="

    #@48
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 277
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    #@4f
    move-result v2

    #@50
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 277
    const-string/jumbo v2, "]"

    #@57
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    return-object v1
.end method
