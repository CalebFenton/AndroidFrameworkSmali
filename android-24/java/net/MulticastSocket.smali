.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private infAddress:Ljava/net/InetAddress;

.field private infLock:Ljava/lang/Object;

.field private interfaceSet:Z

.field private ttlLock:Ljava/lang/Object;


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
    .line 112
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@6
    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    #@9
    .line 111
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
    .line 137
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@5
    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    #@8
    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, v1

    #@2
    .line 166
    check-cast v0, Ljava/net/SocketAddress;

    #@4
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    #@7
    .line 180
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    #@e
    .line 186
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    #@15
    .line 191
    iput-object v1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    #@17
    .line 169
    const/4 v0, 0x1

    #@18
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    #@1b
    .line 171
    if-eqz p1, :cond_0

    #@1d
    .line 172
    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    #@20
    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 488
    new-instance v5, Ljava/net/SocketException;

    #@8
    const-string/jumbo v6, "Socket is closed"

    #@b
    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v5

    #@f
    .line 490
    :cond_0
    iget-object v6, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    #@11
    monitor-enter v6

    #@12
    .line 492
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@15
    move-result-object v5

    #@16
    const/16 v7, 0x10

    #@18
    invoke-virtual {v5, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/net/InetAddress;

    #@1e
    .line 498
    .local v3, "ia":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    if-nez v5, :cond_1

    #@22
    monitor-exit v6

    #@23
    .line 499
    return-object v3

    #@24
    .line 505
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    #@26
    invoke-virtual {v3, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    monitor-exit v6

    #@2d
    .line 506
    return-object v3

    #@2e
    .line 515
    :cond_2
    :try_start_2
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    #@31
    move-result-object v4

    #@32
    .line 516
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@35
    move-result-object v1

    #@36
    .line 517
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_4

    #@3c
    .line 518
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Ljava/net/InetAddress;

    #@42
    .line 519
    .local v0, "addr":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    #@44
    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v5

    #@48
    if-eqz v5, :cond_3

    #@4a
    .line 520
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    monitor-exit v6

    #@4d
    return-object v5

    #@4e
    .line 528
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    const/4 v5, 0x0

    #@4f
    :try_start_3
    iput-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    monitor-exit v6

    #@52
    .line 529
    return-object v3

    #@53
    .line 530
    .end local v1    # "addrs":Ljava/util/Enumeration;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    #@54
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v6

    #@55
    .line 531
    return-object v3

    #@56
    .line 490
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ia":Ljava/net/InetAddress;
    :catchall_0
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5
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
    .line 604
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x12

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

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 567
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@4
    move-result-object v2

    #@5
    const/16 v3, 0x1f

    #@7
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Ljava/lang/Integer;

    #@d
    .line 568
    .local v1, "niIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 569
    const/4 v2, 0x1

    #@14
    new-array v0, v2, [Ljava/net/InetAddress;

    #@16
    .line 570
    .local v0, "addrs":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v0, v4

    #@1c
    .line 571
    new-instance v2, Ljava/net/NetworkInterface;

    #@1e
    aget-object v3, v0, v4

    #@20
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3, v4, v0}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    #@27
    return-object v2

    #@28
    .line 573
    .end local v0    # "addrs":[Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v2

    #@2c
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method

.method public getTTL()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 258
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getTimeToLive()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 272
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 273
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 296
    new-instance v2, Ljava/net/SocketException;

    #@8
    const-string/jumbo v3, "Socket is closed"

    #@b
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 299
    :cond_0
    const-string/jumbo v2, "joinGroup"

    #@12
    invoke-virtual {p0, p1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@15
    .line 300
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@18
    move-result-object v1

    #@19
    .line 301
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    #@1b
    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    #@1e
    .line 305
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_2

    #@24
    .line 306
    new-instance v2, Ljava/net/SocketException;

    #@26
    const-string/jumbo v3, "Not a multicast address"

    #@29
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 313
    :cond_2
    invoke-static {}, Ljava/net/NetworkInterface;->getDefault()Ljava/net/NetworkInterface;

    #@30
    move-result-object v0

    #@31
    .line 315
    .local v0, "defaultInterface":Ljava/net/NetworkInterface;
    iget-boolean v2, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    #@33
    if-nez v2, :cond_3

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 316
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    #@3a
    .line 319
    :cond_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    #@41
    .line 294
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 384
    new-instance v1, Ljava/net/SocketException;

    #@8
    const-string/jumbo v2, "Socket is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 386
    :cond_0
    if-eqz p1, :cond_1

    #@11
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 389
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 390
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1b
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1e
    throw v1

    #@1f
    .line 387
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v2, "Unsupported address type"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    :cond_2
    move-object v1, p1

    #@29
    .line 392
    check-cast v1, Ljava/net/InetSocketAddress;

    #@2b
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2e
    move-result-object v1

    #@2f
    const-string/jumbo v2, "joinGroup"

    #@32
    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@35
    .line 393
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@38
    move-result-object v0

    #@39
    .line 394
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_3

    #@3b
    move-object v1, p1

    #@3c
    .line 395
    check-cast v1, Ljava/net/InetSocketAddress;

    #@3e
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    #@45
    :cond_3
    move-object v1, p1

    #@46
    .line 398
    check-cast v1, Ljava/net/InetSocketAddress;

    #@48
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_4

    #@52
    .line 399
    new-instance v1, Ljava/net/SocketException;

    #@54
    const-string/jumbo v2, "Not a multicast address"

    #@57
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1

    #@5b
    .line 402
    :cond_4
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    #@62
    .line 382
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 341
    new-instance v1, Ljava/net/SocketException;

    #@8
    const-string/jumbo v2, "Socket is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 344
    :cond_0
    const-string/jumbo v1, "leaveGroup"

    #@12
    invoke-virtual {p0, p1, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@15
    .line 345
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@18
    move-result-object v0

    #@19
    .line 346
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@1b
    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    #@1e
    .line 350
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 351
    new-instance v1, Ljava/net/SocketException;

    #@26
    const-string/jumbo v2, "Not a multicast address"

    #@29
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 354
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    #@34
    .line 339
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 431
    new-instance v1, Ljava/net/SocketException;

    #@8
    const-string/jumbo v2, "Socket is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 433
    :cond_0
    if-eqz p1, :cond_1

    #@11
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 436
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 437
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1b
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1e
    throw v1

    #@1f
    .line 434
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v2, "Unsupported address type"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    :cond_2
    move-object v1, p1

    #@29
    .line 439
    check-cast v1, Ljava/net/InetSocketAddress;

    #@2b
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2e
    move-result-object v1

    #@2f
    const-string/jumbo v2, "leaveGroup"

    #@32
    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@35
    .line 440
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@38
    move-result-object v0

    #@39
    .line 441
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_3

    #@3b
    move-object v1, p1

    #@3c
    .line 442
    check-cast v1, Ljava/net/InetSocketAddress;

    #@3e
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    #@45
    :cond_3
    move-object v1, p1

    #@46
    .line 445
    check-cast v1, Ljava/net/InetSocketAddress;

    #@48
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_4

    #@52
    .line 446
    new-instance v1, Ljava/net/SocketException;

    #@54
    const-string/jumbo v2, "Not a multicast address"

    #@57
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1

    #@5b
    .line 449
    :cond_4
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    #@62
    .line 429
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .locals 6
    .param p1, "p"    # Ljava/net/DatagramPacket;
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
    .line 657
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 658
    new-instance v3, Ljava/net/SocketException;

    #@8
    const-string/jumbo v4, "Socket is closed"

    #@b
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 659
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "send"

    #@16
    invoke-virtual {p0, v3, v4}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@19
    .line 660
    iget-object v4, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    #@1b
    monitor-enter v4

    #@1c
    .line 661
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 662
    :try_start_1
    iget v3, p0, Ljava/net/MulticastSocket;->connectState:I

    #@1f
    if-nez v3, :cond_5

    #@21
    .line 666
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@24
    move-result-object v2

    #@25
    .line 667
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1

    #@27
    .line 668
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 669
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    #@38
    .line 688
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTTL()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v0

    #@3c
    .line 690
    .local v0, "dttl":B
    if-eq p2, v0, :cond_2

    #@3e
    .line 692
    :try_start_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p2}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    #@45
    .line 695
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@4c
    .line 698
    if-eq p2, v0, :cond_3

    #@4e
    .line 699
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@55
    :cond_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@56
    monitor-exit v4

    #@57
    .line 656
    return-void

    #@58
    .line 671
    .end local v0    # "dttl":B
    .restart local v2    # "security":Ljava/lang/SecurityManager;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 672
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@63
    move-result v5

    #@64
    .line 671
    invoke-virtual {v2, v3, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@67
    goto :goto_0

    #@68
    .line 661
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v3

    #@69
    :try_start_6
    monitor-exit p1

    #@6a
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6b
    .line 660
    :catchall_1
    move-exception v3

    #@6c
    monitor-exit v4

    #@6d
    throw v3

    #@6e
    .line 677
    :cond_5
    const/4 v1, 0x0

    #@6f
    .line 678
    .local v1, "packetAddress":Ljava/net/InetAddress;
    :try_start_7
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@72
    move-result-object v1

    #@73
    .line 679
    .local v1, "packetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_6

    #@75
    .line 680
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    #@77
    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@7a
    .line 681
    iget v3, p0, Ljava/net/MulticastSocket;->connectedPort:I

    #@7c
    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    #@7f
    goto :goto_0

    #@80
    .line 682
    :cond_6
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    #@82
    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v3

    #@86
    if-eqz v3, :cond_7

    #@88
    .line 683
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@8b
    move-result v3

    #@8c
    iget v5, p0, Ljava/net/MulticastSocket;->connectedPort:I

    #@8e
    if-eq v3, v5, :cond_1

    #@90
    .line 684
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    #@92
    const-string/jumbo v5, "connected address and packet address differ"

    #@95
    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@98
    throw v3

    #@99
    .line 696
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    .restart local v0    # "dttl":B
    :catchall_2
    move-exception v3

    #@9a
    .line 698
    if-eq p2, v0, :cond_8

    #@9c
    .line 699
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    #@a3
    .line 696
    :cond_8
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 463
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 465
    :cond_0
    const-string/jumbo v0, "setInterface"

    #@12
    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@15
    .line 466
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    #@17
    monitor-enter v1

    #@18
    .line 467
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@1b
    move-result-object v0

    #@1c
    const/16 v2, 0x10

    #@1e
    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@21
    .line 468
    iput-object p1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    #@23
    .line 469
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 461
    return-void

    #@28
    .line 466
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
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
    .line 592
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    const/16 v2, 0x12

    #@a
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@d
    .line 591
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 549
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 550
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@6
    move-result-object v0

    #@7
    const/16 v2, 0x1f

    #@9
    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    #@c
    .line 551
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    #@f
    .line 552
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 547
    return-void

    #@14
    .line 549
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public setTTL(B)V
    .locals 2
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
    .line 211
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 212
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    #@16
    .line 210
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
    .line 236
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xff

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "ttl out of range"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 239
    :cond_1
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 240
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 241
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    #@25
    .line 235
    return-void
.end method
