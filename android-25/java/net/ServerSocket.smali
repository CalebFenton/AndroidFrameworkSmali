.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private created:Z

.field private impl:Ljava/net/SocketImpl;

.field private oldImpl:Z


# direct methods
.method static synthetic -get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 750
    const/4 v0, 0x0

    #@1
    sput-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@3
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    #@6
    .line 57
    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    #@8
    .line 58
    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    #@a
    .line 59
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    #@11
    .line 69
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    #@13
    .line 87
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    #@16
    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    const/16 v0, 0x32

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@6
    .line 127
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    #@4
    .line 180
    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-boolean v3, p0, Ljava/net/ServerSocket;->created:Z

    #@6
    .line 57
    iput-boolean v3, p0, Ljava/net/ServerSocket;->bound:Z

    #@8
    .line 58
    iput-boolean v3, p0, Ljava/net/ServerSocket;->closed:Z

    #@a
    .line 59
    new-instance v2, Ljava/lang/Object;

    #@c
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v2, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    #@11
    .line 69
    iput-boolean v3, p0, Ljava/net/ServerSocket;->oldImpl:Z

    #@13
    .line 230
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    #@16
    .line 231
    if-ltz p1, :cond_0

    #@18
    const v2, 0xffff

    #@1b
    if-le p1, v2, :cond_1

    #@1d
    .line 232
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Port value out of range: "

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 232
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    .line 234
    :cond_1
    const/4 v2, 0x1

    #@38
    if-ge p2, v2, :cond_2

    #@3a
    .line 235
    const/16 p2, 0x32

    #@3c
    .line 237
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    #@3e
    invoke-direct {v2, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@41
    invoke-virtual {p0, v2, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 229
    return-void

    #@45
    .line 241
    :catch_0
    move-exception v0

    #@46
    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    #@49
    .line 243
    throw v0

    #@4a
    .line 238
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@4b
    .line 239
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    #@4e
    .line 240
    throw v1
.end method

.method constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/SocketImpl;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    #@6
    .line 57
    iput-boolean v1, p0, Ljava/net/ServerSocket;->bound:Z

    #@8
    .line 58
    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    #@a
    .line 59
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    #@11
    .line 69
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    #@13
    .line 76
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@15
    .line 77
    invoke-virtual {p1, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    #@18
    .line 75
    return-void
.end method

.method private checkOldImpl()V
    .locals 2

    #@0
    .prologue
    .line 263
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 264
    return-void

    #@5
    .line 269
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket$1;

    #@7
    invoke-direct {v1, p0}, Ljava/net/ServerSocket$1;-><init>(Ljava/net/ServerSocket;)V

    #@a
    .line 268
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 262
    :goto_0
    return-void

    #@e
    .line 278
    :catch_0
    move-exception v0

    #@f
    .line 279
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    #@10
    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    #@12
    goto :goto_0
.end method

.method private setImpl()V
    .locals 1

    #@0
    .prologue
    .line 284
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 285
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@6
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@c
    .line 286
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOldImpl()V

    #@f
    .line 292
    :goto_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 293
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@15
    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    #@18
    .line 283
    :cond_0
    return-void

    #@19
    .line 290
    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    #@1b
    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    #@1e
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@20
    goto :goto_0
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-class v2, Ljava/net/ServerSocket;

    #@2
    monitor-enter v2

    #@3
    .line 778
    :try_start_0
    sget-object v1, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 779
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
    .line 781
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@16
    move-result-object v0

    #@17
    .line 782
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@19
    .line 783
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@1c
    .line 785
    :cond_1
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 777
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 495
    new-instance v1, Ljava/net/SocketException;

    #@8
    const-string/jumbo v2, "Socket is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 496
    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 497
    new-instance v1, Ljava/net/SocketException;

    #@17
    const-string/jumbo v2, "Socket is not bound yet"

    #@1a
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 498
    :cond_1
    new-instance v0, Ljava/net/Socket;

    #@20
    const/4 v1, 0x0

    #@21
    check-cast v1, Ljava/net/SocketImpl;

    #@23
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    #@26
    .line 499
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    #@29
    .line 500
    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    const/16 v0, 0x32

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    #@5
    .line 330
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 8
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 360
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 361
    new-instance v4, Ljava/net/SocketException;

    #@a
    const-string/jumbo v5, "Socket is closed"

    #@d
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 362
    :cond_0
    iget-boolean v4, p0, Ljava/net/ServerSocket;->oldImpl:Z

    #@13
    if-nez v4, :cond_1

    #@15
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 363
    new-instance v4, Ljava/net/SocketException;

    #@1d
    const-string/jumbo v5, "Already bound"

    #@20
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4

    #@24
    .line 364
    :cond_1
    if-nez p1, :cond_2

    #@26
    .line 365
    new-instance p1, Ljava/net/InetSocketAddress;

    #@28
    .end local p1    # "endpoint":Ljava/net/SocketAddress;
    invoke-direct {p1, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@2b
    .line 366
    .restart local p1    # "endpoint":Ljava/net/SocketAddress;
    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    #@2d
    if-nez v4, :cond_3

    #@2f
    .line 367
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v5, "Unsupported address type"

    #@34
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    :cond_3
    move-object v2, p1

    #@39
    .line 368
    check-cast v2, Ljava/net/InetSocketAddress;

    #@3b
    .line 369
    .local v2, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_4

    #@41
    .line 370
    new-instance v4, Ljava/net/SocketException;

    #@43
    const-string/jumbo v5, "Unresolved address"

    #@46
    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4

    #@4a
    .line 371
    :cond_4
    if-ge p2, v5, :cond_5

    #@4c
    .line 372
    const/16 p2, 0x32

    #@4e
    .line 374
    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@51
    move-result-object v3

    #@52
    .line 375
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_6

    #@54
    .line 376
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@57
    move-result v4

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    #@5b
    .line 377
    :cond_6
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@66
    move-result v6

    #@67
    invoke-virtual {v4, v5, v6}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    #@6a
    .line 378
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V

    #@71
    .line 379
    const/4 v4, 0x1

    #@72
    iput-boolean v4, p0, Ljava/net/ServerSocket;->bound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 359
    return-void

    #@75
    .line 383
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v0

    #@76
    .line 384
    .local v0, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    #@78
    .line 385
    throw v0

    #@79
    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@7a
    .line 381
    .local v1, "e":Ljava/lang/SecurityException;
    iput-boolean v7, p0, Ljava/net/ServerSocket;->bound:Z

    #@7c
    .line 382
    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 567
    iget-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 568
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    monitor-exit v1

    #@a
    .line 569
    return-void

    #@b
    .line 570
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 571
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@11
    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    #@14
    .line 572
    :cond_1
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 566
    return-void

    #@19
    .line 567
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
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
    .line 303
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 304
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    #@7
    .line 306
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V

    #@d
    .line 307
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 302
    return-void

    #@11
    .line 308
    :catch_0
    move-exception v0

    #@12
    .line 309
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    #@14
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    #@0
    .prologue
    .line 593
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 258
    invoke-virtual {p0}, Ljava/net/ServerSocket;->createImpl()V

    #@7
    .line 259
    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@9
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 400
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 401
    return-object v6

    #@8
    .line 403
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@f
    move-result-object v2

    #@10
    .line 404
    .local v2, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_1

    #@16
    .line 405
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@19
    move-result-object v3

    #@1a
    .line 406
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1

    #@1c
    .line 407
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    const/4 v5, -0x1

    #@21
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    .line 409
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    return-object v2

    #@25
    .line 410
    .end local v2    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    #@26
    .line 411
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@29
    move-result-object v4

    #@2a
    return-object v4

    #@2b
    .line 412
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@2c
    .line 417
    .local v1, "e":Ljava/net/SocketException;
    return-object v6
.end method

.method public getLocalPort()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 431
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 432
    return v2

    #@8
    .line 434
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

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
    .line 435
    :catch_0
    move-exception v0

    #@12
    .line 440
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    #@0
    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 461
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 462
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    #@a
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    #@11
    move-result v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@15
    return-object v0
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
    .line 847
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 848
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
    .line 849
    :cond_0
    const/4 v1, 0x0

    #@14
    .line 850
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@17
    move-result-object v2

    #@18
    const/16 v3, 0x1002

    #@1a
    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    .line 851
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 852
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
    .line 854
    return v1
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
    .line 713
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 714
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 715
    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

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

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 650
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 651
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
    .line 652
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@16
    move-result-object v1

    #@17
    const/16 v2, 0x1006

    #@19
    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 654
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 655
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
    .line 657
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    #@2a
    monitor-exit p0

    #@2b
    return v1
.end method

.method protected final implAccept(Ljava/net/Socket;)V
    .locals 6
    .param p1, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    const/4 v3, 0x0

    #@1
    .line 522
    .local v3, "si":Ljava/net/SocketImpl;
    :try_start_0
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@3
    if-nez v4, :cond_1

    #@5
    .line 523
    invoke-virtual {p1}, Ljava/net/Socket;->setImpl()V

    #@8
    .line 527
    :goto_0
    iget-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@a
    .line 528
    .local v3, "si":Ljava/net/SocketImpl;
    const/4 v4, 0x0

    #@b
    iput-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@d
    .line 529
    new-instance v4, Ljava/net/InetAddress;

    #@f
    invoke-direct {v4}, Ljava/net/InetAddress;-><init>()V

    #@12
    iput-object v4, v3, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    #@14
    .line 530
    new-instance v4, Ljava/io/FileDescriptor;

    #@16
    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    #@19
    iput-object v4, v3, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    #@1b
    .line 531
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v3}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    #@22
    .line 533
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@25
    move-result-object v2

    #@26
    .line 534
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    #@28
    .line 535
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 536
    invoke-virtual {v3}, Ljava/net/SocketImpl;->getPort()I

    #@33
    move-result v5

    #@34
    .line 535
    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    #@37
    .line 549
    :cond_0
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@39
    .line 550
    invoke-virtual {p1}, Ljava/net/Socket;->postAccept()V

    #@3c
    .line 519
    return-void

    #@3d
    .line 525
    .end local v2    # "security":Ljava/lang/SecurityManager;
    .local v3, "si":Ljava/net/SocketImpl;
    :cond_1
    :try_start_1
    iget-object v4, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@3f
    invoke-virtual {v4}, Ljava/net/SocketImpl;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    #@42
    goto :goto_0

    #@43
    .line 538
    .end local v3    # "si":Ljava/net/SocketImpl;
    :catch_0
    move-exception v0

    #@44
    .line 539
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    #@46
    .line 540
    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    #@49
    .line 541
    :cond_2
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@4b
    .line 542
    throw v0

    #@4c
    .line 543
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@4d
    .line 544
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v3, :cond_3

    #@4f
    .line 545
    invoke-virtual {v3}, Ljava/net/SocketImpl;->reset()V

    #@52
    .line 546
    :cond_3
    iput-object v3, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    #@54
    .line 547
    throw v1
.end method

.method public isBound()Z
    .locals 1

    #@0
    .prologue
    .line 604
    iget-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

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
    .line 614
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 615
    :try_start_0
    iget-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 614
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method setBound()V
    .locals 1

    #@0
    .prologue
    .line 740
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    #@3
    .line 739
    return-void
.end method

.method setCreated()V
    .locals 1

    #@0
    .prologue
    .line 744
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    #@3
    .line 743
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    #@0
    .prologue
    .line 897
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
    .line 824
    if-gtz p1, :cond_0

    #@3
    .line 825
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "negative receive size"

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
    .line 827
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 828
    new-instance v0, Ljava/net/SocketException;

    #@17
    const-string/jumbo v1, "Socket is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 829
    :cond_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

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
    .line 823
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
    .line 698
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 699
    new-instance v0, Ljava/net/SocketException;

    #@8
    const-string/jumbo v1, "Socket is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 700
    :cond_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

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
    .line 697
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
    .line 636
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 637
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
    .line 638
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Ljava/lang/Integer;

    #@19
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    #@1c
    const/16 v2, 0x1006

    #@1e
    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 635
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 725
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 726
    const-string/jumbo v1, "ServerSocket[unbound]"

    #@9
    return-object v1

    #@a
    .line 728
    :cond_0
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 729
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 731
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v0

    #@1a
    .line 735
    .local v0, "in":Ljava/net/InetAddress;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "ServerSocket[addr="

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 736
    const-string/jumbo v2, ",localport="

    #@2d
    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 736
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@33
    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    #@36
    move-result v2

    #@37
    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 736
    const-string/jumbo v2, "]"

    #@3e
    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 733
    .end local v0    # "in":Ljava/net/InetAddress;
    :cond_1
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    #@49
    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    #@4c
    move-result-object v0

    #@4d
    .restart local v0    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method
