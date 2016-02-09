.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private setAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    #@3
    .line 44
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    #@7
    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    #@3
    .line 55
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    #@7
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    #@3
    .line 68
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    #@7
    .line 66
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "groupAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 232
    if-nez p1, :cond_0

    #@5
    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "groupAddress == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 235
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 236
    new-instance v0, Ljava/io/IOException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Not a multicast group: "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 230
    :cond_1
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 4
    .param p1, "groupAddress"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 207
    if-nez p1, :cond_0

    #@5
    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "groupAddress == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 211
    :cond_0
    if-eqz p2, :cond_1

    #@10
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 215
    :cond_1
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Group address not an InetSocketAddress: "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 217
    invoke-virtual {p1}, Ljava/net/SocketAddress;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v3

    #@30
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 212
    :cond_2
    new-instance v1, Ljava/net/SocketException;

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "No address associated with interface: "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@55
    throw v1

    #@56
    :cond_3
    move-object v1, p1

    #@57
    .line 220
    check-cast v1, Ljava/net/InetSocketAddress;

    #@59
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@5c
    move-result-object v0

    #@5d
    .line 221
    .local v0, "groupAddr":Ljava/net/InetAddress;
    if-nez v0, :cond_4

    #@5f
    .line 222
    new-instance v1, Ljava/net/SocketException;

    #@61
    new-instance v2, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v3, "Group address has no address: "

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@78
    throw v1

    #@79
    .line 225
    :cond_4
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@7c
    move-result v1

    #@7d
    if-nez v1, :cond_5

    #@7f
    .line 226
    new-instance v1, Ljava/io/IOException;

    #@81
    new-instance v2, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v3, "Not a multicast group: "

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v2

    #@95
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@98
    throw v1

    #@99
    .line 205
    :cond_5
    return-void
.end method


# virtual methods
.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .locals 4
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
    .line 330
    :try_start_0
    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@3
    if-eqz v1, :cond_0

    #@5
    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@7
    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    #@a
    move-result-object v1

    #@b
    :goto_0
    iput-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@d
    .line 331
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@f
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 333
    :try_start_1
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@16
    const/4 v3, 0x4

    #@17
    invoke-virtual {v1, v3, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@1a
    .line 334
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@1c
    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    #@1f
    .line 335
    const/4 v1, 0x1

    #@20
    iput-boolean v1, p0, Ljava/net/MulticastSocket;->isBound:Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    monitor-exit p0

    #@23
    .line 329
    return-void

    #@24
    .line 330
    :cond_0
    :try_start_2
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    #@26
    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    goto :goto_0

    #@2a
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit p0

    #@2c
    throw v1

    #@2d
    .line 336
    :catch_0
    move-exception v0

    #@2e
    .line 337
    .local v0, "e":Ljava/net/SocketException;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    #@31
    .line 338
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 79
    iget-object v4, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 80
    iget-object v4, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    #@9
    return-object v4

    #@a
    .line 82
    :cond_0
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@c
    const/16 v5, 0x10

    #@e
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/net/InetAddress;

    #@14
    .line 83
    .local v1, "ipvXaddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 86
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    #@1d
    move-result-object v3

    #@1e
    .line 87
    .local v3, "theInterface":Ljava/net/NetworkInterface;
    if-eqz v3, :cond_2

    #@20
    .line 88
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@23
    move-result-object v0

    #@24
    .line 89
    .local v0, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_2

    #@26
    .line 90
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_2

    #@2c
    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Ljava/net/InetAddress;

    #@32
    .line 92
    .local v2, "nextAddress":Ljava/net/InetAddress;
    instance-of v4, v2, Ljava/net/Inet6Address;

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 93
    return-object v2

    #@37
    .line 99
    .end local v0    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "nextAddress":Ljava/net/InetAddress;
    .end local v3    # "theInterface":Ljava/net/NetworkInterface;
    :cond_2
    return-object v1
.end method

.method public getLoopbackMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 351
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    const/16 v1, 0x12

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
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x0

    #@14
    :goto_0
    return v0

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 109
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    const/16 v2, 0x1f

    #@7
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/Integer;

    #@d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    .line 110
    .local v0, "index":I
    if-eqz v0, :cond_0

    #@13
    .line 111
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 113
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->forUnboundMulticastSocket()Ljava/net/NetworkInterface;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 135
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    #@8
    move-result v0

    #@9
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
    .line 122
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 123
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "groupAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    #@3
    .line 149
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    #@8
    .line 147
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "groupAddress"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    #@3
    .line 169
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    #@8
    .line 167
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "groupAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    #@3
    .line 184
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    #@8
    .line 182
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "groupAddress"    # Ljava/net/SocketAddress;
    .param p2, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    #@3
    .line 202
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    #@8
    .line 200
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .locals 3
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .param p2, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 250
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@6
    move-result-object v1

    #@7
    .line 251
    .local v1, "packAddr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    #@a
    move-result v0

    #@b
    .line 252
    .local v0, "currTTL":I
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    int-to-byte v2, v0

    #@12
    if-eq v2, p2, :cond_0

    #@14
    .line 254
    and-int/lit16 v2, p2, 0xff

    #@16
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    #@19
    .line 255
    iget-object v2, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@1b
    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 257
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    #@21
    .line 248
    :goto_0
    return-void

    #@22
    .line 256
    :catchall_0
    move-exception v2

    #@23
    .line 257
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    #@26
    .line 256
    throw v2

    #@27
    .line 260
    :cond_0
    iget-object v2, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@29
    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    #@2c
    goto :goto_0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 273
    if-nez p1, :cond_0

    #@5
    .line 274
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "address == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 277
    :cond_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    #@11
    move-result-object v0

    #@12
    .line 278
    .local v0, "networkInterface":Ljava/net/NetworkInterface;
    if-nez v0, :cond_1

    #@14
    .line 279
    new-instance v1, Ljava/net/SocketException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Address not associated with an interface: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 281
    :cond_1
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@30
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    #@33
    move-result v2

    #@34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v2

    #@38
    const/16 v3, 0x1f

    #@3a
    invoke-virtual {v1, v3, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@3d
    .line 282
    iput-object p1, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    #@3f
    .line 271
    return-void
.end method

.method public setLoopbackMode(Z)V
    .locals 3
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 364
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    if-eqz p1, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    const/16 v2, 0x12

    #@e
    invoke-virtual {v1, v2, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@11
    .line 362
    return-void

    #@12
    .line 364
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 4
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 292
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@4
    .line 293
    if-nez p1, :cond_0

    #@6
    .line 294
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "networkInterface == null"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 297
    :cond_0
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@11
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    #@14
    move-result v1

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/16 v2, 0x1f

    #@1b
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@1e
    .line 298
    iput-object v3, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    #@20
    .line 291
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 324
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 325
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@5
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    #@8
    .line 323
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 3
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    #@3
    .line 309
    if-ltz p1, :cond_0

    #@5
    const/16 v0, 0xff

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "TimeToLive out of bounds: "

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
    .line 312
    :cond_1
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@25
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    #@28
    .line 307
    return-void
.end method
