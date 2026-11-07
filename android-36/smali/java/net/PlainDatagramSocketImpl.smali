.class Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/AbstractPlainDatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/net/AbstractPlainDatagramSocketImpl;-><init>()V

    return-void
.end method

.method private blacklist doRecv(Ljava/net/DatagramPacket;I)V
    .registers 14
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 150
    iget v0, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    if-eqz v0, :cond_16

    .line 151
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->POLLIN:I

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v1, v2

    iget v2, p0, Ljava/net/PlainDatagramSocketImpl;->timeout:I

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    .line 154
    :cond_16
    iget-object v4, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v6

    iget v7, p1, Ljava/net/DatagramPacket;->bufLength:I

    iget-boolean v10, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    const/4 v3, 0x0

    move-object v9, p1

    move v8, p2

    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "flags":I
    .local v8, "flags":I
    .local v9, "p":Ljava/net/DatagramPacket;
    invoke-static/range {v3 .. v10}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    .line 156
    return-void

    .line 147
    .end local v8    # "flags":I
    .end local v9    # "p":Ljava/net/DatagramPacket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "flags":I
    :cond_2b
    move-object v9, p1

    move v8, p2

    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "flags":I
    .restart local v8    # "flags":I
    .restart local v9    # "p":Ljava/net/DatagramPacket;
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Socket closed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;
    .registers 4
    .param p0, "gr_group"    # Ljava/net/InetAddress;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 176
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 177
    .local v0, "gr_interface":I
    :goto_8
    new-instance v1, Landroid/system/StructGroupReq;

    invoke-direct {v1, v0, p0}, Landroid/system/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    return-object v1
.end method


# virtual methods
.method protected declared-synchronized blacklist bind0(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "lport"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_1
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 105
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 107
    if-nez p1, :cond_1b

    .line 110
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I

    goto :goto_1d

    .line 112
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    :cond_1b
    iput p1, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    .line 114
    :goto_1d
    monitor-exit p0

    return-void

    .line 102
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local p1    # "lport":I
    .end local p2    # "laddr":Ljava/net/InetAddress;
    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p1
.end method

.method protected blacklist connect0(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 235
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 236
    return-void

    .line 232
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist datagramSocketClose()V
    .registers 2

    .line 210
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    .line 211
    :catch_6
    move-exception v0

    :goto_7
    nop

    .line 212
    return-void
.end method

.method protected blacklist datagramSocketCreate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 198
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 199
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v3, 0x20

    invoke-static {v0, v3, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 202
    :try_start_17
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v4, Landroid/system/OsConstants;->IP_MULTICAST_ALL:I

    invoke-interface {v0, v1, v3, v4, v2}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_22} :catch_24

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_24
    move-exception v0

    .line 204
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected blacklist disconnect0(I)V
    .registers 5
    .param p1, "family"    # I

    .line 239
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    return-void

    .line 243
    :cond_7
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 244
    .local v0, "inetAddressUnspec":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 247
    :try_start_14
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1a
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 248
    :catch_1b
    move-exception v1

    :goto_1c
    nop

    .line 249
    return-void
.end method

.method protected whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 79
    invoke-super {p0, p1}, Ljava/net/AbstractPlainDatagramSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 81
    :cond_d
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_22

    .line 84
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkGetOptionPermission(Ljava/net/SocketOption;)V

    .line 85
    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v0

    .line 86
    .local v0, "flow":Ljdk/net/SocketFlow;
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 87
    return-object v0

    .line 82
    .end local v0    # "flow":Ljdk/net/SocketFlow;
    :cond_22
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method protected whitelist test-api getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected blacklist join(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 185
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x13

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 186
    return-void

    .line 182
    :cond_12
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist leave(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "inetaddr"    # Ljava/net/InetAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 194
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x14

    invoke-static {p1, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 195
    return-void

    .line 191
    :cond_12
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized whitelist test-api peek(Ljava/net/InetAddress;)I
    .registers 5
    .param p1, "i"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 130
    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 131
    .local v0, "p":Ljava/net/DatagramPacket;
    sget v1, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 132
    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    iget v2, v2, Ljava/net/InetAddress$InetAddressHolder;->address:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 133
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v1

    .line 129
    .end local v0    # "p":Ljava/net/DatagramPacket;
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    .end local p1    # "i":Ljava/net/InetAddress;
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method protected declared-synchronized whitelist test-api peekData(Ljava/net/DatagramPacket;)I
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_1
    sget v0, Landroid/system/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 138
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 136
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected declared-synchronized blacklist receive0(Ljava/net/DatagramPacket;)V
    .registers 3
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 143
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Ljava/net/PlainDatagramSocketImpl;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method protected whitelist test-api send(Ljava/net/DatagramPacket;)V
    .registers 10
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_43

    .line 120
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 124
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    :goto_1c
    move v7, v0

    .line 125
    .local v7, "port":I
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_27
    move-object v6, v0

    .line 126
    .local v6, "address":Ljava/net/InetAddress;
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 127
    return-void

    .line 121
    .end local v6    # "address":Ljava/net/InetAddress;
    .end local v7    # "port":I
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null buffer || null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_43
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 66
    invoke-super {p0, p1, p2}, Ljava/net/AbstractPlainDatagramSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    goto :goto_24

    .line 68
    :cond_c
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_25

    .line 71
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkSetOptionPermission(Ljava/net/SocketOption;)V

    .line 72
    const-class v0, Ljdk/net/SocketFlow;

    invoke-static {p2, v0}, Lsun/net/ExtendedOptionsImpl;->checkValueType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljdk/net/SocketFlow;

    invoke-static {v0, v1}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 75
    :goto_24
    return-void

    .line 69
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api setTTL(B)V
    .registers 3
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    .line 168
    return-void
.end method

.method protected whitelist test-api setTimeToLive(I)V
    .registers 5
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/16 v1, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 160
    return-void
.end method

.method protected blacklist socketGetOption(I)Ljava/lang/Object;
    .registers 4
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 227
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 224
    :cond_d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist socketSetOption(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/PlainDatagramSocketImpl;->socketSetOption0(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 96
    goto :goto_9

    .line 93
    :catch_4
    move-exception v0

    .line 94
    .local v0, "se":Ljava/net/SocketException;
    iget-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->connected:Z

    if-eqz v1, :cond_a

    .line 97
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_9
    return-void

    .line 95
    .restart local v0    # "se":Ljava/net/SocketException;
    :cond_a
    throw v0
.end method

.method protected blacklist socketSetOption0(ILjava/lang/Object;)V
    .registers 5
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 219
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 220
    return-void

    .line 216
    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
