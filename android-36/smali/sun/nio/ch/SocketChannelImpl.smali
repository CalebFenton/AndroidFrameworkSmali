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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ST_CONNECTED:I = 0x2

.field private static final blacklist ST_KILLED:I = 0x4

.field private static final blacklist ST_KILLPENDING:I = 0x3

.field private static final blacklist ST_PENDING:I = 0x1

.field private static final blacklist ST_UNCONNECTED:I = 0x0

.field private static final blacklist ST_UNINITIALIZED:I = -0x1

.field private static blacklist nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final blacklist fd:Ljava/io/FileDescriptor;

.field private final blacklist fdVal:I

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist isInputOpen:Z

.field private blacklist isOutputOpen:Z

.field private blacklist isReuseAddress:Z

.field private blacklist localAddress:Ljava/net/InetSocketAddress;

.field private final blacklist readLock:Ljava/lang/Object;

.field private volatile blacklist readerThread:J

.field private blacklist readyToConnect:Z

.field private blacklist remoteAddress:Ljava/net/InetSocketAddress;

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist state:I

.field private final blacklist stateLock:Ljava/lang/Object;

.field private final blacklist writeLock:Ljava/lang/Object;

.field private volatile blacklist writerThread:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    nop

    .line 1097
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 1098
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 5
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 82
    iput-wide v0, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 114
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 123
    nop

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 130
    invoke-static {v0}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 131
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 132
    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 136
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 137
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 139
    :cond_53
    return-void
.end method

.method constructor blacklist <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .registers 6
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 82
    iput-wide v0, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 114
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 123
    nop

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 167
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 168
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 170
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 171
    iput-object p3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 173
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 174
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 176
    :cond_52
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

    .line 146
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 82
    iput-wide v0, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 114
    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 123
    nop

    .line 124
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 147
    iput-object p2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 148
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    .line 149
    iput v0, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 152
    if-eqz p2, :cond_49

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 153
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 156
    :cond_49
    if-eqz p3, :cond_51

    .line 157
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 158
    :cond_51
    return-void
.end method

.method private static native blacklist checkConnect(Ljava/io/FileDescriptor;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist ensureReadOpen()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 299
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 301
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v1, :cond_16

    .line 302
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 304
    :cond_16
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 300
    :cond_19
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 298
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_1f
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 305
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private blacklist ensureWriteOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 312
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v1, :cond_1b

    .line 314
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 316
    monitor-exit v0

    .line 317
    return-void

    .line 315
    :cond_15
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 313
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_1b
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 311
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_21
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 316
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private blacklist readerCleanup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 322
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 323
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    .line 324
    :cond_f
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static native blacklist sendOutOfBandData(Ljava/io/FileDescriptor;B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist writerCleanup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 330
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 331
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    .line 332
    :cond_f
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
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

    .line 65
    invoke-virtual {p0, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .registers 10
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_70

    .line 612
    :try_start_6
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_6d

    .line 613
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 615
    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5e

    .line 617
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_58

    .line 619
    if-nez p1, :cond_21

    .line 620
    new-instance v3, Ljava/net/InetSocketAddress;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_25

    :cond_21
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 621
    .local v3, "isa":Ljava/net/InetSocketAddress;
    :goto_25
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 622
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_32

    .line 623
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 625
    :cond_32
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v5, v6, v7}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 626
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-static {v5, v6, v7}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 627
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v5

    iput-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 628
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_6a

    .line 629
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_6d

    .line 630
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_70

    .line 631
    return-object p0

    .line 618
    :cond_58
    :try_start_58
    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v3

    .line 616
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_5e
    new-instance v3, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v3}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v3

    .line 614
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :cond_64
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    throw v3

    .line 628
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_6a
    move-exception v3

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_6a

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    :try_start_6c
    throw v3

    .line 629
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_6d

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "local":Ljava/net/SocketAddress;
    :try_start_6f
    throw v2

    .line 630
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "local":Ljava/net/SocketAddress;
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_70

    throw v1
.end method

.method public whitelist test-api connect(Ljava/net/SocketAddress;)Z
    .registers 16
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    const/4 v0, 0x0

    .line 660
    .local v0, "localPort":I
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_4
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_ef

    .line 662
    :try_start_7
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureOpenAndUnconnected()V

    .line 663
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 664
    .local v3, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 665
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_23

    .line 666
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 667
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 666
    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 668
    :cond_23
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_ec

    .line 669
    const/4 v6, 0x0

    .line 672
    .local v6, "n":I
    const/4 v7, -0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_2c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 673
    iget-object v10, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_d3

    .line 674
    :try_start_32
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v11

    if-nez v11, :cond_49

    .line 675
    monitor-exit v10
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_d0

    .line 699
    :try_start_39
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 700
    if-gtz v6, :cond_42

    if-ne v6, v7, :cond_41

    goto :goto_42

    :cond_41
    move v9, v8

    :cond_42
    :goto_42
    invoke-virtual {p0, v9}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_45} :catch_e4
    .catchall {:try_start_39 .. :try_end_45} :catchall_e2

    .line 701
    :try_start_45
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_e2

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_ec

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_ef

    .line 675
    return v8

    .line 678
    :cond_49
    :try_start_49
    iget-object v11, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v11, :cond_5a

    .line 679
    iget-object v11, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 680
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    .line 681
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    .line 679
    invoke-static {v11, v12, v13}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 683
    :cond_5a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v11

    iput-wide v11, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 684
    monitor-exit v10
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_d0

    .line 686
    :goto_61
    :try_start_61
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    .line 687
    .local v10, "ia":Ljava/net/InetAddress;
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v11

    if-eqz v11, :cond_70

    .line 688
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v11

    move-object v10, v11

    .line 689
    :cond_70
    iget-object v11, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 691
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 689
    invoke-static {v11, v10, v12}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v11

    move v6, v11

    .line 692
    const/4 v11, -0x3

    if-ne v6, v11, :cond_85

    .line 693
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v11
    :try_end_82
    .catchall {:try_start_61 .. :try_end_82} :catchall_d3

    if-eqz v11, :cond_85

    .line 694
    goto :goto_61

    .line 699
    .end local v10    # "ia":Ljava/net/InetAddress;
    :cond_85
    :try_start_85
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 700
    if-gtz v6, :cond_8f

    if-ne v6, v7, :cond_8d

    goto :goto_8f

    :cond_8d
    move v7, v8

    goto :goto_90

    :cond_8f
    :goto_8f
    move v7, v9

    :goto_90
    invoke-virtual {p0, v7}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_93} :catch_e4
    .catchall {:try_start_85 .. :try_end_93} :catchall_e2

    .line 701
    nop

    .line 709
    nop

    .line 710
    :try_start_95
    iget-object v7, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_e2

    .line 711
    :try_start_98
    iput-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 712
    if-lez v6, :cond_b2

    .line 716
    const/4 v8, 0x2

    iput v8, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 717
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 718
    iget-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v8}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v8

    iput-object v8, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 719
    :cond_ad
    monitor-exit v7
    :try_end_ae
    .catchall {:try_start_98 .. :try_end_ae} :catchall_cd

    :try_start_ae
    monitor-exit v5
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_e2

    :try_start_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ec

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_ef

    return v9

    .line 723
    :cond_b2
    :try_start_b2
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v10

    if-nez v10, :cond_c8

    .line 724
    iput v9, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 725
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 726
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v9}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v9

    iput-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 729
    :cond_c8
    monitor-exit v7
    :try_end_c9
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_cd

    .line 730
    .end local v6    # "n":I
    :try_start_c9
    monitor-exit v5
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_e2

    .line 731
    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_ec

    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ef

    return v8

    .line 729
    .restart local v6    # "n":I
    :catchall_cd
    move-exception v8

    :try_start_ce
    monitor-exit v7
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    .end local v0    # "localPort":I
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_cf
    throw v8
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_e2

    .line 684
    .restart local v0    # "localPort":I
    .restart local v3    # "isa":Ljava/net/InetSocketAddress;
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_d0
    move-exception v11

    :try_start_d1
    monitor-exit v10
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    .end local v0    # "localPort":I
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .end local v6    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_d2
    throw v11
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    .line 699
    .restart local v0    # "localPort":I
    .restart local v3    # "isa":Ljava/net/InetSocketAddress;
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    .restart local v6    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_d3
    move-exception v10

    :try_start_d4
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 700
    if-gtz v6, :cond_db

    if-ne v6, v7, :cond_dc

    :cond_db
    move v8, v9

    :cond_dc
    invoke-virtual {p0, v8}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 701
    nop

    .line 702
    nop

    .end local v0    # "localPort":I
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .end local v6    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    throw v10
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_e2} :catch_e4
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_e2

    .line 730
    .restart local v0    # "localPort":I
    .restart local v3    # "isa":Ljava/net/InetSocketAddress;
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_e2
    move-exception v6

    goto :goto_ea

    .line 703
    .restart local v6    # "n":I
    :catch_e4
    move-exception v7

    .line 707
    .local v7, "x":Ljava/io/IOException;
    :try_start_e5
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 708
    nop

    .end local v0    # "localPort":I
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    throw v7

    .line 730
    .end local v6    # "n":I
    .end local v7    # "x":Ljava/io/IOException;
    .restart local v0    # "localPort":I
    .restart local v3    # "isa":Ljava/net/InetSocketAddress;
    .restart local v4    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :goto_ea
    monitor-exit v5
    :try_end_eb
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_e2

    .end local v0    # "localPort":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_eb
    throw v6

    .line 732
    .end local v3    # "isa":Ljava/net/InetSocketAddress;
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    .restart local v0    # "localPort":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_ec
    move-exception v3

    monitor-exit v2
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ec

    .end local v0    # "localPort":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "sa":Ljava/net/SocketAddress;
    :try_start_ee
    throw v3

    .line 733
    .restart local v0    # "localPort":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "sa":Ljava/net/SocketAddress;
    :catchall_ef
    move-exception v2

    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_ef

    throw v2
.end method

.method blacklist ensureOpenAndUnconnected()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 650
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    .line 652
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    .line 654
    monitor-exit v0

    .line 655
    return-void

    .line 653
    :cond_15
    new-instance v1, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 651
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_1b
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 649
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_21
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 654
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 937
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 943
    :cond_9
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_10

    .line 944
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 947
    :cond_10
    return-void
.end method

.method public whitelist test-api finishConnect()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10b

    .line 739
    :try_start_6
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_108

    .line 740
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 742
    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_19

    .line 743
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_105

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_108

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_10b

    return v5

    .line 744
    :cond_19
    :try_start_19
    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v3, v5, :cond_f9

    .line 746
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_105

    .line 747
    const/4 v2, 0x0

    .line 750
    .local v2, "n":I
    const/4 v3, -0x2

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :try_start_24
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 751
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_d4

    .line 752
    :try_start_2c
    iget-object v11, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_d1

    .line 753
    :try_start_2f
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v12

    if-nez v12, :cond_54

    .line 754
    monitor-exit v11
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_ce

    :try_start_36
    monitor-exit v10
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_d1

    .line 786
    :try_start_37
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_f3
    .catchall {:try_start_37 .. :try_end_3a} :catchall_108

    .line 787
    :try_start_3a
    iput-wide v7, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 788
    iget v7, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v7, v6, :cond_44

    .line 789
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    .line 795
    const/4 v2, 0x0

    .line 797
    :cond_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_51

    .line 798
    if-gtz v2, :cond_4b

    if-ne v2, v3, :cond_4a

    goto :goto_4b

    :cond_4a
    move v5, v9

    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {p0, v5}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_f3
    .catchall {:try_start_4b .. :try_end_4e} :catchall_108

    .line 799
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_108

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_10b

    .line 754
    return v9

    .line 797
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local v2    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :goto_53
    :try_start_53
    throw v3
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_54} :catch_f3
    .catchall {:try_start_53 .. :try_end_54} :catchall_108

    .line 756
    .restart local v2    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_54
    :try_start_54
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v12

    iput-wide v12, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 757
    monitor-exit v11
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_ce

    .line 759
    :try_start_5b
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v11

    invoke-interface {v11}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 760
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v11

    const/4 v12, -0x3

    if-nez v11, :cond_7b

    .line 762
    :goto_69
    iget-object v11, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-boolean v13, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    invoke-static {v11, v9, v13}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v11

    move v2, v11

    .line 764
    if-ne v2, v12, :cond_90

    .line 765
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 766
    goto :goto_69

    .line 771
    :cond_7b
    :goto_7b
    iget-object v11, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-boolean v13, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    invoke-static {v11, v5, v13}, Lsun/nio/ch/SocketChannelImpl;->checkConnect(Ljava/io/FileDescriptor;ZZ)I

    move-result v11

    move v2, v11

    .line 773
    if-nez v2, :cond_87

    .line 776
    goto :goto_7b

    .line 778
    :cond_87
    if-ne v2, v12, :cond_90

    .line 779
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 780
    goto :goto_7b

    .line 784
    :cond_90
    monitor-exit v10
    :try_end_91
    .catchall {:try_start_5b .. :try_end_91} :catchall_d1

    .line 786
    :try_start_91
    iget-object v10, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_f3
    .catchall {:try_start_91 .. :try_end_94} :catchall_108

    .line 787
    :try_start_94
    iput-wide v7, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 788
    iget v7, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v7, v6, :cond_9e

    .line 789
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    .line 795
    const/4 v2, 0x0

    .line 797
    :cond_9e
    monitor-exit v10
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_cb

    .line 798
    if-gtz v2, :cond_a6

    if-ne v2, v3, :cond_a4

    goto :goto_a6

    :cond_a4
    move v3, v9

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v3, v5

    :goto_a7
    :try_start_a7
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_f3
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_108

    .line 799
    nop

    .line 807
    nop

    .line 808
    if-lez v2, :cond_c8

    .line 809
    :try_start_ae
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_108

    .line 810
    :try_start_b1
    iput v4, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 811
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 812
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v4

    iput-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 813
    :cond_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_b1 .. :try_end_c2} :catchall_c5

    .line 814
    :try_start_c2
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_108

    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_10b

    return v5

    .line 813
    :catchall_c5
    move-exception v4

    :try_start_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :try_start_c7
    throw v4

    .line 816
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_108

    :try_start_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_10b

    return v9

    .line 797
    :catchall_cb
    move-exception v3

    :try_start_cc
    monitor-exit v10
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    goto :goto_53

    .line 757
    :catchall_ce
    move-exception v4

    :try_start_cf
    monitor-exit v11
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    .end local v2    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :try_start_d0
    throw v4

    .line 784
    .restart local v2    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_d1
    move-exception v4

    monitor-exit v10
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d1

    .end local v2    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :try_start_d3
    throw v4
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d4

    .line 786
    .restart local v2    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_d4
    move-exception v4

    :try_start_d5
    iget-object v10, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_f3
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_108

    .line 787
    :try_start_d8
    iput-wide v7, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 788
    iget v7, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v7, v6, :cond_e2

    .line 789
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    .line 795
    const/4 v2, 0x0

    .line 797
    :cond_e2
    monitor-exit v10
    :try_end_e3
    .catchall {:try_start_d8 .. :try_end_e3} :catchall_ef

    .line 798
    if-gtz v2, :cond_e9

    if-ne v2, v3, :cond_e8

    goto :goto_e9

    :cond_e8
    move v5, v9

    :cond_e9
    :goto_e9
    :try_start_e9
    invoke-virtual {p0, v5}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 799
    nop

    .line 800
    nop

    .end local v2    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v4
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ef} :catch_f3
    .catchall {:try_start_e9 .. :try_end_ef} :catchall_108

    .line 797
    .restart local v2    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_ef
    move-exception v3

    :try_start_f0
    monitor-exit v10
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    goto/16 :goto_53

    .line 801
    :catch_f3
    move-exception v3

    .line 805
    .local v3, "x":Ljava/io/IOException;
    :try_start_f4
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 806
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v3
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_108

    .line 745
    .end local v2    # "n":I
    .end local v3    # "x":Ljava/io/IOException;
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_f9
    :try_start_f9
    new-instance v3, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v3}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v3

    .line 741
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_ff
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v3

    .line 746
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_105
    move-exception v3

    monitor-exit v2
    :try_end_107
    .catchall {:try_start_f9 .. :try_end_107} :catchall_105

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :try_start_107
    throw v3

    .line 817
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_108
    move-exception v2

    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_108

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :try_start_10a
    throw v2

    .line 818
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_10b
    move-exception v1

    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10b

    throw v1
.end method

.method public blacklist getFD()Ljava/io/FileDescriptor;
    .registers 2

    .line 1040
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getFDVal()I
    .registers 2

    .line 1044
    iget v0, p0, Lsun/nio/ch/SocketChannelImpl;->fdVal:I

    return v0
.end method

.method public whitelist test-api getLocalAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 191
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 190
    :cond_11
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 192
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

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

    .line 241
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-eqz p1, :cond_70

    .line 243
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 246
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_f
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 250
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_27

    .line 251
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 254
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 258
    :cond_27
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_3e

    .line 259
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 260
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_36

    :cond_34
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .line 261
    .local v1, "family":Ljava/net/ProtocolFamily;
    :goto_36
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v1, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 265
    .end local v1    # "family":Ljava/net/ProtocolFamily;
    :cond_3e
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 248
    :cond_48
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    throw v1

    .line 266
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_4e

    throw v1

    .line 244
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

    .line 242
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getRemoteAddress()Ljava/net/SocketAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 200
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 199
    :cond_d
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 201
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected whitelist test-api implCloseSelectableChannel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 875
    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 882
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_19

    .line 884
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 885
    sget-object v1, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 892
    :cond_19
    iget-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    .line 893
    iget-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v1, v2}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 895
    :cond_26
    iget-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_31

    .line 896
    iget-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v1, v2}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 908
    :cond_31
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 909
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->kill()V

    .line 910
    :cond_3a
    monitor-exit v0

    .line 911
    return-void

    .line 910
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

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

    .line 593
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 594
    return-void
.end method

.method public whitelist test-api isConnected()Z
    .registers 4

    .line 635
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 637
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist test-api isConnectionPending()Z
    .registers 4

    .line 641
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    monitor-exit v0

    return v2

    .line 643
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist isInputOpen()Z
    .registers 3

    .line 856
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    monitor-exit v0

    return v1

    .line 858
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isOutputOpen()Z
    .registers 3

    .line 862
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    monitor-exit v0

    return v1

    .line 864
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist kill()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_3
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    .line 916
    monitor-exit v0

    return-void

    .line 917
    :cond_a
    iget v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    .line 918
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 919
    monitor-exit v0

    return-void

    .line 921
    :cond_13
    nop

    .line 926
    iget-wide v3, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    iget-wide v3, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    .line 927
    sget-object v1, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v3}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 928
    iput v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    goto :goto_2f

    .line 930
    :cond_2c
    const/4 v1, 0x3

    iput v1, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    .line 932
    :goto_2f
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist localAddress()Ljava/net/InetSocketAddress;
    .registers 3

    .line 597
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 599
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist poll(IJ)I
    .registers 11
    .param p1, "events"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    nop

    .line 1007
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    const/4 v1, 0x0

    .line 1010
    .local v1, "n":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 1011
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_3d

    .line 1012
    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1013
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_3a

    .line 1018
    :try_start_14
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 1019
    if-lez v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_4a

    .line 1013
    return v3

    .line 1014
    :cond_20
    :try_start_20
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v5

    iput-wide v5, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 1015
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_3a

    .line 1016
    :try_start_27
    iget-object v4, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I

    move-result v4
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_3d

    .line 1018
    .end local v1    # "n":I
    .local v4, "n":I
    :try_start_2d
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 1019
    if-lez v4, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 1020
    nop

    .line 1021
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_4a

    return v4

    .line 1015
    .end local v4    # "n":I
    .restart local v1    # "n":I
    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "timeout":J
    :try_start_3c
    throw v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 1018
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":J
    :catchall_3d
    move-exception v4

    :try_start_3e
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 1019
    if-lez v1, :cond_44

    goto :goto_45

    :cond_44
    move v2, v3

    :goto_45
    invoke-virtual {p0, v2}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 1020
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "events":I
    .end local p2    # "timeout":J
    throw v4

    .line 1022
    .end local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "events":I
    .restart local p2    # "timeout":J
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 12
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    if-eqz p1, :cond_a1

    .line 340
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_e

    .line 342
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_9e

    return v2

    .line 343
    :cond_e
    const/4 v1, 0x0

    .line 349
    .local v1, "n":I
    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 351
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_7e

    .line 352
    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 360
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_7b

    .line 431
    :try_start_1f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 448
    if-gtz v1, :cond_28

    if-ne v1, v3, :cond_27

    goto :goto_28

    :cond_27
    move v4, v5

    :cond_28
    :goto_28
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 452
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_9e

    .line 453
    if-gtz v1, :cond_37

    :try_start_30
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v4, :cond_37

    .line 454
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3a

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_9e

    return v2

    .line 455
    :cond_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3a

    .line 457
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_9e

    .line 360
    return v5

    .line 455
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :goto_3c
    :try_start_3c
    throw v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_9e

    .line 367
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_3d
    :try_start_3d
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v7

    iput-wide v7, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 368
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_7b

    .line 421
    :goto_44
    :try_start_44
    iget-object v6, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v7, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v8, -0x1

    invoke-static {v6, p1, v8, v9, v7}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v6

    move v1, v6

    .line 422
    const/4 v6, -0x3

    if-ne v1, v6, :cond_59

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 425
    goto :goto_44

    .line 427
    :cond_59
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v6
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_7e

    .line 431
    :try_start_5d
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 448
    if-gtz v1, :cond_66

    if-ne v1, v3, :cond_65

    goto :goto_66

    :cond_65
    move v4, v5

    :cond_66
    :goto_66
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 452
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_9e

    .line 453
    if-gtz v1, :cond_75

    :try_start_6e
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v4, :cond_75

    .line 454
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_78

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_9e

    return v2

    .line 455
    :cond_75
    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_78

    .line 457
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_9e

    .line 427
    return v6

    .line 455
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    goto :goto_3c

    .line 368
    :catchall_7b
    move-exception v7

    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_7d
    throw v7
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 431
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_7e
    move-exception v6

    :try_start_7f
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 448
    if-gtz v1, :cond_88

    if-ne v1, v3, :cond_87

    goto :goto_88

    :cond_87
    move v4, v5

    :cond_88
    :goto_88
    invoke-virtual {p0, v4}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 452
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_9e

    .line 453
    if-gtz v1, :cond_97

    :try_start_90
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v4, :cond_97

    .line 454
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_90 .. :try_end_95} :catchall_9b

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_9e

    return v2

    .line 455
    :cond_97
    :try_start_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_9b

    .line 457
    nop

    .line 459
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_9a
    throw v6
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9e

    .line 455
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_9b
    move-exception v2

    :try_start_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    goto :goto_3c

    .line 460
    .end local v1    # "n":I
    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v1

    .line 338
    :cond_a1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([Ljava/nio/ByteBuffer;II)J
    .registers 24
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 466
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    if-ltz v3, :cond_da

    if-ltz v4, :cond_da

    array-length v0, v2

    sub-int/2addr v0, v4

    if-gt v3, v0, :cond_da

    .line 468
    iget-object v5, v1, Lsun/nio/ch/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v5

    .line 469
    :try_start_13
    invoke-direct {v1}, Lsun/nio/ch/SocketChannelImpl;->ensureReadOpen()Z

    move-result v0

    const-wide/16 v6, -0x1

    if-nez v0, :cond_1d

    .line 470
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_d7

    return-wide v6

    .line 471
    :cond_1d
    const-wide/16 v8, 0x0

    .line 473
    .local v8, "n":J
    const-wide/16 v11, -0x2

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    :try_start_24
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->begin()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_ab

    .line 474
    move-wide/from16 v16, v6

    :try_start_29
    iget-object v6, v1, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_a9

    .line 475
    :try_start_2c
    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_59

    .line 476
    monitor-exit v6
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_a0

    .line 487
    :try_start_33
    invoke-direct {v1}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 488
    cmp-long v0, v8, v14

    if-gtz v0, :cond_41

    cmp-long v0, v8, v11

    if-nez v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v10, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    move v10, v13

    :goto_42
    invoke-virtual {v1, v10}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 489
    iget-object v6, v1, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_d7

    .line 490
    cmp-long v0, v8, v14

    if-gtz v0, :cond_53

    :try_start_4c
    iget-boolean v0, v1, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v0, :cond_53

    .line 491
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_56

    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_d7

    return-wide v16

    .line 492
    :cond_53
    :try_start_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_56

    .line 493
    :try_start_54
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_d7

    .line 476
    return-wide v14

    .line 492
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :goto_58
    :try_start_58
    throw v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_d7

    .line 477
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_59
    move-wide/from16 v18, v11

    :try_start_5b
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, v1, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    .line 478
    monitor-exit v6
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_a7

    .line 481
    :goto_62
    :try_start_62
    iget-object v0, v1, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v6, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v0, v2, v3, v4, v6}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10

    move-wide v8, v10

    .line 482
    const-wide/16 v10, -0x3

    cmp-long v0, v8, v10

    if-nez v0, :cond_78

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 483
    goto :goto_62

    .line 484
    :cond_78
    invoke-static {v8, v9}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v10
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_a5

    .line 487
    :try_start_7c
    invoke-direct {v1}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 488
    cmp-long v0, v8, v14

    if-gtz v0, :cond_89

    cmp-long v0, v8, v18

    if-nez v0, :cond_88

    goto :goto_89

    :cond_88
    const/4 v13, 0x0

    :cond_89
    :goto_89
    invoke-virtual {v1, v13}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 489
    iget-object v6, v1, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_d7

    .line 490
    cmp-long v0, v8, v14

    if-gtz v0, :cond_9a

    :try_start_93
    iget-boolean v0, v1, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v0, :cond_9a

    .line 491
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_9d

    :try_start_98
    monitor-exit v5
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_d7

    return-wide v16

    .line 492
    :cond_9a
    :try_start_9a
    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9d

    .line 493
    :try_start_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_d7

    .line 484
    return-wide v10

    .line 492
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v6
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    goto :goto_58

    .line 478
    :catchall_a0
    move-exception v0

    move-wide/from16 v18, v11

    :goto_a3
    :try_start_a3
    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a7

    .end local v8    # "n":J
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_a4
    throw v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    .line 487
    .restart local v8    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_a5
    move-exception v0

    goto :goto_b0

    .line 478
    :catchall_a7
    move-exception v0

    goto :goto_a3

    .line 487
    :catchall_a9
    move-exception v0

    goto :goto_ae

    :catchall_ab
    move-exception v0

    move-wide/from16 v16, v6

    :goto_ae
    move-wide/from16 v18, v11

    :goto_b0
    :try_start_b0
    invoke-direct {v1}, Lsun/nio/ch/SocketChannelImpl;->readerCleanup()V

    .line 488
    cmp-long v6, v8, v14

    if-gtz v6, :cond_be

    cmp-long v6, v8, v18

    if-nez v6, :cond_bc

    goto :goto_be

    :cond_bc
    const/4 v10, 0x0

    goto :goto_bf

    :cond_be
    :goto_be
    move v10, v13

    :goto_bf
    invoke-virtual {v1, v10}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 489
    iget-object v6, v1, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_c5
    .catchall {:try_start_b0 .. :try_end_c5} :catchall_d7

    .line 490
    cmp-long v7, v8, v14

    if-gtz v7, :cond_d0

    :try_start_c9
    iget-boolean v7, v1, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v7, :cond_d0

    .line 491
    monitor-exit v6
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_d4

    :try_start_ce
    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_d7

    return-wide v16

    .line 492
    :cond_d0
    :try_start_d0
    monitor-exit v6
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d4

    .line 493
    nop

    .line 494
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_d3
    throw v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d7

    .line 492
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_d4
    move-exception v0

    :try_start_d5
    monitor-exit v6
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    goto :goto_58

    .line 495
    .end local v8    # "n":J
    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0

    .line 467
    :cond_da
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist remoteAddress()Ljava/net/SocketAddress;
    .registers 3

    .line 603
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    monitor-exit v0

    return-object v1

    .line 605
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method blacklist sendOutOfBandData(B)I
    .registers 10
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9e

    .line 566
    const/4 v1, 0x0

    .line 568
    .local v1, "n":I
    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 569
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_7a

    .line 570
    :try_start_10
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_39

    .line 571
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_77

    .line 581
    :try_start_17
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 582
    if-gtz v1, :cond_20

    if-ne v1, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v3, v4

    :cond_20
    :goto_20
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 583
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_9e

    .line 584
    if-gtz v1, :cond_33

    :try_start_28
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v3, :cond_2d

    goto :goto_33

    .line 585
    :cond_2d
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "b":B
    throw v3

    .line 586
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "b":B
    :cond_33
    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_36

    .line 587
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_9e

    .line 571
    return v4

    .line 586
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "b":B
    :goto_38
    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_9e

    .line 572
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "b":B
    :cond_39
    :try_start_39
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 573
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_77

    .line 575
    :goto_40
    :try_start_40
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, p1}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(Ljava/io/FileDescriptor;B)I

    move-result v5

    move v1, v5

    .line 576
    const/4 v5, -0x3

    if-ne v1, v5, :cond_51

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 577
    goto :goto_40

    .line 578
    :cond_51
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v5
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_7a

    .line 581
    :try_start_55
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 582
    if-gtz v1, :cond_5e

    if-ne v1, v2, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v4

    :cond_5e
    :goto_5e
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 583
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_9e

    .line 584
    if-gtz v1, :cond_71

    :try_start_66
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v3, :cond_6b

    goto :goto_71

    .line 585
    :cond_6b
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "b":B
    throw v3

    .line 586
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "b":B
    :cond_71
    :goto_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_74

    .line 587
    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_9e

    .line 578
    return v5

    .line 586
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    goto :goto_38

    .line 573
    :catchall_77
    move-exception v6

    :try_start_78
    monitor-exit v5
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "b":B
    :try_start_79
    throw v6
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 581
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "b":B
    :catchall_7a
    move-exception v5

    :try_start_7b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 582
    if-gtz v1, :cond_84

    if-ne v1, v2, :cond_83

    goto :goto_84

    :cond_83
    move v3, v4

    :cond_84
    :goto_84
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 583
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_9e

    .line 584
    if-gtz v1, :cond_97

    :try_start_8c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v3, :cond_91

    goto :goto_97

    .line 585
    :cond_91
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "b":B
    throw v3

    .line 586
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "b":B
    :cond_97
    :goto_97
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_9b

    .line 587
    nop

    .line 588
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "b":B
    :try_start_9a
    throw v5
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9e

    .line 586
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "b":B
    :catchall_9b
    move-exception v3

    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    goto :goto_38

    .line 589
    .end local v1    # "n":I
    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

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

    .line 65
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/SocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_71

    .line 210
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 213
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_f
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 217
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_2b

    .line 218
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 219
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    goto :goto_24

    :cond_22
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .line 220
    .local v1, "family":Ljava/net/ProtocolFamily;
    :goto_24
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2, v1, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 221
    monitor-exit v0

    return-object p0

    .line 224
    .end local v1    # "family":Ljava/net/ProtocolFamily;
    :cond_2b
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_40

    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 226
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isReuseAddress:Z

    .line 227
    monitor-exit v0

    return-object p0

    .line 231
    :cond_40
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v2, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V

    .line 232
    monitor-exit v0

    return-object p0

    .line 215
    :cond_49
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v1

    .line 233
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_4f

    throw v1

    .line 211
    :cond_52
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

    .line 209
    :cond_71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api shutdownInput()Ljava/nio/channels/SocketChannel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 826
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 828
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-eqz v1, :cond_28

    .line 829
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 830
    iget-wide v3, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_26

    .line 831
    iget-wide v3, p0, Lsun/nio/ch/SocketChannelImpl;->readerThread:J

    invoke-static {v3, v4}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 832
    :cond_26
    iput-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    .line 834
    :cond_28
    monitor-exit v0

    return-object p0

    .line 827
    :cond_2a
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 825
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_30
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 835
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public whitelist test-api shutdownOutput()Ljava/nio/channels/SocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_3
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 843
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 845
    iget-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v1, :cond_29

    .line 846
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 847
    iget-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_26

    .line 848
    iget-wide v1, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    invoke-static {v1, v2}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 849
    :cond_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    .line 851
    :cond_29
    monitor-exit v0

    return-object p0

    .line 844
    :cond_2b
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 842
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :cond_31
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    throw v1

    .line 852
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public whitelist test-api socket()Ljava/net/Socket;
    .registers 3

    .line 179
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    if-nez v1, :cond_d

    .line 181
    invoke-static {p0}, Lsun/nio/ch/SocketAdaptor;->create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 182
    :cond_d
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->socket:Ljava/net/Socket;

    monitor-exit v0

    return-object v1

    .line 183
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

    .line 292
    sget-object v0, Lsun/nio/ch/SocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1049
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1050
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1051
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1052
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1053
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7b

    .line 1055
    :cond_25
    iget-object v1, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1056
    :try_start_28
    iget v2, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    packed-switch v2, :pswitch_data_88

    goto :goto_52

    .line 1064
    :pswitch_2e
    const-string v2, "connected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isInputOpen:Z

    if-nez v2, :cond_3c

    .line 1066
    const-string v2, " ishut"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    :cond_3c
    iget-boolean v2, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-nez v2, :cond_52

    .line 1068
    const-string v2, " oshut"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_52

    .line 1061
    :pswitch_46
    const-string v2, "connection-pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    goto :goto_52

    .line 1058
    :pswitch_4c
    const-string v2, "unconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    nop

    .line 1071
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 1072
    .local v2, "addr":Ljava/net/InetSocketAddress;
    if-eqz v2, :cond_64

    .line 1073
    const-string v3, " local="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    invoke-static {v2}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1076
    :cond_64
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 1077
    const-string v3, " remote="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1080
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    :cond_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_28 .. :try_end_7b} :catchall_85

    .line 1082
    :goto_7b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1080
    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v2

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_46
        :pswitch_2e
    .end packed-switch
.end method

.method public blacklist translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .registers 5
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 1031
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/2addr v0, v1

    .line 1032
    :cond_8
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_f

    .line 1033
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    .line 1034
    :cond_f
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_16

    .line 1035
    sget-short v1, Lsun/nio/ch/Net;->POLLCONN:S

    or-int/2addr v0, v1

    .line 1036
    :cond_16
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 1037
    return-void
.end method

.method public blacklist translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 4
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 996
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/SocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public blacklist translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .registers 11
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .line 954
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 955
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v1

    .line 956
    .local v1, "oldOps":I
    move v2, p2

    .line 958
    .local v2, "newOps":I
    sget-short v3, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v3, p1

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    .line 962
    return v4

    .line 965
    :cond_10
    sget-short v3, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v5, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v3, v5

    and-int/2addr v3, p1

    const/4 v5, 0x1

    if-eqz v3, :cond_25

    .line 966
    move v2, v0

    .line 967
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 970
    iput-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 971
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_24

    move v4, v5

    :cond_24
    return v4

    .line 974
    :cond_25
    sget-short v3, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v3, p1

    const/4 v6, 0x2

    if-eqz v3, :cond_35

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_35

    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v3, v6, :cond_35

    .line 977
    or-int/lit8 v2, v2, 0x1

    .line 979
    :cond_35
    sget-short v3, Lsun/nio/ch/Net;->POLLCONN:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_4a

    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_4a

    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-eqz v3, :cond_46

    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v3, v5, :cond_4a

    .line 982
    :cond_46
    or-int/lit8 v2, v2, 0x8

    .line 983
    iput-boolean v5, p0, Lsun/nio/ch/SocketChannelImpl;->readyToConnect:Z

    .line 986
    :cond_4a
    sget-short v3, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v3, p1

    if-eqz v3, :cond_59

    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_59

    iget v3, p0, Lsun/nio/ch/SocketChannelImpl;->state:I

    if-ne v3, v6, :cond_59

    .line 989
    or-int/lit8 v2, v2, 0x4

    .line 991
    :cond_59
    invoke-virtual {p3, v2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 992
    not-int v3, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_61

    move v4, v5

    :cond_61
    return v4
.end method

.method public whitelist test-api write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    if-eqz p1, :cond_a7

    .line 501
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_5
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a4

    .line 503
    const/4 v1, 0x0

    .line 505
    .local v1, "n":I
    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 506
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_80

    .line 507
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 508
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_7d

    .line 518
    :try_start_19
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 519
    if-gtz v1, :cond_22

    if-ne v1, v2, :cond_21

    goto :goto_22

    :cond_21
    move v3, v4

    :cond_22
    :goto_22
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 520
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_a4

    .line 521
    if-gtz v1, :cond_35

    :try_start_2a
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v3, :cond_2f

    goto :goto_35

    .line 522
    :cond_2f
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v3

    .line 523
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_35
    :goto_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_38

    .line 524
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_a4

    .line 508
    return v4

    .line 523
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :goto_3a
    :try_start_3a
    throw v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_a4

    .line 509
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_3b
    :try_start_3b
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    iput-wide v6, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 510
    monitor-exit v5
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_7d

    .line 512
    :goto_42
    :try_start_42
    iget-object v5, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v6, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v7, -0x1

    invoke-static {v5, p1, v7, v8, v6}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    move v1, v5

    .line 513
    const/4 v5, -0x3

    if-ne v1, v5, :cond_57

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 514
    goto :goto_42

    .line 515
    :cond_57
    invoke-static {v1}, Lsun/nio/ch/IOStatus;->normalize(I)I

    move-result v5
    :try_end_5b
    .catchall {:try_start_42 .. :try_end_5b} :catchall_80

    .line 518
    :try_start_5b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 519
    if-gtz v1, :cond_64

    if-ne v1, v2, :cond_63

    goto :goto_64

    :cond_63
    move v3, v4

    :cond_64
    :goto_64
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 520
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_a4

    .line 521
    if-gtz v1, :cond_77

    :try_start_6c
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v3, :cond_71

    goto :goto_77

    .line 522
    :cond_71
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v3

    .line 523
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_77
    :goto_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_7a

    .line 524
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_a4

    .line 515
    return v5

    .line 523
    :catchall_7a
    move-exception v3

    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    goto :goto_3a

    .line 510
    :catchall_7d
    move-exception v6

    :try_start_7e
    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_7f
    throw v6
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 518
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_80
    move-exception v5

    :try_start_81
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 519
    if-gtz v1, :cond_8a

    if-ne v1, v2, :cond_89

    goto :goto_8a

    :cond_89
    move v3, v4

    :cond_8a
    :goto_8a
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 520
    iget-object v2, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_a4

    .line 521
    if-gtz v1, :cond_9d

    :try_start_92
    iget-boolean v3, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v3, :cond_97

    goto :goto_9d

    .line 522
    :cond_97
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":I
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    throw v3

    .line 523
    .restart local v1    # "n":I
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_9d
    :goto_9d
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_a1

    .line 524
    nop

    .line 525
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    :try_start_a0
    throw v5
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a4

    .line 523
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :catchall_a1
    move-exception v3

    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    goto :goto_3a

    .line 526
    .end local v1    # "n":I
    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v1

    .line 500
    :cond_a7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write([Ljava/nio/ByteBuffer;II)J
    .registers 16
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    if-ltz p2, :cond_c1

    if-ltz p3, :cond_c1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c1

    .line 534
    iget-object v0, p0, Lsun/nio/ch/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->ensureWriteOpen()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_be

    .line 536
    const-wide/16 v1, 0x0

    .line 538
    .local v1, "n":J
    const/4 v3, 0x0

    const-wide/16 v4, -0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    :try_start_16
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->begin()V

    .line 539
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_95

    .line 540
    :try_start_1c
    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v10

    if-nez v10, :cond_4a

    .line 541
    monitor-exit v9
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_92

    .line 551
    :try_start_23
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 552
    cmp-long v9, v1, v7

    if-gtz v9, :cond_2e

    cmp-long v4, v1, v4

    if-nez v4, :cond_2f

    :cond_2e
    move v3, v6

    :cond_2f
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 553
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_be

    .line 554
    cmp-long v4, v1, v7

    if-gtz v4, :cond_44

    :try_start_39
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v4, :cond_3e

    goto :goto_44

    .line 555
    :cond_3e
    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":J
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v4

    .line 556
    .restart local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_44
    :goto_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_47

    .line 557
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_be

    .line 541
    return-wide v7

    .line 556
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :goto_49
    :try_start_49
    throw v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_be

    .line 542
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_4a
    :try_start_4a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v10

    iput-wide v10, p0, Lsun/nio/ch/SocketChannelImpl;->writerThread:J

    .line 543
    monitor-exit v9
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_92

    .line 545
    :goto_51
    :try_start_51
    iget-object v9, p0, Lsun/nio/ch/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/SocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, p1, p2, p3, v10}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v9

    move-wide v1, v9

    .line 546
    const-wide/16 v9, -0x3

    cmp-long v9, v1, v9

    if-nez v9, :cond_67

    invoke-virtual {p0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 547
    goto :goto_51

    .line 548
    :cond_67
    invoke-static {v1, v2}, Lsun/nio/ch/IOStatus;->normalize(J)J

    move-result-wide v9
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_95

    .line 551
    :try_start_6b
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 552
    cmp-long v11, v1, v7

    if-gtz v11, :cond_76

    cmp-long v4, v1, v4

    if-nez v4, :cond_77

    :cond_76
    move v3, v6

    :cond_77
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 553
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_be

    .line 554
    cmp-long v4, v1, v7

    if-gtz v4, :cond_8c

    :try_start_81
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v4, :cond_86

    goto :goto_8c

    .line 555
    :cond_86
    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":J
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v4

    .line 556
    .restart local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_8c
    :goto_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_81 .. :try_end_8d} :catchall_8f

    .line 557
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_be

    .line 548
    return-wide v9

    .line 556
    :catchall_8f
    move-exception v4

    :try_start_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    goto :goto_49

    .line 543
    :catchall_92
    move-exception v10

    :try_start_93
    monitor-exit v9
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    .end local v1    # "n":J
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_94
    throw v10
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 551
    .restart local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_95
    move-exception v9

    :try_start_96
    invoke-direct {p0}, Lsun/nio/ch/SocketChannelImpl;->writerCleanup()V

    .line 552
    cmp-long v10, v1, v7

    if-gtz v10, :cond_a1

    cmp-long v4, v1, v4

    if-nez v4, :cond_a2

    :cond_a1
    move v3, v6

    :cond_a2
    invoke-virtual {p0, v3}, Lsun/nio/ch/SocketChannelImpl;->end(Z)V

    .line 553
    iget-object v3, p0, Lsun/nio/ch/SocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_be

    .line 554
    cmp-long v4, v1, v7

    if-gtz v4, :cond_b7

    :try_start_ac
    iget-boolean v4, p0, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen:Z

    if-eqz v4, :cond_b1

    goto :goto_b7

    .line 555
    :cond_b1
    new-instance v4, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v4}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .end local v1    # "n":J
    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v4

    .line 556
    .restart local v1    # "n":J
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_b7
    :goto_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_bb

    .line 557
    nop

    .line 558
    nop

    .end local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :try_start_ba
    throw v9
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_be

    .line 556
    .restart local p0    # "this":Lsun/nio/ch/SocketChannelImpl;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_bb
    move-exception v4

    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    goto :goto_49

    .line 559
    .end local v1    # "n":J
    :catchall_be
    move-exception v1

    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v1

    .line 533
    :cond_c1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
