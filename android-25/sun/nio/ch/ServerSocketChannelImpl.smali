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
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_INUSE:I = 0x0

.field private static final ST_KILLED:I = 0x1

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private fdVal:I

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final lock:Ljava/lang/Object;

.field socket:Ljava/net/ServerSocket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private volatile thread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/ServerSocketChannelImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    #@b
    .line 397
    invoke-static {}, Lsun/nio/ch/ServerSocketChannelImpl;->initIDs()V

    #@e
    .line 398
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    #@10
    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    #@13
    sput-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@15
    .line 41
    return-void

    #@16
    :cond_0
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 57
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@7
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    #@e
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@15
    .line 72
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    #@18
    .line 88
    const/4 v0, 0x1

    #@19
    invoke-static {v0}, Lsun/nio/ch/Net;->serverSocket(Z)Ljava/io/FileDescriptor;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1f
    .line 89
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@21
    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    #@27
    .line 90
    const/4 v0, 0x0

    #@28
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    #@2a
    .line 86
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "bound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@3
    .line 57
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@7
    .line 60
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    #@e
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@15
    .line 72
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    #@18
    .line 99
    iput-object p2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1a
    .line 100
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    #@20
    .line 101
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    #@23
    .line 102
    if-eqz p3, :cond_0

    #@25
    .line 103
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@2b
    .line 96
    :cond_0
    return-void
.end method

.method private native accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 224
    iget-object v10, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    #@5
    monitor-enter v10

    #@6
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@9
    move-result v7

    #@a
    if-nez v7, :cond_0

    #@c
    .line 226
    new-instance v7, Ljava/nio/channels/ClosedChannelException;

    #@e
    invoke-direct {v7}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@11
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 224
    :catchall_0
    move-exception v7

    #@13
    monitor-exit v10

    #@14
    throw v7

    #@15
    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@18
    move-result v7

    #@19
    if-nez v7, :cond_1

    #@1b
    .line 228
    new-instance v7, Ljava/nio/channels/NotYetBoundException;

    #@1d
    invoke-direct {v7}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    #@20
    throw v7

    #@21
    .line 229
    :cond_1
    const/4 v4, 0x0

    #@22
    .line 231
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    #@23
    .line 232
    .local v2, "n":I
    new-instance v3, Ljava/io/FileDescriptor;

    #@25
    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    #@28
    .line 233
    .local v3, "newfd":Ljava/io/FileDescriptor;
    const/4 v7, 0x1

    #@29
    new-array v1, v7, [Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 236
    .local v1, "isaa":[Ljava/net/InetSocketAddress;
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->begin()V

    #@2e
    .line 237
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    move-result v7

    #@32
    if-nez v7, :cond_3

    #@34
    .line 247
    const-wide/16 v8, 0x0

    #@36
    :try_start_3
    iput-wide v8, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@38
    .line 248
    const/4 v7, 0x0

    #@39
    invoke-virtual {p0, v7}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    #@3c
    .line 249
    sget-boolean v7, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    #@3e
    if-nez v7, :cond_2

    #@40
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@43
    move-result v7

    #@44
    if-nez v7, :cond_2

    #@46
    new-instance v7, Ljava/lang/AssertionError;

    #@48
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@4b
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4c
    :cond_2
    monitor-exit v10

    #@4d
    .line 238
    return-object v11

    #@4e
    .line 239
    :cond_3
    :try_start_4
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@51
    move-result-wide v12

    #@52
    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@54
    .line 241
    :cond_4
    iget-object v7, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@56
    invoke-direct {p0, v7, v3, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    #@59
    move-result v2

    #@5a
    .line 242
    const/4 v7, -0x3

    #@5b
    if-ne v2, v7, :cond_5

    #@5d
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@60
    move-result v7

    #@61
    if-nez v7, :cond_4

    #@63
    .line 247
    :cond_5
    const-wide/16 v12, 0x0

    #@65
    :try_start_5
    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@67
    .line 248
    if-lez v2, :cond_6

    #@69
    move v9, v8

    #@6a
    :cond_6
    invoke-virtual {p0, v9}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    #@6d
    .line 249
    sget-boolean v7, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    #@6f
    if-nez v7, :cond_9

    #@71
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@74
    move-result v7

    #@75
    if-nez v7, :cond_9

    #@77
    new-instance v7, Ljava/lang/AssertionError;

    #@79
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@7c
    throw v7

    #@7d
    .line 246
    :catchall_1
    move-exception v7

    #@7e
    .line 247
    const-wide/16 v12, 0x0

    #@80
    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@82
    .line 248
    if-lez v2, :cond_7

    #@84
    :goto_0
    invoke-virtual {p0, v8}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    #@87
    .line 249
    sget-boolean v8, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    #@89
    if-nez v8, :cond_8

    #@8b
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@8e
    move-result v8

    #@8f
    if-nez v8, :cond_8

    #@91
    new-instance v7, Ljava/lang/AssertionError;

    #@93
    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    #@96
    throw v7

    #@97
    :cond_7
    move v8, v9

    #@98
    .line 248
    goto :goto_0

    #@99
    .line 246
    :cond_8
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@9a
    .line 252
    :cond_9
    if-ge v2, v8, :cond_a

    #@9c
    monitor-exit v10

    #@9d
    .line 253
    return-object v11

    #@9e
    .line 255
    :cond_a
    const/4 v7, 0x1

    #@9f
    :try_start_6
    invoke-static {v3, v7}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    #@a2
    .line 256
    const/4 v7, 0x0

    #@a3
    aget-object v0, v1, v7

    #@a5
    .line 257
    .local v0, "isa":Ljava/net/InetSocketAddress;
    new-instance v4, Lsun/nio/ch/SocketChannelImpl;

    #@a7
    .end local v4    # "sc":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@aa
    move-result-object v7

    #@ab
    invoke-direct {v4, v7, v3, v0}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    #@ae
    .line 258
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b1
    move-result-object v5

    #@b2
    .line 259
    .local v5, "sm":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_b

    #@b4
    .line 261
    :try_start_7
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@bb
    move-result-object v7

    #@bc
    .line 262
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@bf
    move-result v8

    #@c0
    .line 261
    invoke-virtual {v5, v7, v8}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c3
    :cond_b
    monitor-exit v10

    #@c4
    .line 268
    return-object v4

    #@c5
    .line 263
    :catch_0
    move-exception v6

    #@c6
    .line 264
    .local v6, "x":Ljava/lang/SecurityException;
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V

    #@c9
    .line 265
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 6
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 204
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 205
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 203
    .end local p2    # "backlog":I
    :catchall_0
    move-exception v2

    #@10
    monitor-exit v3

    #@11
    throw v2

    #@12
    .line 206
    .restart local p2    # "backlog":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 207
    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    #@1a
    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    #@1d
    throw v2

    #@1e
    .line 208
    :cond_1
    if-nez p1, :cond_4

    #@20
    new-instance v0, Ljava/net/InetSocketAddress;

    #@22
    const/4 v2, 0x0

    #@23
    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@26
    .line 210
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@29
    move-result-object v1

    #@2a
    .line 211
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2

    #@2c
    .line 212
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    #@33
    .line 213
    :cond_2
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@35
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@3c
    move-result v5

    #@3d
    invoke-static {v2, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@40
    .line 214
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@42
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@49
    move-result v5

    #@4a
    invoke-static {v2, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@4d
    .line 215
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4f
    const/4 v4, 0x1

    #@50
    if-ge p2, v4, :cond_3

    #@52
    const/16 p2, 0x32

    #@54
    .end local p2    # "backlog":I
    :cond_3
    invoke-static {v2, p2}, Lsun/nio/ch/Net;->listen(Ljava/io/FileDescriptor;I)V

    #@57
    .line 216
    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@59
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    .line 217
    :try_start_2
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5c
    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@5f
    move-result-object v2

    #@60
    iput-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@62
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    monitor-exit v3

    #@64
    .line 220
    return-object p0

    #@65
    .line 209
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p2    # "backlog":I
    :cond_4
    :try_start_4
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@68
    move-result-object v0

    #@69
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0

    #@6a
    .line 216
    .end local p2    # "backlog":I
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v2

    #@6b
    monitor-exit v4

    #@6c
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    #@0
    .prologue
    .line 360
    iget v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    #@2
    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 118
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 116
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@14
    if-nez v0, :cond_1

    #@16
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :goto_0
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 121
    :cond_1
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@1c
    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@1f
    move-result-object v0

    #@20
    .line 120
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    move-result-object v0

    #@24
    goto :goto_0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 156
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "\'"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "\' not supported"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 159
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v1

    #@36
    .line 160
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_2

    #@3c
    .line 161
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@3e
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@41
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 159
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 162
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@47
    if-ne p1, v0, :cond_3

    #@49
    .line 163
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    #@4c
    move-result v0

    #@4d
    .line 162
    if-eqz v0, :cond_3

    #@4f
    .line 166
    iget-boolean v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z

    #@51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    move-result-object v0

    #@55
    monitor-exit v1

    #@56
    return-object v0

    #@57
    .line 169
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@59
    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@5b
    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    move-result-object v0

    #@5f
    monitor-exit v1

    #@60
    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 278
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 279
    :try_start_0
    iget v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    #@5
    const/4 v4, 0x1

    #@6
    if-eq v2, v4, :cond_0

    #@8
    .line 280
    sget-object v2, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@a
    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@c
    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    #@f
    .line 281
    :cond_0
    iget-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    #@11
    .line 282
    .local v0, "th":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v2, v0, v4

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 283
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@1a
    .line 284
    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 285
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_2
    monitor-exit v3

    #@24
    .line 277
    return-void

    #@25
    .line 278
    .end local v0    # "th":J
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    #@5
    .line 273
    return-void
.end method

.method public isBound()Z
    .locals 2

    #@0
    .prologue
    .line 190
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 191
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 190
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public kill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 290
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 291
    :try_start_0
    iget v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v3, v1, :cond_0

    #@9
    monitor-exit v2

    #@a
    .line 292
    return-void

    #@b
    .line 293
    :cond_0
    :try_start_1
    iget v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    #@d
    const/4 v4, -0x1

    #@e
    if-ne v3, v4, :cond_1

    #@10
    .line 294
    const/4 v0, 0x1

    #@11
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 295
    return-void

    #@15
    .line 297
    :cond_1
    :try_start_2
    sget-boolean v3, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    #@17
    if-nez v3, :cond_4

    #@19
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_2

    #@1f
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_3

    #@25
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    #@27
    new-instance v0, Ljava/lang/AssertionError;

    #@29
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2c
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    .line 290
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v2

    #@2f
    throw v0

    #@30
    :cond_3
    move v0, v1

    #@31
    .line 297
    goto :goto_0

    #@32
    .line 298
    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@34
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@36
    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    #@39
    .line 299
    const/4 v0, 0x1

    #@3a
    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    monitor-exit v2

    #@3d
    .line 289
    return-void
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 2

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 197
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 196
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "name"    # Ljava/net/SocketOption;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/ServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 131
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "\'"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "\' not supported"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 133
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v1

    #@36
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_2

    #@3c
    .line 135
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@3e
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@41
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 133
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 136
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@47
    if-ne p1, v0, :cond_3

    #@49
    .line 137
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    #@4c
    move-result v0

    #@4d
    .line 136
    if-eqz v0, :cond_3

    #@4f
    .line 140
    check-cast p2, Ljava/lang/Boolean;

    #@51
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@54
    move-result v0

    #@55
    iput-boolean v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    :goto_0
    monitor-exit v1

    #@58
    .line 145
    return-object p0

    #@59
    .line 143
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5b
    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@5d
    invoke-static {v0, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    goto :goto_0
.end method

.method public socket()Ljava/net/ServerSocket;
    .locals 2

    #@0
    .prologue
    .line 107
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 108
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 109
    invoke-static {p0}, Lsun/nio/ch/ServerSocketAdaptor;->create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    #@d
    .line 110
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 107
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 364
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 365
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 366
    const/16 v2, 0x5b

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@15
    .line 367
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 368
    const-string/jumbo v2, "closed"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 379
    :goto_0
    const/16 v2, 0x5d

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@26
    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    return-object v2

    #@2b
    .line 370
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2d
    monitor-enter v3

    #@2e
    .line 371
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    #@31
    move-result-object v0

    #@32
    .line 372
    .local v0, "addr":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_1

    #@34
    .line 373
    const-string/jumbo v2, "unbound"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    :goto_1
    monitor-exit v3

    #@3b
    goto :goto_0

    #@3c
    .line 375
    :cond_1
    :try_start_1
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 370
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 346
    const/4 v0, 0x0

    #@1
    .line 349
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x10

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 350
    const/4 v0, 0x1

    #@6
    .line 352
    :cond_0
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    #@8
    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    #@b
    .line 345
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 339
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 335
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 6
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 308
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    #@5
    move-result v0

    #@6
    .line 309
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@9
    move-result v2

    #@a
    .line 310
    .local v2, "oldOps":I
    move v1, p2

    #@b
    .line 312
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 316
    return v4

    #@10
    .line 319
    :cond_0
    and-int/lit8 v5, p1, 0x18

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 321
    move v1, v0

    #@15
    .line 322
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@18
    .line 323
    not-int v5, v2

    #@19
    and-int/2addr v5, v0

    #@1a
    if-eqz v5, :cond_1

    #@1c
    :goto_0
    return v3

    #@1d
    :cond_1
    move v3, v4

    #@1e
    goto :goto_0

    #@1f
    .line 326
    :cond_2
    and-int/lit8 v5, p1, 0x1

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 327
    and-int/lit8 v5, v0, 0x10

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 328
    or-int/lit8 v1, p2, 0x10

    #@29
    .line 330
    :cond_3
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@2c
    .line 331
    not-int v5, v2

    #@2d
    and-int/2addr v5, v1

    #@2e
    if-eqz v5, :cond_4

    #@30
    :goto_1
    return v3

    #@31
    :cond_4
    move v3, v4

    #@32
    goto :goto_1
.end method
