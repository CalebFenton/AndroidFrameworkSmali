.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# static fields
.field private static blacklist options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static blacklist optionsSet:Z


# instance fields
.field private greylist-max-o infAddress:Ljava/net/InetAddress;

.field private greylist-max-o infLock:Ljava/lang/Object;

.field private greylist-max-o interfaceSet:Z

.field private greylist-max-o ttlLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 721
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/MulticastSocket;->optionsSet:Z

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 117
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 142
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/SocketAddress;)V
    .registers 4
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    .line 201
    iput-object v0, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 175
    if-eqz p1, :cond_35

    .line 177
    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2a

    .line 179
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_35

    .line 180
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    goto :goto_35

    .line 179
    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_34

    .line 180
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 182
    :cond_34
    throw v0

    .line 184
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public whitelist test-api getInterface()Ljava/net/InetAddress;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_52

    .line 502
    iget-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    nop

    .line 504
    :try_start_a
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 510
    .local v1, "ia":Ljava/net/InetAddress;
    iget-object v2, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_1c

    .line 511
    monitor-exit v0

    return-object v1

    .line 517
    :cond_1c
    iget-object v2, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 518
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_4f

    return-object v1

    .line 527
    :cond_26
    :try_start_26
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 528
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 529
    .local v3, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_2e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 530
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 531
    .local v4, "addr":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 532
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_44} :catch_4c
    .catchall {:try_start_26 .. :try_end_44} :catchall_4f

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_4f

    return-object v5

    .line 534
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_46
    goto :goto_2e

    .line 540
    :cond_47
    const/4 v4, 0x0

    :try_start_48
    iput-object v4, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4a} :catch_4c
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4f

    .line 541
    :try_start_4a
    monitor-exit v0

    return-object v1

    .line 542
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    .end local v3    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_4c
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v1

    .line 545
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4f

    throw v1

    .line 500
    :cond_52
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getLoopbackMode()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 580
    nop

    .line 581
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 582
    .local v0, "niIndex":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_29

    .line 583
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    .line 584
    .local v1, "addrs":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 585
    new-instance v2, Ljava/net/NetworkInterface;

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3, v1}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    return-object v2

    .line 587
    .end local v1    # "addrs":[Ljava/net/InetAddress;
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getTTL()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 269
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0

    .line 268
    :cond_f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getTimeToLive()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 283
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0

    .line 282
    :cond_f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api joinGroup(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_37

    .line 310
    const-string v0, "joinGroup"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 312
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 316
    :cond_14
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 324
    invoke-static {}, Ljava/net/NetworkInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v1

    .line 326
    .local v1, "defaultInterface":Ljava/net/NetworkInterface;
    iget-boolean v2, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    if-nez v2, :cond_27

    if-eqz v1, :cond_27

    .line 327
    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 330
    :cond_27
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 331
    return-void

    .line 317
    .end local v1    # "defaultInterface":Ljava/net/NetworkInterface;
    :cond_2f
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_37
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_57

    .line 398
    if-eqz p1, :cond_4f

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_4f

    .line 401
    iget-boolean v0, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-nez v0, :cond_49

    .line 404
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "joinGroup"

    invoke-virtual {p0, v0, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 406
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2c

    .line 407
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 410
    :cond_2c
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 414
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 415
    return-void

    .line 411
    :cond_41
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 399
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_57
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api leaveGroup(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 355
    const-string v0, "leaveGroup"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 357
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 361
    :cond_14
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 365
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 366
    return-void

    .line 362
    :cond_22
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_2a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_57

    .line 445
    if-eqz p1, :cond_4f

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_4f

    .line 448
    iget-boolean v0, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-nez v0, :cond_49

    .line 451
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "leaveGroup"

    invoke-virtual {p0, v0, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 453
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2c

    .line 454
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 457
    :cond_2c
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 461
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 462
    return-void

    .line 458
    :cond_41
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    .end local v0    # "security":Ljava/lang/SecurityManager;
    :cond_49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 446
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_57
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api send(Ljava/net/DatagramPacket;B)V
    .registers 7
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 673
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {p0, v0, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_12
    monitor-enter p1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_98

    .line 676
    :try_start_13
    iget v1, p0, Ljava/net/MulticastSocket;->connectState:I

    if-nez v1, :cond_3f

    .line 680
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 681
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3e

    .line 682
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 683
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    goto :goto_3e

    .line 685
    :cond_2f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    .line 685
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 689
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_3e
    :goto_3e
    goto :goto_61

    .line 691
    :cond_3f
    const/4 v1, 0x0

    .line 692
    .local v1, "packetAddress":Ljava/net/InetAddress;
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 693
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    .local v2, "packetAddress":Ljava/net/InetAddress;
    if-nez v2, :cond_51

    .line 694
    iget-object v1, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 695
    iget v1, p0, Ljava/net/MulticastSocket;->connectedPort:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_61

    .line 696
    :cond_51
    iget-object v1, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 697
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    iget v3, p0, Ljava/net/MulticastSocket;->connectedPort:I

    if-ne v1, v3, :cond_8d

    .line 702
    .end local v2    # "packetAddress":Ljava/net/InetAddress;
    :goto_61
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTTL()B

    move-result v1
    :try_end_65
    .catchall {:try_start_13 .. :try_end_65} :catchall_95

    .line 704
    .local v1, "dttl":B
    if-eq p2, v1, :cond_6e

    .line 706
    :try_start_67
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 709
    :cond_6e
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_81

    .line 712
    if-eq p2, v1, :cond_7e

    .line 713
    :try_start_77
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 716
    .end local v1    # "dttl":B
    :cond_7e
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_95

    .line 717
    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_98

    .line 718
    return-void

    .line 712
    .restart local v1    # "dttl":B
    :catchall_81
    move-exception v2

    if-eq p2, v1, :cond_8b

    .line 713
    :try_start_84
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 715
    :cond_8b
    nop

    .end local p0    # "this":Ljava/net/MulticastSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "ttl":B
    throw v2

    .line 698
    .end local v1    # "dttl":B
    .restart local v2    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/MulticastSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "ttl":B
    :cond_8d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "connected address and packet address differ"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/net/MulticastSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "ttl":B
    throw v1

    .line 716
    .end local v2    # "packetAddress":Ljava/net/InetAddress;
    .restart local p0    # "this":Ljava/net/MulticastSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "ttl":B
    :catchall_95
    move-exception v1

    monitor-exit p1
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_95

    .end local p0    # "this":Ljava/net/MulticastSocket;
    .end local p1    # "p":Ljava/net/DatagramPacket;
    .end local p2    # "ttl":B
    :try_start_97
    throw v1

    .line 717
    .restart local p0    # "this":Ljava/net/MulticastSocket;
    .restart local p1    # "p":Ljava/net/DatagramPacket;
    .restart local p2    # "ttl":B
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_98

    throw v1

    .line 672
    :cond_9b
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInterface(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "inf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 477
    const-string v0, "setInterface"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_e
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 480
    iput-object p1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    .line 482
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_1e

    throw v1

    .line 475
    :cond_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setLoopbackMode(Z)V
    .registers 5
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 607
    return-void
.end method

.method public whitelist test-api setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 5
    .param p1, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 563
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 564
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    .line 565
    monitor-exit v0

    .line 566
    return-void

    .line 565
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api setTTL(B)V
    .registers 4
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 223
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 224
    return-void

    .line 222
    :cond_e
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTimeToLive(I)V
    .registers 4
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    if-ltz p1, :cond_1c

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1c

    .line 249
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 251
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 252
    return-void

    .line 250
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 725
    const-class v0, Ljava/net/MulticastSocket;

    monitor-enter v0

    .line 726
    :try_start_3
    sget-boolean v1, Ljava/net/MulticastSocket;->optionsSet:Z

    if-eqz v1, :cond_b

    .line 727
    sget-object v1, Ljava/net/MulticastSocket;->options:Ljava/util/Set;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    return-object v1

    .line 730
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    .line 731
    .local v1, "impl":Ljava/net/DatagramSocketImpl;
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/MulticastSocket;->options:Ljava/util/Set;
    :try_end_19
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_19} :catch_1a
    .catchall {:try_start_b .. :try_end_19} :catchall_28

    .line 734
    .end local v1    # "impl":Ljava/net/DatagramSocketImpl;
    goto :goto_21

    .line 732
    :catch_1a
    move-exception v1

    .line 733
    .local v1, "ex":Ljava/net/SocketException;
    :try_start_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/MulticastSocket;->options:Ljava/util/Set;

    .line 735
    .end local v1    # "ex":Ljava/net/SocketException;
    :goto_21
    const/4 v1, 0x1

    sput-boolean v1, Ljava/net/MulticastSocket;->optionsSet:Z

    .line 736
    sget-object v1, Ljava/net/MulticastSocket;->options:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 737
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v1
.end method
