.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static greylist-max-r factory:Ljava/net/SocketImplFactory;

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
.field private greylist-max-o bound:Z

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private greylist-max-o closed:Z

.field private greylist-max-o connected:Z

.field private greylist-max-o created:Z

.field greylist impl:Ljava/net/SocketImpl;

.field private greylist-max-o oldImpl:Z

.field private greylist-max-o shutIn:Z

.field private greylist-max-o shutOut:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1715
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    .line 1861
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/Socket;->optionsSet:Z

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 67
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 68
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 70
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 71
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 81
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 91
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 92
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 244
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 319
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/net/SocketAddress;

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 408
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/InetAddress;I)V
    .registers 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 276
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 361
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/InetAddress;IZ)V
    .registers 7
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 450
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/Proxy;)V
    .registers 9
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 67
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 68
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 70
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 71
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 81
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 124
    const-string v0, "Invalid Proxy"

    if-eqz p1, :cond_ad

    .line 127
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v1, :cond_24

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_28

    .line 128
    :cond_24
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v1

    :goto_28
    nop

    .line 129
    .local v1, "p":Ljava/net/Proxy;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    .line 132
    .local v2, "type":Ljava/net/Proxy$Type;
    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_8e

    .line 133
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 134
    .local v0, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 135
    .local v3, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_4a

    .line 136
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "Socket"

    invoke-direct {p0, v4, v5}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 138
    :cond_4a
    if-eqz v0, :cond_81

    .line 139
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 140
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v3, v4

    .line 141
    :cond_60
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 142
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_81

    .line 144
    :cond_72
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 144
    invoke-virtual {v0, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 150
    :cond_81
    :goto_81
    new-instance v4, Ljava/net/SocksSocketImpl;

    invoke-direct {v4, v1}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 151
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 152
    .end local v0    # "security":Ljava/lang/SecurityManager;
    .end local v3    # "epoint":Ljava/net/InetSocketAddress;
    goto :goto_a6

    .line 153
    :cond_8e
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v3, :cond_a7

    .line 154
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v0, :cond_a3

    .line 155
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 156
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    goto :goto_a6

    .line 158
    :cond_a3
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 162
    :goto_a6
    return-void

    .line 160
    :cond_a7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v1    # "p":Ljava/net/Proxy;
    .end local v2    # "type":Ljava/net/Proxy$Type;
    :cond_ad
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 67
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 68
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 70
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 71
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 81
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 180
    invoke-static {p1}, Ljava/net/Socket;->checkPermission(Ljava/net/SocketImpl;)Ljava/lang/Void;

    .line 181
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 182
    if-eqz p1, :cond_28

    .line 183
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 184
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 186
    :cond_28
    return-void
.end method

.method private constructor greylist-max-o <init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V
    .registers 10
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/SocketAddress;
    .param p4, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 66
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 67
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 68
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 70
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 71
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 81
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 463
    if-eqz p1, :cond_58

    array-length v1, p1

    if-eqz v1, :cond_58

    .line 467
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    array-length v2, p1

    if-ge v1, v2, :cond_57

    .line 468
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 470
    :try_start_25
    new-instance v2, Ljava/net/InetSocketAddress;

    aget-object v3, p1, v1

    invoke-direct {v2, v3, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 471
    .local v2, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p4}, Ljava/net/Socket;->createImpl(Z)V

    .line 472
    if-eqz p3, :cond_34

    .line 473
    invoke-virtual {p0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 475
    :cond_34
    invoke-virtual {p0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_37} :catch_38

    .line 476
    goto :goto_57

    .line 477
    .end local v2    # "address":Ljava/net/InetSocketAddress;
    :catch_38
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_3a
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 482
    iput-boolean v3, p0, Ljava/net/Socket;->closed:Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_42

    .line 485
    goto :goto_46

    .line 483
    :catch_42
    move-exception v4

    .line 484
    .local v4, "ce":Ljava/io/IOException;
    invoke-virtual {v2, v4}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 488
    .end local v4    # "ce":Ljava/io/IOException;
    :goto_46
    array-length v4, p1

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_56

    .line 494
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 495
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 496
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 497
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 489
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_56
    throw v2

    .line 499
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return-void

    .line 464
    :cond_58
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Impossible: empty address list"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .line 706
    if-nez p1, :cond_3

    .line 707
    return-void

    .line 709
    :cond_3
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_25

    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_c

    goto :goto_25

    .line 710
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_25
    :goto_25
    return-void
.end method

.method private greylist-max-o checkOldImpl()V
    .registers 2

    .line 522
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_5

    .line 523
    return-void

    .line 527
    :cond_5
    new-instance v0, Ljava/net/Socket$1;

    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    .line 528
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 547
    return-void
.end method

.method private static blacklist checkPermission(Ljava/net/SocketImpl;)Ljava/lang/Void;
    .registers 2
    .param p0, "impl"    # Ljava/net/SocketImpl;

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 455
    if-eqz p0, :cond_9

    .line 458
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    .line 456
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static declared-synchronized whitelist test-api setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/net/Socket;

    monitor-enter v0

    .line 1744
    :try_start_3
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v1, :cond_14

    .line 1747
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1748
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 1749
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1751
    :cond_10
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 1752
    monitor-exit v0

    return-void

    .line 1745
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1743
    .end local p0    # "fac":Ljava/net/SocketImplFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p0
.end method


# virtual methods
.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 7
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 683
    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 684
    :cond_11
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_19
    :goto_19
    if-eqz p1, :cond_28

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_20

    goto :goto_28

    .line 687
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_28
    :goto_28
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 689
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_3c

    .line 690
    :cond_34
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_3c
    :goto_3c
    if-nez v0, :cond_45

    .line 692
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object v0, v1

    .line 694
    :cond_45
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 695
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 696
    .local v2, "port":I
    const-string v3, "bind"

    invoke-direct {p0, v1, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 698
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5b

    .line 699
    invoke-virtual {v3, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 701
    :cond_5b
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 702
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->bound:Z

    .line 703
    return-void

    .line 682
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_66
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1558
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_21

    .line 1559
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1560
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1c

    monitor-exit p0

    return-void

    .line 1561
    :cond_d
    :try_start_d
    iget-boolean v1, p0, Ljava/net/Socket;->created:Z

    if-eqz v1, :cond_16

    .line 1562
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->close()V

    .line 1563
    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 1564
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1c

    .line 1565
    monitor-exit p0

    return-void

    .line 1564
    :catchall_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    :try_start_1e
    throw v1

    .end local p0    # "this":Ljava/net/Socket;
    :catchall_1f
    move-exception v1

    goto :goto_1d

    .line 1557
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_21

    throw v0
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 596
    return-void
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .registers 10
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    if-eqz p1, :cond_9a

    .line 619
    if-ltz p2, :cond_92

    .line 622
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 625
    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 626
    :cond_15
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_1d
    :goto_1d
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_82

    .line 631
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 632
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 633
    .local v1, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 634
    .local v2, "port":I
    const-string v3, "connect"

    invoke-direct {p0, v1, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 637
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_4c

    .line 638
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 639
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_4c

    .line 641
    :cond_45
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 643
    :cond_4c
    :goto_4c
    iget-boolean v4, p0, Ljava/net/Socket;->created:Z

    const/4 v5, 0x1

    if-nez v4, :cond_54

    .line 644
    invoke-virtual {p0, v5}, Ljava/net/Socket;->createImpl(Z)V

    .line 645
    :cond_54
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_5e

    .line 646
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_75

    .line 647
    :cond_5e
    if-nez p2, :cond_7a

    .line 648
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 649
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    goto :goto_75

    .line 651
    :cond_70
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v1, v2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 654
    :goto_75
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 659
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 660
    return-void

    .line 653
    :cond_7a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "SocketImpl.connect(addr, timeout)"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 629
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v2    # "port":I
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_8a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect: The address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o createImpl(Z)V
    .registers 5
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_7

    .line 512
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 514
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->create(Z)V

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_11

    .line 518
    nop

    .line 519
    return-void

    .line 516
    :catch_11
    move-exception v0

    .line 517
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 910
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist test-api getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 1899
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getImpl()Ljava/net/SocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 576
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-nez v0, :cond_8

    .line 577
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    .line 578
    :cond_8
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 3

    .line 746
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 747
    return-object v1

    .line 749
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    .line 750
    :catch_11
    move-exception v0

    .line 752
    return-object v1
.end method

.method public whitelist test-api getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_38

    .line 961
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 963
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_28

    .line 965
    const/4 v0, 0x0

    .line 967
    .local v0, "is":Ljava/io/InputStream;
    :try_start_13
    new-instance v1, Ljava/net/Socket$2;

    invoke-direct {v1, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/security/PrivilegedActionException; {:try_start_13 .. :try_end_1e} :catch_20

    .line 975
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    nop

    .line 976
    return-object v1

    .line 973
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_20
    move-exception v1

    .line 974
    .local v1, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 964
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :cond_28
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_30
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_38
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getKeepAlive()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1386
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1388
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1387
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/InetAddress;
    .registers 5

    .line 772
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_b

    .line 773
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 774
    :cond_b
    const/4 v0, 0x0

    .line 776
    .local v0, "in":Ljava/net/InetAddress;
    :try_start_c
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    move-object v0, v1

    .line 777
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 778
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_27

    .line 779
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 780
    :cond_27
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 781
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_31} :catch_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_33

    move-object v0, v2

    goto :goto_3e

    .line 785
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catch_33
    move-exception v1

    .line 786
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_3f

    .line 783
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 787
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_3e
    :goto_3e
    nop

    .line 788
    :goto_3f
    return-object v0
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 823
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 824
    return v1

    .line 826
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 827
    :catch_11
    move-exception v0

    .line 830
    return v1
.end method

.method public whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 887
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 888
    const/4 v0, 0x0

    return-object v0

    .line 889
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist test-api getOOBInline()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1175
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1177
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1176
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 3
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

    .line 1857
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1000
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1002
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1004
    const/4 v0, 0x0

    .line 1006
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_13
    new-instance v1, Ljava/net/Socket$3;

    invoke-direct {v1, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;
    :try_end_1e
    .catch Ljava/security/PrivilegedActionException; {:try_start_13 .. :try_end_1e} :catch_20

    .line 1014
    .end local v0    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    nop

    .line 1015
    return-object v1

    .line 1012
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catch_20
    move-exception v1

    .line 1013
    .local v1, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 1003
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/security/PrivilegedActionException;
    :cond_28
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_30
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_38
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 802
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 803
    const/4 v0, 0x0

    return v0

    .line 805
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 806
    :catch_11
    move-exception v0

    .line 809
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized whitelist test-api getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1350
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1352
    const/4 v0, 0x0

    .line 1353
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1354
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1355
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1357
    .end local p0    # "this":Ljava/net/Socket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1351
    .end local v0    # "result":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 851
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 852
    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public whitelist test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1530
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1532
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1531
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSendBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1276
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1278
    const/4 v0, 0x0

    .line 1279
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 1280
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 1281
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 1283
    .end local p0    # "this":Ljava/net/Socket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 1277
    .end local v0    # "result":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api getSoLinger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1098
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1100
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1101
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    .line 1102
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1104
    :cond_1c
    const/4 v1, -0x1

    return v1

    .line 1099
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1e
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1218
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1220
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1222
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 1223
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    monitor-exit p0

    return v1

    .line 1225
    .end local p0    # "this":Ljava/net/Socket;
    :cond_1e
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 1219
    .end local v0    # "o":Ljava/lang/Object;
    :cond_21
    :try_start_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public whitelist test-api getTcpNoDelay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1049
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1051
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1050
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1471
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1475
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1472
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 1674
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist test-api isClosed()Z
    .registers 3

    .line 1685
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_3
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z

    monitor-exit v0

    return v1

    .line 1687
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api isConnected()Z
    .registers 2

    .line 1657
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist test-api isInputShutdown()Z
    .registers 2

    .line 1698
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    return v0
.end method

.method public whitelist test-api isOutputShutdown()Z
    .registers 2

    .line 1709
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    return v0
.end method

.method final greylist-max-o postAccept()V
    .registers 2

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 719
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 720
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 721
    return-void
.end method

.method public whitelist test-api sendUrgentData(I)V
    .registers 4
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1126
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1129
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1130
    return-void

    .line 1127
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Urgent data not supported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setBound()V
    .registers 2

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 729
    return-void
.end method

.method greylist-max-o setConnected()V
    .registers 2

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 733
    return-void
.end method

.method greylist-max-o setCreated()V
    .registers 2

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 725
    return-void
.end method

.method greylist-max-o setImpl()V
    .registers 2

    .line 554
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_10

    .line 555
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 556
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    goto :goto_17

    .line 560
    :cond_10
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 562
    :goto_17
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_20

    .line 563
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 564
    :cond_20
    return-void
.end method

.method public whitelist test-api setKeepAlive(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1372
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1373
    return-void

    .line 1371
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOOBInline(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1158
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1160
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1161
    return-void

    .line 1159
    :cond_14
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/net/Socket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1828
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 1829
    return-object p0
.end method

.method public whitelist test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 1797
    return-void
.end method

.method public declared-synchronized whitelist test-api setReceiveBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1328
    if-lez p1, :cond_22

    .line 1331
    :try_start_3
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1333
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 1334
    monitor-exit p0

    return-void

    .line 1332
    .end local p0    # "this":Ljava/net/Socket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    .end local p1    # "size":I
    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 1329
    .restart local p1    # "size":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    .end local p1    # "size":I
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_20

    throw p1
.end method

.method public whitelist test-api setReuseAddress(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1514
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1516
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1517
    return-void

    .line 1515
    :cond_13
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api setSendBufferSize(I)V
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1254
    if-lez p1, :cond_22

    .line 1257
    :try_start_3
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1259
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 1260
    monitor-exit p0

    return-void

    .line 1258
    .end local p0    # "this":Ljava/net/Socket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    .end local p1    # "size":I
    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 1255
    .restart local p1    # "size":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    .end local p1    # "size":I
    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_20

    throw p1
.end method

.method public whitelist test-api setSoLinger(ZI)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1072
    const/16 v0, 0x80

    if-nez p1, :cond_16

    .line 1073
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_2b

    .line 1075
    :cond_16
    if-ltz p2, :cond_2c

    .line 1078
    const v1, 0xffff

    if-le p2, v1, :cond_20

    .line 1079
    const p2, 0xffff

    .line 1080
    :cond_20
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1082
    :goto_2b
    return-void

    .line 1076
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid value for SO_LINGER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_34
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api setSoTimeout(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1198
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1200
    if-ltz p1, :cond_18

    .line 1203
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_28

    .line 1204
    monitor-exit p0

    return-void

    .line 1201
    .end local p0    # "this":Ljava/net/Socket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    .end local p1    # "timeout":I
    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist test-api setTcpNoDelay(Z)V
    .registers 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1033
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1035
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1036
    return-void

    .line 1034
    :cond_13
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTrafficClass(I)V
    .registers 5
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1438
    if-ltz p1, :cond_2a

    const/16 v0, 0xff

    if-gt p1, v0, :cond_2a

    .line 1441
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1444
    :try_start_c
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_18
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_18} :catch_19

    .line 1450
    goto :goto_20

    .line 1445
    :catch_19
    move-exception v0

    .line 1448
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1451
    .end local v0    # "se":Ljava/net/SocketException;
    :goto_20
    return-void

    .line 1449
    .restart local v0    # "se":Ljava/net/SocketException;
    :cond_21
    throw v0

    .line 1442
    .end local v0    # "se":Ljava/net/SocketException;
    :cond_22
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1587
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1589
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1591
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1593
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 1594
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 1595
    return-void

    .line 1592
    :cond_1d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1588
    :cond_2d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1617
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1619
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1621
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1623
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 1624
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 1625
    return-void

    .line 1622
    :cond_1d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_25
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :cond_2d
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

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

    .line 1875
    const-class v0, Ljava/net/Socket;

    monitor-enter v0

    .line 1876
    :try_start_3
    sget-boolean v1, Ljava/net/Socket;->optionsSet:Z

    if-eqz v1, :cond_b

    .line 1877
    sget-object v1, Ljava/net/Socket;->options:Ljava/util/Set;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    return-object v1

    .line 1880
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    .line 1881
    .local v1, "impl":Ljava/net/SocketImpl;
    invoke-virtual {v1}, Ljava/net/SocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/Socket;->options:Ljava/util/Set;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a
    .catchall {:try_start_b .. :try_end_19} :catchall_28

    .line 1884
    .end local v1    # "impl":Ljava/net/SocketImpl;
    goto :goto_21

    .line 1882
    :catch_1a
    move-exception v1

    .line 1883
    .local v1, "e":Ljava/io/IOException;
    :try_start_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/Socket;->options:Ljava/util/Set;

    .line 1885
    .end local v1    # "e":Ljava/io/IOException;
    :goto_21
    const/4 v1, 0x1

    sput-boolean v1, Ljava/net/Socket;->optionsSet:Z

    .line 1886
    sget-object v1, Ljava/net/Socket;->options:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1887
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1635
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1637
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1638
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4b} :catch_4d

    .line 1636
    return-object v0

    .line 1640
    :cond_4c
    goto :goto_4e

    .line 1639
    :catch_4d
    move-exception v0

    .line 1641
    :goto_4e
    const-string v0, "Socket[unconnected]"

    return-object v0
.end method
