.class Lsun/nio/ch/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x2

.field private static final ST_KILLED:I = 0x4

.field private static final ST_KILLPENDING:I = 0x3

.field private static final ST_PENDING:I = 0x1

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private isInputOpen:Z

.field private isOutputOpen:Z

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private readyToConnect:Z

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private socket:Ljava/net/Socket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/SocketChannelImpl;

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
    sput-boolean v0, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@b
    .line 1039
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    #@d
    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    #@10
    sput-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@12
    .line 45
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    .line 106
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@7
    .line 61
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@9
    .line 62
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@b
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@12
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@17
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@19
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@20
    .line 86
    const/4 v0, -0x1

    #@21
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@23
    .line 93
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    #@25
    .line 94
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@27
    .line 95
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@29
    .line 107
    invoke-static {v1}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2f
    .line 108
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@31
    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@34
    move-result v0

    #@35
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    #@37
    .line 109
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@39
    .line 105
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 131
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@6
    .line 61
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@8
    .line 62
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@a
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@11
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@18
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@1f
    .line 86
    const/4 v0, -0x1

    #@20
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@22
    .line 93
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    #@24
    .line 94
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@26
    .line 95
    const/4 v0, 0x0

    #@27
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@29
    .line 132
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2b
    .line 133
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    #@31
    .line 134
    const/4 v0, 0x2

    #@32
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@34
    .line 135
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@3a
    .line 136
    iput-object p3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@3c
    .line 129
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .locals 6
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
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 117
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@7
    .line 61
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@9
    .line 62
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@b
    .line 65
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@12
    .line 68
    new-instance v0, Ljava/lang/Object;

    #@14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@17
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@19
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@20
    .line 86
    const/4 v0, -0x1

    #@21
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@23
    .line 93
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    #@25
    .line 94
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@27
    .line 95
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@29
    .line 118
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2b
    .line 119
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    #@31
    .line 120
    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@33
    .line 121
    if-eqz p3, :cond_0

    #@35
    .line 122
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@3b
    .line 115
    :cond_0
    return-void
.end method

.method private static native checkConnect(Ljava/io/FileDescriptor;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureReadOpen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 254
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 255
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 253
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 257
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    #@1a
    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 258
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    if-nez v0, :cond_2

    #@22
    .line 259
    const/4 v0, 0x0

    #@23
    monitor-exit v1

    #@24
    return v0

    #@25
    .line 261
    :cond_2
    const/4 v0, 0x1

    #@26
    monitor-exit v1

    #@27
    return v0
.end method

.method private ensureWriteOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 267
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 268
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 266
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 269
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@14
    if-nez v0, :cond_1

    #@16
    .line 270
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@18
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 271
    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_2

    #@22
    .line 272
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    #@24
    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@27
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :cond_2
    monitor-exit v1

    #@29
    .line 265
    return-void
.end method

.method private readerCleanup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 278
    const-wide/16 v2, 0x0

    #@5
    :try_start_0
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@7
    .line 279
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@9
    const/4 v2, 0x3

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 280
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 276
    return-void

    #@11
    .line 277
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method private static native sendOutOfBandData(Ljava/io/FileDescriptor;B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private writerCleanup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 286
    const-wide/16 v2, 0x0

    #@5
    :try_start_0
    iput-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@7
    .line 287
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@9
    const/4 v2, 0x3

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 288
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit v1

    #@10
    .line 284
    return-void

    #@11
    .line 285
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 7
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 594
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 595
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@5
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@6
    .line 596
    :try_start_1
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@8
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9
    .line 597
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 598
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    #@11
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@14
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@15
    .line 596
    :catchall_0
    move-exception v1

    #@16
    :try_start_3
    monitor-exit v4

    #@17
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@18
    .line 595
    :catchall_1
    move-exception v1

    #@19
    :try_start_4
    monitor-exit v3

    #@1a
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@1b
    .line 594
    :catchall_2
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1

    #@1e
    .line 599
    :cond_0
    :try_start_5
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@20
    const/4 v5, 0x1

    #@21
    if-ne v1, v5, :cond_1

    #@23
    .line 600
    new-instance v1, Ljava/nio/channels/ConnectionPendingException;

    #@25
    invoke-direct {v1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    #@28
    throw v1

    #@29
    .line 601
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 602
    new-instance v1, Ljava/nio/channels/AlreadyBoundException;

    #@2f
    invoke-direct {v1}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    #@32
    throw v1

    #@33
    .line 603
    :cond_2
    if-nez p1, :cond_3

    #@35
    .line 604
    new-instance v0, Ljava/net/InetSocketAddress;

    #@37
    const/4 v1, 0x0

    #@38
    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@3b
    .line 605
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@3d
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@44
    move-result v6

    #@45
    invoke-static {v1, v5, v6}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@48
    .line 606
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4a
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@51
    move-result v6

    #@52
    invoke-static {v1, v5, v6}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@55
    .line 607
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@57
    invoke-static {v1}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@5a
    move-result-object v1

    #@5b
    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5d
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@5e
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@5f
    monitor-exit v2

    #@60
    .line 611
    return-object p0

    #@61
    .line 604
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_3
    :try_start_8
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@64
    move-result-object v0

    #@65
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .locals 14
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    const/4 v2, 0x0

    #@1
    .line 640
    .local v2, "localPort":I
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@3
    monitor-enter v8

    #@4
    .line 641
    :try_start_0
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@6
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@7
    .line 642
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureOpenAndUnconnected()V

    #@a
    .line 643
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@d
    move-result-object v1

    #@e
    .line 644
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@11
    move-result-object v4

    #@12
    .line 645
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_0

    #@14
    .line 646
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    .line 647
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@1f
    move-result v7

    #@20
    .line 646
    invoke-virtual {v4, v6, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@23
    .line 648
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    #@26
    move-result-object v10

    #@27
    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    .line 649
    const/4 v3, 0x0

    #@29
    .line 652
    .local v3, "n":I
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@2c
    .line 653
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2e
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    #@2f
    .line 654
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@32
    move-result v6

    #@33
    if-nez v6, :cond_2

    #@35
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@36
    .line 679
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@39
    .line 680
    const/4 v6, 0x0

    #@3a
    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@3d
    .line 681
    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@3f
    if-nez v6, :cond_1

    #@41
    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_1

    #@47
    new-instance v6, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@4d
    .line 683
    :catch_0
    move-exception v5

    #@4e
    .line 687
    .local v5, "x":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    #@51
    .line 688
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@52
    .line 648
    .end local v5    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@53
    :try_start_7
    monitor-exit v10

    #@54
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@55
    .line 641
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "n":I
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v6

    #@56
    :try_start_8
    monitor-exit v9

    #@57
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@58
    .line 640
    :catchall_2
    move-exception v6

    #@59
    monitor-exit v8

    #@5a
    throw v6

    #@5b
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v3    # "n":I
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@5c
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@5d
    .line 655
    const/4 v6, 0x0

    #@5e
    monitor-exit v8

    #@5f
    return v6

    #@60
    .line 658
    :cond_2
    :try_start_b
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@62
    if-nez v6, :cond_3

    #@64
    .line 659
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@66
    .line 660
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@69
    move-result-object v11

    #@6a
    .line 661
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@6d
    move-result v12

    #@6e
    .line 659
    invoke-static {v6, v11, v12}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@71
    .line 663
    :cond_3
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@74
    move-result-wide v12

    #@75
    iput-wide v12, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@77
    :try_start_c
    monitor-exit v7

    #@78
    .line 666
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@7b
    move-result-object v0

    #@7c
    .line 667
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_5

    #@82
    .line 668
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    #@85
    move-result-object v0

    #@86
    .line 669
    :cond_5
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@88
    .line 671
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@8b
    move-result v7

    #@8c
    .line 669
    invoke-static {v6, v0, v7}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    #@8f
    move-result v3

    #@90
    .line 672
    const/4 v6, -0x3

    #@91
    if-ne v3, v6, :cond_6

    #@93
    .line 673
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@96
    move-result v6

    #@97
    .line 672
    if-nez v6, :cond_4

    #@99
    .line 679
    :cond_6
    :try_start_d
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@9c
    .line 680
    if-gtz v3, :cond_7

    #@9e
    const/4 v6, -0x2

    #@9f
    if-ne v3, v6, :cond_9

    #@a1
    :cond_7
    const/4 v6, 0x1

    #@a2
    :goto_0
    invoke-virtual {p0, v6}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@a5
    .line 681
    sget-boolean v6, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@a7
    if-nez v6, :cond_c

    #@a9
    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@ac
    move-result v6

    #@ad
    if-nez v6, :cond_c

    #@af
    new-instance v6, Ljava/lang/AssertionError;

    #@b1
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@b4
    throw v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@b5
    .line 653
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catchall_3
    move-exception v6

    #@b6
    :try_start_e
    monitor-exit v7

    #@b7
    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    #@b8
    .line 678
    :catchall_4
    move-exception v6

    #@b9
    .line 679
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@bc
    .line 680
    if-gtz v3, :cond_8

    #@be
    const/4 v7, -0x2

    #@bf
    if-ne v3, v7, :cond_a

    #@c1
    :cond_8
    const/4 v7, 0x1

    #@c2
    :goto_1
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@c5
    .line 681
    sget-boolean v7, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@c7
    if-nez v7, :cond_b

    #@c9
    invoke-static {v3}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@cc
    move-result v7

    #@cd
    if-nez v7, :cond_b

    #@cf
    new-instance v6, Ljava/lang/AssertionError;

    #@d1
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@d4
    throw v6

    #@d5
    .line 680
    .restart local v0    # "ia":Ljava/net/InetAddress;
    :cond_9
    const/4 v6, 0x0

    #@d6
    goto :goto_0

    #@d7
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_a
    const/4 v7, 0x0

    #@d8
    goto :goto_1

    #@d9
    .line 678
    :cond_b
    throw v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@da
    .line 690
    .restart local v0    # "ia":Ljava/net/InetAddress;
    :cond_c
    :try_start_10
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@dc
    monitor-enter v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@dd
    .line 691
    :try_start_11
    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@df
    .line 692
    if-lez v3, :cond_e

    #@e1
    .line 696
    const/4 v6, 0x2

    #@e2
    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@e4
    .line 697
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@e7
    move-result v6

    #@e8
    if-eqz v6, :cond_d

    #@ea
    .line 698
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@ec
    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@ef
    move-result-object v6

    #@f0
    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    #@f2
    :cond_d
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@f3
    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@f4
    :try_start_14
    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    #@f5
    .line 699
    const/4 v6, 0x1

    #@f6
    monitor-exit v8

    #@f7
    return v6

    #@f8
    .line 703
    :cond_e
    :try_start_15
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@fb
    move-result v6

    #@fc
    if-nez v6, :cond_f

    #@fe
    .line 704
    const/4 v6, 0x1

    #@ff
    iput v6, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@101
    .line 705
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@104
    move-result v6

    #@105
    if-eqz v6, :cond_f

    #@107
    .line 706
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@109
    invoke-static {v6}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@10c
    move-result-object v6

    #@10d
    iput-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    #@10f
    :cond_f
    :try_start_16
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@110
    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@111
    :try_start_18
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    #@112
    .line 711
    const/4 v6, 0x0

    #@113
    monitor-exit v8

    #@114
    return v6

    #@115
    .line 690
    :catchall_5
    move-exception v6

    #@116
    :try_start_19
    monitor-exit v7

    #@117
    throw v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
.end method

.method ensureOpenAndUnconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 628
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 629
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 627
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 630
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@14
    const/4 v2, 0x2

    #@15
    if-ne v0, v2, :cond_1

    #@17
    .line 631
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    #@19
    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    #@1c
    throw v0

    #@1d
    .line 632
    :cond_1
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@1f
    const/4 v2, 0x1

    #@20
    if-ne v0, v2, :cond_2

    #@22
    .line 633
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    #@24
    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    #@27
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    :cond_2
    monitor-exit v1

    #@29
    .line 626
    return-void
.end method

.method public finishConnect()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x3

    #@1
    const/4 v12, -0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 717
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@6
    monitor-enter v5

    #@7
    .line 718
    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@9
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@a
    .line 719
    :try_start_1
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@c
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d
    .line 720
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 721
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    #@15
    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@18
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    .line 719
    :catchall_0
    move-exception v2

    #@1a
    :try_start_3
    monitor-exit v7

    #@1b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1c
    .line 718
    :catchall_1
    move-exception v2

    #@1d
    :try_start_4
    monitor-exit v6

    #@1e
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@1f
    .line 717
    :catchall_2
    move-exception v2

    #@20
    monitor-exit v5

    #@21
    throw v2

    #@22
    .line 722
    :cond_0
    :try_start_5
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@24
    const/4 v8, 0x2

    #@25
    if-ne v2, v8, :cond_1

    #@27
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@28
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@29
    monitor-exit v5

    #@2a
    .line 723
    return v3

    #@2b
    .line 724
    :cond_1
    :try_start_8
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@2d
    if-eq v2, v3, :cond_2

    #@2f
    .line 725
    new-instance v2, Ljava/nio/channels/NoConnectionPendingException;

    #@31
    invoke-direct {v2}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    #@34
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@35
    :cond_2
    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@36
    .line 727
    const/4 v0, 0x0

    #@37
    .line 730
    .local v0, "n":I
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@3a
    .line 731
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    #@3d
    move-result-object v7

    #@3e
    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    #@3f
    .line 732
    :try_start_b
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@41
    monitor-enter v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    #@42
    .line 733
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_7

    #@48
    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    #@49
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    #@4a
    .line 766
    :try_start_f
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@4c
    monitor-enter v9
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@4d
    .line 767
    const-wide/16 v10, 0x0

    #@4f
    :try_start_10
    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@51
    .line 768
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@53
    if-ne v2, v13, :cond_3

    #@55
    .line 769
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@58
    .line 775
    const/4 v0, 0x0

    #@59
    :cond_3
    :try_start_11
    monitor-exit v9
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    #@5a
    .line 778
    if-ltz v4, :cond_4

    #@5c
    if-nez v12, :cond_5

    #@5e
    :cond_4
    :goto_0
    :try_start_12
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@61
    .line 779
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@63
    if-nez v2, :cond_6

    #@65
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@68
    move-result v2

    #@69
    if-nez v2, :cond_6

    #@6b
    new-instance v2, Ljava/lang/AssertionError;

    #@6d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@70
    throw v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    #@71
    .line 781
    :catch_0
    move-exception v1

    #@72
    .line 785
    .local v1, "x":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    #@75
    .line 786
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@76
    .line 766
    .end local v1    # "x":Ljava/io/IOException;
    :catchall_3
    move-exception v2

    #@77
    :try_start_14
    monitor-exit v9
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    #@78
    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    #@79
    :cond_5
    move v3, v4

    #@7a
    .line 778
    goto :goto_0

    #@7b
    :cond_6
    :try_start_16
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    #@7c
    monitor-exit v5

    #@7d
    .line 734
    return v4

    #@7e
    .line 736
    :cond_7
    :try_start_17
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@81
    move-result-wide v10

    #@82
    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    #@84
    :try_start_18
    monitor-exit v8

    #@85
    .line 739
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@88
    move-result-object v2

    #@89
    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@8c
    .line 740
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@8f
    move-result v2

    #@90
    if-nez v2, :cond_e

    #@92
    .line 742
    :cond_8
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@94
    .line 743
    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@96
    .line 742
    const/4 v9, 0x0

    #@97
    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    #@9a
    move-result v0

    #@9b
    .line 744
    const/4 v2, -0x3

    #@9c
    if-ne v0, v2, :cond_9

    #@9e
    .line 745
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    #@a1
    move-result v2

    #@a2
    .line 744
    if-nez v2, :cond_8

    #@a4
    :cond_9
    :try_start_19
    monitor-exit v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    #@a5
    .line 766
    :try_start_1a
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@a7
    monitor-enter v7
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    #@a8
    .line 767
    const-wide/16 v8, 0x0

    #@aa
    :try_start_1b
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@ac
    .line 768
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@ae
    if-ne v2, v13, :cond_a

    #@b0
    .line 769
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    #@b3
    .line 775
    const/4 v0, 0x0

    #@b4
    :cond_a
    :try_start_1c
    monitor-exit v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    #@b5
    .line 778
    if-gtz v0, :cond_b

    #@b7
    if-ne v0, v12, :cond_f

    #@b9
    :cond_b
    move v2, v3

    #@ba
    :goto_1
    :try_start_1d
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@bd
    .line 779
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@bf
    if-nez v2, :cond_12

    #@c1
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@c4
    move-result v2

    #@c5
    if-nez v2, :cond_12

    #@c7
    new-instance v2, Ljava/lang/AssertionError;

    #@c9
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    #@cd
    .line 732
    :catchall_4
    move-exception v2

    #@ce
    :try_start_1e
    monitor-exit v8

    #@cf
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    #@d0
    .line 731
    :catchall_5
    move-exception v2

    #@d1
    :try_start_1f
    monitor-exit v7

    #@d2
    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    #@d3
    .line 765
    :catchall_6
    move-exception v2

    #@d4
    .line 766
    :try_start_20
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@d6
    monitor-enter v7
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    #@d7
    .line 767
    const-wide/16 v8, 0x0

    #@d9
    :try_start_21
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@db
    .line 768
    iget v8, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@dd
    if-ne v8, v13, :cond_c

    #@df
    .line 769
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    #@e2
    .line 775
    const/4 v0, 0x0

    #@e3
    :cond_c
    :try_start_22
    monitor-exit v7

    #@e4
    .line 778
    if-gtz v0, :cond_d

    #@e6
    if-ne v0, v12, :cond_10

    #@e8
    :cond_d
    :goto_2
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@eb
    .line 779
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@ed
    if-nez v3, :cond_11

    #@ef
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@f2
    move-result v3

    #@f3
    if-nez v3, :cond_11

    #@f5
    new-instance v2, Ljava/lang/AssertionError;

    #@f7
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@fa
    throw v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    #@fb
    .line 751
    :cond_e
    :goto_3
    :try_start_23
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@fd
    .line 752
    iget-boolean v8, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@ff
    .line 751
    const/4 v9, 0x1

    #@100
    invoke-static {v2, v9, v8}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    #@103
    move-result v0

    #@104
    .line 753
    if-eqz v0, :cond_e

    #@106
    .line 758
    const/4 v2, -0x3

    #@107
    if-ne v0, v2, :cond_9

    #@109
    .line 759
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    #@10c
    move-result v2

    #@10d
    .line 758
    if-eqz v2, :cond_9

    #@10f
    goto :goto_3

    #@110
    .line 766
    :catchall_7
    move-exception v2

    #@111
    :try_start_24
    monitor-exit v7
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    #@112
    :try_start_25
    throw v2

    #@113
    :cond_f
    move v2, v4

    #@114
    .line 778
    goto :goto_1

    #@115
    .line 766
    :catchall_8
    move-exception v2

    #@116
    monitor-exit v7

    #@117
    throw v2

    #@118
    :cond_10
    move v3, v4

    #@119
    .line 778
    goto :goto_2

    #@11a
    .line 765
    :cond_11
    throw v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    #@11b
    .line 788
    :cond_12
    if-lez v0, :cond_14

    #@11d
    .line 789
    :try_start_26
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@11f
    monitor-enter v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    #@120
    .line 790
    const/4 v2, 0x2

    #@121
    :try_start_27
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@123
    .line 791
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@126
    move-result v2

    #@127
    if-eqz v2, :cond_13

    #@129
    .line 792
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@12b
    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@12e
    move-result-object v2

    #@12f
    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    #@131
    :cond_13
    :try_start_28
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    #@132
    :try_start_29
    monitor-exit v6
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    #@133
    monitor-exit v5

    #@134
    .line 794
    return v3

    #@135
    .line 789
    :catchall_9
    move-exception v2

    #@136
    :try_start_2a
    monitor-exit v4

    #@137
    throw v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    #@138
    :cond_14
    :try_start_2b
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    #@139
    monitor-exit v5

    #@13a
    .line 796
    return v4
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 982
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    #@0
    .prologue
    .line 986
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

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
    .line 149
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 150
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 151
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 149
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@14
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result-object v0

    #@18
    monitor-exit v1

    #@19
    return-object v0
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
    .line 202
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 204
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 205
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
    .line 207
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v1

    #@36
    .line 208
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_2

    #@3c
    .line 209
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@3e
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@41
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 207
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 211
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@47
    if-ne p1, v0, :cond_3

    #@49
    .line 212
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    #@4c
    move-result v0

    #@4d
    .line 211
    if-eqz v0, :cond_3

    #@4f
    .line 215
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z

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
    .line 219
    :cond_3
    :try_start_2
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@59
    if-ne p1, v0, :cond_5

    #@5b
    .line 220
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_4

    #@61
    const/4 v0, 0x0

    #@62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@65
    move-result-object v0

    #@66
    :goto_0
    monitor-exit v1

    #@67
    return-object v0

    #@68
    .line 221
    :cond_4
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@6a
    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@6c
    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    #@6f
    move-result-object v0

    #@70
    goto :goto_0

    #@71
    .line 225
    :cond_5
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@73
    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@75
    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    move-result-object v0

    #@79
    monitor-exit v1

    #@7a
    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 159
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 160
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 158
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 161
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
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
    const-wide/16 v4, 0x0

    #@2
    .line 853
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 854
    const/4 v0, 0x0

    #@6
    :try_start_0
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    #@8
    .line 855
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@b
    .line 862
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@d
    const/4 v2, 0x4

    #@e
    if-eq v0, v2, :cond_0

    #@10
    .line 863
    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@12
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@14
    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    #@17
    .line 869
    :cond_0
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@19
    cmp-long v0, v2, v4

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 870
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@1f
    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@22
    .line 872
    :cond_1
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@24
    cmp-long v0, v2, v4

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 873
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@2a
    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@2d
    .line 885
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_3

    #@33
    .line 886
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    :cond_3
    monitor-exit v1

    #@37
    .line 852
    return-void

    #@38
    .line 853
    :catchall_0
    move-exception v0

    #@39
    monitor-exit v1

    #@3a
    throw v0
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
    .line 577
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    #@5
    .line 576
    return-void
.end method

.method public isConnected()Z
    .locals 3

    #@0
    .prologue
    .line 615
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 616
    :try_start_0
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    const/4 v2, 0x2

    #@6
    if-ne v0, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    monitor-exit v1

    #@a
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0

    #@d
    .line 615
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public isConnectionPending()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 621
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 622
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne v2, v0, :cond_0

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
    .line 621
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public isInputOpen()Z
    .locals 2

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 837
    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 836
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isOutputOpen()Z
    .locals 2

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 843
    :try_start_0
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 842
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public kill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v3, 0x4

    #@4
    .line 891
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 892
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-ne v2, v3, :cond_0

    #@b
    monitor-exit v1

    #@c
    .line 893
    return-void

    #@d
    .line 894
    :cond_0
    :try_start_1
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@f
    const/4 v3, -0x1

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 895
    const/4 v0, 0x4

    #@13
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 896
    return-void

    #@17
    .line 898
    :cond_1
    :try_start_2
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@19
    if-nez v2, :cond_4

    #@1b
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_2

    #@21
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    #@29
    new-instance v0, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 891
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0

    #@32
    .line 898
    :cond_3
    const/4 v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 903
    :cond_4
    :try_start_3
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@36
    cmp-long v0, v2, v4

    #@38
    if-nez v0, :cond_5

    #@3a
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@3c
    cmp-long v0, v2, v4

    #@3e
    if-nez v0, :cond_5

    #@40
    .line 904
    sget-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@42
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@44
    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    #@47
    .line 905
    const/4 v0, 0x4

    #@48
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    :goto_1
    monitor-exit v1

    #@4b
    .line 890
    return-void

    #@4c
    .line 907
    :cond_5
    const/4 v0, 0x3

    #@4d
    :try_start_4
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4f
    goto :goto_1
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 2

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 582
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 581
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v11, -0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 294
    if-nez p1, :cond_0

    #@6
    .line 295
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v1

    #@c
    .line 297
    :cond_0
    iget-object v10, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@e
    monitor-enter v10

    #@f
    .line 298
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    monitor-exit v10

    #@16
    .line 299
    return v11

    #@17
    .line 300
    :cond_1
    const/4 v0, 0x0

    #@18
    .line 301
    .local v0, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 302
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-object v0

    #@22
    .line 304
    .end local v0    # "traceContext":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    #@23
    .line 310
    .local v6, "n":I
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@26
    .line 312
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@28
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@29
    .line 313
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_6

    #@2f
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@30
    .line 392
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@33
    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 395
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@3b
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@3e
    move-result-object v1

    #@3f
    .line 396
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@41
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@44
    move-result v2

    #@45
    int-to-long v4, v7

    #@46
    const/4 v3, 0x0

    #@47
    .line 395
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@4a
    .line 415
    :cond_3
    const/4 v1, 0x0

    #@4b
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@4e
    .line 419
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@50
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@51
    .line 420
    :try_start_6
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@53
    if-eqz v2, :cond_4

    #@55
    :try_start_7
    monitor-exit v1

    #@56
    .line 424
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@58
    if-nez v1, :cond_5

    #@5a
    invoke-static {v6}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@5d
    move-result v1

    #@5e
    if-nez v1, :cond_5

    #@60
    new-instance v1, Ljava/lang/AssertionError;

    #@62
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@65
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@66
    .line 297
    .end local v6    # "n":I
    :catchall_0
    move-exception v1

    #@67
    monitor-exit v10

    #@68
    throw v1

    #@69
    .restart local v6    # "n":I
    :cond_4
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@6a
    monitor-exit v10

    #@6b
    .line 421
    return v11

    #@6c
    .line 419
    :catchall_1
    move-exception v2

    #@6d
    :try_start_9
    monitor-exit v1

    #@6e
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@6f
    :cond_5
    monitor-exit v10

    #@70
    .line 321
    return v7

    #@71
    .line 328
    :cond_6
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@74
    move-result-wide v4

    #@75
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@77
    :try_start_b
    monitor-exit v2

    #@78
    .line 382
    :cond_7
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@7a
    const-wide/16 v2, -0x1

    #@7c
    sget-object v4, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@7e
    invoke-static {v1, p1, v2, v3, v4}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@81
    move-result v6

    #@82
    .line 383
    const/4 v1, -0x3

    #@83
    if-ne v6, v1, :cond_8

    #@85
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@88
    move-result v1

    #@89
    if-nez v1, :cond_7

    #@8b
    .line 388
    :cond_8
    invoke-static {v6}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@8e
    move-result v8

    #@8f
    .line 392
    :try_start_c
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@92
    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@95
    move-result v1

    #@96
    if-eqz v1, :cond_9

    #@98
    .line 395
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@9a
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@9d
    move-result-object v1

    #@9e
    .line 396
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@a0
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@a3
    move-result v2

    #@a4
    if-lez v6, :cond_10

    #@a6
    move v3, v6

    #@a7
    :goto_0
    int-to-long v4, v3

    #@a8
    const/4 v3, 0x0

    #@a9
    .line 395
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@ac
    .line 415
    :cond_9
    if-gtz v6, :cond_a

    #@ae
    if-ne v6, v12, :cond_11

    #@b0
    :cond_a
    :goto_1
    invoke-virtual {p0, v9}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@b3
    .line 419
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@b5
    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@b6
    .line 420
    if-gtz v6, :cond_b

    #@b8
    :try_start_d
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@ba
    if-eqz v2, :cond_12

    #@bc
    :cond_b
    :try_start_e
    monitor-exit v1

    #@bd
    .line 424
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@bf
    if-nez v1, :cond_13

    #@c1
    invoke-static {v6}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@c4
    move-result v1

    #@c5
    if-nez v1, :cond_13

    #@c7
    new-instance v1, Ljava/lang/AssertionError;

    #@c9
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@cd
    .line 312
    :catchall_2
    move-exception v1

    #@ce
    :try_start_f
    monitor-exit v2

    #@cf
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@d0
    .line 391
    :catchall_3
    move-exception v1

    #@d1
    move-object v8, v1

    #@d2
    .line 392
    :try_start_10
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@d5
    .line 394
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@d8
    move-result v1

    #@d9
    if-eqz v1, :cond_c

    #@db
    .line 395
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@dd
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@e0
    move-result-object v1

    #@e1
    .line 396
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@e3
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@e6
    move-result v2

    #@e7
    if-lez v6, :cond_14

    #@e9
    move v3, v6

    #@ea
    :goto_2
    int-to-long v4, v3

    #@eb
    const/4 v3, 0x0

    #@ec
    .line 395
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@ef
    .line 415
    :cond_c
    if-gtz v6, :cond_d

    #@f1
    if-ne v6, v12, :cond_e

    #@f3
    :cond_d
    move v7, v9

    #@f4
    :cond_e
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@f7
    .line 419
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@f9
    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@fa
    .line 420
    if-gtz v6, :cond_f

    #@fc
    :try_start_11
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    #@fe
    if-eqz v2, :cond_15

    #@100
    :cond_f
    :try_start_12
    monitor-exit v1

    #@101
    .line 424
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@103
    if-nez v1, :cond_16

    #@105
    invoke-static {v6}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@108
    move-result v1

    #@109
    if-nez v1, :cond_16

    #@10b
    new-instance v1, Ljava/lang/AssertionError;

    #@10d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@110
    throw v1

    #@111
    :cond_10
    move v3, v7

    #@112
    .line 396
    goto :goto_0

    #@113
    :cond_11
    move v9, v7

    #@114
    .line 415
    goto :goto_1

    #@115
    :cond_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@116
    monitor-exit v10

    #@117
    .line 421
    return v11

    #@118
    .line 419
    :catchall_4
    move-exception v2

    #@119
    :try_start_13
    monitor-exit v1

    #@11a
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@11b
    :cond_13
    monitor-exit v10

    #@11c
    .line 388
    return v8

    #@11d
    :cond_14
    move v3, v7

    #@11e
    .line 396
    goto :goto_2

    #@11f
    :cond_15
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@120
    monitor-exit v10

    #@121
    .line 421
    return v11

    #@122
    .line 419
    :catchall_5
    move-exception v2

    #@123
    :try_start_15
    monitor-exit v1

    #@124
    throw v2

    #@125
    .line 391
    :cond_16
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 12
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 433
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 434
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v1

    #@a
    .line 433
    :cond_1
    array-length v1, p1

    #@b
    sub-int/2addr v1, p3

    #@c
    if-gt p2, v1, :cond_0

    #@e
    .line 435
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    #@10
    monitor-enter v9

    #@11
    .line 436
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_2

    #@17
    .line 437
    const-wide/16 v2, -0x1

    #@19
    monitor-exit v9

    #@1a
    return-wide v2

    #@1b
    .line 438
    :cond_2
    const-wide/16 v6, 0x0

    #@1d
    .line 439
    .local v6, "n":J
    const/4 v0, 0x0

    #@1e
    .line 440
    .local v0, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 441
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    move-result-object v0

    #@28
    .line 444
    .end local v0    # "traceContext":Ljava/lang/Object;
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@2b
    .line 445
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2d
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    #@2e
    .line 446
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_7

    #@34
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@35
    .line 458
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@38
    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@3b
    move-result v1

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 460
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@40
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@43
    move-result-object v1

    #@44
    .line 461
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@46
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@49
    move-result v2

    #@4a
    const-wide/16 v4, 0x0

    #@4c
    const/4 v3, 0x0

    #@4d
    .line 460
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@50
    .line 463
    :cond_4
    const/4 v1, 0x0

    #@51
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@54
    .line 464
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@56
    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@57
    .line 465
    :try_start_6
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@59
    if-eqz v2, :cond_5

    #@5b
    :try_start_7
    monitor-exit v1

    #@5c
    .line 468
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@5e
    if-nez v1, :cond_6

    #@60
    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@63
    move-result v1

    #@64
    if-nez v1, :cond_6

    #@66
    new-instance v1, Ljava/lang/AssertionError;

    #@68
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@6b
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@6c
    .line 435
    .end local v6    # "n":J
    :catchall_0
    move-exception v1

    #@6d
    monitor-exit v9

    #@6e
    throw v1

    #@6f
    .restart local v6    # "n":J
    :cond_5
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@70
    .line 466
    const-wide/16 v2, -0x1

    #@72
    monitor-exit v9

    #@73
    return-wide v2

    #@74
    .line 464
    :catchall_1
    move-exception v2

    #@75
    :try_start_9
    monitor-exit v1

    #@76
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@77
    .line 447
    :cond_6
    const-wide/16 v2, 0x0

    #@79
    monitor-exit v9

    #@7a
    return-wide v2

    #@7b
    .line 448
    :cond_7
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@7e
    move-result-wide v4

    #@7f
    iput-wide v4, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    #@81
    :try_start_b
    monitor-exit v2

    #@82
    .line 452
    :cond_8
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@84
    sget-object v2, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@86
    invoke-static {v1, p1, p2, p3, v2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@89
    move-result-wide v6

    #@8a
    .line 453
    const-wide/16 v2, -0x3

    #@8c
    cmp-long v1, v6, v2

    #@8e
    if-nez v1, :cond_9

    #@90
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@93
    move-result v1

    #@94
    if-nez v1, :cond_8

    #@96
    .line 455
    :cond_9
    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    #@99
    move-result-wide v10

    #@9a
    .line 458
    :try_start_c
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@9d
    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@a0
    move-result v1

    #@a1
    if-eqz v1, :cond_a

    #@a3
    .line 460
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@a5
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@a8
    move-result-object v1

    #@a9
    .line 461
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@ab
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@ae
    move-result v2

    #@af
    const-wide/16 v4, 0x0

    #@b1
    cmp-long v3, v6, v4

    #@b3
    if-lez v3, :cond_10

    #@b5
    move-wide v4, v6

    #@b6
    :goto_0
    const/4 v3, 0x0

    #@b7
    .line 460
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@ba
    .line 463
    :cond_a
    const-wide/16 v2, 0x0

    #@bc
    cmp-long v1, v6, v2

    #@be
    if-gtz v1, :cond_b

    #@c0
    const-wide/16 v2, -0x2

    #@c2
    cmp-long v1, v6, v2

    #@c4
    if-nez v1, :cond_11

    #@c6
    :cond_b
    const/4 v1, 0x1

    #@c7
    :goto_1
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@ca
    .line 464
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@cc
    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@cd
    .line 465
    const-wide/16 v2, 0x0

    #@cf
    cmp-long v2, v6, v2

    #@d1
    if-gtz v2, :cond_c

    #@d3
    :try_start_d
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@d5
    if-eqz v2, :cond_12

    #@d7
    :cond_c
    :try_start_e
    monitor-exit v1

    #@d8
    .line 468
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@da
    if-nez v1, :cond_13

    #@dc
    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@df
    move-result v1

    #@e0
    if-nez v1, :cond_13

    #@e2
    new-instance v1, Ljava/lang/AssertionError;

    #@e4
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e7
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@e8
    .line 445
    :catchall_2
    move-exception v1

    #@e9
    :try_start_f
    monitor-exit v2

    #@ea
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@eb
    .line 457
    :catchall_3
    move-exception v1

    #@ec
    move-object v8, v1

    #@ed
    .line 458
    :try_start_10
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    #@f0
    .line 459
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    #@f3
    move-result v1

    #@f4
    if-eqz v1, :cond_d

    #@f6
    .line 460
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@f8
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@fb
    move-result-object v1

    #@fc
    .line 461
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@fe
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@101
    move-result v2

    #@102
    const-wide/16 v4, 0x0

    #@104
    cmp-long v3, v6, v4

    #@106
    if-lez v3, :cond_14

    #@108
    move-wide v4, v6

    #@109
    :goto_2
    const/4 v3, 0x0

    #@10a
    .line 460
    invoke-static/range {v0 .. v5}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    #@10d
    .line 463
    :cond_d
    const-wide/16 v2, 0x0

    #@10f
    cmp-long v1, v6, v2

    #@111
    if-gtz v1, :cond_e

    #@113
    const-wide/16 v2, -0x2

    #@115
    cmp-long v1, v6, v2

    #@117
    if-nez v1, :cond_15

    #@119
    :cond_e
    const/4 v1, 0x1

    #@11a
    :goto_3
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@11d
    .line 464
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@11f
    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@120
    .line 465
    const-wide/16 v2, 0x0

    #@122
    cmp-long v2, v6, v2

    #@124
    if-gtz v2, :cond_f

    #@126
    :try_start_11
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    #@128
    if-eqz v2, :cond_16

    #@12a
    :cond_f
    :try_start_12
    monitor-exit v1

    #@12b
    .line 468
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@12d
    if-nez v1, :cond_17

    #@12f
    invoke-static {v6, v7}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@132
    move-result v1

    #@133
    if-nez v1, :cond_17

    #@135
    new-instance v1, Ljava/lang/AssertionError;

    #@137
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@13a
    throw v1

    #@13b
    .line 461
    :cond_10
    const-wide/16 v4, 0x0

    #@13d
    goto/16 :goto_0

    #@13f
    .line 463
    :cond_11
    const/4 v1, 0x0

    #@140
    goto :goto_1

    #@141
    :cond_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@142
    .line 466
    const-wide/16 v2, -0x1

    #@144
    monitor-exit v9

    #@145
    return-wide v2

    #@146
    .line 464
    :catchall_4
    move-exception v2

    #@147
    :try_start_13
    monitor-exit v1

    #@148
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@149
    :cond_13
    monitor-exit v9

    #@14a
    .line 455
    return-wide v10

    #@14b
    .line 461
    :cond_14
    const-wide/16 v4, 0x0

    #@14d
    goto :goto_2

    #@14e
    .line 463
    :cond_15
    const/4 v1, 0x0

    #@14f
    goto :goto_3

    #@150
    :cond_16
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@151
    .line 466
    const-wide/16 v2, -0x1

    #@153
    monitor-exit v9

    #@154
    return-wide v2

    #@155
    .line 464
    :catchall_5
    move-exception v2

    #@156
    :try_start_15
    monitor-exit v1

    #@157
    throw v2

    #@158
    .line 457
    :cond_17
    throw v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 2

    #@0
    .prologue
    .line 587
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 588
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 587
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method sendOutOfBandData(B)I
    .locals 9
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x2

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 548
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 549
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 550
    const/4 v0, 0x0

    #@a
    .line 552
    .local v0, "n":I
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@d
    .line 553
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@f
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@10
    .line 554
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_2

    #@16
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@17
    .line 565
    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@1a
    .line 566
    const/4 v1, 0x0

    #@1b
    invoke-virtual {p0, v1}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@1e
    .line 567
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@20
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@21
    .line 568
    :try_start_5
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@23
    if-eqz v1, :cond_0

    #@25
    :try_start_6
    monitor-exit v2

    #@26
    .line 571
    sget-boolean v1, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@28
    if-nez v1, :cond_1

    #@2a
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_1

    #@30
    new-instance v1, Ljava/lang/AssertionError;

    #@32
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@35
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@36
    .line 548
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v4

    #@38
    throw v1

    #@39
    .line 569
    .restart local v0    # "n":I
    :cond_0
    :try_start_7
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    #@3b
    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@3e
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@3f
    .line 567
    :catchall_1
    move-exception v1

    #@40
    :try_start_8
    monitor-exit v2

    #@41
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@42
    :cond_1
    monitor-exit v4

    #@43
    .line 555
    return v3

    #@44
    .line 556
    :cond_2
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@47
    move-result-wide v6

    #@48
    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@4a
    :try_start_a
    monitor-exit v5

    #@4b
    .line 559
    :cond_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4d
    invoke-static {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(Ljava/io/FileDescriptor;B)I

    #@50
    move-result v0

    #@51
    .line 560
    const/4 v1, -0x3

    #@52
    if-ne v0, v1, :cond_4

    #@54
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@57
    move-result v1

    #@58
    if-nez v1, :cond_3

    #@5a
    .line 562
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@5d
    move-result v1

    #@5e
    .line 565
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@61
    .line 566
    if-gtz v0, :cond_5

    #@63
    if-ne v0, v8, :cond_9

    #@65
    :cond_5
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@68
    .line 567
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@6a
    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@6b
    .line 568
    if-gtz v0, :cond_6

    #@6d
    :try_start_c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@6f
    if-eqz v3, :cond_a

    #@71
    :cond_6
    :try_start_d
    monitor-exit v2

    #@72
    .line 571
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@74
    if-nez v2, :cond_b

    #@76
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_b

    #@7c
    new-instance v1, Ljava/lang/AssertionError;

    #@7e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@81
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@82
    .line 553
    :catchall_2
    move-exception v1

    #@83
    :try_start_e
    monitor-exit v5

    #@84
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@85
    .line 564
    :catchall_3
    move-exception v1

    #@86
    .line 565
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@89
    .line 566
    if-gtz v0, :cond_7

    #@8b
    if-ne v0, v8, :cond_c

    #@8d
    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@90
    .line 567
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@92
    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@93
    .line 568
    if-gtz v0, :cond_8

    #@95
    :try_start_10
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    #@97
    if-eqz v3, :cond_d

    #@99
    :cond_8
    :try_start_11
    monitor-exit v2

    #@9a
    .line 571
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@9c
    if-nez v2, :cond_e

    #@9e
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@a1
    move-result v2

    #@a2
    if-nez v2, :cond_e

    #@a4
    new-instance v1, Ljava/lang/AssertionError;

    #@a6
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@a9
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@aa
    :cond_9
    move v2, v3

    #@ab
    .line 566
    goto :goto_0

    #@ac
    .line 569
    :cond_a
    :try_start_12
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    #@ae
    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@b1
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    #@b2
    .line 567
    :catchall_4
    move-exception v1

    #@b3
    :try_start_13
    monitor-exit v2

    #@b4
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@b5
    :cond_b
    monitor-exit v4

    #@b6
    .line 562
    return v1

    #@b7
    :cond_c
    move v2, v3

    #@b8
    .line 566
    goto :goto_1

    #@b9
    .line 569
    :cond_d
    :try_start_14
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    #@bb
    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@be
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    #@bf
    .line 567
    :catchall_5
    move-exception v1

    #@c0
    :try_start_15
    monitor-exit v2

    #@c1
    throw v1

    #@c2
    .line 564
    :cond_e
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
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
    .line 166
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/SocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 171
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 172
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
    .line 174
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v1

    #@36
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_2

    #@3c
    .line 176
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@3e
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@41
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 174
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0

    #@45
    .line 179
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@47
    if-ne p1, v0, :cond_4

    #@49
    .line 180
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_3

    #@4f
    .line 181
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@51
    sget-object v2, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@53
    invoke-static {v0, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    :cond_3
    monitor-exit v1

    #@57
    .line 182
    return-object p0

    #@58
    .line 183
    :cond_4
    :try_start_2
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@5a
    if-ne p1, v0, :cond_5

    #@5c
    .line 184
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    #@5f
    move-result v0

    #@60
    .line 183
    if-eqz v0, :cond_5

    #@62
    .line 187
    check-cast p2, Ljava/lang/Boolean;

    #@64
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@67
    move-result v0

    #@68
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    monitor-exit v1

    #@6b
    .line 188
    return-object p0

    #@6c
    .line 192
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_5
    :try_start_3
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@6e
    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@70
    invoke-static {v0, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    monitor-exit v1

    #@74
    .line 193
    return-object p0
.end method

.method public shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 803
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 804
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 805
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 803
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 806
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 807
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    #@1a
    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 808
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 809
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@24
    const/4 v2, 0x0

    #@25
    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    #@28
    .line 810
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@2a
    const-wide/16 v4, 0x0

    #@2c
    cmp-long v0, v2, v4

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 811
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    #@32
    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@35
    .line 812
    :cond_2
    const/4 v0, 0x0

    #@36
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :cond_3
    monitor-exit v1

    #@39
    .line 814
    return-object p0
.end method

.method public shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 820
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 821
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 822
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 820
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 823
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_1

    #@18
    .line 824
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    #@1a
    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@1d
    throw v0

    #@1e
    .line 825
    :cond_1
    iget-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 826
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    #@28
    .line 827
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@2a
    const-wide/16 v4, 0x0

    #@2c
    cmp-long v0, v2, v4

    #@2e
    if-eqz v0, :cond_2

    #@30
    .line 828
    iget-wide v2, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    #@32
    invoke-static {v2, v3}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@35
    .line 829
    :cond_2
    const/4 v0, 0x0

    #@36
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :cond_3
    monitor-exit v1

    #@39
    .line 831
    return-object p0
.end method

.method public socket()Ljava/net/Socket;
    .locals 2

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 141
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 142
    invoke-static {p0}, Lsun/nio/ch/SocketAdaptor;->create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    #@d
    .line 143
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 140
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
    .line 249
    sget-object v0, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 991
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 992
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 993
    const/16 v2, 0x5b

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@19
    .line 994
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_0

    #@1f
    .line 995
    const-string/jumbo v2, "closed"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    .line 1024
    :goto_0
    const/16 v2, 0x5d

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 1025
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2

    #@2f
    .line 997
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@31
    monitor-enter v3

    #@32
    .line 998
    :try_start_0
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@34
    packed-switch v2, :pswitch_data_0

    #@37
    .line 1013
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    #@3a
    move-result-object v0

    #@3b
    .line 1014
    .local v0, "addr":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_2

    #@3d
    .line 1015
    const-string/jumbo v2, " local="

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 1016
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    .line 1018
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@4d
    move-result-object v2

    #@4e
    if-eqz v2, :cond_3

    #@50
    .line 1019
    const-string/jumbo v2, " remote="

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    .line 1020
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    :cond_3
    monitor-exit v3

    #@62
    goto :goto_0

    #@63
    .line 1000
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "unconnected"

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_1

    #@6a
    .line 997
    :catchall_0
    move-exception v2

    #@6b
    monitor-exit v3

    #@6c
    throw v2

    #@6d
    .line 1003
    :pswitch_1
    :try_start_2
    const-string/jumbo v2, "connection-pending"

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@73
    goto :goto_1

    #@74
    .line 1006
    :pswitch_2
    const-string/jumbo v2, "connected"

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7a
    .line 1007
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    #@7c
    if-nez v2, :cond_4

    #@7e
    .line 1008
    const-string/jumbo v2, " ishut"

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@84
    .line 1009
    :cond_4
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    #@86
    if-nez v2, :cond_1

    #@88
    .line 1010
    const-string/jumbo v2, " oshut"

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    goto :goto_1

    #@8f
    .line 998
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 971
    const/4 v0, 0x0

    #@1
    .line 972
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 973
    const/4 v0, 0x1

    #@6
    .line 974
    :cond_0
    and-int/lit8 v1, p1, 0x4

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 975
    or-int/lit8 v0, v0, 0x4

    #@c
    .line 976
    :cond_1
    and-int/lit8 v1, p1, 0x8

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 977
    or-int/lit8 v0, v0, 0x4

    #@12
    .line 978
    :cond_2
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    #@14
    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    #@17
    .line 970
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 964
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

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
    .line 960
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 7
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 917
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    #@6
    move-result v0

    #@7
    .line 918
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@a
    move-result v2

    #@b
    .line 919
    .local v2, "oldOps":I
    move v1, p2

    #@c
    .line 921
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 925
    return v4

    #@11
    .line 928
    :cond_0
    and-int/lit8 v5, p1, 0x18

    #@13
    if-eqz v5, :cond_2

    #@15
    .line 930
    move v1, v0

    #@16
    .line 931
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@19
    .line 934
    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@1b
    .line 935
    not-int v5, v2

    #@1c
    and-int/2addr v5, v0

    #@1d
    if-eqz v5, :cond_1

    #@1f
    :goto_0
    return v3

    #@20
    :cond_1
    move v3, v4

    #@21
    goto :goto_0

    #@22
    .line 938
    :cond_2
    and-int/lit8 v5, p1, 0x1

    #@24
    if-eqz v5, :cond_3

    #@26
    .line 939
    and-int/lit8 v5, v0, 0x1

    #@28
    if-eqz v5, :cond_3

    #@2a
    .line 940
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@2c
    if-ne v5, v6, :cond_3

    #@2e
    .line 941
    or-int/lit8 v1, p2, 0x1

    #@30
    .line 943
    :cond_3
    and-int/lit8 v5, p1, 0x4

    #@32
    if-eqz v5, :cond_5

    #@34
    .line 944
    and-int/lit8 v5, v0, 0x8

    #@36
    if-eqz v5, :cond_5

    #@38
    .line 945
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@3a
    if-eqz v5, :cond_4

    #@3c
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@3e
    if-ne v5, v3, :cond_5

    #@40
    .line 946
    :cond_4
    or-int/lit8 v1, v1, 0x8

    #@42
    .line 947
    iput-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    #@44
    .line 950
    :cond_5
    and-int/lit8 v5, p1, 0x4

    #@46
    if-eqz v5, :cond_6

    #@48
    .line 951
    and-int/lit8 v5, v0, 0x4

    #@4a
    if-eqz v5, :cond_6

    #@4c
    .line 952
    iget v5, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    #@4e
    if-ne v5, v6, :cond_6

    #@50
    .line 953
    or-int/lit8 v1, v1, 0x4

    #@52
    .line 955
    :cond_6
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@55
    .line 956
    not-int v5, v2

    #@56
    and-int/2addr v5, v1

    #@57
    if-eqz v5, :cond_7

    #@59
    :goto_1
    return v3

    #@5a
    :cond_7
    move v3, v4

    #@5b
    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 13
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, -0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 474
    if-nez p1, :cond_0

    #@5
    .line 475
    new-instance v2, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v2

    #@b
    .line 476
    :cond_0
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@d
    monitor-enter v6

    #@e
    .line 477
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V

    #@11
    .line 478
    const/4 v0, 0x0

    #@12
    .line 480
    .local v0, "n":I
    invoke-static {}, Lsun/misc/IoTrace;->socketWriteBegin()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v1

    #@16
    .line 483
    .local v1, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@19
    .line 484
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@1b
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@1c
    .line 485
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_3

    #@22
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@23
    .line 496
    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@26
    .line 497
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@28
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2b
    move-result-object v2

    #@2c
    .line 498
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@2e
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    #@31
    move-result v4

    #@32
    int-to-long v8, v3

    #@33
    .line 497
    invoke-static {v1, v2, v4, v8, v9}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@36
    .line 499
    const/4 v2, 0x0

    #@37
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@3a
    .line 500
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@3c
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3d
    .line 501
    :try_start_5
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3f
    if-eqz v2, :cond_1

    #@41
    :try_start_6
    monitor-exit v4

    #@42
    .line 504
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@44
    if-nez v2, :cond_2

    #@46
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_2

    #@4c
    new-instance v2, Ljava/lang/AssertionError;

    #@4e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@51
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@52
    .line 476
    .end local v0    # "n":I
    .end local v1    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@53
    monitor-exit v6

    #@54
    throw v2

    #@55
    .line 502
    .restart local v0    # "n":I
    .restart local v1    # "traceContext":Ljava/lang/Object;
    :cond_1
    :try_start_7
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    #@57
    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@5a
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@5b
    .line 500
    :catchall_1
    move-exception v2

    #@5c
    :try_start_8
    monitor-exit v4

    #@5d
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@5e
    :cond_2
    monitor-exit v6

    #@5f
    .line 486
    return v3

    #@60
    .line 487
    :cond_3
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@63
    move-result-wide v8

    #@64
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@66
    :try_start_a
    monitor-exit v5

    #@67
    .line 490
    :cond_4
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@69
    const-wide/16 v8, -0x1

    #@6b
    sget-object v5, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@6d
    invoke-static {v2, p1, v8, v9, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@70
    move-result v0

    #@71
    .line 491
    const/4 v2, -0x3

    #@72
    if-ne v0, v2, :cond_5

    #@74
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@77
    move-result v2

    #@78
    if-nez v2, :cond_4

    #@7a
    .line 493
    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@7d
    move-result v5

    #@7e
    .line 496
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@81
    .line 497
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@83
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@86
    move-result-object v7

    #@87
    .line 498
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@89
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    #@8c
    move-result v8

    #@8d
    if-lez v0, :cond_b

    #@8f
    move v2, v0

    #@90
    :goto_0
    int-to-long v10, v2

    #@91
    .line 497
    invoke-static {v1, v7, v8, v10, v11}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@94
    .line 499
    if-gtz v0, :cond_6

    #@96
    if-ne v0, v12, :cond_c

    #@98
    :cond_6
    :goto_1
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@9b
    .line 500
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@9d
    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@9e
    .line 501
    if-gtz v0, :cond_7

    #@a0
    :try_start_c
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@a2
    if-eqz v2, :cond_d

    #@a4
    :cond_7
    :try_start_d
    monitor-exit v3

    #@a5
    .line 504
    sget-boolean v2, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@a7
    if-nez v2, :cond_e

    #@a9
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@ac
    move-result v2

    #@ad
    if-nez v2, :cond_e

    #@af
    new-instance v2, Ljava/lang/AssertionError;

    #@b1
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@b4
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@b5
    .line 484
    :catchall_2
    move-exception v2

    #@b6
    :try_start_e
    monitor-exit v5

    #@b7
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@b8
    .line 495
    :catchall_3
    move-exception v2

    #@b9
    .line 496
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@bc
    .line 497
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@be
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@c1
    move-result-object v7

    #@c2
    .line 498
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@c4
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    #@c7
    move-result v8

    #@c8
    if-lez v0, :cond_f

    #@ca
    move v5, v0

    #@cb
    :goto_2
    int-to-long v10, v5

    #@cc
    .line 497
    invoke-static {v1, v7, v8, v10, v11}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@cf
    .line 499
    if-gtz v0, :cond_8

    #@d1
    if-ne v0, v12, :cond_9

    #@d3
    :cond_8
    move v3, v4

    #@d4
    :cond_9
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@d7
    .line 500
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@d9
    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@da
    .line 501
    if-gtz v0, :cond_a

    #@dc
    :try_start_10
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    #@de
    if-eqz v4, :cond_10

    #@e0
    :cond_a
    :try_start_11
    monitor-exit v3

    #@e1
    .line 504
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@e3
    if-nez v3, :cond_11

    #@e5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@e8
    move-result v3

    #@e9
    if-nez v3, :cond_11

    #@eb
    new-instance v2, Ljava/lang/AssertionError;

    #@ed
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@f0
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@f1
    :cond_b
    move v2, v3

    #@f2
    .line 498
    goto :goto_0

    #@f3
    :cond_c
    move v4, v3

    #@f4
    .line 499
    goto :goto_1

    #@f5
    .line 502
    :cond_d
    :try_start_12
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    #@f7
    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@fa
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    #@fb
    .line 500
    :catchall_4
    move-exception v2

    #@fc
    :try_start_13
    monitor-exit v3

    #@fd
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@fe
    :cond_e
    monitor-exit v6

    #@ff
    .line 493
    return v5

    #@100
    :cond_f
    move v5, v3

    #@101
    .line 498
    goto :goto_2

    #@102
    .line 502
    :cond_10
    :try_start_14
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    #@104
    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@107
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    #@108
    .line 500
    :catchall_5
    move-exception v2

    #@109
    :try_start_15
    monitor-exit v3

    #@10a
    throw v2

    #@10b
    .line 495
    :cond_11
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 12
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 513
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v3

    #@a
    .line 512
    :cond_1
    array-length v3, p1

    #@b
    sub-int/2addr v3, p3

    #@c
    if-gt p2, v3, :cond_0

    #@e
    .line 514
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    #@10
    monitor-enter v6

    #@11
    .line 515
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V

    #@14
    .line 516
    const-wide/16 v0, 0x0

    #@16
    .line 518
    .local v0, "n":J
    invoke-static {}, Lsun/misc/IoTrace;->socketWriteBegin()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v2

    #@1a
    .line 520
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    #@1d
    .line 521
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@1f
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@20
    .line 522
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_4

    #@26
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@27
    .line 533
    :try_start_4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@2a
    .line 534
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@2c
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2f
    move-result-object v3

    #@30
    .line 535
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@32
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    #@35
    move-result v4

    #@36
    const-wide/16 v8, 0x0

    #@38
    .line 534
    invoke-static {v2, v3, v4, v8, v9}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@3b
    .line 536
    const/4 v3, 0x0

    #@3c
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@3f
    .line 537
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@41
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@42
    .line 538
    :try_start_5
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@44
    if-eqz v3, :cond_2

    #@46
    :try_start_6
    monitor-exit v4

    #@47
    .line 541
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@49
    if-nez v3, :cond_3

    #@4b
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@4e
    move-result v3

    #@4f
    if-nez v3, :cond_3

    #@51
    new-instance v3, Ljava/lang/AssertionError;

    #@53
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@56
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@57
    .line 514
    .end local v0    # "n":J
    .end local v2    # "traceContext":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@58
    monitor-exit v6

    #@59
    throw v3

    #@5a
    .line 539
    .restart local v0    # "n":J
    .restart local v2    # "traceContext":Ljava/lang/Object;
    :cond_2
    :try_start_7
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    #@5c
    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@5f
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@60
    .line 537
    :catchall_1
    move-exception v3

    #@61
    :try_start_8
    monitor-exit v4

    #@62
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@63
    .line 523
    :cond_3
    const-wide/16 v4, 0x0

    #@65
    monitor-exit v6

    #@66
    return-wide v4

    #@67
    .line 524
    :cond_4
    :try_start_9
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@6a
    move-result-wide v8

    #@6b
    iput-wide v8, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@6d
    :try_start_a
    monitor-exit v4

    #@6e
    .line 527
    :cond_5
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@70
    sget-object v4, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@72
    invoke-static {v3, p1, p2, p3, v4}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@75
    move-result-wide v0

    #@76
    .line 528
    const-wide/16 v4, -0x3

    #@78
    cmp-long v3, v0, v4

    #@7a
    if-nez v3, :cond_6

    #@7c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    #@7f
    move-result v3

    #@80
    if-nez v3, :cond_5

    #@82
    .line 530
    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@85
    move-result-wide v8

    #@86
    .line 533
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@89
    .line 534
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@8b
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@8e
    move-result-object v3

    #@8f
    .line 535
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@91
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    #@94
    move-result v7

    #@95
    const-wide/16 v4, 0x0

    #@97
    cmp-long v4, v0, v4

    #@99
    if-lez v4, :cond_b

    #@9b
    move-wide v4, v0

    #@9c
    .line 534
    :goto_0
    invoke-static {v2, v3, v7, v4, v5}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@9f
    .line 536
    const-wide/16 v4, 0x0

    #@a1
    cmp-long v3, v0, v4

    #@a3
    if-gtz v3, :cond_7

    #@a5
    const-wide/16 v4, -0x2

    #@a7
    cmp-long v3, v0, v4

    #@a9
    if-nez v3, :cond_c

    #@ab
    :cond_7
    const/4 v3, 0x1

    #@ac
    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@af
    .line 537
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@b1
    monitor-enter v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@b2
    .line 538
    const-wide/16 v10, 0x0

    #@b4
    cmp-long v3, v0, v10

    #@b6
    if-gtz v3, :cond_8

    #@b8
    :try_start_c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@ba
    if-eqz v3, :cond_d

    #@bc
    :cond_8
    :try_start_d
    monitor-exit v4

    #@bd
    .line 541
    sget-boolean v3, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@bf
    if-nez v3, :cond_e

    #@c1
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@c4
    move-result v3

    #@c5
    if-nez v3, :cond_e

    #@c7
    new-instance v3, Ljava/lang/AssertionError;

    #@c9
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@cc
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@cd
    .line 521
    :catchall_2
    move-exception v3

    #@ce
    :try_start_e
    monitor-exit v4

    #@cf
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@d0
    .line 532
    :catchall_3
    move-exception v3

    #@d1
    .line 533
    :try_start_f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    #@d4
    .line 534
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@d6
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@d9
    move-result-object v7

    #@da
    .line 535
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@dc
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    #@df
    move-result v8

    #@e0
    const-wide/16 v4, 0x0

    #@e2
    cmp-long v4, v0, v4

    #@e4
    if-lez v4, :cond_f

    #@e6
    move-wide v4, v0

    #@e7
    .line 534
    :goto_2
    invoke-static {v2, v7, v8, v4, v5}, Lsun/misc/IoTrace;->socketWriteEnd(Ljava/lang/Object;Ljava/net/InetAddress;IJ)V

    #@ea
    .line 536
    const-wide/16 v4, 0x0

    #@ec
    cmp-long v4, v0, v4

    #@ee
    if-gtz v4, :cond_9

    #@f0
    const-wide/16 v4, -0x2

    #@f2
    cmp-long v4, v0, v4

    #@f4
    if-nez v4, :cond_10

    #@f6
    :cond_9
    const/4 v4, 0x1

    #@f7
    :goto_3
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    #@fa
    .line 537
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    #@fc
    monitor-enter v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@fd
    .line 538
    const-wide/16 v8, 0x0

    #@ff
    cmp-long v5, v0, v8

    #@101
    if-gtz v5, :cond_a

    #@103
    :try_start_10
    iget-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    #@105
    if-eqz v5, :cond_11

    #@107
    :cond_a
    :try_start_11
    monitor-exit v4

    #@108
    .line 541
    sget-boolean v4, Lsun/nio/ch/SocketChannelImpl;->-assertionsDisabled:Z

    #@10a
    if-nez v4, :cond_12

    #@10c
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@10f
    move-result v4

    #@110
    if-nez v4, :cond_12

    #@112
    new-instance v3, Ljava/lang/AssertionError;

    #@114
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@117
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@118
    .line 535
    :cond_b
    const-wide/16 v4, 0x0

    #@11a
    goto :goto_0

    #@11b
    .line 536
    :cond_c
    const/4 v3, 0x0

    #@11c
    goto :goto_1

    #@11d
    .line 539
    :cond_d
    :try_start_12
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    #@11f
    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@122
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    #@123
    .line 537
    :catchall_4
    move-exception v3

    #@124
    :try_start_13
    monitor-exit v4

    #@125
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@126
    :cond_e
    monitor-exit v6

    #@127
    .line 530
    return-wide v8

    #@128
    .line 535
    :cond_f
    const-wide/16 v4, 0x0

    #@12a
    goto :goto_2

    #@12b
    .line 536
    :cond_10
    const/4 v4, 0x0

    #@12c
    goto :goto_3

    #@12d
    .line 539
    :cond_11
    :try_start_14
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    #@12f
    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    #@132
    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    #@133
    .line 537
    :catchall_5
    move-exception v3

    #@134
    :try_start_15
    monitor-exit v4

    #@135
    throw v3

    #@136
    .line 532
    :cond_12
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
.end method
