.class abstract Lsun/nio/ch/AsynchronousSocketChannelImpl;
.super Ljava/nio/channels/AsynchronousSocketChannel;
.source "AsynchronousSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Cancellable;
.implements Lsun/nio/ch/Groupable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/AsynchronousSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final blacklist ST_CONNECTED:I = 0x2

.field static final blacklist ST_PENDING:I = 0x1

.field static final blacklist ST_UNCONNECTED:I = 0x0

.field static final blacklist ST_UNINITIALIZED:I = -0x1


# instance fields
.field private final blacklist closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final blacklist fd:Ljava/io/FileDescriptor;

.field private blacklist isReuseAddress:Z

.field protected volatile blacklist localAddress:Ljava/net/InetSocketAddress;

.field private volatile blacklist open:Z

.field private blacklist readKilled:Z

.field private final blacklist readLock:Ljava/lang/Object;

.field private blacklist readShutdown:Z

.field private blacklist reading:Z

.field protected volatile blacklist remoteAddress:Ljava/net/InetSocketAddress;

.field protected volatile blacklist state:I

.field protected final blacklist stateLock:Ljava/lang/Object;

.field private blacklist writeKilled:Z

.field private final blacklist writeLock:Ljava/lang/Object;

.field private blacklist writeShutdown:Z

.field private blacklist writing:Z


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 3
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/AsynchronousSocketChannel;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 58
    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z

    .line 90
    invoke-static {v0}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 92
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .registers 5
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/AsynchronousSocketChannel;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 58
    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z

    .line 101
    iput-object p2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 103
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 104
    iput-object p3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 105
    return-void
.end method

.method private blacklist read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 16
    .param p1, "isScatteringRead"    # Z
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 232
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 233
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 234
    .local v0, "e":Ljava/lang/Throwable;
    if-nez p8, :cond_13

    .line 235
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 236
    :cond_13
    invoke-static {p0, p8, p7, v1, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 237
    return-object v1

    .line 240
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_17
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_ba

    .line 243
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_28

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    move v3, v0

    goto :goto_29

    :cond_28
    :goto_28
    move v3, v2

    .line 244
    .local v3, "hasSpaceToRead":Z
    :goto_29
    const/4 v4, 0x0

    .line 247
    .local v4, "shutdown":Z
    iget-object v5, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    .line 248
    :try_start_2d
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readKilled:Z

    if-nez v6, :cond_9d

    .line 250
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->reading:Z

    if-nez v6, :cond_8f

    .line 252
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_ad

    if-eqz v6, :cond_3c

    .line 253
    const/4 v2, 0x1

    move v4, v2

    .end local v4    # "shutdown":Z
    .local v2, "shutdown":Z
    goto :goto_4c

    .line 255
    .end local v2    # "shutdown":Z
    .restart local v4    # "shutdown":Z
    :cond_3c
    if-eqz v3, :cond_4c

    .line 256
    :try_start_3e
    iput-boolean v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->reading:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_41

    goto :goto_4c

    .line 259
    :catchall_41
    move-exception v0

    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    goto/16 :goto_b6

    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_ad

    .line 263
    if-nez v4, :cond_67

    if-nez v3, :cond_5a

    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    goto :goto_6f

    .line 276
    :cond_5a
    invoke-virtual/range {p0 .. p8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "isScatteringRead":Z
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local v2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "isScatteringRead":Z
    .local p3, "dst":Ljava/nio/ByteBuffer;
    .local p4, "dsts":[Ljava/nio/ByteBuffer;
    .local p5, "timeout":J
    .local p7, "unit":Ljava/util/concurrent/TimeUnit;
    .local p8, "att":Ljava/lang/Object;, "TA;"
    return-object v0

    .line 263
    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .end local p5    # "timeout":J
    .restart local p1    # "isScatteringRead":Z
    .local p2, "dst":Ljava/nio/ByteBuffer;
    .local p3, "dsts":[Ljava/nio/ByteBuffer;
    .local p4, "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :cond_67
    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .line 265
    .end local p1    # "isScatteringRead":Z
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "isScatteringRead":Z
    .local p3, "dst":Ljava/nio/ByteBuffer;
    .local p4, "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "timeout":J
    .local p7, "unit":Ljava/util/concurrent/TimeUnit;
    .local p8, "att":Ljava/lang/Object;, "TA;"
    :goto_6f
    if-eqz p2, :cond_7d

    .line 266
    if-eqz v4, :cond_76

    const-wide/16 v5, -0x1

    goto :goto_78

    :cond_76
    const-wide/16 v5, 0x0

    :goto_78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, "result":Ljava/lang/Number;
    goto :goto_84

    .line 268
    .end local v0    # "result":Ljava/lang/Number;
    :cond_7d
    if-eqz v4, :cond_80

    const/4 v0, -0x1

    :cond_80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 270
    .restart local v0    # "result":Ljava/lang/Number;
    :goto_84
    if-nez v2, :cond_8b

    .line 271
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 272
    :cond_8b
    invoke-static {p0, v2, p8, v0, v1}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 273
    return-object v1

    .line 251
    .end local v0    # "result":Ljava/lang/Number;
    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .end local p5    # "timeout":J
    .restart local p1    # "isScatteringRead":Z
    .local p2, "dst":Ljava/nio/ByteBuffer;
    .local p3, "dsts":[Ljava/nio/ByteBuffer;
    .local p4, "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :cond_8f
    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "isScatteringRead":Z
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "isScatteringRead":Z
    .local p3, "dst":Ljava/nio/ByteBuffer;
    .local p4, "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "timeout":J
    .local p7, "unit":Ljava/util/concurrent/TimeUnit;
    .local p8, "att":Ljava/lang/Object;, "TA;"
    :try_start_97
    new-instance v0, Ljava/nio/channels/ReadPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ReadPendingException;-><init>()V

    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .end local v3    # "hasSpaceToRead":Z
    .end local v4    # "shutdown":Z
    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p2    # "isScatteringRead":Z
    .end local p3    # "dst":Ljava/nio/ByteBuffer;
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "timeout":J
    .end local p7    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p8    # "att":Ljava/lang/Object;, "TA;"
    throw v0

    .line 249
    .restart local v3    # "hasSpaceToRead":Z
    .restart local v4    # "shutdown":Z
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "isScatteringRead":Z
    .local p2, "dst":Ljava/nio/ByteBuffer;
    .local p3, "dsts":[Ljava/nio/ByteBuffer;
    .local p4, "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :cond_9d
    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "isScatteringRead":Z
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "isScatteringRead":Z
    .local p3, "dst":Ljava/nio/ByteBuffer;
    .local p4, "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "timeout":J
    .local p7, "unit":Ljava/util/concurrent/TimeUnit;
    .local p8, "att":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reading not allowed due to timeout or cancellation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .end local v3    # "hasSpaceToRead":Z
    .end local v4    # "shutdown":Z
    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p2    # "isScatteringRead":Z
    .end local p3    # "dst":Ljava/nio/ByteBuffer;
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "timeout":J
    .end local p7    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p8    # "att":Ljava/lang/Object;, "TA;"
    throw v0

    .line 259
    .restart local v3    # "hasSpaceToRead":Z
    .restart local v4    # "shutdown":Z
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "isScatteringRead":Z
    .local p2, "dst":Ljava/nio/ByteBuffer;
    .local p3, "dsts":[Ljava/nio/ByteBuffer;
    .local p4, "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :catchall_ad
    move-exception v0

    move-object v2, p8

    move-object p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "isScatteringRead":Z
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .local p2, "isScatteringRead":Z
    .local p3, "dst":Ljava/nio/ByteBuffer;
    .local p4, "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "timeout":J
    .local p7, "unit":Ljava/util/concurrent/TimeUnit;
    .local p8, "att":Ljava/lang/Object;, "TA;"
    :goto_b6
    monitor-exit v5
    :try_end_b7
    .catchall {:try_start_97 .. :try_end_b7} :catchall_b8

    throw v0

    :catchall_b8
    move-exception v0

    goto :goto_b6

    .line 241
    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    .end local v3    # "hasSpaceToRead":Z
    .end local v4    # "shutdown":Z
    .end local p5    # "timeout":J
    .restart local p1    # "isScatteringRead":Z
    .local p2, "dst":Ljava/nio/ByteBuffer;
    .local p3, "dsts":[Ljava/nio/ByteBuffer;
    .local p4, "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :cond_ba
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
.end method

.method private blacklist write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 15
    .param p1, "isGatheringWrite"    # Z
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 341
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_d

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v1

    .line 343
    .local v2, "hasDataToWrite":Z
    :goto_e
    const/4 v3, 0x0

    .line 344
    .local v3, "closed":Z
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 345
    iget-object v4, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_42

    .line 348
    iget-object v4, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 349
    :try_start_1c
    iget-boolean v5, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeKilled:Z

    if-nez v5, :cond_37

    .line 351
    iget-boolean v5, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writing:Z

    if-nez v5, :cond_31

    .line 353
    iget-boolean v5, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-eqz v5, :cond_2b

    .line 354
    const/4 v1, 0x1

    move v3, v1

    .end local v3    # "closed":Z
    .local v1, "closed":Z
    goto :goto_2f

    .line 356
    .end local v1    # "closed":Z
    .restart local v3    # "closed":Z
    :cond_2b
    if-eqz v2, :cond_2f

    .line 357
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writing:Z

    .line 359
    :cond_2f
    :goto_2f
    monitor-exit v4

    goto :goto_49

    .line 352
    :cond_31
    new-instance v0, Ljava/nio/channels/WritePendingException;

    invoke-direct {v0}, Ljava/nio/channels/WritePendingException;-><init>()V

    .end local v2    # "hasDataToWrite":Z
    .end local v3    # "closed":Z
    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p1    # "isGatheringWrite":Z
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .end local p3    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p4    # "timeout":J
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p7    # "att":Ljava/lang/Object;, "TA;"
    .end local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    throw v0

    .line 350
    .restart local v2    # "hasDataToWrite":Z
    .restart local v3    # "closed":Z
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "isGatheringWrite":Z
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    .restart local p3    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p4    # "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local p7    # "att":Ljava/lang/Object;, "TA;"
    .restart local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Writing not allowed due to timeout or cancellation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "hasDataToWrite":Z
    .end local v3    # "closed":Z
    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p1    # "isGatheringWrite":Z
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .end local p3    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p4    # "timeout":J
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p7    # "att":Ljava/lang/Object;, "TA;"
    .end local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    throw v0

    .line 359
    .restart local v2    # "hasDataToWrite":Z
    .restart local v3    # "closed":Z
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "isGatheringWrite":Z
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    .restart local p3    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p4    # "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local p7    # "att":Ljava/lang/Object;, "TA;"
    .restart local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :catchall_3f
    move-exception v0

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_3f

    throw v0

    .line 346
    :cond_42
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 361
    :cond_48
    const/4 v3, 0x1

    .line 365
    :goto_49
    const/4 v1, 0x0

    if-eqz v3, :cond_5c

    .line 366
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 367
    .local v0, "e":Ljava/lang/Throwable;
    if-nez p8, :cond_58

    .line 368
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 369
    :cond_58
    invoke-static {p0, p8, p7, v1, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 370
    return-object v1

    .line 374
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5c
    if-nez v2, :cond_76

    .line 375
    if-eqz p1, :cond_67

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_6b

    :cond_67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 376
    .local v0, "result":Ljava/lang/Number;
    :goto_6b
    if-nez p8, :cond_72

    .line 377
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 378
    :cond_72
    invoke-static {p0, p8, p7, v0, v1}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 379
    return-object v1

    .line 382
    .end local v0    # "result":Ljava/lang/Number;
    :cond_76
    invoke-virtual/range {p0 .. p8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final blacklist begin()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 117
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    return-void

    .line 118
    :cond_10
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 8
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 425
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_60

    .line 426
    :try_start_6
    iget v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_57

    .line 428
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_51

    .line 430
    if-nez p1, :cond_18

    .line 431
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_1c

    :cond_18
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 432
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :goto_1c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 433
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_29

    .line 434
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 436
    :cond_29
    iget-object v3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 437
    iget-object v3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 438
    iget-object v3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v3

    iput-object v3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 439
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_5d

    .line 441
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 442
    nop

    .line 443
    return-object p0

    .line 429
    :cond_51
    :try_start_51
    new-instance v1, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v1

    .line 427
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_57
    new-instance v1, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v1

    .line 439
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_5d

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    :try_start_5f
    throw v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 441
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_60
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 442
    throw v0
.end method

.method public bridge synthetic whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_9
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_28

    if-nez v0, :cond_17

    .line 142
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    return-void

    .line 140
    :cond_17
    const/4 v0, 0x0

    :try_start_18
    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_28

    .line 142
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 143
    nop

    .line 144
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implClose()V

    .line 145
    return-void

    .line 142
    :catchall_28
    move-exception v0

    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 143
    throw v0
.end method

.method public final whitelist test-api connect(Ljava/net/SocketAddress;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api connect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 6
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Void;",
            "-TA;>;)V"
        }
    .end annotation

    .line 207
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    if-eqz p3, :cond_6

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 210
    return-void

    .line 208
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist enableReading()V
    .registers 2

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->enableReading(Z)V

    .line 157
    return-void
.end method

.method final blacklist enableReading(Z)V
    .registers 4
    .param p1, "killed"    # Z

    .line 148
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->reading:Z

    .line 150
    if-eqz p1, :cond_b

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readKilled:Z

    .line 152
    :cond_b
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method final blacklist enableWriting()V
    .registers 2

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->enableWriting(Z)V

    .line 169
    return-void
.end method

.method final blacklist enableWriting(Z)V
    .registers 4
    .param p1, "killed"    # Z

    .line 160
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writing:Z

    .line 162
    if-eqz p1, :cond_b

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeKilled:Z

    .line 164
    :cond_b
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method final blacklist end()V
    .registers 2

    .line 125
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    return-void
.end method

.method public final whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 450
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0

    .line 449
    :cond_d
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
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

    .line 483
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-eqz p1, :cond_53

    .line 485
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 489
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 490
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_23

    .line 491
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 494
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_2f

    .line 498
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 494
    return-object v0

    .line 496
    :cond_23
    :try_start_23
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2f

    .line 498
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 496
    return-object v0

    .line 498
    :catchall_2f
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 499
    throw v0

    .line 486
    :cond_34
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

    .line 484
    :cond_53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 528
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    return-object v0

    .line 527
    :cond_9
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method abstract blacklist implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Void;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method abstract blacklist implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method abstract blacklist implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "TV;-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final whitelist test-api isOpen()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z

    return v0
.end method

.method final blacklist killConnect()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->killReading()V

    .line 187
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->killWriting()V

    .line 188
    return-void
.end method

.method final blacklist killReading()V
    .registers 3

    .line 172
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readKilled:Z

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method final blacklist killWriting()V
    .registers 3

    .line 178
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeKilled:Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final whitelist test-api read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .registers 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_15

    .line 283
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .local v3, "dst":Ljava/nio/ByteBuffer;
    invoke-direct/range {v1 .. v9}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 282
    .end local v3    # "dst":Ljava/nio/ByteBuffer;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :cond_15
    move-object v3, p1

    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .restart local v3    # "dst":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Read-only buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 17
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .line 293
    .local p5, "attachment":Ljava/lang/Object;, "TA;"
    .local p6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    if-eqz p6, :cond_1d

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_15

    .line 297
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 298
    return-void

    .line 296
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api read([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 19
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation

    .line 309
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Long;-TA;>;"
    if-eqz p8, :cond_39

    .line 311
    if-ltz p2, :cond_33

    if-ltz p3, :cond_33

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_33

    .line 313
    invoke-static/range {p1 .. p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 314
    .local v4, "bufs":[Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v1, v4

    if-ge v0, v1, :cond_25

    .line 315
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 316
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Read-only buffer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v0    # "i":I
    :cond_25
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 319
    return-void

    .line 312
    .end local v4    # "bufs":[Ljava/nio/ByteBuffer;
    :cond_33
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 310
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_5f

    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 463
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 464
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-nez v0, :cond_33

    .line 466
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_27

    .line 467
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 470
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isReuseAddress:Z

    goto :goto_2e

    .line 472
    :cond_27
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_3b

    .line 474
    :goto_2e
    nop

    .line 476
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 474
    return-object p0

    .line 465
    :cond_33
    :try_start_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection has been shutdown for writing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v0
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 476
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_3b
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 477
    throw v0

    .line 460
    :cond_40
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

    .line 458
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
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

    .line 48
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api shutdownInput()Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 535
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_20

    .line 537
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_26

    .line 538
    :try_start_a
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z

    if-nez v1, :cond_17

    .line 539
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 540
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z

    .line 542
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1d

    .line 544
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 545
    nop

    .line 546
    return-object p0

    .line 542
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    :try_start_1f
    throw v1

    .line 536
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    :cond_20
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    throw v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_26

    .line 544
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    :catchall_26
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 545
    throw v0
.end method

.method public final whitelist test-api shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 553
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1f

    .line 555
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_25

    .line 556
    :try_start_a
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-nez v1, :cond_16

    .line 557
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 558
    iput-boolean v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    .line 560
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1c

    .line 562
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 563
    nop

    .line 564
    return-object p0

    .line 560
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    :try_start_1e
    throw v1

    .line 554
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    :cond_1f
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    throw v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_25

    .line 562
    .restart local p0    # "this":Lsun/nio/ch/AsynchronousSocketChannelImpl;
    :catchall_25
    move-exception v0

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 563
    throw v0
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

    .line 521
    sget-object v0, Lsun/nio/ch/AsynchronousSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_24

    .line 574
    const-string v2, "closed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 576
    :cond_24
    iget v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    packed-switch v2, :pswitch_data_80

    goto :goto_4e

    .line 584
    :pswitch_2a
    const-string v2, "connected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-boolean v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z

    if-eqz v2, :cond_38

    .line 586
    const-string v2, " ishut"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_38
    iget-boolean v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-eqz v2, :cond_4e

    .line 588
    const-string v2, " oshut"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 581
    :pswitch_42
    const-string v2, "connection-pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    goto :goto_4e

    .line 578
    :pswitch_48
    const-string v2, "unconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    nop

    .line 591
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_60

    .line 592
    const-string v2, " local="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 594
    invoke-static {v2}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_60
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_72

    .line 597
    const-string v2, " remote="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_72
    :goto_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_18 .. :try_end_73} :catchall_7d

    .line 602
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 601
    :catchall_7d
    move-exception v2

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v2

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_48
        :pswitch_42
        :pswitch_2a
    .end packed-switch
.end method

.method public final whitelist test-api write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 387
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .local v2, "src":Ljava/nio/ByteBuffer;
    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .line 397
    .local p5, "attachment":Ljava/lang/Object;, "TA;"
    .local p6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    if-eqz p6, :cond_e

    .line 399
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "timeout":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p5    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p6    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .local v2, "src":Ljava/nio/ByteBuffer;
    .local v4, "timeout":J
    .local v6, "unit":Ljava/util/concurrent/TimeUnit;
    .local v7, "attachment":Ljava/lang/Object;, "TA;"
    .local v8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 400
    return-void

    .line 398
    .end local v2    # "src":Ljava/nio/ByteBuffer;
    .end local v4    # "timeout":J
    .end local v6    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local v7    # "attachment":Ljava/lang/Object;, "TA;"
    .end local v8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "timeout":J
    .restart local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local p5    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p6    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    :cond_e
    move-object v2, p1

    move-wide v4, p2

    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "timeout":J
    .restart local v2    # "src":Ljava/nio/ByteBuffer;
    .restart local v4    # "timeout":J
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'handler\' is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist test-api write([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 19
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation

    .line 411
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Long;-TA;>;"
    if-eqz p8, :cond_22

    .line 413
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1c

    .line 415
    invoke-static/range {p1 .. p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 416
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .local v4, "srcs":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 417
    return-void

    .line 414
    .end local v4    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 412
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
