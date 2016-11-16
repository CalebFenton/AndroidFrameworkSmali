.class abstract Ljava/net/AbstractPlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "AbstractPlainSocketImpl.java"


# static fields
.field public static final SHUT_RD:I = 0x0

.field public static final SHUT_WR:I = 0x1


# instance fields
.field private CONNECTION_NOT_RESET:I

.field private CONNECTION_RESET:I

.field private CONNECTION_RESET_PENDING:I

.field protected closePending:Z

.field protected final fdLock:Ljava/lang/Object;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final resetLock:Ljava/lang/Object;

.field private resetState:I

.field private shut_rd:Z

.field private shut_wr:Z

.field private socketInputStream:Ljava/net/SocketInputStream;

.field protected stream:Z

.field timeout:I

.field private trafficClass:I


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    #@4
    .line 54
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    #@6
    .line 55
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    #@8
    .line 57
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    #@b
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@12
    .line 63
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    #@14
    .line 66
    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    #@16
    .line 67
    const/4 v0, 0x1

    #@17
    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    #@19
    .line 68
    const/4 v0, 0x2

    #@1a
    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    #@1c
    .line 70
    new-instance v0, Ljava/lang/Object;

    #@1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@21
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    #@23
    .line 76
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@29
    .line 47
    return-void
.end method

.method private connectToAddress(Ljava/net/InetAddress;II)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 194
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    #@d
    .line 192
    :goto_0
    return-void

    #@e
    .line 196
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    #@11
    goto :goto_0
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "s"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@7
    .line 389
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketAccept(Ljava/net/SocketImpl;)V

    #@a
    .line 387
    return-void
.end method

.method acquireFD()Ljava/io/FileDescriptor;
    .locals 2

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 563
    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 562
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method protected declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 445
    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 446
    new-instance v3, Ljava/io/IOException;

    #@a
    const-string/jumbo v4, "Stream closed."

    #@d
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v3

    #@12
    monitor-exit p0

    #@13
    throw v3

    #@14
    .line 453
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    monitor-exit p0

    #@1b
    .line 454
    return v4

    #@1c
    .line 464
    :cond_1
    const/4 v2, 0x0

    #@1d
    .line 466
    .local v2, "n":I
    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    #@20
    move-result v2

    #@21
    .line 467
    if-nez v2, :cond_2

    #@23
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 468
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_2
    .catch Lsun/net/ConnectionResetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    :cond_2
    :goto_0
    monitor-exit p0

    #@2d
    .line 480
    return v2

    #@2e
    .line 470
    :catch_0
    move-exception v0

    #@2f
    .line 471
    .local v0, "exc1":Lsun/net/ConnectionResetException;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@32
    .line 473
    :try_start_4
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    #@35
    move-result v2

    #@36
    .line 474
    if-nez v2, :cond_2

    #@38
    .line 475
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_4
    .catch Lsun/net/ConnectionResetException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 477
    :catch_1
    move-exception v1

    #@3d
    .local v1, "exc2":Lsun/net/ConnectionResetException;
    goto :goto_0
.end method

.method protected declared-synchronized bind(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "lport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 363
    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@3
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 364
    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@a
    if-eqz v0, :cond_3

    #@c
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@e
    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3

    #@14
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    #@15
    .line 368
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->socketBind(Ljava/net/InetAddress;I)V

    #@18
    .line 369
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 370
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@1e
    invoke-virtual {v0}, Ljava/net/Socket;->setBound()V

    #@21
    .line 371
    :cond_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 372
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    #@27
    invoke-virtual {v0}, Ljava/net/ServerSocket;->setBound()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2a
    :cond_2
    monitor-exit p0

    #@2b
    .line 361
    return-void

    #@2c
    .line 365
    :cond_3
    :try_start_3
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2e
    invoke-static {v0, p1, p2}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@31
    goto :goto_0

    #@32
    .line 363
    :catchall_0
    move-exception v0

    #@33
    :try_start_4
    monitor-exit v1

    #@34
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@35
    :catchall_1
    move-exception v0

    #@36
    monitor-exit p0

    #@37
    throw v0
.end method

.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 488
    :try_start_0
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@5
    if-eqz v0, :cond_2

    #@7
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@9
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 489
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    #@11
    if-nez v0, :cond_0

    #@13
    .line 490
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    #@16
    .line 492
    :cond_0
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    if-eqz v0, :cond_1

    #@1a
    monitor-exit v1

    #@1b
    .line 493
    return-void

    #@1c
    .line 495
    :cond_1
    const/4 v0, 0x1

    #@1d
    :try_start_1
    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    #@1f
    .line 496
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 497
    return-void

    #@24
    :cond_2
    monitor-exit v1

    #@25
    .line 486
    return-void

    #@26
    .line 487
    :catchall_0
    move-exception v0

    #@27
    monitor-exit v1

    #@28
    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/4 v1, 0x0

    #@1
    .line 118
    .local v1, "connected":Z
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@4
    move-result-object v0

    #@5
    .line 119
    .local v0, "address":Ljava/net/InetAddress;
    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@7
    .line 120
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@9
    .line 122
    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    #@b
    invoke-direct {p0, v0, p2, v3}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 123
    const/4 v1, 0x1

    #@f
    .line 125
    if-nez v1, :cond_0

    #@11
    .line 127
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@14
    .line 114
    :cond_0
    :goto_0
    return-void

    #@15
    .line 128
    :catch_0
    move-exception v2

    #@16
    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0

    #@17
    .line 124
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@18
    .line 125
    if-nez v1, :cond_1

    #@1a
    .line 127
    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1d
    .line 124
    :cond_1
    :goto_1
    throw v3

    #@1e
    .line 128
    :catch_1
    move-exception v2

    #@1f
    .restart local v2    # "ioe":Ljava/io/IOException;
    goto :goto_1
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@2
    .line 144
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@4
    .line 147
    :try_start_0
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    #@6
    invoke-direct {p0, p1, p2, v1}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 148
    return-void

    #@a
    .line 149
    :catch_0
    move-exception v0

    #@b
    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    #@e
    .line 152
    throw v0
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 6
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    const/4 v2, 0x0

    #@1
    .line 170
    .local v2, "connected":Z
    if-eqz p1, :cond_1

    #@3
    :try_start_0
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    #@5
    if-eqz v4, :cond_1

    #@7
    .line 172
    move-object v0, p1

    #@8
    check-cast v0, Ljava/net/InetSocketAddress;

    #@a
    move-object v1, v0

    #@b
    .line 173
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_2

    #@11
    .line 174
    new-instance v4, Ljava/net/UnknownHostException;

    #@13
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 180
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v4

    #@1c
    .line 181
    if-nez v2, :cond_0

    #@1e
    .line 183
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    .line 180
    :cond_0
    :goto_0
    throw v4

    #@22
    .line 171
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v5, "unsupported address type"

    #@27
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 175
    .restart local v1    # "addr":Ljava/net/InetSocketAddress;
    :cond_2
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@2e
    move-result v4

    #@2f
    iput v4, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@31
    .line 176
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v4

    #@35
    iput-object v4, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@37
    .line 178
    iget-object v4, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@39
    iget v5, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@3b
    invoke-direct {p0, v4, v5, p2}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 179
    const/4 v2, 0x1

    #@3f
    .line 181
    if-nez v2, :cond_3

    #@41
    .line 183
    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@44
    .line 167
    :cond_3
    :goto_1
    return-void

    #@45
    .line 184
    :catch_0
    move-exception v3

    #@46
    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_1

    #@47
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@48
    .restart local v3    # "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected declared-synchronized create(Z)V
    .locals 3
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 83
    :try_start_0
    iput-boolean p1, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    #@3
    .line 85
    if-nez p1, :cond_3

    #@5
    .line 86
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 88
    const/4 v1, 0x0

    #@9
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    .line 96
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 97
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@12
    invoke-virtual {v1}, Ljava/net/Socket;->setCreated()V

    #@15
    .line 98
    :cond_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 99
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    #@1b
    invoke-virtual {v1}, Ljava/net/ServerSocket;->setCreated()V

    #@1e
    .line 102
    :cond_1
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@24
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 103
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2c
    const-string/jumbo v2, "close"

    #@2f
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    :cond_2
    monitor-exit p0

    #@33
    .line 82
    return-void

    #@34
    .line 89
    :catch_0
    move-exception v0

    #@35
    .line 90
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    #@38
    .line 91
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1

    #@3c
    .line 94
    :cond_3
    const/4 v1, 0x1

    #@3d
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@40
    goto :goto_0
.end method

.method declared-synchronized doConnect(Ljava/net/InetAddress;II)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 327
    :try_start_0
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@3
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 328
    :try_start_1
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@e
    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@15
    .line 333
    :try_start_3
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@1c
    .line 334
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->socketConnect(Ljava/net/InetAddress;II)V

    #@1f
    .line 336
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@21
    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@22
    .line 337
    :try_start_4
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 338
    new-instance v1, Ljava/net/SocketException;

    #@28
    const-string/jumbo v3, "Socket closed"

    #@2b
    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    .line 336
    :catchall_0
    move-exception v1

    #@30
    :try_start_5
    monitor-exit v2

    #@31
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@32
    .line 349
    :catch_0
    move-exception v0

    #@33
    .line 350
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    #@36
    .line 351
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@37
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    #@38
    monitor-exit p0

    #@39
    throw v1

    #@3a
    .line 329
    :cond_1
    :try_start_7
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@3c
    invoke-static {v1, p1, p2}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@3f
    goto :goto_0

    #@40
    .line 327
    :catchall_2
    move-exception v1

    #@41
    :try_start_8
    monitor-exit v2

    #@42
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@43
    :cond_2
    :try_start_9
    monitor-exit v2

    #@44
    .line 345
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@46
    if-eqz v1, :cond_3

    #@48
    .line 346
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@4a
    invoke-virtual {v1}, Ljava/net/Socket;->setBound()V

    #@4d
    .line 347
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    #@4f
    invoke-virtual {v1}, Ljava/net/Socket;->setConnected()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@52
    :cond_3
    monitor-exit p0

    #@53
    .line 326
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 549
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 552
    :cond_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    #@c
    .line 547
    return-void
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
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
    .line 396
    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 397
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "Socket Closed"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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
    .line 399
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 400
    new-instance v0, Ljava/io/IOException;

    #@19
    const-string/jumbo v1, "Socket input is shutdown"

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 402
    :cond_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    #@22
    if-nez v0, :cond_2

    #@24
    .line 403
    new-instance v0, Ljava/net/SocketInputStream;

    #@26
    invoke-direct {v0, p0}, Ljava/net/SocketInputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V

    #@29
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    #@2b
    .line 405
    :cond_2
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 7
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 268
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 269
    new-instance v2, Ljava/net/SocketException;

    #@c
    const-string/jumbo v3, "Socket Closed"

    #@f
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 271
    :cond_0
    const/16 v4, 0x1006

    #@15
    if-ne p1, v4, :cond_1

    #@17
    .line 272
    new-instance v2, Ljava/lang/Integer;

    #@19
    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    #@1b
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1e
    return-object v2

    #@1f
    .line 274
    :cond_1
    const/4 v1, 0x0

    #@20
    .line 283
    .local v1, "ret":I
    sparse-switch p1, :sswitch_data_0

    #@23
    .line 316
    return-object v5

    #@24
    .line 285
    :sswitch_0
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@27
    move-result v1

    #@28
    .line 286
    if-eq v1, v6, :cond_2

    #@2a
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v2

    #@2e
    return-object v2

    #@2f
    :cond_2
    move v2, v3

    #@30
    goto :goto_0

    #@31
    .line 288
    :sswitch_1
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@34
    move-result v1

    #@35
    .line 289
    if-eq v1, v6, :cond_3

    #@37
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    :cond_3
    move v2, v3

    #@3d
    goto :goto_1

    #@3e
    .line 291
    :sswitch_2
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@41
    move-result v1

    #@42
    .line 292
    if-ne v1, v6, :cond_4

    #@44
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@46
    :goto_2
    return-object v2

    #@47
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    #@49
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    #@4c
    goto :goto_2

    #@4d
    .line 294
    :sswitch_3
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@50
    move-result v1

    #@51
    .line 295
    if-eq v1, v6, :cond_5

    #@53
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    :cond_5
    move v2, v3

    #@59
    goto :goto_3

    #@5a
    .line 297
    :sswitch_4
    new-instance v0, Ljava/net/InetAddressContainer;

    #@5c
    invoke-direct {v0}, Ljava/net/InetAddressContainer;-><init>()V

    #@5f
    .line 298
    .local v0, "in":Ljava/net/InetAddressContainer;
    invoke-virtual {p0, p1, v0}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@62
    move-result v1

    #@63
    .line 299
    iget-object v2, v0, Ljava/net/InetAddressContainer;->addr:Ljava/net/InetAddress;

    #@65
    return-object v2

    #@66
    .line 302
    .end local v0    # "in":Ljava/net/InetAddressContainer;
    :sswitch_5
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@69
    move-result v1

    #@6a
    .line 303
    new-instance v2, Ljava/lang/Integer;

    #@6c
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    #@6f
    return-object v2

    #@70
    .line 305
    :sswitch_6
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@73
    move-result v1

    #@74
    .line 306
    if-ne v1, v6, :cond_6

    #@76
    .line 307
    new-instance v2, Ljava/lang/Integer;

    #@78
    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->trafficClass:I

    #@7a
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@7d
    return-object v2

    #@7e
    .line 309
    :cond_6
    new-instance v2, Ljava/lang/Integer;

    #@80
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    #@83
    return-object v2

    #@84
    .line 312
    :sswitch_7
    invoke-virtual {p0, p1, v5}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(ILjava/lang/Object;)I

    #@87
    move-result v1

    #@88
    .line 313
    if-eq v1, v6, :cond_7

    #@8a
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8d
    move-result-object v2

    #@8e
    return-object v2

    #@8f
    :cond_7
    move v2, v3

    #@90
    goto :goto_4

    #@91
    .line 283
    nop

    #@92
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_3
        0x8 -> :sswitch_7
        0xf -> :sswitch_4
        0x80 -> :sswitch_2
        0x1001 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_1
    .end sparse-switch
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
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
    .line 416
    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 417
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "Socket Closed"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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
    .line 419
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 420
    new-instance v0, Ljava/io/IOException;

    #@19
    const-string/jumbo v1, "Socket output is shutdown"

    #@1c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 422
    :cond_1
    new-instance v0, Ljava/net/SocketOutputStream;

    #@22
    invoke-direct {v0, p0}, Ljava/net/SocketOutputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    #@0
    .prologue
    .line 614
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    #@2
    return v0
.end method

.method public isClosedOrPending()Z
    .locals 2

    #@0
    .prologue
    .line 601
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 602
    :try_start_0
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 603
    :cond_0
    const/4 v0, 0x1

    #@c
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 602
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@10
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 605
    const/4 v0, 0x0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 601
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public isConnectionReset()Z
    .locals 3

    #@0
    .prologue
    .line 568
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 569
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    #@5
    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v0, v2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    .line 568
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public isConnectionResetPending()Z
    .locals 3

    #@0
    .prologue
    .line 574
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 575
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    #@5
    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v0, v2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    monitor-exit v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    .line 574
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method protected declared-synchronized listen(I)V
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 380
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketListen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 379
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 503
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@6
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 504
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    #@f
    .line 506
    :cond_0
    invoke-super {p0}, Ljava/net/SocketImpl;->reset()V

    #@12
    .line 502
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@6
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 541
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketSendUrgentData(I)V

    #@f
    .line 537
    return-void

    #@10
    .line 539
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Socket Closed"

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0
.end method

.method setAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    #@2
    .line 429
    return-void
.end method

.method public setConnectionReset()V
    .locals 2

    #@0
    .prologue
    .line 580
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 581
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    #@5
    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit v1

    #@8
    .line 579
    return-void

    #@9
    .line 580
    :catchall_0
    move-exception v0

    #@a
    monitor-exit v1

    #@b
    throw v0
.end method

.method public setConnectionResetPending()V
    .locals 3

    #@0
    .prologue
    .line 586
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 587
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    #@5
    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    #@7
    if-ne v0, v2, :cond_0

    #@9
    .line 588
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    #@b
    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit v1

    #@e
    .line 585
    return-void

    #@f
    .line 586
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 426
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    .line 425
    return-void
.end method

.method setInputStream(Ljava/net/SocketInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/net/SocketInputStream;

    #@0
    .prologue
    .line 409
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    #@2
    .line 408
    return-void
.end method

.method setLocalPort(I)V
    .locals 0
    .param p1, "localport"    # I

    #@0
    .prologue
    .line 438
    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->localport:I

    #@2
    .line 437
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 202
    new-instance v2, Ljava/net/SocketException;

    #@8
    const-string/jumbo v3, "Socket Closed"

    #@b
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 204
    :cond_0
    const/4 v0, 0x1

    #@10
    .line 205
    .local v0, "on":Z
    sparse-switch p1, :sswitch_data_0

    #@13
    .line 263
    new-instance v2, Ljava/net/SocketException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "unrecognized TCP option: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 211
    :sswitch_0
    if-eqz p2, :cond_3

    #@2f
    instance-of v2, p2, Ljava/lang/Integer;

    #@31
    if-nez v2, :cond_1

    #@33
    instance-of v2, p2, Ljava/lang/Boolean;

    #@35
    if-eqz v2, :cond_3

    #@37
    .line 213
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 215
    const/4 v0, 0x0

    #@3c
    .line 265
    .end local v0    # "on":Z
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Ljava/net/AbstractPlainSocketImpl;->socketSetOption(IZLjava/lang/Object;)V

    #@3f
    .line 200
    return-void

    #@40
    .line 212
    .restart local v0    # "on":Z
    :cond_3
    new-instance v2, Ljava/net/SocketException;

    #@42
    const-string/jumbo v3, "Bad parameter for option"

    #@45
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@48
    throw v2

    #@49
    .line 219
    :sswitch_1
    if-eqz p2, :cond_4

    #@4b
    instance-of v2, p2, Ljava/lang/Integer;

    #@4d
    if-eqz v2, :cond_4

    #@4f
    move-object v2, p2

    #@50
    .line 221
    check-cast v2, Ljava/lang/Integer;

    #@52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@55
    move-result v1

    #@56
    .line 222
    .local v1, "tmp":I
    if-gez v1, :cond_5

    #@58
    .line 223
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5a
    const-string/jumbo v3, "timeout < 0"

    #@5d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 220
    .end local v1    # "tmp":I
    :cond_4
    new-instance v2, Ljava/net/SocketException;

    #@63
    const-string/jumbo v3, "Bad parameter for SO_TIMEOUT"

    #@66
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@69
    throw v2

    #@6a
    .line 224
    .restart local v1    # "tmp":I
    :cond_5
    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    #@6c
    goto :goto_0

    #@6d
    .line 227
    .end local v1    # "tmp":I
    :sswitch_2
    if-eqz p2, :cond_6

    #@6f
    instance-of v2, p2, Ljava/lang/Integer;

    #@71
    if-eqz v2, :cond_6

    #@73
    move-object v2, p2

    #@74
    .line 230
    check-cast v2, Ljava/lang/Integer;

    #@76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@79
    move-result v2

    #@7a
    iput v2, p0, Ljava/net/AbstractPlainSocketImpl;->trafficClass:I

    #@7c
    goto :goto_0

    #@7d
    .line 228
    :cond_6
    new-instance v2, Ljava/net/SocketException;

    #@7f
    const-string/jumbo v3, "bad argument for IP_TOS"

    #@82
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@85
    throw v2

    #@86
    .line 233
    :sswitch_3
    new-instance v2, Ljava/net/SocketException;

    #@88
    const-string/jumbo v3, "Cannot re-bind socket"

    #@8b
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v2

    #@8f
    .line 235
    :sswitch_4
    if-eqz p2, :cond_7

    #@91
    instance-of v2, p2, Ljava/lang/Boolean;

    #@93
    if-eqz v2, :cond_7

    #@95
    move-object v2, p2

    #@96
    .line 237
    check-cast v2, Ljava/lang/Boolean;

    #@98
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@9b
    move-result v0

    #@9c
    .local v0, "on":Z
    goto :goto_0

    #@9d
    .line 236
    .local v0, "on":Z
    :cond_7
    new-instance v2, Ljava/net/SocketException;

    #@9f
    const-string/jumbo v3, "bad parameter for TCP_NODELAY"

    #@a2
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v2

    #@a6
    .line 241
    :sswitch_5
    if-eqz p2, :cond_8

    #@a8
    instance-of v2, p2, Ljava/lang/Integer;

    #@aa
    if-eqz v2, :cond_8

    #@ac
    move-object v2, p2

    #@ad
    .line 242
    check-cast v2, Ljava/lang/Integer;

    #@af
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@b2
    move-result v2

    #@b3
    if-gtz v2, :cond_2

    #@b5
    .line 243
    :cond_8
    new-instance v2, Ljava/net/SocketException;

    #@b7
    const-string/jumbo v3, "bad parameter for SO_SNDBUF or SO_RCVBUF"

    #@ba
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v2

    #@be
    .line 248
    :sswitch_6
    if-eqz p2, :cond_9

    #@c0
    instance-of v2, p2, Ljava/lang/Boolean;

    #@c2
    if-eqz v2, :cond_9

    #@c4
    move-object v2, p2

    #@c5
    .line 250
    check-cast v2, Ljava/lang/Boolean;

    #@c7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@ca
    move-result v0

    #@cb
    .local v0, "on":Z
    goto/16 :goto_0

    #@cd
    .line 249
    .local v0, "on":Z
    :cond_9
    new-instance v2, Ljava/net/SocketException;

    #@cf
    const-string/jumbo v3, "bad parameter for SO_KEEPALIVE"

    #@d2
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@d5
    throw v2

    #@d6
    .line 253
    :sswitch_7
    if-eqz p2, :cond_a

    #@d8
    instance-of v2, p2, Ljava/lang/Boolean;

    #@da
    if-eqz v2, :cond_a

    #@dc
    move-object v2, p2

    #@dd
    .line 255
    check-cast v2, Ljava/lang/Boolean;

    #@df
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@e2
    move-result v0

    #@e3
    .local v0, "on":Z
    goto/16 :goto_0

    #@e5
    .line 254
    .local v0, "on":Z
    :cond_a
    new-instance v2, Ljava/net/SocketException;

    #@e7
    const-string/jumbo v3, "bad parameter for SO_OOBINLINE"

    #@ea
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@ed
    throw v2

    #@ee
    .line 258
    :sswitch_8
    if-eqz p2, :cond_b

    #@f0
    instance-of v2, p2, Ljava/lang/Boolean;

    #@f2
    if-eqz v2, :cond_b

    #@f4
    move-object v2, p2

    #@f5
    .line 260
    check-cast v2, Ljava/lang/Boolean;

    #@f7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@fa
    move-result v0

    #@fb
    .local v0, "on":Z
    goto/16 :goto_0

    #@fd
    .line 259
    .local v0, "on":Z
    :cond_b
    new-instance v2, Ljava/net/SocketException;

    #@ff
    const-string/jumbo v3, "bad parameter for SO_REUSEADDR"

    #@102
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@105
    throw v2

    #@106
    .line 205
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x4 -> :sswitch_8
        0x8 -> :sswitch_6
        0xf -> :sswitch_3
        0x80 -> :sswitch_0
        0x1001 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_7
        0x1006 -> :sswitch_1
    .end sparse-switch
.end method

.method setPort(I)V
    .locals 0
    .param p1, "port"    # I

    #@0
    .prologue
    .line 434
    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    #@2
    .line 433
    return-void
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 514
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@3
    if-eqz v0, :cond_1

    #@5
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 515
    const/4 v0, 0x0

    #@e
    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    #@11
    .line 516
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 517
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    #@17
    invoke-virtual {v0, v1}, Ljava/net/SocketInputStream;->setEOF(Z)V

    #@1a
    .line 519
    :cond_0
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    #@1c
    .line 513
    :cond_1
    return-void
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 527
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 528
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    #@10
    .line 529
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    #@12
    .line 526
    :cond_0
    return-void
.end method

.method abstract socketAccept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketBind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected socketClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 623
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose0()V

    #@8
    .line 620
    return-void
.end method

.method abstract socketClose0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketConnect(Ljava/net/InetAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketCreate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketGetOption(ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract socketListen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketSendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketSetOption(IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract socketShutdown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected supportsUrgentData()Z
    .locals 1

    #@0
    .prologue
    .line 534
    const/4 v0, 0x1

    #@1
    return v0
.end method
