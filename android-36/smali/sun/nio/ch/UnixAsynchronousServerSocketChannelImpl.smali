.class Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;
.super Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
.source "UnixAsynchronousServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Port$PollableChannel;


# static fields
.field private static final blacklist nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private blacklist acceptAcc:Ljava/security/AccessControlContext;

.field private blacklist acceptAttachment:Ljava/lang/Object;

.field private blacklist acceptFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist acceptHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist acceptPending:Z

.field private final blacklist accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist fdVal:I

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final blacklist port:Lsun/nio/ch/Port;

.field private final blacklist updateLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 385
    invoke-static {}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->initIDs()V

    .line 386
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/ch/Port;)V
    .registers 5
    .param p1, "port"    # Lsun/nio/ch/Port;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    .line 74
    nop

    .line 75
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 84
    :try_start_18
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_36

    .line 88
    nop

    .line 89
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 90
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    .line 93
    iget v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v0, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    .line 95
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 96
    return-void

    .line 85
    :catch_36
    move-exception v0

    .line 86
    .local v0, "x":Ljava/io/IOException;
    sget-object v1, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 87
    throw v0
.end method

.method private blacklist accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I
    .registers 5
    .param p1, "ssfd"    # Ljava/io/FileDescriptor;
    .param p2, "newfd"    # Ljava/io/FileDescriptor;
    .param p3, "isaa"    # [Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method private native blacklist accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist enableAccept()V
    .registers 3

    .line 57
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    return-void
.end method

.method private blacklist finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 8
    .param p1, "newfd"    # Ljava/io/FileDescriptor;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;
    .param p3, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    :try_start_1
    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-direct {v1, v2, p1, p2}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/Port;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_35

    .line 237
    .end local v0    # "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    .local v1, "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    nop

    .line 241
    if-eqz p3, :cond_14

    .line 242
    :try_start_b
    new-instance v0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;

    invoke-direct {v0, p0, p2}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;Ljava/net/InetSocketAddress;)V

    invoke-static {v0, p3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_29

    .line 253
    :cond_14
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 254
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_29

    .line 255
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 255
    invoke-virtual {v0, v2, v3}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_29} :catch_2b

    .line 266
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_29
    :goto_29
    nop

    .line 267
    return-object v1

    .line 259
    :catch_2b
    move-exception v0

    .line 261
    .local v0, "x":Ljava/lang/SecurityException;
    :try_start_2c
    invoke-virtual {v1}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 264
    goto :goto_34

    .line 262
    :catchall_30
    move-exception v2

    .line 263
    .local v2, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Ljava/lang/SecurityException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 265
    .end local v2    # "suppressed":Ljava/lang/Throwable;
    :goto_34
    throw v0

    .line 234
    .end local v1    # "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    .local v0, "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    :catch_35
    move-exception v1

    .line 235
    .local v1, "x":Ljava/io/IOException;
    sget-object v2, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-virtual {v2, p1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 236
    throw v1
.end method

.method private static native blacklist initIDs()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 139
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 141
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    nop

    .line 143
    return-void

    .line 141
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    throw v0
.end method

.method public blacklist group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .registers 2

    .line 147
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    return-object v0
.end method

.method blacklist implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 13
    .param p1, "att"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation

    .line 275
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 276
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 277
    .local v0, "e":Ljava/lang/Throwable;
    if-nez p2, :cond_13

    .line 278
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 280
    :cond_13
    invoke-static {p0, p2, p1, v1, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 281
    return-object v1

    .line 284
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_17
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_b5

    .line 289
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->isAcceptKilled()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 293
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 297
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 298
    .local v0, "newfd":Ljava/io/FileDescriptor;
    new-array v4, v3, [Ljava/net/InetSocketAddress;

    .line 299
    .local v4, "isaa":[Ljava/net/InetSocketAddress;
    const/4 v5, 0x0

    .line 301
    .local v5, "exc":Ljava/lang/Throwable;
    :try_start_33
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->begin()V

    .line 303
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v6, v0, v4}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v6

    .line 304
    .local v6, "n":I
    const/4 v7, -0x2

    if-ne v6, v7, :cond_76

    .line 309
    const/4 v7, 0x0

    .line 310
    .local v7, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_77

    .line 311
    if-nez p2, :cond_50

    .line 312
    :try_start_45
    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 313
    new-instance v9, Lsun/nio/ch/PendingFuture;

    invoke-direct {v9, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    move-object v7, v9

    .line 314
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptFuture:Lsun/nio/ch/PendingFuture;

    goto :goto_54

    .line 316
    :cond_50
    iput-object p2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 317
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAttachment:Ljava/lang/Object;

    .line 319
    :goto_54
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    if-nez v9, :cond_5c

    .line 320
    move-object v9, v1

    goto :goto_60

    :cond_5c
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v9

    :goto_60
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAcc:Ljava/security/AccessControlContext;

    .line 321
    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    .line 322
    monitor-exit v8
    :try_end_65
    .catchall {:try_start_45 .. :try_end_65} :catchall_73

    .line 325
    :try_start_65
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v8, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    sget-short v9, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v3, v8, v9}, Lsun/nio/ch/Port;->startPoll(II)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_77

    .line 326
    nop

    .line 334
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 326
    return-object v7

    .line 322
    :catchall_73
    move-exception v3

    :try_start_74
    monitor-exit v8
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    .end local v0    # "newfd":Ljava/io/FileDescriptor;
    .end local v4    # "isaa":[Ljava/net/InetSocketAddress;
    .end local v5    # "exc":Ljava/lang/Throwable;
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;
    .end local p1    # "att":Ljava/lang/Object;
    .end local p2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :try_start_75
    throw v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_77

    .line 304
    .end local v6    # "n":I
    .end local v7    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .restart local v0    # "newfd":Ljava/io/FileDescriptor;
    .restart local v4    # "isaa":[Ljava/net/InetSocketAddress;
    .restart local v5    # "exc":Ljava/lang/Throwable;
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;
    .restart local p1    # "att":Ljava/lang/Object;
    .restart local p2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :cond_76
    goto :goto_83

    .line 328
    :catchall_77
    move-exception v3

    .line 330
    .local v3, "x":Ljava/lang/Throwable;
    :try_start_78
    instance-of v6, v3, Ljava/nio/channels/ClosedChannelException;

    if-eqz v6, :cond_82

    .line 331
    new-instance v6, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v6}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_a2

    move-object v3, v6

    .line 332
    :cond_82
    move-object v5, v3

    .line 334
    .end local v3    # "x":Ljava/lang/Throwable;
    :goto_83
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 335
    nop

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, "child":Ljava/nio/channels/AsynchronousSocketChannel;
    if-nez v5, :cond_94

    .line 341
    :try_start_8a
    aget-object v2, v4, v2

    invoke-direct {p0, v0, v2, v1}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v2
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_92

    move-object v3, v2

    .line 344
    goto :goto_94

    .line 342
    :catchall_92
    move-exception v2

    .line 343
    .local v2, "x":Ljava/lang/Throwable;
    move-object v5, v2

    .line 348
    .end local v2    # "x":Ljava/lang/Throwable;
    :cond_94
    :goto_94
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->enableAccept()V

    .line 350
    if-nez p2, :cond_9e

    .line 351
    invoke-static {v3, v5}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 353
    :cond_9e
    invoke-static {p0, p2, p1, v3, v5}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 354
    return-object v1

    .line 334
    .end local v3    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    :catchall_a2
    move-exception v1

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 335
    throw v1

    .line 294
    .end local v0    # "newfd":Ljava/io/FileDescriptor;
    .end local v4    # "isaa":[Ljava/net/InetSocketAddress;
    .end local v5    # "exc":Ljava/lang/Throwable;
    :cond_a7
    new-instance v0, Ljava/nio/channels/AcceptPendingException;

    invoke-direct {v0}, Ljava/nio/channels/AcceptPendingException;-><init>()V

    throw v0

    .line 290
    :cond_ad
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Accept not allowed due cancellation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_b5
    new-instance v0, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v0
.end method

.method blacklist implClose()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 103
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    invoke-virtual {v0, v1}, Lsun/nio/ch/Port;->unregister(I)V

    .line 106
    sget-object v0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 112
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_16
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    if-nez v1, :cond_1c

    .line 114
    monitor-exit v0

    return-void

    .line 115
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    .line 116
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 117
    .local v2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAttachment:Ljava/lang/Object;

    .line 118
    .local v3, "att":Ljava/lang/Object;
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptFuture:Lsun/nio/ch/PendingFuture;

    .line 119
    .local v4, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_3b

    .line 123
    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .line 124
    .local v0, "x":Ljava/nio/channels/AsynchronousCloseException;
    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/nio/channels/AsynchronousCloseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 125
    if-nez v2, :cond_36

    .line 126
    invoke-virtual {v4, v0}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 129
    :cond_36
    const/4 v1, 0x0

    invoke-static {p0, v2, v3, v1, v0}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 131
    :goto_3a
    return-void

    .line 119
    .end local v0    # "x":Ljava/nio/channels/AsynchronousCloseException;
    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .end local v3    # "att":Ljava/lang/Object;
    .end local v4    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist onEvent(IZ)V
    .registers 11
    .param p1, "events"    # I
    .param p2, "mayInvokeDirect"    # Z

    .line 155
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    if-nez v1, :cond_9

    .line 157
    monitor-exit v0

    return-void

    .line 158
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    .line 159
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_8b

    .line 162
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 163
    .local v0, "newfd":Ljava/io/FileDescriptor;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/net/InetSocketAddress;

    .line 164
    .local v3, "isaa":[Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .line 166
    .local v4, "exc":Ljava/lang/Throwable;
    :try_start_16
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->begin()V

    .line 167
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v5, v0, v3}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v5

    .line 170
    .local v5, "n":I
    const/4 v6, -0x2

    if-ne v5, v6, :cond_38

    .line 171
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_39

    .line 172
    :try_start_25
    iput-boolean v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    .line 173
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    .line 174
    :try_start_28
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v6, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    sget-short v7, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v2, v6, v7}, Lsun/nio/ch/Port;->startPoll(II)V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_39

    .line 183
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 175
    return-void

    .line 173
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v6
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local v0    # "newfd":Ljava/io/FileDescriptor;
    .end local v3    # "isaa":[Ljava/net/InetSocketAddress;
    .end local v4    # "exc":Ljava/lang/Throwable;
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "mayInvokeDirect":Z
    :try_start_37
    throw v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_39

    .line 170
    .end local v5    # "n":I
    .restart local v0    # "newfd":Ljava/io/FileDescriptor;
    .restart local v3    # "isaa":[Ljava/net/InetSocketAddress;
    .restart local v4    # "exc":Ljava/lang/Throwable;
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "mayInvokeDirect":Z
    :cond_38
    goto :goto_45

    .line 178
    :catchall_39
    move-exception v2

    .line 179
    .local v2, "x":Ljava/lang/Throwable;
    :try_start_3a
    instance-of v5, v2, Ljava/nio/channels/ClosedChannelException;

    if-eqz v5, :cond_44

    .line 180
    new-instance v5, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v5}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_86

    move-object v2, v5

    .line 181
    :cond_44
    move-object v4, v2

    .line 183
    .end local v2    # "x":Ljava/lang/Throwable;
    :goto_45
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 184
    nop

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "child":Ljava/nio/channels/AsynchronousSocketChannel;
    if-nez v4, :cond_66

    .line 190
    :try_start_4c
    aget-object v1, v3, v1

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAcc:Ljava/security/AccessControlContext;

    invoke-direct {p0, v0, v1, v5}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v1
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_56

    move-object v2, v1

    .line 195
    goto :goto_66

    .line 191
    :catchall_56
    move-exception v1

    .line 192
    .local v1, "x":Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/io/IOException;

    if-nez v5, :cond_65

    instance-of v5, v1, Ljava/lang/SecurityException;

    if-nez v5, :cond_65

    .line 193
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v5

    .line 194
    :cond_65
    move-object v4, v1

    .line 199
    .end local v1    # "x":Ljava/lang/Throwable;
    :cond_66
    :goto_66
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 200
    .local v1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAttachment:Ljava/lang/Object;

    .line 201
    .local v5, "att":Ljava/lang/Object;
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptFuture:Lsun/nio/ch/PendingFuture;

    .line 204
    .local v6, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->enableAccept()V

    .line 206
    if-nez v1, :cond_82

    .line 207
    invoke-virtual {v6, v2, v4}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 210
    if-eqz v2, :cond_85

    invoke-virtual {v6}, Lsun/nio/ch/PendingFuture;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_85

    .line 212
    :try_start_7c
    invoke-virtual {v2}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 213
    :goto_7f
    goto :goto_85

    :catch_80
    move-exception v7

    goto :goto_7f

    .line 216
    :cond_82
    invoke-static {p0, v1, v5, v2, v4}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 218
    :cond_85
    :goto_85
    return-void

    .line 183
    .end local v1    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .end local v2    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local v5    # "att":Ljava/lang/Object;
    .end local v6    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :catchall_86
    move-exception v1

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 184
    throw v1

    .line 159
    .end local v0    # "newfd":Ljava/io/FileDescriptor;
    .end local v3    # "isaa":[Ljava/net/InetSocketAddress;
    .end local v4    # "exc":Ljava/lang/Throwable;
    :catchall_8b
    move-exception v1

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v1
.end method
