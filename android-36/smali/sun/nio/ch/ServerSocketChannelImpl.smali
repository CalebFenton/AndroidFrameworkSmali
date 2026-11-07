.class Lsun/nio/ch/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ST_INUSE:I = 0x0

.field private static final blacklist ST_KILLED:I = 0x1

.field private static final blacklist ST_UNINITIALIZED:I = -0x1

.field private static blacklist nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist fdVal:I

.field private blacklist isReuseAddress:Z

.field private blacklist localAddress:Ljava/net/InetSocketAddress;

.field private final blacklist lock:Ljava/lang/Object;

.field blacklist socket:Ljava/net/ServerSocket;

.field private blacklist state:I

.field private final blacklist stateLock:Ljava/lang/Object;

.field private volatile blacklist thread:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    nop

    .line 441
    invoke-static {}, Lsun/nio/ch/ServerSocketChannelImpl;->initIDs()V

    .line 442
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 443
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lsun/nio/ch/Net;->serverSocket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 89
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .registers 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "bound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 99
    iput-object p2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 100
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 102
    if-eqz p3, :cond_2b

    .line 103
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 104
    :cond_2b
    return-void
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

    .line 422
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/ServerSocketChannelImpl;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

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

.method private static native blacklist initIDs()V
.end method


# virtual methods
.method public whitelist test-api accept()Ljava/nio/channels/SocketChannel;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 236
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 238
    const/4 v1, 0x0

    .line 240
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    .line 241
    .local v2, "n":I
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 242
    .local v3, "newfd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/net/InetSocketAddress;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_9d

    .line 245
    .local v5, "isaa":[Ljava/net/InetSocketAddress;
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :try_start_1c
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->begin()V

    .line 246
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v9
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_84

    const/4 v10, 0x0

    if-nez v9, :cond_32

    .line 247
    nop

    .line 256
    :try_start_27
    iput-wide v6, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 257
    if-lez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v8

    :goto_2d
    invoke-virtual {p0, v4}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 258
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_9d

    .line 247
    return-object v10

    .line 248
    :cond_32
    :try_start_32
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v11

    iput-wide v11, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 250
    :goto_38
    iget-object v9, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v9, v3, v5}, Lsun/nio/ch/ServerSocketChannelImpl;->accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v9

    move v2, v9

    .line 251
    const/4 v9, -0x3

    if-ne v2, v9, :cond_49

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v9
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_84

    if-eqz v9, :cond_49

    .line 252
    goto :goto_38

    .line 256
    :cond_49
    :try_start_49
    iput-wide v6, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 257
    if-lez v2, :cond_4f

    move v6, v4

    goto :goto_50

    :cond_4f
    move v6, v8

    :goto_50
    invoke-virtual {p0, v6}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 258
    nop

    .line 261
    if-ge v2, v4, :cond_58

    .line 262
    monitor-exit v0

    return-object v10

    .line 264
    :cond_58
    invoke-static {v3, v4}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 265
    aget-object v4, v5, v8

    .line 266
    .local v4, "isa":Ljava/net/InetSocketAddress;
    new-instance v6, Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v7

    invoke-direct {v6, v7, v3, v4}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    .line 267
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .local v6, "sc":Ljava/nio/channels/SocketChannel;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1
    :try_end_6a
    .catchall {:try_start_49 .. :try_end_6a} :catchall_9d

    .line 268
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_82

    .line 270
    :try_start_6c
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 271
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 270
    invoke-virtual {v1, v7, v8}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/lang/SecurityException; {:try_start_6c .. :try_end_7b} :catch_7c
    .catchall {:try_start_6c .. :try_end_7b} :catchall_9d

    .line 275
    goto :goto_82

    .line 272
    :catch_7c
    move-exception v7

    .line 273
    .local v7, "x":Ljava/lang/SecurityException;
    :try_start_7d
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->close()V

    .line 274
    nop

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    throw v7

    .line 277
    .end local v7    # "x":Ljava/lang/SecurityException;
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    :cond_82
    :goto_82
    monitor-exit v0

    return-object v6

    .line 256
    .end local v4    # "isa":Ljava/net/InetSocketAddress;
    .end local v6    # "sc":Ljava/nio/channels/SocketChannel;
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    :catchall_84
    move-exception v9

    iput-wide v6, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 257
    if-lez v2, :cond_8a

    goto :goto_8b

    :cond_8a
    move v4, v8

    :goto_8b
    invoke-virtual {p0, v4}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 258
    nop

    .line 259
    nop

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    throw v9

    .line 237
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "n":I
    .end local v3    # "newfd":Ljava/io/FileDescriptor;
    .end local v5    # "isaa":[Ljava/net/InetSocketAddress;
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    :cond_91
    new-instance v1, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    throw v1

    .line 235
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    :cond_97
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    throw v1

    .line 279
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_7d .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .registers 9
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 215
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v1

    if-nez v1, :cond_61

    .line 217
    if-nez p1, :cond_18

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_1c

    .line 218
    :cond_18
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    :goto_1c
    nop

    .line 219
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 220
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2a

    .line 221
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 222
    :cond_2a
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 223
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 224
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v4, 0x1

    if-ge p2, v4, :cond_4c

    const/16 v4, 0x32

    goto :goto_4d

    :cond_4c
    move v4, p2

    :goto_4d
    invoke-static {v3, v4}, Lsun/nio/ch/Net;->listen(Ljava/io/FileDescriptor;I)V

    .line 225
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_6d

    .line 226
    :try_start_53
    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 227
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5e

    .line 228
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_6d

    .line 229
    return-object p0

    .line 227
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    .end local p2    # "backlog":I
    :try_start_60
    throw v4

    .line 216
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    .restart local p2    # "backlog":I
    :cond_61
    new-instance v1, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    .end local p2    # "backlog":I
    throw v1

    .line 214
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    .restart local p2    # "backlog":I
    :cond_67
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    .end local p2    # "backlog":I
    throw v1

    .line 228
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    .restart local p2    # "backlog":I
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public blacklist getFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 386
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getFDVal()I
    .registers 2

    .line 390
    iget v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    return v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 119
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_10

    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    goto :goto_1a

    .line 120
    :cond_10
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 121
    invoke-static {v1}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    :goto_1a
    monitor-exit v0

    .line 119
    return-object v1

    .line 118
    :cond_1c
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    throw v1

    .line 122
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 5
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

    .line 162
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-eqz p1, :cond_59

    .line 164
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 167
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_f
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 170
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_27

    .line 171
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 174
    iget-boolean v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 177
    :cond_27
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 169
    :cond_31
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    throw v1

    .line 178
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_37

    throw v1

    .line 165
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api implCloseSelectableChannel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 289
    sget-object v1, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 290
    :cond_f
    iget-wide v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 291
    .local v1, "th":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1a

    .line 292
    invoke-static {v1, v2}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 293
    :cond_1a
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_23

    .line 294
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->kill()V

    .line 295
    .end local v1    # "th":J
    :cond_23
    monitor-exit v0

    .line 296
    return-void

    .line 295
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method protected whitelist test-api implConfigureBlocking(Z)V
    .registers 3
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 284
    return-void
.end method

.method public blacklist isBound()Z
    .registers 3

    .line 199
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 201
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist kill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 301
    monitor-exit v0

    return-void

    .line 302
    :cond_a
    iget v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 303
    iput v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 304
    monitor-exit v0

    return-void

    .line 306
    :cond_13
    nop

    .line 307
    sget-object v1, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v3}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 308
    iput v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist localAddress()Ljava/net/InetSocketAddress;
    .registers 3

    .line 205
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 207
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist poll(IJ)I
    .registers 13
    .param p1, "events"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    nop

    .line 354
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    const/4 v1, 0x0

    .line 357
    .local v1, "n":I
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->begin()V

    .line 358
    iget-object v6, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_3d

    .line 359
    :try_start_f
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_21

    .line 360
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3a

    .line 365
    :try_start_16
    iput-wide v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 366
    if-lez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v5

    :goto_1c
    invoke-virtual {p0, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_49

    .line 360
    return v5

    .line 361
    :cond_21
    :try_start_21
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 362
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_3a

    .line 363
    :try_start_28
    iget-object v6, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v6, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I

    move-result v6
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_3d

    .line 365
    .end local v1    # "n":I
    .local v6, "n":I
    :try_start_2e
    iput-wide v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 366
    if-lez v6, :cond_33

    goto :goto_34

    :cond_33
    move v2, v5

    :goto_34
    invoke-virtual {p0, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 367
    nop

    .line 368
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_49

    return v6

    .line 362
    .end local v6    # "n":I
    .restart local v1    # "n":I
    :catchall_3a
    move-exception v7

    :try_start_3b
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "timeout":J
    :try_start_3c
    throw v7
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 365
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":J
    :catchall_3d
    move-exception v6

    :try_start_3e
    iput-wide v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 366
    if-lez v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v5

    :goto_44
    invoke-virtual {p0, v2}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 367
    nop

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "timeout":J
    throw v6

    .line 369
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":J
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public bridge synthetic whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/ServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_70

    .line 131
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 133
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_f
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 137
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_2b

    .line 138
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 139
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_24

    :cond_22
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .line 140
    .local v1, "family":Ljava/net/ProtocolFamily;
    :goto_24
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v1, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 141
    monitor-exit v0

    return-object p0

    .line 144
    .end local v1    # "family":Ljava/net/ProtocolFamily;
    :cond_2b
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_3f

    .line 145
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 148
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z

    goto :goto_46

    .line 151
    :cond_3f
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 153
    :goto_46
    monitor-exit v0

    return-object p0

    .line 135
    :cond_48
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v1

    .line 154
    .restart local p0    # "this":Lsun/nio/ch/ServerSocketChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_4e

    throw v1

    .line 132
    :cond_51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api socket()Ljava/net/ServerSocket;
    .registers 3

    .line 107
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    if-nez v1, :cond_d

    .line 109
    invoke-static {p0}, Lsun/nio/ch/ServerSocketAdaptor;->create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    .line 110
    :cond_d
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final whitelist test-api supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 195
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 394
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 395
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_21

    .line 398
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 400
    :cond_21
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_24
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 402
    .local v2, "addr":Ljava/net/InetSocketAddress;
    if-nez v2, :cond_30

    .line 403
    const-string v3, "unbound"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    .line 405
    :cond_30
    invoke-static {v2}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_42

    .line 409
    :goto_38
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 407
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 5
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 376
    const/4 v0, 0x0

    .line 379
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    .line 380
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/2addr v0, v1

    .line 382
    :cond_8
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 383
    return-void
.end method

.method public blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 343
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 10
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 317
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 318
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v1

    .line 319
    .local v1, "oldOps":I
    move v2, p2

    .line 321
    .local v2, "newOps":I
    sget-short v3, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v3, p1

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    .line 325
    return v4

    .line 328
    :cond_10
    sget-short v3, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v5, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v3, v5

    and-int/2addr v3, p1

    const/4 v5, 0x1

    if-eqz v3, :cond_23

    .line 329
    move v2, v0

    .line 330
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 331
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_22

    move v4, v5

    :cond_22
    return v4

    .line 334
    :cond_23
    sget-short v3, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_2e

    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_2e

    .line 336
    or-int/lit8 v2, v2, 0x10

    .line 338
    :cond_2e
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 339
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_36

    move v4, v5

    :cond_36
    return v4
.end method
