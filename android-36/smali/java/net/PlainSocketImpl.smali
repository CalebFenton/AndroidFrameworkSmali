.class Ljava/net/PlainSocketImpl;
.super Ljava/net/AbstractPlainSocketImpl;
.source "PlainSocketImpl.java"


# direct methods
.method constructor greylist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;-><init>()V

    .line 76
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 77
    return-void
.end method

.method private blacklist getMarkerFD()Ljava/io/FileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v5, v0

    .line 263
    .local v5, "fd1":Ljava/io/FileDescriptor;
    new-instance v6, Ljava/io/FileDescriptor;

    invoke-direct {v6}, Ljava/io/FileDescriptor;-><init>()V

    .line 265
    .local v6, "fd2":Ljava/io/FileDescriptor;
    :try_start_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 268
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->SHUT_RDWR:I

    invoke-interface {v0, v5, v1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 269
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v6}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_21} :catch_23

    .line 275
    nop

    .line 276
    return-object v5

    .line 270
    :catch_23
    move-exception v0

    .line 274
    .local v0, "errnoException":Landroid/system/ErrnoException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
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

    .line 103
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 104
    invoke-super {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 106
    :cond_d
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_22

    .line 109
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkGetOptionPermission(Ljava/net/SocketOption;)V

    .line 110
    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v0

    .line 111
    .local v0, "flow":Ljdk/net/SocketFlow;
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 112
    return-object v0

    .line 107
    .end local v0    # "flow":Ljdk/net/SocketFlow;
    :cond_22
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

    .line 90
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 91
    invoke-super {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    goto :goto_24

    .line 93
    :cond_c
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_25

    .line 96
    invoke-static {p1}, Lsun/net/ExtendedOptionsImpl;->checkSetOptionPermission(Ljava/net/SocketOption;)V

    .line 97
    const-class v0, Ljdk/net/SocketFlow;

    invoke-static {p2, v0}, Lsun/net/ExtendedOptionsImpl;->checkValueType(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljdk/net/SocketFlow;

    invoke-static {v0, v1}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 100
    :goto_24
    return-void

    .line 94
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist socketAccept(Ljava/net/SocketImpl;)V
    .registers 7
    .param p1, "s"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const-string v1, "Socket closed"

    if-eqz v0, :cond_84

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 193
    iget v0, p0, Ljava/net/PlainSocketImpl;->timeout:I

    if-gtz v0, :cond_1e

    .line 194
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    sget v3, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    goto :goto_2a

    .line 196
    :cond_1e
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    sget v3, Landroid/system/OsConstants;->POLLERR:I

    or-int/2addr v2, v3

    iget v3, p0, Ljava/net/PlainSocketImpl;->timeout:I

    invoke-static {v0, v2, v3}, Llibcore/io/IoBridge;->poll(Ljava/io/FileDescriptor;II)V

    .line 199
    :goto_2a
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0}, Ljava/net/InetSocketAddress;-><init>()V

    .line 201
    .local v0, "peerAddress":Ljava/net/InetSocketAddress;
    :try_start_2f
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v2, v3, v0}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 203
    .local v2, "newfd":Ljava/io/FileDescriptor;
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 204
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p1, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 206
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->port:I
    :try_end_51
    .catch Landroid/system/ErrnoException; {:try_start_2f .. :try_end_51} :catch_52

    .line 216
    .end local v2    # "newfd":Ljava/io/FileDescriptor;
    goto :goto_68

    .line 207
    :catch_52
    move-exception v2

    .line 208
    .local v2, "errnoException":Landroid/system/ErrnoException;
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-eq v3, v4, :cond_7b

    .line 212
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINVAL:I

    if-eq v3, v4, :cond_75

    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EBADF:I

    if-eq v3, v4, :cond_75

    .line 215
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    .line 218
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :goto_68
    iget-object v1, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p1, Ljava/net/SocketImpl;->localport:I

    .line 219
    return-void

    .line 213
    .restart local v2    # "errnoException":Landroid/system/ErrnoException;
    :cond_75
    new-instance v3, Ljava/net/SocketException;

    invoke-direct {v3, v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 209
    :cond_7b
    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 210
    .local v1, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v1, v2}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 211
    throw v1

    .line 188
    .end local v0    # "peerAddress":Ljava/net/InetSocketAddress;
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :cond_84
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist socketAvailable()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method blacklist socketBind(Ljava/net/InetAddress;I)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_25

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 162
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 164
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 165
    if-nez p2, :cond_22

    .line 168
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    goto :goto_24

    .line 170
    :cond_22
    iput p2, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 172
    :goto_24
    return-void

    .line 159
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist socketClose0(Z)V
    .registers 5
    .param p1, "useDeferredClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_35

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "markerFD":Ljava/io/FileDescriptor;
    if-eqz p1, :cond_13

    .line 232
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->getMarkerFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 235
    :cond_13
    if-eqz p1, :cond_2f

    if-eqz v0, :cond_2f

    .line 237
    :try_start_17
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-interface {v1, v0, v2}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 238
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    .line 242
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_2e

    .line 243
    :catch_2d
    move-exception v1

    .line 245
    :goto_2e
    goto :goto_34

    .line 249
    :cond_2f
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 251
    :goto_34
    return-void

    .line 227
    .end local v0    # "markerFD":Ljava/io/FileDescriptor;
    :cond_35
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "socket already closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist socketConnect(Ljava/net/InetAddress;II)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 142
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)V

    .line 144
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 145
    iput p2, p0, Ljava/net/PlainSocketImpl;->port:I

    .line 147
    iget v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    if-nez v0, :cond_2b

    .line 151
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 152
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getLocalInetSocketAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Ljava/net/PlainSocketImpl;->localport:I

    .line 155
    :cond_2b
    return-void

    .line 139
    :cond_2c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist socketCreate(Z)V
    .registers 6
    .param p1, "isStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-eqz p1, :cond_9

    sget v2, Landroid/system/OsConstants;->SOCK_STREAM:I

    goto :goto_b

    :cond_9
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    :goto_b
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 129
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_30

    .line 132
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 133
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 135
    :cond_30
    return-void
.end method

.method blacklist socketGetOption(I)Ljava/lang/Object;
    .registers 3
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist socketListen(I)V
    .registers 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 180
    :try_start_c
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_13} :catch_15

    .line 183
    nop

    .line 184
    return-void

    .line 181
    :catch_15
    move-exception v0

    .line 182
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1

    .line 176
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_1b
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist socketSendUrgentData(I)V
    .registers 13
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 306
    int-to-byte v0, p1

    const/4 v1, 0x1

    :try_start_e
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    move-object v5, v1

    .line 307
    .local v5, "buffer":[B
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v8, Landroid/system/OsConstants;->MSG_OOB:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v3 .. v10}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_21} :catch_23

    .line 310
    nop

    .line 311
    .end local v5    # "buffer":[B
    return-void

    .line 308
    :catch_23
    move-exception v0

    .line 309
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1

    .line 302
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_29
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

    .line 118
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/net/PlainSocketImpl;->socketSetOption0(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_4

    .line 122
    goto :goto_11

    .line 119
    :catch_4
    move-exception v0

    .line 120
    .local v0, "se":Ljava/net/SocketException;
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_12

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 123
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_11
    return-void

    .line 121
    .restart local v0    # "se":Ljava/net/SocketException;
    :cond_12
    throw v0
.end method

.method blacklist socketSetOption0(ILjava/lang/Object;)V
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 289
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_5

    .line 290
    return-void

    .line 293
    :cond_5
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 294
    return-void
.end method

.method blacklist socketShutdown(I)V
    .registers 4
    .param p1, "howto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/PlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    .line 284
    nop

    .line 285
    return-void

    .line 282
    :catch_9
    move-exception v0

    .line 283
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
