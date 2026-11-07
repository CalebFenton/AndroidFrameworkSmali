.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"

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

.field private greylist-max-o created:Z

.field private greylist-max-o impl:Ljava/net/SocketImpl;

.field private greylist-max-o oldImpl:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetimpl(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;
    .registers 1

    iget-object p0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 795
    const/4 v0, 0x0

    sput-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    .line 1011
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/ServerSocket;->optionsSet:Z

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 64
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 75
    iput-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 110
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 111
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 152
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 204
    return-void
.end method

.method public constructor whitelist test-api <init>(IILjava/net/InetAddress;)V
    .registers 7
    .param p1, "port"    # I
    .param p2, "backlog"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 64
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 75
    iput-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 252
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 253
    if-ltz p1, :cond_36

    const v0, 0xffff

    if-gt p1, v0, :cond_36

    .line 256
    const/4 v0, 0x1

    if-ge p2, v0, :cond_22

    .line 257
    const/16 p2, 0x32

    .line 259
    :cond_22
    :try_start_22
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2a} :catch_31
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2c

    .line 266
    nop

    .line 267
    return-void

    .line 263
    :catch_2c
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 265
    throw v0

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :catch_31
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    .line 262
    throw v0

    .line 254
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Ljava/net/SocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/SocketImpl;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 63
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 64
    iput-boolean v0, p0, Ljava/net/ServerSocket;->closed:Z

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    .line 75
    iput-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 86
    invoke-static {}, Ljava/net/ServerSocket;->checkPermission()Ljava/lang/Void;

    .line 87
    iput-object p1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 88
    invoke-virtual {p1, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 89
    return-void
.end method

.method private greylist-max-o checkOldImpl()V
    .registers 3

    .line 286
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_5

    .line 287
    return-void

    .line 291
    :cond_5
    :try_start_5
    new-instance v0, Ljava/net/ServerSocket$1;

    invoke-direct {v0, p0}, Ljava/net/ServerSocket$1;-><init>(Ljava/net/ServerSocket;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_d} :catch_e

    .line 302
    goto :goto_12

    .line 300
    :catch_e
    move-exception v0

    .line 301
    .local v0, "e":Ljava/security/PrivilegedActionException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->oldImpl:Z

    .line 303
    .end local v0    # "e":Ljava/security/PrivilegedActionException;
    :goto_12
    return-void
.end method

.method private static blacklist checkPermission()Ljava/lang/Void;
    .registers 1

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o setImpl()V
    .registers 2

    .line 306
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_10

    .line 307
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 308
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOldImpl()V

    goto :goto_17

    .line 312
    :cond_10
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 314
    :goto_17
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_20

    .line 315
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setServerSocket(Ljava/net/ServerSocket;)V

    .line 316
    :cond_20
    return-void
.end method

.method public static declared-synchronized whitelist test-api setSocketFactory(Ljava/net/SocketImplFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/net/ServerSocket;

    monitor-enter v0

    .line 823
    :try_start_3
    sget-object v1, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-nez v1, :cond_14

    .line 826
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 827
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 828
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 830
    :cond_10
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 831
    monitor-exit v0

    return-void

    .line 824
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    .end local p0    # "fac":Ljava/net/SocketImplFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p0
.end method


# virtual methods
.method public whitelist test-api accept()Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 534
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 536
    new-instance v0, Ljava/net/Socket;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/net/SocketImpl;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 537
    .local v0, "s":Ljava/net/Socket;
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 538
    return-object v0

    .line 535
    .end local v0    # "s":Ljava/net/Socket;
    :cond_19
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not bound yet"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;)V
    .registers 3
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 354
    return-void
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;I)V
    .registers 10
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_73

    .line 384
    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    .line 385
    :cond_11
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_19
    :goto_19
    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 387
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object p1, v1

    .line 388
    :cond_22
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_6b

    .line 390
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 391
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-nez v2, :cond_63

    .line 393
    const/4 v2, 0x1

    if-ge p2, v2, :cond_34

    .line 394
    const/16 p2, 0x32

    .line 396
    :cond_34
    :try_start_34
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 397
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_41

    .line 398
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 399
    :cond_41
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 400
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V

    .line 401
    iput-boolean v2, p0, Ljava/net/ServerSocket;->bound:Z
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_59} :catch_5f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_59} :catch_5b

    .line 408
    .end local v3    # "security":Ljava/lang/SecurityManager;
    nop

    .line 409
    return-void

    .line 405
    :catch_5b
    move-exception v2

    .line 406
    .local v2, "e":Ljava/io/IOException;
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 407
    throw v2

    .line 402
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5f
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/SecurityException;
    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 404
    throw v2

    .line 392
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_63
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Unresolved address"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_73
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_3
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 609
    monitor-exit v0

    return-void

    .line 610
    :cond_b
    iget-boolean v1, p0, Ljava/net/ServerSocket;->created:Z

    if-eqz v1, :cond_14

    .line 611
    iget-object v1, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->close()V

    .line 612
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    .line 613
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method greylist-max-o createImpl()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_7

    .line 326
    invoke-direct {p0}, Ljava/net/ServerSocket;->setImpl()V

    .line 328
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->create(Z)V

    .line 329
    iput-boolean v1, p0, Ljava/net/ServerSocket;->created:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_11

    .line 332
    nop

    .line 333
    return-void

    .line 330
    :catch_11
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .line 1071
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o test-api getImpl()Ljava/net/SocketImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    if-nez v0, :cond_7

    .line 281
    invoke-virtual {p0}, Ljava/net/ServerSocket;->createImpl()V

    .line 282
    :cond_7
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 6

    .line 430
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 431
    return-object v1

    .line 433
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 434
    .local v0, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 435
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1e

    .line 436
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1e} :catch_21
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_1e} :catch_1f

    .line 437
    :cond_1e
    return-object v0

    .line 440
    .end local v0    # "in":Ljava/net/InetAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :catch_1f
    move-exception v0

    .line 445
    return-object v1

    .line 438
    :catch_21
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getLocalPort()I
    .registers 3

    .line 459
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 460
    return v1

    .line 462
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0
    :try_end_10
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 463
    :catch_11
    move-exception v0

    .line 468
    return v1
.end method

.method public whitelist test-api getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .line 498
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
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

    .line 1007
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api getReceiveBufferSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 894
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    .line 898
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 899
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    move v0, v2

    .line 901
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_1e
    monitor-exit p0

    return v0

    .line 895
    .end local v0    # "result":I
    .end local v1    # "o":Ljava/lang/Object;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public whitelist test-api getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 756
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 755
    :cond_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 690
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 692
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 694
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 695
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    monitor-exit p0

    return v1

    .line 697
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_1e
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 691
    .end local v0    # "o":Ljava/lang/Object;
    :cond_21
    :try_start_21
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method protected final whitelist test-api implAccept(Ljava/net/Socket;)V
    .registers 6
    .param p1, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "si":Ljava/net/SocketImpl;
    :try_start_1
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_9

    .line 561
    invoke-virtual {p1}, Ljava/net/Socket;->setImpl()V

    goto :goto_e

    .line 563
    :cond_9
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1}, Ljava/net/SocketImpl;->reset()V

    .line 565
    :goto_e
    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    move-object v0, v1

    .line 566
    const/4 v1, 0x0

    iput-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 567
    new-instance v1, Ljava/net/InetAddress;

    invoke-direct {v1}, Ljava/net/InetAddress;-><init>()V

    iput-object v1, v0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 568
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 569
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    .line 573
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 574
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3e

    .line 575
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v3

    .line 575
    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_4e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_3e} :catch_45

    .line 588
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_3e
    nop

    .line 589
    iput-object v0, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 590
    invoke-virtual {p1}, Ljava/net/Socket;->postAccept()V

    .line 591
    return-void

    .line 583
    :catch_45
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/SecurityException;
    if-eqz v0, :cond_4b

    .line 585
    invoke-virtual {v0}, Ljava/net/SocketImpl;->reset()V

    .line 586
    :cond_4b
    iput-object v0, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 587
    throw v1

    .line 578
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_4e
    move-exception v1

    .line 579
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_54

    .line 580
    invoke-virtual {v0}, Ljava/net/SocketImpl;->reset()V

    .line 581
    :cond_54
    iput-object v0, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 582
    throw v1
.end method

.method public whitelist test-api isBound()Z
    .registers 2

    .line 644
    iget-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ljava/net/ServerSocket;->oldImpl:Z

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

    .line 654
    iget-object v0, p0, Ljava/net/ServerSocket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-boolean v1, p0, Ljava/net/ServerSocket;->closed:Z

    monitor-exit v0

    return v1

    .line 656
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method greylist-max-o setBound()V
    .registers 2

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->bound:Z

    .line 786
    return-void
.end method

.method greylist-max-o setCreated()V
    .registers 2

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->created:Z

    .line 790
    return-void
.end method

.method public whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/net/ServerSocket;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/net/ServerSocket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 980
    return-object p0
.end method

.method public whitelist test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 947
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

    .line 870
    if-lez p1, :cond_22

    .line 873
    :try_start_3
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 875
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 876
    monitor-exit p0

    return-void

    .line 874
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    .end local p1    # "size":I
    :catchall_20
    move-exception p1

    goto :goto_2a

    .line 871
    .restart local p1    # "size":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
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

    .line 738
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 740
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 741
    return-void

    .line 739
    :cond_13
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

    .line 676
    :try_start_1
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 678
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    .line 679
    monitor-exit p0

    return-void

    .line 677
    .end local p0    # "this":Ljava/net/ServerSocket;
    :cond_16
    :try_start_16
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    .end local p1    # "timeout":I
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p1
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

    .line 1025
    const-class v0, Ljava/net/ServerSocket;

    monitor-enter v0

    .line 1026
    :try_start_3
    sget-boolean v1, Ljava/net/ServerSocket;->optionsSet:Z

    if-eqz v1, :cond_b

    .line 1027
    sget-object v1, Ljava/net/ServerSocket;->options:Ljava/util/Set;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_28

    return-object v1

    .line 1030
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/net/ServerSocket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    .line 1031
    .local v1, "impl":Ljava/net/SocketImpl;
    invoke-virtual {v1}, Ljava/net/SocketImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/ServerSocket;->options:Ljava/util/Set;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a
    .catchall {:try_start_b .. :try_end_19} :catchall_28

    .line 1034
    .end local v1    # "impl":Ljava/net/SocketImpl;
    goto :goto_21

    .line 1032
    :catch_1a
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/io/IOException;
    :try_start_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ljava/net/ServerSocket;->options:Ljava/util/Set;

    .line 1035
    .end local v1    # "e":Ljava/io/IOException;
    :goto_21
    const/4 v1, 0x1

    sput-boolean v1, Ljava/net/ServerSocket;->optionsSet:Z

    .line 1036
    sget-object v1, Ljava/net/ServerSocket;->options:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1037
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 773
    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_9

    .line 774
    const-string v0, "ServerSocket[unbound]"

    return-object v0

    .line 776
    :cond_9
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 777
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "in":Ljava/net/InetAddress;
    goto :goto_1a

    .line 779
    .end local v0    # "in":Ljava/net/InetAddress;
    :cond_14
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 780
    .restart local v0    # "in":Ljava/net/InetAddress;
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerSocket[addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    .line 781
    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    return-object v1
.end method
