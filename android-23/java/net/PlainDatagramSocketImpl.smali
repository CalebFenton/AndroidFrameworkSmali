.class public Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# instance fields
.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private volatile isNativeConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    #@3
    .line 37
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 45
    const/4 v0, -0x1

    #@a
    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@c
    .line 56
    new-instance v0, Ljava/io/FileDescriptor;

    #@e
    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    #@11
    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@13
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "localPort"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    #@3
    .line 37
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@9
    .line 45
    const/4 v0, -0x1

    #@a
    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@c
    .line 48
    iput-object p1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@e
    .line 49
    iput p2, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I

    #@10
    .line 50
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 51
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@18
    const-string/jumbo v1, "close"

    #@1b
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1e
    .line 47
    :cond_0
    return-void
.end method

.method private doRecv(Ljava/net/DatagramPacket;I)V
    .locals 8
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    #@d
    move-result v4

    #@e
    iget-boolean v7, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@10
    const/4 v0, 0x0

    #@11
    move v5, p2

    #@12
    move-object v6, p1

    #@13
    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    #@16
    .line 164
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 165
    invoke-direct {p0, p1}, Ljava/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    #@1d
    .line 162
    :cond_0
    return-void
.end method

.method private static makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;
    .locals 2
    .param p0, "gr_group"    # Ljava/net/InetAddress;
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    #@0
    .prologue
    .line 122
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    #@5
    move-result v0

    #@6
    .line 123
    .local v0, "gr_interface":I
    :goto_0
    new-instance v1, Landroid/system/StructGroupReq;

    #@8
    invoke-direct {v1, v0, p0}, Landroid/system/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    #@b
    return-object v1

    #@c
    .line 122
    .end local v0    # "gr_interface":I
    :cond_0
    const/4 v0, 0x0

    #@d
    .restart local v0    # "gr_interface":I
    goto :goto_0
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@2
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@5
    .line 255
    iget v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@7
    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    #@a
    .line 253
    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v1, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    .line 61
    if-eqz p1, :cond_0

    #@7
    .line 62
    iput p1, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I

    #@9
    .line 67
    :goto_0
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@b
    const/16 v2, 0x20

    #@d
    invoke-virtual {p0, v2, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 59
    :goto_1
    return-void

    #@11
    .line 64
    :cond_0
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@13
    invoke-static {v1}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I

    #@19
    goto :goto_0

    #@1a
    .line 68
    :catch_0
    move-exception v0

    #@1b
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 79
    :try_start_0
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 81
    :try_start_1
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@8
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    :goto_0
    monitor-exit p0

    #@c
    .line 78
    return-void

    #@d
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1

    #@10
    .line 82
    :catch_0
    move-exception v0

    #@11
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "inetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    iget-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v1, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5
    .line 206
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 212
    iput p2, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@11
    .line 213
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@14
    .line 203
    return-void

    #@15
    .line 207
    :catch_0
    move-exception v0

    #@16
    .line 210
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/net/SocketException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Host is unresolved: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method

.method public create()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    .line 92
    return-void
.end method

.method public disconnect()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 226
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3
    iget-object v3, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@5
    sget-object v4, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    #@7
    const/4 v5, 0x0

    #@8
    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 232
    :goto_0
    const/4 v2, -0x1

    #@c
    iput v2, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@e
    .line 233
    const/4 v2, 0x0

    #@f
    iput-object v2, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@11
    .line 234
    iput-boolean v6, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@13
    .line 224
    return-void

    #@14
    .line 227
    :catch_0
    move-exception v0

    #@15
    .line 228
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1a
    throw v2

    #@1b
    .line 229
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@1c
    .local v1, "ignored":Ljava/net/SocketException;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 103
    invoke-super {p0}, Ljava/net/DatagramSocketImpl;->finalize()V

    #@f
    .line 96
    return-void

    #@10
    .line 102
    :catchall_0
    move-exception v0

    #@11
    .line 103
    invoke-super {p0}, Ljava/net/DatagramSocketImpl;->finalize()V

    #@14
    .line 102
    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    #@3
    move-result v0

    #@4
    int-to-byte v0, v0

    #@5
    return v0
.end method

.method public getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    const/16 v0, 0x11

    #@2
    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public join(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    #@4
    move-result-object v0

    #@5
    const/16 v1, 0x13

    #@7
    invoke-virtual {p0, v1, v0}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@a
    .line 127
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 134
    check-cast p1, Ljava/net/InetSocketAddress;

    #@6
    .end local p1    # "addr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    .line 135
    .local v0, "groupAddr":Ljava/net/InetAddress;
    invoke-static {v0, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x13

    #@10
    invoke-virtual {p0, v2, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@13
    .line 132
    .end local v0    # "groupAddr":Ljava/net/InetAddress;
    :cond_0
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    #@4
    move-result-object v0

    #@5
    const/16 v1, 0x14

    #@7
    invoke-virtual {p0, v1, v0}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@a
    .line 140
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 147
    check-cast p1, Ljava/net/InetSocketAddress;

    #@6
    .end local p1    # "addr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v0

    #@a
    .line 148
    .local v0, "groupAddr":Ljava/net/InetAddress;
    invoke-static {v0, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Landroid/system/StructGroupReq;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x14

    #@10
    invoke-virtual {p0, v2, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@13
    .line 145
    .end local v0    # "groupAddr":Ljava/net/InetAddress;
    :cond_0
    return-void
.end method

.method protected onBind(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "localPort"    # I

    #@0
    .prologue
    .line 74
    iput p2, p0, Ljava/net/PlainDatagramSocketImpl;->localPort:I

    #@2
    .line 73
    return-void
.end method

.method protected onClose()V
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 87
    return-void
.end method

.method protected onConnect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I

    #@0
    .prologue
    .line 218
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@3
    .line 219
    iput-object p1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@5
    .line 220
    iput p2, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@7
    .line 217
    return-void
.end method

.method protected onDisconnect()V
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, -0x1

    #@1
    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    #@3
    .line 240
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    #@6
    .line 241
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@9
    .line 238
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .locals 4
    .param p1, "sender"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    new-instance v0, Ljava/net/DatagramPacket;

    #@2
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    #@4
    const/4 v3, 0x0

    #@5
    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@8
    .line 156
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    #@b
    move-result v1

    #@c
    .line 158
    .local v1, "result":I
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    #@13
    move-result-object v2

    #@14
    iput-object v2, p1, Ljava/net/InetAddress;->ipaddress:[B

    #@16
    .line 159
    return v1
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .locals 1
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 176
    sget v0, Landroid/system/OsConstants;->MSG_PEEK:I

    #@2
    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    #@5
    .line 177
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "pack"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    #@4
    .line 170
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 7
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v6, 0x0

    #@5
    .line 183
    .local v6, "port":I
    :goto_0
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    const/4 v5, 0x0

    #@a
    .line 184
    :goto_1
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@c
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    #@17
    move-result v3

    #@18
    const/4 v4, 0x0

    #@19
    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    #@1c
    .line 181
    return-void

    #@1d
    .line 182
    .end local v6    # "port":I
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@20
    move-result v6

    #@21
    .restart local v6    # "port":I
    goto :goto_0

    #@22
    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@25
    move-result-object v5

    #@26
    .local v5, "address":Ljava/net/InetAddress;
    goto :goto_1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    #@5
    .line 188
    return-void
.end method

.method public setTTL(B)V
    .locals 1
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    #@5
    .line 198
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 2
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x11

    #@6
    invoke-virtual {p0, v1, v0}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@9
    .line 193
    return-void
.end method
