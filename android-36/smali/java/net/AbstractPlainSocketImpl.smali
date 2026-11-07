.class abstract Ljava/net/AbstractPlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "AbstractPlainSocketImpl.java"


# static fields
.field public static final blacklist SHUT_RD:I = 0x0

.field public static final blacklist SHUT_WR:I = 0x1


# instance fields
.field private blacklist CONNECTION_NOT_RESET:I

.field private blacklist CONNECTION_RESET:I

.field private blacklist CONNECTION_RESET_PENDING:I

.field protected blacklist closePending:Z

.field protected final blacklist fdLock:Ljava/lang/Object;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field protected blacklist fdUseCount:I

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist resetLock:Ljava/lang/Object;

.field private blacklist resetState:I

.field private blacklist shut_rd:Z

.field private blacklist shut_wr:Z

.field private blacklist socketInputStream:Ljava/net/SocketInputStream;

.field private blacklist socketOutputStream:Ljava/net/SocketOutputStream;

.field protected blacklist stream:Z

.field blacklist timeout:I


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    .line 57
    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    .line 60
    iput-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;

    .line 63
    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    .line 73
    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    .line 76
    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    .line 104
    nop

    .line 105
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 104
    return-void
.end method

.method private blacklist connectToAddress(Ljava/net/InetAddress;II)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 228
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    goto :goto_11

    .line 230
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    .line 232
    :goto_11
    return-void
.end method

.method private blacklist socketPreClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketClose0(Z)V

    .line 758
    return-void
.end method


# virtual methods
.method protected whitelist test-api accept(Ljava/net/SocketImpl;)V
    .registers 3
    .param p1, "s"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    .line 450
    :try_start_3
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 451
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketAccept(Ljava/net/SocketImpl;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 453
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 454
    nop

    .line 455
    return-void

    .line 453
    :catchall_12
    move-exception v0

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 454
    throw v0
.end method

.method blacklist acquireFD()Ljava/io/FileDescriptor;
    .registers 3

    .line 671
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 673
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    monitor-exit v0

    return-object v1

    .line 674
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected declared-synchronized whitelist test-api available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 514
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_39

    .line 522
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_41

    if-eqz v0, :cond_12

    goto :goto_36

    .line 533
    :cond_12
    const/4 v0, 0x0

    .line 535
    .local v0, "n":I
    :try_start_13
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    move-result v1

    move v0, v1

    .line 536
    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 537
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_23
    .catch Lsun/net/ConnectionResetException; {:try_start_13 .. :try_end_23} :catch_24
    .catchall {:try_start_13 .. :try_end_23} :catchall_41

    .line 548
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_23
    goto :goto_34

    .line 539
    :catch_24
    move-exception v1

    .line 540
    .local v1, "exc1":Lsun/net/ConnectionResetException;
    :try_start_25
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_41

    .line 542
    :try_start_28
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    move-result v2

    move v0, v2

    .line 543
    if-nez v0, :cond_32

    .line 544
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_32
    .catch Lsun/net/ConnectionResetException; {:try_start_28 .. :try_end_32} :catch_33
    .catchall {:try_start_28 .. :try_end_32} :catchall_41

    .line 547
    :cond_32
    goto :goto_34

    .line 546
    :catch_33
    move-exception v2

    .line 549
    .end local v1    # "exc1":Lsun/net/ConnectionResetException;
    :goto_34
    monitor-exit p0

    return v0

    .line 523
    .end local v0    # "n":I
    :cond_36
    :goto_36
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 515
    :cond_39
    :try_start_39
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v0
.end method

.method protected declared-synchronized whitelist test-api bind(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "lport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_37

    .line 423
    :try_start_4
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_34

    if-nez v1, :cond_1c

    :try_start_8
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 424
    :cond_14
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_1c

    .line 426
    :catchall_1a
    move-exception v1

    goto :goto_35

    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_34

    .line 427
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->socketBind(Ljava/net/InetAddress;I)V

    .line 428
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_29

    .line 429
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->setBound()V

    .line 430
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_29
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_32

    .line 431
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->setBound()V
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_37

    .line 432
    :cond_32
    monitor-exit p0

    return-void

    .line 426
    :catchall_34
    move-exception v1

    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1

    .line 421
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "lport":I
    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw p1
.end method

.method protected whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 558
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    if-nez v1, :cond_16

    .line 559
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 566
    :cond_16
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v1, :cond_3d

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    .line 568
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 570
    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_3f

    if-nez v2, :cond_35

    .line 580
    :try_start_26
    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;->socketPreClose()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    .line 582
    :try_start_29
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    .line 583
    nop

    .line 587
    monitor-exit v0

    return-void

    .line 582
    :catchall_2f
    move-exception v1

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    .line 583
    nop

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    throw v1

    .line 595
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_35
    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 596
    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;->socketPreClose()V

    .line 600
    :cond_3d
    monitor-exit v0

    .line 601
    return-void

    .line 600
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method protected whitelist test-api connect(Ljava/lang/String;I)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "connected":Z
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 153
    .local v1, "address":Ljava/net/InetAddress;
    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 154
    iput-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 156
    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {p0, v1, p2, v2}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 157
    const/4 v0, 0x1

    .line 159
    .end local v1    # "address":Ljava/net/InetAddress;
    if-nez v0, :cond_17

    .line 161
    :try_start_11
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 165
    :goto_14
    goto :goto_17

    .line 162
    :catch_15
    move-exception v1

    goto :goto_14

    .line 168
    :cond_17
    :goto_17
    return-void

    .line 159
    :catchall_18
    move-exception v1

    if-nez v0, :cond_20

    .line 161
    :try_start_1b
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 165
    goto :goto_20

    .line 162
    :catch_1f
    move-exception v2

    .line 167
    :cond_20
    :goto_20
    throw v1
.end method

.method protected whitelist test-api connect(Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 178
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 181
    :try_start_4
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {p0, p1, p2, v0}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 182
    return-void

    .line 183
    :catch_a
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 186
    throw v0
.end method

.method protected whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .registers 7
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "connected":Z
    if-eqz p1, :cond_37

    :try_start_3
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_37

    .line 206
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 207
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 209
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 210
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 212
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    invoke-direct {p0, v2, v3, p2}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3f

    .line 213
    const/4 v0, 0x1

    .line 215
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_2c

    .line 217
    :try_start_26
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 221
    :goto_29
    goto :goto_2c

    .line 218
    :catch_2a
    move-exception v1

    goto :goto_29

    .line 224
    :cond_2c
    :goto_2c
    return-void

    .line 208
    .restart local v1    # "addr":Ljava/net/InetSocketAddress;
    :cond_2d
    :try_start_2d
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .end local v0    # "connected":Z
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .end local p1    # "address":Ljava/net/SocketAddress;
    .end local p2    # "timeout":I
    throw v2

    .line 205
    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    .restart local v0    # "connected":Z
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .restart local p1    # "address":Ljava/net/SocketAddress;
    .restart local p2    # "timeout":I
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "connected":Z
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .end local p1    # "address":Ljava/net/SocketAddress;
    .end local p2    # "timeout":I
    throw v1
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_3f

    .line 215
    .restart local v0    # "connected":Z
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .restart local p1    # "address":Ljava/net/SocketAddress;
    .restart local p2    # "timeout":I
    :catchall_3f
    move-exception v1

    if-nez v0, :cond_47

    .line 217
    :try_start_42
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 221
    goto :goto_47

    .line 218
    :catch_46
    move-exception v2

    .line 223
    :cond_47
    :goto_47
    throw v1
.end method

.method protected declared-synchronized whitelist test-api create(Z)V
    .registers 4
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_1
    iput-boolean p1, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    .line 113
    if-nez p1, :cond_12

    .line 114
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3d

    .line 118
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_3d

    .line 124
    goto :goto_16

    .line 119
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :catch_d
    move-exception v0

    .line 120
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_e
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 123
    throw v0

    .line 128
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V

    .line 130
    :goto_16
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1f

    .line 131
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->setCreated()V

    .line 132
    :cond_1f
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_28

    .line 133
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->setCreated()V

    .line 136
    :cond_28
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 137
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3d

    .line 139
    :cond_3b
    monitor-exit p0

    return-void

    .line 111
    .end local p1    # "stream":Z
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method declared-synchronized blacklist doConnect(Ljava/net/InetAddress;II)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_64

    .line 381
    :try_start_4
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_61

    if-nez v1, :cond_1c

    :try_start_8
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_14

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 382
    :cond_14
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    goto :goto_1c

    .line 384
    :catchall_1a
    move-exception v1

    goto :goto_62

    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_61

    .line 386
    :try_start_1d
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_5c
    .catchall {:try_start_1d .. :try_end_20} :catchall_64

    .line 389
    :try_start_20
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 390
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->socketConnect(Ljava/net/InetAddress;II)V

    .line 392
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_56

    .line 393
    :try_start_2d
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_53

    if-nez v1, :cond_4b

    .line 396
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_49

    .line 401
    :try_start_32
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_47

    if-eqz v0, :cond_40

    .line 402
    :try_start_36
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->setBound()V

    .line 403
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->setConnected()V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_56

    .line 406
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_5c
    .catchall {:try_start_40 .. :try_end_43} :catchall_64

    .line 407
    nop

    .line 411
    nop

    .line 412
    monitor-exit p0

    return-void

    .line 406
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :catchall_47
    move-exception v0

    goto :goto_57

    .line 396
    :catchall_49
    move-exception v1

    goto :goto_54

    .line 394
    :cond_4b
    :try_start_4b
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    .end local p3    # "timeout":I
    throw v1

    .line 396
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    .restart local p3    # "timeout":I
    :catchall_53
    move-exception v1

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_53

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    .end local p3    # "timeout":I
    :try_start_55
    throw v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 406
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    .restart local p3    # "timeout":I
    :catchall_56
    move-exception v0

    :goto_57
    :try_start_57
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 407
    nop

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    .end local p3    # "timeout":I
    throw v0
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_64

    .line 408
    .restart local p1    # "address":Ljava/net/InetAddress;
    .restart local p2    # "port":I
    .restart local p3    # "timeout":I
    :catch_5c
    move-exception v0

    .line 409
    .local v0, "e":Ljava/io/IOException;
    :try_start_5d
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 410
    throw v0
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_64

    .line 384
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v1

    :goto_62
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v1

    .line 379
    .end local p1    # "address":Ljava/net/InetAddress;
    .end local p2    # "port":I
    .end local p3    # "timeout":I
    :catchall_64
    move-exception p1

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_64

    throw p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 661
    :cond_9
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 662
    return-void
.end method

.method protected declared-synchronized whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 461
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_33

    .line 462
    :try_start_4
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v1

    if-nez v1, :cond_26

    .line 464
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2e

    if-nez v1, :cond_1e

    .line 466
    :try_start_e
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_31

    if-nez v1, :cond_19

    .line 467
    :try_start_12
    new-instance v1, Ljava/net/SocketInputStream;

    invoke-direct {v1, p0}, Ljava/net/SocketInputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V

    iput-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2e

    .line 468
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_31

    .line 469
    :try_start_1a
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_33

    monitor-exit p0

    return-object v0

    .line 465
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket input is shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    throw v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2e

    .line 468
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :catchall_2e
    move-exception v1

    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_31

    :try_start_30
    throw v1

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :catchall_31
    move-exception v1

    goto :goto_2f

    .line 460
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public whitelist test-api getOption(I)Ljava/lang/Object;
    .registers 4
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_17

    .line 314
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_12

    .line 315
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 369
    :cond_12
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 312
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 480
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_33

    .line 481
    :try_start_4
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v1

    if-nez v1, :cond_26

    .line 483
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2e

    if-nez v1, :cond_1e

    .line 485
    :try_start_e
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_31

    if-nez v1, :cond_19

    .line 486
    :try_start_12
    new-instance v1, Ljava/net/SocketOutputStream;

    invoke-direct {v1, p0}, Ljava/net/SocketOutputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V

    iput-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2e

    .line 487
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_31

    .line 488
    :try_start_1a
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_33

    monitor-exit p0

    return-object v0

    .line 484
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket output is shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :cond_26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    throw v1
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2e

    .line 487
    .restart local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :catchall_2e
    move-exception v1

    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_31

    :try_start_30
    throw v1

    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    :catchall_31
    move-exception v1

    goto :goto_2f

    .line 479
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public blacklist getTimeout()I
    .registers 2

    .line 749
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    return v0
.end method

.method public blacklist isClosedOrPending()Z
    .registers 3

    .line 735
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_3
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_17

    .line 740
    :cond_14
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 738
    :cond_17
    :goto_17
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 742
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist isConnectionReset()Z
    .registers 4

    .line 701
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 703
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist isConnectionResetPending()Z
    .registers 4

    .line 707
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 709
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected declared-synchronized whitelist test-api listen(I)V
    .registers 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 439
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketListen(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 440
    monitor-exit p0

    return-void

    .line 438
    .end local p0    # "this":Ljava/net/AbstractPlainSocketImpl;
    .end local p1    # "count":I
    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method blacklist releaseFD()V
    .registers 4

    .line 683
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_3
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 685
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 686
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_19

    if-eqz v1, :cond_17

    .line 688
    :try_start_12
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 694
    goto :goto_17

    .line 689
    :catch_16
    move-exception v1

    .line 697
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method blacklist reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 605
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    .line 607
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 611
    :cond_14
    invoke-super {p0}, Ljava/net/SocketImpl;->reset()V

    .line 612
    return-void
.end method

.method protected whitelist test-api sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 649
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketSendUrgentData(I)V

    .line 650
    return-void

    .line 647
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 499
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 500
    return-void
.end method

.method public blacklist setConnectionReset()V
    .registers 3

    .line 713
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_3
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    .line 715
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public blacklist setConnectionResetPending()V
    .registers 4

    .line 719
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    if-ne v1, v2, :cond_d

    .line 721
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    .line 723
    :cond_d
    monitor-exit v0

    .line 725
    return-void

    .line 723
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method blacklist setInputStream(Ljava/net/SocketInputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/net/SocketInputStream;

    .line 473
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    .line 474
    return-void
.end method

.method blacklist setLocalPort(I)V
    .registers 2
    .param p1, "localport"    # I

    .line 507
    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->localport:I

    .line 508
    return-void
.end method

.method public whitelist test-api setOption(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_17

    .line 305
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_13

    .line 306
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    .line 308
    :cond_13
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->socketSetOption(ILjava/lang/Object;)V

    .line 309
    return-void

    .line 236
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 503
    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 504
    return-void
.end method

.method protected whitelist test-api shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    .line 622
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 623
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    invoke-virtual {v0, v1}, Ljava/net/SocketInputStream;->setEOF(Z)V

    .line 625
    :cond_1a
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    .line 627
    :cond_1c
    return-void
.end method

.method protected whitelist test-api shutdownOutput()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    .line 636
    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    .line 638
    :cond_12
    return-void
.end method

.method abstract blacklist socketAccept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketBind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected blacklist socketClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketClose0(Z)V

    .line 765
    return-void
.end method

.method abstract blacklist socketClose0(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketConnect(Ljava/net/InetAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketCreate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketGetOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract blacklist socketListen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketSendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist socketSetOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract blacklist socketShutdown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api supportsUrgentData()Z
    .registers 2

    .line 641
    const/4 v0, 0x1

    return v0
.end method
