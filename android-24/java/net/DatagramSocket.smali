.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final ST_CONNECTED:I = 0x1

.field static final ST_CONNECTED_NO_IMPL:I = 0x2

.field static final ST_NOT_CONNECTED:I

.field static factory:Ljava/net/DatagramSocketImplFactory;

.field static implClass:Ljava/lang/Class;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field connectState:I

.field connectedAddress:Ljava/net/InetAddress;

.field connectedPort:I

.field private created:Z

.field impl:Ljava/net/DatagramSocketImpl;

.field oldImpl:Z

.field private pendingConnectException:Ljava/net/SocketException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 321
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljava/net/DatagramSocket;->implClass:Ljava/lang/Class;

    #@3
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    #@6
    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    #@8
    .line 79
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    #@a
    .line 80
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    #@11
    .line 90
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@13
    .line 102
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    #@15
    .line 107
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@18
    .line 108
    const/4 v0, -0x1

    #@19
    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@1b
    .line 199
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    #@1e
    .line 200
    new-instance v0, Ljava/net/InetSocketAddress;

    #@20
    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@23
    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    #@26
    .line 197
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    #@4
    .line 269
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "laddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/net/InetSocketAddress;

    #@2
    invoke-direct {v0, p2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@5
    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    #@8
    .line 297
    return-void
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .locals 3
    .param p1, "impl"    # Ljava/net/DatagramSocketImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    #@7
    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    #@9
    .line 79
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    #@b
    .line 80
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    #@12
    .line 90
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@14
    .line 102
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    #@16
    .line 107
    iput-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@18
    .line 108
    const/4 v0, -0x1

    #@19
    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@1b
    .line 212
    if-nez p1, :cond_0

    #@1d
    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    #@1f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@22
    throw v0

    #@23
    .line 214
    :cond_0
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@25
    .line 215
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    #@28
    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 77
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    #@7
    .line 78
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->bound:Z

    #@9
    .line 79
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z

    #@b
    .line 80
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    #@12
    .line 90
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@14
    .line 102
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I

    #@16
    .line 107
    iput-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@18
    .line 108
    const/4 v0, -0x1

    #@19
    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@1b
    .line 243
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    #@1e
    .line 244
    if-eqz p1, :cond_0

    #@20
    .line 245
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    #@23
    .line 241
    :cond_0
    return-void
.end method

.method private checkOldImpl()V
    .locals 2

    #@0
    .prologue
    .line 302
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 303
    return-void

    #@5
    .line 308
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket$1;

    #@7
    invoke-direct {v1, p0}, Ljava/net/DatagramSocket$1;-><init>(Ljava/net/DatagramSocket;)V

    #@a
    .line 307
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 301
    :goto_0
    return-void

    #@e
    .line 316
    :catch_0
    move-exception v0

    #@f
    .line 317
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    #@10
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@12
    goto :goto_0
.end method

.method private declared-synchronized connectInternal(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 123
    if-ltz p2, :cond_0

    #@3
    const v1, 0xffff

    #@6
    if-le p2, v1, :cond_1

    #@8
    .line 124
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "connect: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1

    #@25
    .line 126
    :cond_1
    if-nez p1, :cond_2

    #@27
    .line 127
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v2, "connect: null address"

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 129
    :cond_2
    const-string/jumbo v1, "connect"

    #@33
    invoke-virtual {p0, p1, v1}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@36
    .line 130
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    monitor-exit p0

    #@3d
    .line 131
    return-void

    #@3e
    .line 132
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@41
    move-result-object v0

    #@42
    .line 133
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_4

    #@44
    .line 134
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_7

    #@4a
    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    #@4d
    .line 142
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@50
    move-result v1

    #@51
    if-nez v1, :cond_5

    #@53
    .line 143
    new-instance v1, Ljava/net/InetSocketAddress;

    #@55
    const/4 v2, 0x0

    #@56
    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@59
    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    #@5c
    .line 146
    :cond_5
    iput-object p1, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@5e
    .line 147
    iput p2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@60
    .line 151
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@62
    if-nez v1, :cond_6

    #@64
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@66
    instance-of v1, v1, Ljava/net/AbstractPlainDatagramSocketImpl;

    #@68
    if-eqz v1, :cond_8

    #@6a
    .line 152
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@6c
    check-cast v1, Ljava/net/AbstractPlainDatagramSocketImpl;

    #@6e
    invoke-virtual {v1}, Ljava/net/AbstractPlainDatagramSocketImpl;->nativeConnectDisabled()Z

    #@71
    move-result v1

    #@72
    .line 151
    if-eqz v1, :cond_8

    #@74
    .line 153
    :cond_6
    const/4 v1, 0x2

    #@75
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@77
    :goto_1
    monitor-exit p0

    #@78
    .line 122
    return-void

    #@79
    .line 137
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@80
    .line 138
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {v0, v1, p2}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V

    #@87
    goto :goto_0

    #@88
    .line 165
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    #@8f
    .line 168
    const/4 v1, 0x1

    #@90
    iput v1, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    goto :goto_1
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/DatagramSocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v2, Ljava/net/DatagramSocket;

    #@2
    monitor-enter v2

    #@3
    .line 1284
    :try_start_0
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1285
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
    .line 1287
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@16
    move-result-object v0

    #@17
    .line 1288
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@19
    .line 1289
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@1c
    .line 1291
    :cond_1
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 1282
    return-void
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/net/SocketAddress;)V
    .locals 9
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v7

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 372
    new-instance v7, Ljava/net/SocketException;

    #@9
    const-string/jumbo v8, "Socket is closed"

    #@c
    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@f
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v7

    #@11
    monitor-exit p0

    #@12
    throw v7

    #@13
    .line 373
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_1

    #@19
    .line 374
    new-instance v7, Ljava/net/SocketException;

    #@1b
    const-string/jumbo v8, "already bound"

    #@1e
    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@21
    throw v7

    #@22
    .line 375
    :cond_1
    if-nez p1, :cond_2

    #@24
    .line 376
    new-instance v1, Ljava/net/InetSocketAddress;

    #@26
    const/4 v7, 0x0

    #@27
    invoke-direct {v1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@2a
    .end local p1    # "addr":Ljava/net/SocketAddress;
    .local v1, "addr":Ljava/net/SocketAddress;
    move-object p1, v1

    #@2b
    .line 377
    .end local v1    # "addr":Ljava/net/SocketAddress;
    .restart local p1    # "addr":Ljava/net/SocketAddress;
    :cond_2
    instance-of v7, p1, Ljava/net/InetSocketAddress;

    #@2d
    if-nez v7, :cond_3

    #@2f
    .line 378
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v8, "Unsupported address type!"

    #@34
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v7

    #@38
    .line 379
    :cond_3
    move-object v0, p1

    #@39
    check-cast v0, Ljava/net/InetSocketAddress;

    #@3b
    move-object v3, v0

    #@3c
    .line 380
    .local v3, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_4

    #@42
    .line 381
    new-instance v7, Ljava/net/SocketException;

    #@44
    const-string/jumbo v8, "Unresolved address"

    #@47
    invoke-direct {v7, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v7

    #@4b
    .line 382
    :cond_4
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@4e
    move-result-object v4

    #@4f
    .line 383
    .local v4, "iaddr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    #@52
    move-result v5

    #@53
    .line 384
    .local v5, "port":I
    const-string/jumbo v7, "bind"

    #@56
    invoke-virtual {p0, v4, v7}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@59
    .line 385
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@5c
    move-result-object v6

    #@5d
    .line 386
    .local v6, "sec":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_5

    #@5f
    .line 387
    invoke-virtual {v6, v5}, Ljava/lang/SecurityManager;->checkListen(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .line 390
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7, v5, v4}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 395
    const/4 v7, 0x1

    #@6a
    :try_start_3
    iput-boolean v7, p0, Ljava/net/DatagramSocket;->bound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    monitor-exit p0

    #@6d
    .line 370
    return-void

    #@6e
    .line 391
    :catch_0
    move-exception v2

    #@6f
    .line 392
    .local v2, "e":Ljava/net/SocketException;
    :try_start_4
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v7}, Ljava/net/DatagramSocketImpl;->close()V

    #@76
    .line 393
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    if-nez p1, :cond_0

    #@2
    .line 400
    return-void

    #@3
    .line 402
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
    .line 403
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
    .line 402
    :cond_1
    const/4 v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 398
    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 1209
    iget-object v1, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1210
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    monitor-exit v1

    #@a
    .line 1211
    return-void

    #@b
    .line 1212
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@d
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    #@10
    .line 1213
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Ljava/net/DatagramSocket;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 1208
    return-void

    #@15
    .line 1209
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 456
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 454
    :goto_0
    return-void

    #@4
    .line 457
    :catch_0
    move-exception v0

    #@5
    .line 461
    .local v0, "se":Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    #@7
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 489
    if-nez p1, :cond_0

    #@2
    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Address can\'t be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 491
    :cond_0
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 492
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v2, "Unsupported address type"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    :cond_1
    move-object v0, p1

    #@19
    .line 493
    check-cast v0, Ljava/net/InetSocketAddress;

    #@1b
    .line 494
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 495
    new-instance v1, Ljava/net/SocketException;

    #@23
    const-string/jumbo v2, "Unresolved address"

    #@26
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 496
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@31
    move-result v2

    #@32
    invoke-direct {p0, v1, v2}, Ljava/net/DatagramSocket;->connectInternal(Ljava/net/InetAddress;I)V

    #@35
    .line 488
    return-void
.end method

.method createImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 324
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 325
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 326
    sget-object v2, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    #@b
    invoke-interface {v2}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@11
    .line 327
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    #@14
    .line 336
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@16
    invoke-virtual {v2}, Ljava/net/DatagramSocketImpl;->create()V

    #@19
    .line 337
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->created:Z

    #@1b
    .line 323
    return-void

    #@1c
    .line 329
    :cond_1
    instance-of v2, p0, Ljava/net/MulticastSocket;

    #@1e
    if-eqz v2, :cond_2

    #@20
    move v0, v1

    #@21
    .line 330
    .local v0, "isMulticast":Z
    :goto_1
    invoke-static {v0}, Ljava/net/DefaultDatagramSocketImplFactory;->createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@27
    .line 332
    invoke-direct {p0}, Ljava/net/DatagramSocket;->checkOldImpl()V

    #@2a
    goto :goto_0

    #@2b
    .line 329
    .end local v0    # "isMulticast":Z
    :cond_2
    const/4 v0, 0x0

    #@2c
    goto :goto_1
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 506
    monitor-enter p0

    #@1
    .line 507
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 508
    return-void

    #@9
    .line 509
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/net/DatagramSocket;->connectState:I

    #@b
    const/4 v1, 0x1

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 510
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@10
    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    #@13
    .line 512
    :cond_1
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@16
    .line 513
    const/4 v0, -0x1

    #@17
    iput v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@19
    .line 514
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Ljava/net/DatagramSocket;->connectState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 505
    return-void

    #@1e
    .line 506
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public declared-synchronized getBroadcast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1123
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1124
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
    .line 1125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@16
    move-result-object v0

    #@17
    const/16 v1, 0x20

    #@19
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Ljava/lang/Boolean;

    #@1f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    move-result v0

    #@23
    monitor-exit p0

    #@24
    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    #@0
    .prologue
    .line 1244
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 1296
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@2
    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    return-object v0
.end method

.method getImpl()Ljava/net/DatagramSocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 350
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->created:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 351
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->createImpl()V

    #@7
    .line 352
    :cond_0
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@9
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 834
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 835
    return-object v5

    #@8
    .line 836
    :cond_0
    const/4 v2, 0x0

    #@9
    .line 838
    .local v2, "in":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@c
    move-result-object v4

    #@d
    const/16 v5, 0xf

    #@f
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    move-object v0, v4

    #@14
    check-cast v0, Ljava/net/InetAddress;

    #@16
    move-object v2, v0

    #@17
    .line 839
    .local v2, "in":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 840
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    #@20
    move-result-object v2

    #@21
    .line 842
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@24
    move-result-object v3

    #@25
    .line 843
    .local v3, "s":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_2

    #@27
    .line 844
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    const/4 v5, -0x1

    #@2c
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 849
    .end local v3    # "s":Ljava/lang/SecurityManager;
    :cond_2
    :goto_0
    return-object v2

    #@30
    .line 846
    .end local v2    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    #@31
    .line 847
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v2

    #@35
    .restart local v2    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 2

    #@0
    .prologue
    .line 861
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 862
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 864
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 865
    :catch_0
    move-exception v0

    #@12
    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 608
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 609
    return-object v1

    #@8
    .line 610
    :cond_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 611
    return-object v1

    #@f
    .line 612
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    #@11
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    #@18
    move-result v2

    #@19
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@1c
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 571
    iget v0, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@2
    return v0
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
    .line 1021
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1022
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
    .line 1023
    :cond_0
    const/4 v1, 0x0

    #@14
    .line 1024
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@17
    move-result-object v2

    #@18
    const/16 v3, 0x1002

    #@1a
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 1025
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 1026
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
    .line 1028
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 591
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 592
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 593
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@15
    return-object v0
.end method

.method public declared-synchronized getReuseAddress()Z
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
    .line 1085
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1086
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
    .line 1087
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x4

    #@18
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 1088
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Boolean;

    #@1e
    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result v1

    #@22
    monitor-exit p0

    #@23
    return v1
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
    .line 963
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 964
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
    .line 965
    :cond_0
    const/4 v1, 0x0

    #@14
    .line 966
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@17
    move-result-object v2

    #@18
    const/16 v3, 0x1001

    #@1a
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 967
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 968
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
    .line 970
    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 901
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 902
    new-instance v1, Ljava/net/SocketException;

    #@a
    const-string/jumbo v2, "Socket is closed"

    #@d
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1

    #@14
    .line 903
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v1

    #@18
    if-nez v1, :cond_1

    #@1a
    monitor-exit p0

    #@1b
    .line 904
    return v3

    #@1c
    .line 905
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@1f
    move-result-object v1

    #@20
    const/16 v2, 0x1006

    #@22
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    .line 907
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 908
    check-cast v0, Ljava/lang/Integer;

    #@2c
    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    move-result v1

    #@30
    monitor-exit p0

    #@31
    return v1

    #@32
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    monitor-exit p0

    #@33
    .line 910
    return v3
.end method

.method public declared-synchronized getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1191
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1192
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
    .line 1193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@16
    move-result-object v0

    #@17
    const/4 v1, 0x3

    #@18
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/lang/Integer;

    #@1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result v0

    #@22
    monitor-exit p0

    #@23
    return v0
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 529
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->bound:Z

    #@2
    return v0
.end method

.method public isClosed()Z
    .locals 2

    #@0
    .prologue
    .line 1224
    iget-object v0, p0, Ljava/net/DatagramSocket;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1225
    :try_start_0
    iget-boolean v1, p0, Ljava/net/DatagramSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1224
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isConnected()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 543
    iget v1, p0, Ljava/net/DatagramSocket;->connectState:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .locals 12
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 730
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2
    .line 731
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@5
    move-result v9

    #@6
    if-nez v9, :cond_0

    #@8
    .line 732
    new-instance v9, Ljava/net/InetSocketAddress;

    #@a
    const/4 v10, 0x0

    #@b
    invoke-direct {v9, v10}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@e
    invoke-virtual {p0, v9}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    #@11
    .line 735
    :cond_0
    iget-object v9, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    #@13
    if-eqz v9, :cond_1

    #@15
    .line 736
    new-instance v9, Ljava/net/SocketException;

    #@17
    const-string/jumbo v10, "Pending connect failure"

    #@1a
    iget-object v11, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    #@1c
    invoke-direct {v9, v10, v11}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 730
    :catchall_0
    move-exception v9

    #@21
    :try_start_2
    monitor-exit p1

    #@22
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    :catchall_1
    move-exception v9

    #@24
    monitor-exit p0

    #@25
    throw v9

    #@26
    .line 740
    :cond_1
    :try_start_3
    iget v9, p0, Ljava/net/DatagramSocket;->connectState:I

    #@28
    if-nez v9, :cond_2

    #@2a
    .line 742
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@2d
    move-result-object v6

    #@2e
    .line 743
    .local v6, "security":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_2

    #@30
    .line 745
    :goto_0
    const/4 v1, 0x0

    #@31
    .line 746
    .local v1, "peekAd":Ljava/lang/String;
    const/4 v4, 0x0

    #@32
    .line 748
    .local v4, "peekPort":I
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@34
    if-nez v9, :cond_4

    #@36
    .line 750
    new-instance v3, Ljava/net/DatagramPacket;

    #@38
    const/4 v9, 0x1

    #@39
    new-array v9, v9, [B

    #@3b
    const/4 v10, 0x1

    #@3c
    invoke-direct {v3, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@3f
    .line 751
    .local v3, "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9, v3}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    #@46
    move-result v4

    #@47
    .line 752
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4e
    move-result-object v1

    #@4f
    .line 759
    .end local v3    # "peekPacket":Ljava/net/DatagramPacket;
    .local v1, "peekAd":Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual {v6, v1, v4}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@52
    .line 780
    .end local v1    # "peekAd":Ljava/lang/String;
    .end local v4    # "peekPort":I
    .end local v6    # "security":Ljava/lang/SecurityManager;
    :cond_2
    :try_start_5
    iget v9, p0, Ljava/net/DatagramSocket;->connectState:I

    #@54
    const/4 v10, 0x2

    #@55
    if-ne v9, v10, :cond_7

    #@57
    .line 784
    const/4 v7, 0x0

    #@58
    .line 785
    .local v7, "stop":Z
    :goto_2
    if-nez v7, :cond_7

    #@5a
    .line 786
    const/4 v2, 0x0

    #@5b
    .line 787
    .local v2, "peekAddress":Ljava/net/InetAddress;
    const/4 v4, -0x1

    #@5c
    .line 789
    .restart local v4    # "peekPort":I
    iget-boolean v9, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@5e
    if-nez v9, :cond_5

    #@60
    .line 791
    new-instance v3, Ljava/net/DatagramPacket;

    #@62
    const/4 v9, 0x1

    #@63
    new-array v9, v9, [B

    #@65
    const/4 v10, 0x1

    #@66
    invoke-direct {v3, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@69
    .line 792
    .restart local v3    # "peekPacket":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v9, v3}, Ljava/net/DatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    #@70
    move-result v4

    #@71
    .line 793
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@74
    move-result-object v2

    #@75
    .line 799
    .end local v3    # "peekPacket":Ljava/net/DatagramPacket;
    .local v2, "peekAddress":Ljava/net/InetAddress;
    :goto_3
    iget-object v9, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@77
    invoke-virtual {v9, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v9

    #@7b
    if-eqz v9, :cond_3

    #@7d
    .line 800
    iget v9, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@7f
    if-eq v9, v4, :cond_6

    #@81
    .line 802
    :cond_3
    new-instance v8, Ljava/net/DatagramPacket;

    #@83
    const/4 v9, 0x1

    #@84
    new-array v9, v9, [B

    #@86
    const/4 v10, 0x1

    #@87
    invoke-direct {v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@8a
    .line 803
    .local v8, "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9, v8}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    #@91
    goto :goto_2

    #@92
    .line 754
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    .end local v7    # "stop":Z
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v1, "peekAd":Ljava/lang/String;
    .restart local v6    # "security":Ljava/lang/SecurityManager;
    :cond_4
    new-instance v0, Ljava/net/InetAddress;

    #@94
    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    #@97
    .line 755
    .local v0, "adr":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@9a
    move-result-object v9

    #@9b
    invoke-virtual {v9, v0}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    #@9e
    move-result v4

    #@9f
    .line 756
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@a2
    move-result-object v1

    #@a3
    .local v1, "peekAd":Ljava/lang/String;
    goto :goto_1

    #@a4
    .line 763
    .end local v0    # "adr":Ljava/net/InetAddress;
    :catch_0
    move-exception v5

    #@a5
    .line 766
    .local v5, "se":Ljava/lang/SecurityException;
    new-instance v8, Ljava/net/DatagramPacket;

    #@a7
    const/4 v9, 0x1

    #@a8
    new-array v9, v9, [B

    #@aa
    const/4 v10, 0x1

    #@ab
    invoke-direct {v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    #@ae
    .line 767
    .restart local v8    # "tmp":Ljava/net/DatagramPacket;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@b1
    move-result-object v9

    #@b2
    invoke-virtual {v9, v8}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V

    #@b5
    goto/16 :goto_0

    #@b7
    .line 796
    .end local v1    # "peekAd":Ljava/lang/String;
    .end local v5    # "se":Ljava/lang/SecurityException;
    .end local v6    # "security":Ljava/lang/SecurityManager;
    .end local v8    # "tmp":Ljava/net/DatagramPacket;
    .local v2, "peekAddress":Ljava/net/InetAddress;
    .restart local v7    # "stop":Z
    :cond_5
    new-instance v2, Ljava/net/InetAddress;

    #@b9
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    invoke-direct {v2}, Ljava/net/InetAddress;-><init>()V

    #@bc
    .line 797
    .local v2, "peekAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@bf
    move-result-object v9

    #@c0
    invoke-virtual {v9, v2}, Ljava/net/DatagramSocketImpl;->peek(Ljava/net/InetAddress;)I

    #@c3
    move-result v4

    #@c4
    goto :goto_3

    #@c5
    .line 805
    :cond_6
    const/4 v7, 0x1

    #@c6
    goto :goto_2

    #@c7
    .line 811
    .end local v2    # "peekAddress":Ljava/net/InetAddress;
    .end local v4    # "peekPort":I
    .end local v7    # "stop":Z
    :cond_7
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v9, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@ce
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@cf
    monitor-exit p0

    #@d0
    .line 729
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 4
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 656
    const/4 v0, 0x0

    #@1
    .line 657
    .local v0, "packetAddress":Ljava/net/InetAddress;
    monitor-enter p1

    #@2
    .line 658
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 659
    new-instance v2, Ljava/net/SocketException;

    #@a
    const-string/jumbo v3, "Socket is closed"

    #@d
    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 657
    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    :catchall_0
    move-exception v2

    #@12
    monitor-exit p1

    #@13
    throw v2

    #@14
    .line 660
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "send"

    #@1b
    invoke-virtual {p0, v2, v3}, Ljava/net/DatagramSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    #@1e
    .line 661
    iget v2, p0, Ljava/net/DatagramSocket;->connectState:I

    #@20
    if-nez v2, :cond_4

    #@22
    .line 663
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@25
    move-result-object v1

    #@26
    .line 669
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    #@28
    .line 670
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 671
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    #@39
    .line 691
    .end local v0    # "packetAddress":Ljava/net/InetAddress;
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 692
    new-instance v2, Ljava/net/InetSocketAddress;

    #@41
    const/4 v3, 0x0

    #@42
    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@45
    invoke-virtual {p0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    #@48
    .line 694
    :cond_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    monitor-exit p1

    #@50
    .line 655
    return-void

    #@51
    .line 673
    .restart local v0    # "packetAddress":Ljava/net/InetAddress;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 674
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@5c
    move-result v3

    #@5d
    .line 673
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@60
    goto :goto_0

    #@61
    .line 679
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_4
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    #@64
    move-result-object v0

    #@65
    .line 680
    .local v0, "packetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_5

    #@67
    .line 681
    iget-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@69
    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    #@6c
    .line 682
    iget v2, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@6e
    invoke-virtual {p1, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    #@71
    goto :goto_0

    #@72
    .line 683
    :cond_5
    iget-object v2, p0, Ljava/net/DatagramSocket;->connectedAddress:Ljava/net/InetAddress;

    #@74
    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_6

    #@7a
    .line 684
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    #@7d
    move-result v2

    #@7e
    iget v3, p0, Ljava/net/DatagramSocket;->connectedPort:I

    #@80
    if-eq v2, v3, :cond_1

    #@82
    .line 685
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@84
    const-string/jumbo v3, "connected address and packet address differ"

    #@87
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setBroadcast(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1109
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1110
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
    .line 1111
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@16
    move-result-object v0

    #@17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object v1

    #@1b
    const/16 v2, 0x20

    #@1d
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 1108
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 6
    .param p1, "netInterface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 1309
    if-nez p1, :cond_0

    #@2
    .line 1310
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "netInterface == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1313
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    #@f
    iget-object v2, v2, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    #@11
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@13
    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    #@15
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1308
    return-void

    #@1d
    .line 1314
    :catch_0
    move-exception v0

    #@1e
    .line 1315
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    #@21
    move-result-object v1

    #@22
    throw v1
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
    .line 1003
    if-gtz p1, :cond_0

    #@3
    .line 1004
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
    .line 1006
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 1007
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1008
    :cond_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Ljava/lang/Integer;

    #@24
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@27
    const/16 v2, 0x1002

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 1002
    return-void
.end method

.method public declared-synchronized setReuseAddress(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1066
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1067
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
    .line 1069
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->oldImpl:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 1070
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@1a
    move-result-object v1

    #@1b
    new-instance v2, Ljava/lang/Integer;

    #@1d
    if-eqz p1, :cond_1

    #@1f
    const/4 v0, -0x1

    #@20
    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    #@23
    const/4 v0, 0x4

    #@24
    invoke-virtual {v1, v0, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :goto_1
    monitor-exit p0

    #@28
    .line 1065
    return-void

    #@29
    .line 1070
    :cond_1
    const/4 v0, 0x0

    #@2a
    goto :goto_0

    #@2b
    .line 1072
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@2e
    move-result-object v0

    #@2f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v1

    #@33
    const/4 v2, 0x4

    #@34
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_1
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
    .line 945
    if-gtz p1, :cond_0

    #@3
    .line 946
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
    .line 948
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 949
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 950
    :cond_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@21
    move-result-object v0

    #@22
    new-instance v1, Ljava/lang/Integer;

    #@24
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@27
    const/16 v2, 0x1001

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    .line 944
    return-void
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
    .line 886
    :try_start_0
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 887
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
    .line 888
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Ljava/lang/Integer;

    #@19
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@1c
    const/16 v2, 0x1006

    #@1e
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 885
    return-void
.end method

.method public declared-synchronized setTrafficClass(I)V
    .locals 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1166
    if-ltz p1, :cond_0

    #@3
    const/16 v0, 0xff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1167
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "tc is not in range 0 -- 255"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    .line 1169
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 1170
    new-instance v0, Ljava/net/SocketException;

    #@1b
    const-string/jumbo v1, "Socket is closed"

    #@1e
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 1171
    :cond_2
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    #@25
    move-result-object v0

    #@26
    new-instance v1, Ljava/lang/Integer;

    #@28
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@2b
    const/4 v2, 0x3

    #@2c
    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    .line 1165
    return-void
.end method
