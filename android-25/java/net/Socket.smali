.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private connected:Z

.field private created:Z

.field impl:Ljava/net/SocketImpl;

.field private oldImpl:Z

.field private shutIn:Z

.field private shutOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1615
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    #@6
    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    #@8
    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    #@a
    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    #@c
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    #@13
    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    #@15
    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    #@17
    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    #@19
    .line 87
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    #@1c
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
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
    .line 210
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    const/4 v0, 0x0

    #@5
    check-cast v0, Ljava/net/SocketAddress;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    #@b
    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    .line 280
    new-instance v1, Ljava/net/InetSocketAddress;

    #@6
    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@9
    const/4 v2, 0x1

    #@a
    .line 279
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    #@d
    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
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

    #@0
    .prologue
    .line 363
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    const/4 v0, 0x0

    #@5
    check-cast v0, Ljava/net/SocketAddress;

    #@7
    invoke-direct {p0, v1, p2, v0, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    #@a
    .line 362
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 241
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    #@3
    move-result-object v1

    #@4
    const/4 v0, 0x0

    #@5
    check-cast v0, Ljava/net/SocketAddress;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    #@b
    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    .line 318
    new-instance v1, Ljava/net/InetSocketAddress;

    #@6
    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@9
    const/4 v2, 0x1

    #@a
    .line 317
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    #@d
    .line 316
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 3
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

    #@0
    .prologue
    .line 404
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/net/InetSocketAddress;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@a
    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    #@d
    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 6
    .param p1, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    #@6
    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    #@8
    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    #@a
    .line 64
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    #@c
    .line 65
    new-instance v4, Ljava/lang/Object;

    #@e
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    #@13
    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    #@15
    .line 67
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    #@17
    .line 77
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    #@19
    .line 120
    if-nez p1, :cond_0

    #@1b
    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v5, "Invalid Proxy"

    #@20
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 123
    :cond_0
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@26
    if-ne p1, v4, :cond_4

    #@28
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@2a
    .line 124
    .local v2, "p":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@2d
    move-result-object v4

    #@2e
    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    #@30
    if-ne v4, v5, :cond_6

    #@32
    .line 125
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@35
    move-result-object v3

    #@36
    .line 126
    .local v3, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/net/InetSocketAddress;

    #@3c
    .line 127
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@3f
    move-result-object v4

    #@40
    if-eqz v4, :cond_1

    #@42
    .line 128
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@45
    move-result-object v4

    #@46
    const-string/jumbo v5, "Socket"

    #@49
    invoke-direct {p0, v4, v5}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@4c
    .line 130
    :cond_1
    if-eqz v3, :cond_3

    #@4e
    .line 131
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_2

    #@54
    .line 132
    new-instance v1, Ljava/net/InetSocketAddress;

    #@56
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@5d
    move-result v5

    #@5e
    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@61
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    move-object v0, v1

    #@62
    .line 133
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_5

    #@68
    .line 134
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@6f
    move-result v5

    #@70
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@73
    .line 139
    :cond_3
    :goto_1
    new-instance v4, Ljava/net/SocksSocketImpl;

    #@75
    invoke-direct {v4, v2}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    #@78
    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@7a
    .line 140
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@7c
    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    #@7f
    .line 118
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :goto_2
    return-void

    #@80
    .line 123
    .end local v2    # "p":Ljava/net/Proxy;
    :cond_4
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    #@83
    move-result-object v2

    #@84
    goto :goto_0

    #@85
    .line 136
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v2    # "p":Ljava/net/Proxy;
    .restart local v3    # "security":Ljava/lang/SecurityManager;
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    .line 137
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@90
    move-result v5

    #@91
    .line 136
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@94
    goto :goto_1

    #@95
    .line 142
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_6
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@97
    if-ne v2, v4, :cond_8

    #@99
    .line 143
    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@9b
    if-nez v4, :cond_7

    #@9d
    .line 144
    new-instance v4, Ljava/net/PlainSocketImpl;

    #@9f
    invoke-direct {v4}, Ljava/net/PlainSocketImpl;-><init>()V

    #@a2
    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a4
    .line 145
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a6
    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    #@a9
    goto :goto_2

    #@aa
    .line 147
    :cond_7
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    #@ad
    goto :goto_2

    #@ae
    .line 149
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@b0
    const-string/jumbo v5, "Invalid Proxy"

    #@b3
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b6
    throw v4
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    #@6
    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    #@8
    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    #@a
    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    #@c
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@11
    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    #@13
    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    #@15
    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    #@17
    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    #@19
    .line 165
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@1b
    .line 166
    if-eqz p1, :cond_0

    #@1d
    .line 167
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    #@20
    .line 168
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@22
    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    #@25
    .line 164
    :cond_0
    return-void
.end method

.method private constructor <init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V
    .locals 7
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/SocketAddress;
    .param p4, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    #@7
    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    #@9
    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    #@b
    .line 64
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    #@d
    .line 65
    new-instance v4, Ljava/lang/Object;

    #@f
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    #@12
    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    #@14
    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    #@16
    .line 67
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    #@18
    .line 77
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    #@1a
    .line 419
    if-eqz p1, :cond_0

    #@1c
    array-length v4, p1

    #@1d
    if-nez v4, :cond_1

    #@1f
    .line 420
    :cond_0
    new-instance v4, Ljava/net/SocketException;

    #@21
    const-string/jumbo v5, "Impossible: empty address list"

    #@24
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@27
    throw v4

    #@28
    .line 423
    :cond_1
    const/4 v3, 0x0

    #@29
    .local v3, "i":I
    :goto_0
    array-length v4, p1

    #@2a
    if-ge v3, v4, :cond_3

    #@2c
    .line 424
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    #@2f
    .line 426
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@31
    aget-object v4, p1, v3

    #@33
    invoke-direct {v0, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@36
    .line 427
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p4}, Ljava/net/Socket;->createImpl(Z)V

    #@39
    .line 428
    if-eqz p3, :cond_2

    #@3b
    .line 429
    invoke-virtual {p0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    #@3e
    .line 431
    :cond_2
    invoke-virtual {p0, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 418
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :cond_3
    return-void

    #@42
    .line 433
    :catch_0
    move-exception v2

    #@43
    .line 438
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@45
    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    #@48
    .line 439
    const/4 v4, 0x1

    #@49
    iput-boolean v4, p0, Ljava/net/Socket;->closed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@4b
    .line 445
    :goto_1
    array-length v4, p1

    #@4c
    add-int/lit8 v4, v4, -0x1

    #@4e
    if-ne v3, v4, :cond_4

    #@50
    .line 446
    throw v2

    #@51
    .line 440
    :catch_1
    move-exception v1

    #@52
    .line 441
    .local v1, "ce":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    #@55
    goto :goto_1

    #@56
    .line 451
    .end local v1    # "ce":Ljava/io/IOException;
    :cond_4
    iput-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@58
    .line 452
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    #@5a
    .line 453
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    #@5c
    .line 454
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    #@5e
    .line 423
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_0
.end method

.method private checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    #@0
    .prologue
    .line 658
    if-nez p1, :cond_0

    #@2
    .line 659
    return-void

    #@3
    .line 661
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    #@5
    if-nez v0, :cond_1

    #@7
    instance-of v0, p1, Ljava/net/Inet6Address;

    #@9
    :goto_0
    if-nez v0, :cond_2

    #@b
    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ": invalid address type"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 661
    :cond_1
    const/4 v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 657
    :cond_2
    return-void
.end method

.method private checkOldImpl()V
    .locals 1

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 479
    return-void

    #@5
    .line 484
    :cond_0
    new-instance v0, Ljava/net/Socket$1;

    #@7
    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    #@a
    .line 483
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Boolean;

    #@10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@13
    move-result v0

    #@14
    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    #@16
    .line 477
    return-void
.end method

.method private static nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 409
    if-nez p0, :cond_0

    #@2
    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 412
    :cond_0
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [Ljava/net/InetAddress;

    #@b
    const/4 v1, 0x0

    #@c
    aput-object p0, v0, v1

    #@e
    return-object v0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v2, Ljava/net/Socket;

    #@2
    monitor-enter v2

    #@3
    .line 1644
    :try_start_0
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1645
    new-instance v1, Ljava/net/SocketException;

    #@9
    const-string/jumbo v3, "factory already defined"

    #@c
    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 1647
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@16
    move-result-object v0

    #@17
    .line 1648
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@19
    .line 1649
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@1c
    .line 1651
    :cond_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 1642
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 638
    new-instance v3, Ljava/net/SocketException;

    #@8
    const-string/jumbo v4, "Socket is closed"

    #@b
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 639
    :cond_0
    iget-boolean v3, p0, Ljava/net/Socket;->oldImpl:Z

    #@11
    if-nez v3, :cond_1

    #@13
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 640
    new-instance v3, Ljava/net/SocketException;

    #@1b
    const-string/jumbo v4, "Already bound"

    #@1e
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 642
    :cond_1
    if-eqz p1, :cond_2

    #@24
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    #@26
    if-eqz v3, :cond_3

    #@28
    :cond_2
    move-object v1, p1

    #@29
    .line 644
    check-cast v1, Ljava/net/InetSocketAddress;

    #@2b
    .line 645
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_4

    #@2d
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_4

    #@33
    .line 646
    new-instance v3, Ljava/net/SocketException;

    #@35
    const-string/jumbo v4, "Unresolved address"

    #@38
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 643
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v4, "Unsupported address type"

    #@41
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3

    #@45
    .line 647
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4
    if-nez v1, :cond_5

    #@47
    .line 648
    new-instance v1, Ljava/net/InetSocketAddress;

    #@49
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    const/4 v3, 0x0

    #@4a
    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@4d
    .line 650
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@50
    move-result-object v0

    #@51
    .line 651
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@54
    move-result v2

    #@55
    .line 652
    .local v2, "port":I
    const-string/jumbo v3, "bind"

    #@58
    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@5b
    .line 653
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3, v0, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@62
    .line 654
    const/4 v3, 0x1

    #@63
    iput-boolean v3, p0, Ljava/net/Socket;->bound:Z

    #@65
    .line 636
    return-void
.end method

.method public declared-synchronized close()V
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
    .line 1459
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    #@3
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 1460
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b
    monitor-exit p0

    #@c
    .line 1461
    return-void

    #@d
    .line 1462
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1463
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@13
    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    #@16
    .line 1464
    :cond_1
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@1a
    monitor-exit p0

    #@1b
    .line 1458
    return-void

    #@1c
    .line 1459
    :catchall_0
    move-exception v0

    #@1d
    :try_start_5
    monitor-exit v1

    #@1e
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@1f
    :catchall_1
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 554
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    #@4
    .line 553
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 7
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 575
    if-nez p1, :cond_0

    #@3
    .line 576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v5, "connect: The address can\'t be null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 578
    :cond_0
    if-gez p2, :cond_1

    #@e
    .line 579
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v5, "connect: timeout can\'t be negative"

    #@13
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v4

    #@17
    .line 581
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 582
    new-instance v4, Ljava/net/SocketException;

    #@1f
    const-string/jumbo v5, "Socket is closed"

    #@22
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 584
    :cond_2
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    #@28
    if-nez v4, :cond_3

    #@2a
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 585
    new-instance v4, Ljava/net/SocketException;

    #@32
    const-string/jumbo v5, "already connected"

    #@35
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@38
    throw v4

    #@39
    .line 587
    :cond_3
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    #@3b
    if-nez v4, :cond_4

    #@3d
    .line 588
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3f
    const-string/jumbo v5, "Unsupported address type"

    #@42
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v4

    #@46
    :cond_4
    move-object v1, p1

    #@47
    .line 590
    check-cast v1, Ljava/net/InetSocketAddress;

    #@49
    .line 591
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@4c
    move-result-object v0

    #@4d
    .line 592
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@50
    move-result v2

    #@51
    .line 593
    .local v2, "port":I
    const-string/jumbo v4, "connect"

    #@54
    invoke-direct {p0, v0, v4}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@57
    .line 595
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@5a
    move-result-object v3

    #@5b
    .line 596
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5

    #@5d
    .line 597
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_7

    #@63
    .line 598
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@6a
    .line 602
    :cond_5
    :goto_0
    iget-boolean v4, p0, Ljava/net/Socket;->created:Z

    #@6c
    if-nez v4, :cond_6

    #@6e
    .line 603
    invoke-virtual {p0, v6}, Ljava/net/Socket;->createImpl(Z)V

    #@71
    .line 604
    :cond_6
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    #@73
    if-nez v4, :cond_8

    #@75
    .line 605
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@77
    invoke-virtual {v4, v1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    #@7a
    .line 613
    :goto_1
    iput-boolean v6, p0, Ljava/net/Socket;->connected:Z

    #@7c
    .line 618
    iput-boolean v6, p0, Ljava/net/Socket;->bound:Z

    #@7e
    .line 574
    return-void

    #@7f
    .line 600
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@86
    goto :goto_0

    #@87
    .line 606
    :cond_8
    if-nez p2, :cond_a

    #@89
    .line 607
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_9

    #@8f
    .line 608
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@91
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    invoke-virtual {v4, v5, v2}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    #@98
    goto :goto_1

    #@99
    .line 610
    :cond_9
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@9b
    invoke-virtual {v4, v0, v2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    #@9e
    goto :goto_1

    #@9f
    .line 612
    :cond_a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@a1
    const-string/jumbo v5, "SocketImpl.connect(addr, timeout)"

    #@a4
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v4
.end method

.method createImpl(Z)V
    .locals 3
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 468
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    #@7
    .line 470
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@9
    invoke-virtual {v1, p1}, Ljava/net/SocketImpl;->create(Z)V

    #@c
    .line 471
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 466
    return-void

    #@10
    .line 472
    :catch_0
    move-exception v0

    #@11
    .line 473
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    #@13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    #@0
    .prologue
    .line 848
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 1703
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@2
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 536
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    #@8
    .line 537
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 698
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 699
    return-object v2

    #@8
    .line 701
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 702
    :catch_0
    move-exception v0

    #@12
    .line 704
    .local v0, "e":Ljava/net/SocketException;
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 897
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 898
    new-instance v3, Ljava/net/SocketException;

    #@8
    const-string/jumbo v4, "Socket is closed"

    #@b
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 899
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 900
    new-instance v3, Ljava/net/SocketException;

    #@17
    const-string/jumbo v4, "Socket is not connected"

    #@1a
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 901
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 902
    new-instance v3, Ljava/net/SocketException;

    #@26
    const-string/jumbo v4, "Socket input is shutdown"

    #@29
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3

    #@2d
    .line 903
    :cond_2
    move-object v2, p0

    #@2e
    .line 904
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    #@2f
    .line 907
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$2;

    #@31
    invoke-direct {v3, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    #@34
    .line 906
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 915
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    #@3b
    .line 912
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@3c
    .line 913
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/io/IOException;

    #@42
    throw v3
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1303
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1304
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1305
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    const/16 v1, 0x8

    #@15
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/Boolean;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 7

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@3
    move-result v5

    #@4
    if-nez v5, :cond_0

    #@6
    .line 718
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    #@9
    move-result-object v5

    #@a
    return-object v5

    #@b
    .line 719
    :cond_0
    const/4 v3, 0x0

    #@c
    .line 721
    .local v3, "in":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@f
    move-result-object v5

    #@10
    const/16 v6, 0xf

    #@12
    invoke-virtual {v5, v6}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    move-object v0, v5

    #@17
    check-cast v0, Ljava/net/InetAddress;

    #@19
    move-object v3, v0

    #@1a
    .line 723
    .local v3, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_1

    #@20
    .line 724
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@23
    move-result-object v4

    #@24
    .line 725
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_1

    #@26
    .line 726
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    const/4 v6, -0x1

    #@2b
    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@2e
    .line 728
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 729
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-object v3

    #@38
    .line 736
    :cond_2
    :goto_0
    return-object v3

    #@39
    .line 733
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@3a
    .line 734
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    #@3d
    move-result-object v3

    #@3e
    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0

    #@3f
    .line 731
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    #@40
    .line 732
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@43
    move-result-object v3

    #@44
    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 771
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 772
    return v2

    #@8
    .line 774
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 775
    :catch_0
    move-exception v0

    #@12
    .line 778
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 825
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 826
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 827
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@15
    return-object v0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1100
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1101
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1102
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    const/16 v1, 0x1003

    #@15
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/Boolean;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 937
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 938
    new-instance v3, Ljava/net/SocketException;

    #@8
    const-string/jumbo v4, "Socket is closed"

    #@b
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 939
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 940
    new-instance v3, Ljava/net/SocketException;

    #@17
    const-string/jumbo v4, "Socket is not connected"

    #@1a
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 941
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 942
    new-instance v3, Ljava/net/SocketException;

    #@26
    const-string/jumbo v4, "Socket output is shutdown"

    #@29
    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v3

    #@2d
    .line 943
    :cond_2
    move-object v2, p0

    #@2e
    .line 944
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    #@2f
    .line 947
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$3;

    #@31
    invoke-direct {v3, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    #@34
    .line 946
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    .line 955
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    #@3b
    .line 952
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    #@3c
    .line 953
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Ljava/io/IOException;

    #@42
    throw v3
.end method

.method public getPort()I
    .locals 2

    #@0
    .prologue
    .line 750
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 751
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 753
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 754
    :catch_0
    move-exception v0

    #@12
    .line 757
    .local v0, "e":Ljava/net/SocketException;
    const/4 v1, -0x1

    #@13
    return v1
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1268
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1269
    new-instance v2, Ljava/net/SocketException;

    #@9
    const-string/jumbo v3, "Socket is closed"

    #@c
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 1270
    :cond_0
    const/4 v1, 0x0

    #@14
    .line 1271
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@17
    move-result-object v2

    #@18
    const/16 v3, 0x1002

    #@1a
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 1272
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 1273
    check-cast v0, Ljava/lang/Integer;

    #@24
    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result v1

    #@28
    :cond_1
    monitor-exit p0

    #@29
    .line 1275
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 799
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 800
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 801
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@15
    return-object v0
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
    .line 1431
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1432
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1433
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x4

    #@14
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/Boolean;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1196
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1197
    new-instance v2, Ljava/net/SocketException;

    #@9
    const-string/jumbo v3, "Socket is closed"

    #@c
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 1198
    :cond_0
    const/4 v1, 0x0

    #@14
    .line 1199
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@17
    move-result-object v2

    #@18
    const/16 v3, 0x1001

    #@1a
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 1200
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 1201
    check-cast v0, Ljava/lang/Integer;

    #@24
    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result v1

    #@28
    :cond_1
    monitor-exit p0

    #@29
    .line 1203
    return v1
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1034
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1035
    new-instance v1, Ljava/net/SocketException;

    #@8
    const-string/jumbo v2, "Socket is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1036
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v1

    #@13
    const/16 v2, 0x80

    #@15
    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    .line 1037
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1038
    check-cast v0, Ljava/lang/Integer;

    #@1f
    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 1040
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, -0x1

    #@25
    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1140
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1141
    new-instance v1, Ljava/net/SocketException;

    #@9
    const-string/jumbo v2, "Socket is closed"

    #@c
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1

    #@13
    .line 1142
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@16
    move-result-object v1

    #@17
    const/16 v2, 0x1006

    #@19
    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 1144
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1145
    check-cast v0, Ljava/lang/Integer;

    #@23
    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v1

    #@27
    monitor-exit p0

    #@28
    return v1

    #@29
    .line 1147
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    #@2a
    monitor-exit p0

    #@2b
    return v1
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 987
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 988
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 989
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/Boolean;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1378
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Integer;

    #@b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 1574
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    #@0
    .prologue
    .line 1585
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1586
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1585
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isConnected()Z
    .locals 1

    #@0
    .prologue
    .line 1557
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 1598
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    #@2
    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    #@0
    .prologue
    .line 1609
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    #@2
    return v0
.end method

.method final postAccept()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 670
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    #@3
    .line 671
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    #@5
    .line 672
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    #@7
    .line 669
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1056
    new-instance v0, Ljava/net/SocketException;

    #@c
    const-string/jumbo v1, "Urgent data not supported"

    #@f
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1058
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    #@1a
    .line 1054
    return-void
.end method

.method setBound()V
    .locals 1

    #@0
    .prologue
    .line 680
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    #@3
    .line 679
    return-void
.end method

.method setConnected()V
    .locals 1

    #@0
    .prologue
    .line 684
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    #@3
    .line 683
    return-void
.end method

.method setCreated()V
    .locals 1

    #@0
    .prologue
    .line 676
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    #@3
    .line 675
    return-void
.end method

.method setImpl()V
    .locals 1

    #@0
    .prologue
    .line 513
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 514
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    #@6
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@c
    .line 515
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    #@f
    .line 521
    :goto_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 522
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    #@18
    .line 512
    :cond_0
    return-void

    #@19
    .line 519
    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    #@1b
    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    #@1e
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@20
    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1288
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1289
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1290
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v1

    #@17
    const/16 v2, 0x8

    #@19
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1c
    .line 1287
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1085
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1086
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1087
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v1

    #@17
    const/16 v2, 0x1003

    #@19
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1c
    .line 1084
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    #@0
    .prologue
    .line 1694
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1247
    if-gtz p1, :cond_0

    #@3
    .line 1248
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "invalid receive size"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 1250
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1251
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1252
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Ljava/lang/Integer;

    #@24
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@27
    const/16 v2, 0x1002

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 1246
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1416
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1417
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1418
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x4

    #@18
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1b
    .line 1415
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1175
    if-gtz p1, :cond_0

    #@3
    .line 1176
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "negative send size"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 1178
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1179
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1180
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Ljava/lang/Integer;

    #@24
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@27
    const/16 v2, 0x1001

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 1174
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x80

    #@2
    .line 1007
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1008
    new-instance v0, Ljava/net/SocketException;

    #@a
    const-string/jumbo v1, "Socket is closed"

    #@d
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 1009
    :cond_0
    if-nez p1, :cond_1

    #@13
    .line 1010
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Ljava/lang/Boolean;

    #@19
    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    #@1c
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1f
    .line 1006
    :goto_0
    return-void

    #@20
    .line 1012
    :cond_1
    if-gez p2, :cond_2

    #@22
    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "invalid value for SO_LINGER"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 1015
    :cond_2
    const v0, 0xffff

    #@2e
    if-le p2, v0, :cond_3

    #@30
    .line 1016
    const p2, 0xffff

    #@33
    .line 1017
    :cond_3
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@36
    move-result-object v0

    #@37
    new-instance v1, Ljava/lang/Integer;

    #@39
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    #@3c
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@3f
    goto :goto_0
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
    .line 1122
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1123
    new-instance v0, Ljava/net/SocketException;

    #@9
    const-string/jumbo v1, "Socket is closed"

    #@c
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

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
    .line 1124
    :cond_0
    if-gez p1, :cond_1

    #@15
    .line 1125
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v1, "timeout can\'t be negative"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1127
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Ljava/lang/Integer;

    #@24
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@27
    const/16 v2, 0x1006

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 1121
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 972
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 973
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 974
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@12
    move-result-object v0

    #@13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x1

    #@18
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@1b
    .line 971
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1354
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xff

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "tc is not in range 0 -- 255"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1357
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 1358
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1359
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Ljava/lang/Integer;

    #@24
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@27
    const/4 v2, 0x3

    #@28
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    #@2b
    .line 1353
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1487
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1488
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1489
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1490
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is not connected"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1491
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1492
    new-instance v0, Ljava/net/SocketException;

    #@26
    const-string/jumbo v1, "Socket input is already shutdown"

    #@29
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1493
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    #@34
    .line 1494
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    #@37
    .line 1485
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1517
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1518
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1519
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 1520
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is not connected"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1521
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 1522
    new-instance v0, Ljava/net/SocketException;

    #@26
    const-string/jumbo v1, "Socket output is already shutdown"

    #@29
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 1523
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    #@34
    .line 1524
    const/4 v0, 0x1

    #@35
    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    #@37
    .line 1515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1535
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Socket[address="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 1537
    const-string/jumbo v2, ",port="

    #@21
    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 1537
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/net/SocketImpl;->getPort()I

    #@2c
    move-result v2

    #@2d
    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 1538
    const-string/jumbo v2, ",localPort="

    #@34
    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 1538
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    #@3f
    move-result v2

    #@40
    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 1538
    const-string/jumbo v2, "]"

    #@47
    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    move-result-object v1

    #@4f
    return-object v1

    #@50
    .line 1539
    :catch_0
    move-exception v0

    #@51
    .line 1541
    :cond_0
    const-string/jumbo v1, "Socket[unconnected]"

    #@54
    return-object v1
.end method
