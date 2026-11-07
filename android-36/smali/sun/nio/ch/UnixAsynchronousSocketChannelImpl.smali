.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.super Lsun/nio/ch/AsynchronousSocketChannelImpl;
.source "UnixAsynchronousSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Port$PollableChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist disableSynchronousRead:Z

.field private static final blacklist nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private blacklist connectAttachment:Ljava/lang/Object;

.field private blacklist connectFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist connectHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist connectPending:Z

.field private final blacklist fdVal:I

.field private final blacklist guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist isGatheringWrite:Z

.field private blacklist isScatteringRead:Z

.field private blacklist pendingRemote:Ljava/net/SocketAddress;

.field private final blacklist port:Lsun/nio/ch/Port;

.field private blacklist readAttachment:Ljava/lang/Object;

.field private blacklist readBuffer:Ljava/nio/ByteBuffer;

.field private blacklist readBuffers:[Ljava/nio/ByteBuffer;

.field private blacklist readFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist readHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist readPending:Z

.field private blacklist readTimeoutTask:Ljava/lang/Runnable;

.field private blacklist readTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist updateLock:Ljava/lang/Object;

.field private blacklist writeAttachment:Ljava/lang/Object;

.field private blacklist writeBuffer:Ljava/nio/ByteBuffer;

.field private blacklist writeBuffers:[Ljava/nio/ByteBuffer;

.field private blacklist writeFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist writeHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist writePending:Z

.field private blacklist writeTimeoutTask:Ljava/lang/Runnable;

.field private blacklist writeTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetreadAttachment(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreadFuture(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreadHandler(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreadPending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdateLock(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwriteAttachment(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwriteFuture(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwriteHandler(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;
    .registers 1

    iget-object p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwritePending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputreadPending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputwritePending(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    nop

    .line 48
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 53
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.nio.ch.disableSynchronousRead"

    const-string v2, "false"

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "propValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 56
    const/4 v1, 0x1

    goto :goto_27

    :cond_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_27
    sput-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->disableSynchronousRead:Z

    .line 57
    .end local v0    # "propValue":Ljava/lang/String;
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

    .line 102
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    .line 96
    nop

    .line 97
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 461
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;

    invoke-direct {v0, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    .line 656
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;

    invoke-direct {v0, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    .line 106
    :try_start_1f
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_3d

    .line 110
    nop

    .line 112
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 113
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    .line 116
    iget v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v0, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    .line 118
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 119
    return-void

    .line 107
    :catch_3d
    move-exception v0

    .line 108
    .local v0, "x":Ljava/io/IOException;
    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 109
    throw v0
.end method

.method constructor blacklist <init>(Lsun/nio/ch/Port;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .registers 6
    .param p1, "port"    # Lsun/nio/ch/Port;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/AsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    .line 96
    nop

    .line 97
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 461
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;

    invoke-direct {v0, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    .line 656
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;

    invoke-direct {v0, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    .line 129
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    .line 130
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 133
    :try_start_29
    iget v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v0, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V
    :try_end_2e
    .catch Ljava/nio/channels/ShutdownChannelGroupException; {:try_start_29 .. :try_end_2e} :catch_39

    .line 138
    nop

    .line 140
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 142
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 143
    return-void

    .line 134
    :catch_39
    move-exception v0

    .line 137
    .local v0, "x":Ljava/nio/channels/ShutdownChannelGroupException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native blacklist checkConnect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist finish(ZZZ)V
    .registers 10
    .param p1, "mayInvokeDirect"    # Z
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "finishRead":Z
    const/4 v1, 0x0

    .line 176
    .local v1, "finishWrite":Z
    const/4 v2, 0x0

    .line 179
    .local v2, "finishConnect":Z
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    const/4 v4, 0x0

    if-eqz p2, :cond_13

    :try_start_9
    iget-boolean v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    if-eqz v5, :cond_13

    .line 181
    iput-boolean v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    .line 182
    const/4 v0, 0x1

    goto :goto_13

    .line 193
    :catchall_11
    move-exception v4

    goto :goto_3b

    .line 184
    :cond_13
    :goto_13
    if-eqz p3, :cond_24

    .line 185
    iget-boolean v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    if-eqz v5, :cond_1d

    .line 186
    iput-boolean v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    .line 187
    const/4 v1, 0x1

    goto :goto_24

    .line 188
    :cond_1d
    iget-boolean v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    if-eqz v5, :cond_24

    .line 189
    iput-boolean v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    .line 190
    const/4 v2, 0x1

    .line 193
    :cond_24
    :goto_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_11

    .line 198
    if-eqz v0, :cond_30

    .line 199
    if-eqz v1, :cond_2c

    .line 200
    invoke-direct {p0, v4}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishWrite(Z)V

    .line 201
    :cond_2c
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishRead(Z)V

    .line 202
    return-void

    .line 204
    :cond_30
    if-eqz v1, :cond_35

    .line 205
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishWrite(Z)V

    .line 207
    :cond_35
    if-eqz v2, :cond_3a

    .line 208
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishConnect(Z)V

    .line 210
    :cond_3a
    return-void

    .line 193
    :goto_3b
    :try_start_3b
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_11

    throw v4
.end method

.method private blacklist finishConnect(Z)V
    .registers 7
    .param p1, "mayInvokeDirect"    # Z

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 276
    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-static {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->checkConnect(I)V

    .line 277
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->setConnected()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_19

    .line 278
    :catchall_d
    move-exception v1

    .line 279
    .local v1, "x":Ljava/lang/Throwable;
    :try_start_e
    instance-of v2, v1, Ljava/nio/channels/ClosedChannelException;

    if-eqz v2, :cond_18

    .line 280
    new-instance v2, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v2}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_3e

    move-object v1, v2

    .line 281
    :cond_18
    move-object v0, v1

    .line 283
    .end local v1    # "x":Ljava/lang/Throwable;
    :goto_19
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 284
    nop

    .line 285
    if-eqz v0, :cond_27

    .line 288
    :try_start_1f
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 291
    goto :goto_27

    .line 289
    :catchall_23
    move-exception v1

    .line 290
    .local v1, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 295
    .end local v1    # "suppressed":Ljava/lang/Throwable;
    :cond_27
    :goto_27
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectHandler:Ljava/nio/channels/CompletionHandler;

    .line 296
    .local v1, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectAttachment:Ljava/lang/Object;

    .line 297
    .local v2, "att":Ljava/lang/Object;
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectFuture:Lsun/nio/ch/PendingFuture;

    .line 298
    .local v3, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    if-nez v1, :cond_34

    .line 299
    invoke-virtual {v3, v4, v0}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 301
    :cond_34
    if-eqz p1, :cond_3a

    .line 302
    invoke-static {v1, v2, v4, v0}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 304
    :cond_3a
    invoke-static {p0, v1, v2, v4, v0}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 307
    :goto_3d
    return-void

    .line 283
    .end local v1    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    .end local v2    # "att":Ljava/lang/Object;
    .end local v3    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;Ljava/lang/Object;>;"
    :catchall_3e
    move-exception v1

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 284
    throw v1
.end method

.method private blacklist finishRead(Z)V
    .registers 15
    .param p1, "mayInvokeDirect"    # Z

    .line 395
    const/4 v0, -0x1

    .line 396
    .local v0, "n":I
    const/4 v1, 0x0

    .line 399
    .local v1, "exc":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isScatteringRead:Z

    .line 400
    .local v2, "scattering":Z
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    .line 401
    .local v3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    .line 402
    .local v4, "att":Ljava/lang/Object;
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    .line 403
    .local v5, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimer:Ljava/util/concurrent/Future;

    .line 406
    .local v6, "timeout":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v7, 0x0

    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 408
    if-eqz v2, :cond_1e

    .line 409
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v8, v9, v10}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v8

    long-to-int v0, v8

    goto :goto_2b

    .line 411
    :cond_1e
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v11, -0x1

    invoke-static {v8, v9, v11, v12, v10}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v8

    move v0, v8

    .line 413
    :goto_2b
    const/4 v8, -0x2

    if-ne v0, v8, :cond_40

    .line 415
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_4a

    .line 416
    const/4 v9, 0x1

    :try_start_32
    iput-boolean v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    .line 417
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 436
    nop

    .line 437
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 438
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 418
    return-void

    .line 417
    :catchall_3d
    move-exception v9

    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .end local v0    # "n":I
    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v2    # "scattering":Z
    .end local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    .end local v4    # "att":Ljava/lang/Object;
    .end local v5    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    .end local v6    # "timeout":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "mayInvokeDirect":Z
    :try_start_3f
    throw v9

    .line 422
    .restart local v0    # "n":I
    .restart local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "scattering":Z
    .restart local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    .restart local v4    # "att":Ljava/lang/Object;
    .restart local v5    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    .restart local v6    # "timeout":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "mayInvokeDirect":Z
    :cond_40
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    .line 423
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    .line 424
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    .line 427
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4a

    .line 436
    goto :goto_5d

    .line 429
    :catchall_4a
    move-exception v8

    .line 430
    .local v8, "x":Ljava/lang/Throwable;
    :try_start_4b
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 431
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_58

    .line 432
    new-instance v9, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v9}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_8a

    move-object v8, v9

    .line 433
    :cond_58
    move-object v1, v8

    .line 436
    .end local v8    # "x":Ljava/lang/Throwable;
    instance-of v8, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v8, :cond_60

    .line 437
    :goto_5d
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 438
    :cond_60
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 439
    nop

    .line 442
    if-eqz v6, :cond_6a

    .line 443
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 446
    :cond_6a
    if-eqz v1, :cond_6d

    goto :goto_79

    :cond_6d
    if-eqz v2, :cond_75

    .line 447
    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_79

    :cond_75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_79
    nop

    .line 450
    .local v7, "result":Ljava/lang/Number;
    if-nez v3, :cond_80

    .line 451
    invoke-virtual {v5, v7, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_89

    .line 453
    :cond_80
    if-eqz p1, :cond_86

    .line 454
    invoke-static {v3, v4, v7, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_89

    .line 456
    :cond_86
    invoke-static {p0, v3, v4, v7, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 459
    :goto_89
    return-void

    .line 436
    .end local v7    # "result":Ljava/lang/Number;
    :catchall_8a
    move-exception v7

    .line 437
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 438
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 439
    throw v7
.end method

.method private blacklist finishWrite(Z)V
    .registers 15
    .param p1, "mayInvokeDirect"    # Z

    .line 590
    const/4 v0, -0x1

    .line 591
    .local v0, "n":I
    const/4 v1, 0x0

    .line 594
    .local v1, "exc":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isGatheringWrite:Z

    .line 595
    .local v2, "gathering":Z
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    .line 596
    .local v3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    .line 597
    .local v4, "att":Ljava/lang/Object;
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    .line 598
    .local v5, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimer:Ljava/util/concurrent/Future;

    .line 601
    .local v6, "timer":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v7, 0x0

    :try_start_d
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 603
    if-eqz v2, :cond_1e

    .line 604
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v8, v9, v10}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v8

    long-to-int v0, v8

    goto :goto_2b

    .line 606
    :cond_1e
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v11, -0x1

    invoke-static {v8, v9, v11, v12, v10}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v8

    move v0, v8

    .line 608
    :goto_2b
    const/4 v8, -0x2

    if-ne v0, v8, :cond_40

    .line 610
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_4a

    .line 611
    const/4 v9, 0x1

    :try_start_32
    iput-boolean v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    .line 612
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 631
    nop

    .line 632
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 633
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 613
    return-void

    .line 612
    :catchall_3d
    move-exception v9

    :try_start_3e
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .end local v0    # "n":I
    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v2    # "gathering":Z
    .end local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    .end local v4    # "att":Ljava/lang/Object;
    .end local v5    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    .end local v6    # "timer":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "mayInvokeDirect":Z
    :try_start_3f
    throw v9

    .line 617
    .restart local v0    # "n":I
    .restart local v1    # "exc":Ljava/lang/Throwable;
    .restart local v2    # "gathering":Z
    .restart local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    .restart local v4    # "att":Ljava/lang/Object;
    .restart local v5    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    .restart local v6    # "timer":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "mayInvokeDirect":Z
    :cond_40
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 618
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    .line 619
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    .line 622
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4a

    .line 631
    goto :goto_5d

    .line 624
    :catchall_4a
    move-exception v8

    .line 625
    .local v8, "x":Ljava/lang/Throwable;
    :try_start_4b
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 626
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_58

    .line 627
    new-instance v9, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v9}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_8a

    move-object v8, v9

    .line 628
    :cond_58
    move-object v1, v8

    .line 631
    .end local v8    # "x":Ljava/lang/Throwable;
    instance-of v8, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v8, :cond_60

    .line 632
    :goto_5d
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 633
    :cond_60
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 634
    nop

    .line 637
    if-eqz v6, :cond_6a

    .line 638
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 641
    :cond_6a
    if-eqz v1, :cond_6d

    goto :goto_79

    :cond_6d
    if-eqz v2, :cond_75

    .line 642
    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_79

    :cond_75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_79
    nop

    .line 645
    .local v7, "result":Ljava/lang/Number;
    if-nez v3, :cond_80

    .line 646
    invoke-virtual {v5, v7, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_89

    .line 648
    :cond_80
    if-eqz p1, :cond_86

    .line 649
    invoke-static {v3, v4, v7, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_89

    .line 651
    :cond_86
    invoke-static {p0, v3, v4, v7, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 654
    :goto_89
    return-void

    .line 631
    .end local v7    # "result":Ljava/lang/Number;
    :catchall_8a
    move-exception v7

    .line 632
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 633
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 634
    throw v7
.end method

.method private blacklist lockAndUpdateEvents()V
    .registers 3

    .line 164
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private blacklist setConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    const/4 v1, 0x2

    :try_start_4
    iput v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    .line 267
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 268
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->pendingRemote:Ljava/net/SocketAddress;

    check-cast v1, Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private blacklist updateEvents()V
    .registers 4

    .line 152
    nop

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "events":I
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    if-eqz v1, :cond_9

    .line 155
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/2addr v0, v1

    .line 156
    :cond_9
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    if-eqz v1, :cond_14

    .line 157
    :cond_11
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    .line 158
    :cond_14
    if-eqz v0, :cond_1d

    .line 159
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {v1, v2, v0}, Lsun/nio/ch/Port;->startPoll(II)V

    .line 160
    :cond_1d
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 246
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 248
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 249
    nop

    .line 250
    return-void

    .line 248
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 249
    throw v0
.end method

.method public blacklist group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .registers 2

    .line 147
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    return-object v0
.end method

.method blacklist implClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 231
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {v0, v1}, Lsun/nio/ch/Port;->unregister(I)V

    .line 234
    sget-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 237
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finish(ZZZ)V

    .line 238
    return-void
.end method

.method blacklist implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 15
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
            "-TA;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 315
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 316
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 317
    .local v0, "e":Ljava/lang/Throwable;
    if-nez p3, :cond_13

    .line 318
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 320
    :cond_13
    invoke-static {p0, p3, p2, v1, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 321
    return-object v1

    .line 325
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_17
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 328
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 329
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_30

    .line 330
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 334
    :cond_30
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 335
    :try_start_33
    iget v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c4

    .line 337
    iget v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_be

    .line 339
    iput v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    .line 340
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->pendingRemote:Ljava/net/SocketAddress;

    .line 341
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_47

    move v4, v5

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    .line 342
    .local v4, "notifyBeforeTcpConnect":Z
    :goto_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_ca

    .line 344
    const/4 v3, 0x0

    .line 346
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_4a
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 348
    if-eqz v4, :cond_5c

    .line 349
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-static {v6, v7, v8}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 350
    :cond_5c
    iget-object v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-static {v6, v7, v8}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v6

    .line 351
    .local v6, "n":I
    const/4 v7, -0x2

    if-ne v6, v7, :cond_90

    .line 353
    const/4 v7, 0x0

    .line 354
    .local v7, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    iget-object v8, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_71
    .catchall {:try_start_4a .. :try_end_71} :catchall_94

    .line 355
    if-nez p3, :cond_7e

    .line 356
    :try_start_73
    new-instance v9, Lsun/nio/ch/PendingFuture;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-direct {v9, p0, v10}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V

    move-object v7, v9

    .line 357
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectFuture:Lsun/nio/ch/PendingFuture;

    goto :goto_82

    .line 359
    :cond_7e
    iput-object p3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectHandler:Ljava/nio/channels/CompletionHandler;

    .line 360
    iput-object p2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectAttachment:Ljava/lang/Object;

    .line 362
    :goto_82
    iput-boolean v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    .line 363
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V

    .line 364
    monitor-exit v8
    :try_end_88
    .catchall {:try_start_73 .. :try_end_88} :catchall_8d

    .line 365
    nop

    .line 373
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 365
    return-object v7

    .line 364
    :catchall_8d
    move-exception v5

    :try_start_8e
    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "notifyBeforeTcpConnect":Z
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    :try_start_8f
    throw v5

    .line 367
    .end local v7    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    .restart local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "notifyBeforeTcpConnect":Z
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    :cond_90
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->setConnected()V
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_94

    .end local v6    # "n":I
    goto :goto_a0

    .line 368
    :catchall_94
    move-exception v5

    .line 369
    .local v5, "x":Ljava/lang/Throwable;
    :try_start_95
    instance-of v6, v5, Ljava/nio/channels/ClosedChannelException;

    if-eqz v6, :cond_9f

    .line 370
    new-instance v6, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v6}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_b9

    move-object v5, v6

    .line 371
    :cond_9f
    move-object v3, v5

    .line 373
    .end local v5    # "x":Ljava/lang/Throwable;
    :goto_a0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 374
    nop

    .line 377
    if-eqz v3, :cond_ae

    .line 379
    :try_start_a6
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    .line 382
    goto :goto_ae

    .line 380
    :catchall_aa
    move-exception v5

    .line 381
    .local v5, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 384
    .end local v5    # "suppressed":Ljava/lang/Throwable;
    :cond_ae
    :goto_ae
    if-nez p3, :cond_b5

    .line 385
    invoke-static {v1, v3}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v1

    return-object v1

    .line 387
    :cond_b5
    invoke-static {p0, p3, p2, v1, v3}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 388
    return-object v1

    .line 373
    :catchall_b9
    move-exception v1

    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 374
    throw v1

    .line 338
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "notifyBeforeTcpConnect":Z
    :cond_be
    :try_start_be
    new-instance v1, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v1}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    throw v1

    .line 336
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    :cond_c4
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "remote":Ljava/net/SocketAddress;
    .end local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    throw v1

    .line 342
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "remote":Ljava/net/SocketAddress;
    .restart local p2    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    :catchall_ca
    move-exception v1

    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_be .. :try_end_cc} :catchall_ca

    throw v1
.end method

.method blacklist implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 30
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

    .line 507
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    const/4 v0, 0x0

    .line 508
    .local v0, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    const/4 v9, 0x0

    .line 509
    .local v9, "invokeDirect":Z
    const/4 v10, 0x0

    .line 510
    .local v10, "attemptRead":Z
    sget-boolean v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->disableSynchronousRead:Z

    if-nez v11, :cond_38

    .line 511
    if-nez v8, :cond_1c

    .line 512
    const/4 v10, 0x1

    move v11, v10

    move v10, v9

    move-object v9, v0

    goto :goto_3b

    .line 514
    :cond_1c
    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v0

    .line 515
    iget-object v11, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-static {v0, v11}, Lsun/nio/ch/Invoker;->mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z

    move-result v9

    .line 517
    if-nez v9, :cond_33

    iget-object v11, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-virtual {v11}, Lsun/nio/ch/Port;->isFixedThreadPool()Z

    move-result v11

    if-nez v11, :cond_31

    goto :goto_33

    :cond_31
    const/4 v11, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v11, 0x1

    :goto_34
    move v10, v11

    move v10, v9

    move-object v9, v0

    goto :goto_3b

    .line 510
    :cond_38
    move v11, v10

    move v10, v9

    move-object v9, v0

    .line 521
    .end local v0    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .local v9, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .local v10, "invokeDirect":Z
    .local v11, "attemptRead":Z
    :goto_3b
    const/4 v13, -0x2

    .line 522
    .local v13, "n":I
    const/4 v14, 0x0

    .line 523
    .local v14, "exc":Ljava/lang/Throwable;
    const/4 v15, 0x0

    .line 526
    .local v15, "pending":Z
    :try_start_3e
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_d6

    .line 528
    if-eqz v11, :cond_6c

    .line 529
    if-eqz v2, :cond_5c

    .line 530
    :try_start_45
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v12, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_53

    move/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptRead":Z
    .local v17, "invokeDirect":Z
    .local v18, "attemptRead":Z
    :try_start_4d
    invoke-static {v0, v4, v12}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10

    long-to-int v13, v10

    goto :goto_70

    .line 561
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptRead":Z
    .restart local v10    # "invokeDirect":Z
    .restart local v11    # "attemptRead":Z
    :catchall_53
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v2, p6

    goto/16 :goto_dd

    .line 532
    :cond_5c
    move/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptRead":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptRead":Z
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    const-wide/16 v11, -0x1

    invoke-static {v0, v3, v11, v12, v10}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    move v13, v0

    goto :goto_70

    .line 528
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptRead":Z
    .restart local v10    # "invokeDirect":Z
    .restart local v11    # "attemptRead":Z
    :cond_6c
    move/from16 v17, v10

    move/from16 v18, v11

    .line 536
    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptRead":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptRead":Z
    :goto_70
    const/4 v0, -0x2

    if-ne v13, v0, :cond_cb

    .line 537
    const/4 v10, 0x0

    .line 538
    .local v10, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    iget-object v11, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_77
    .catchall {:try_start_4d .. :try_end_77} :catchall_c7

    .line 539
    :try_start_77
    iput-boolean v2, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isScatteringRead:Z

    .line 540
    iput-object v3, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    .line 541
    iput-object v4, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    .line 542
    if-nez v8, :cond_90

    .line 543
    const/4 v12, 0x0

    iput-object v12, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    .line 544
    new-instance v0, Lsun/nio/ch/PendingFuture;

    sget-object v12, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-direct {v0, v1, v12}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V

    move-object v10, v0

    .line 545
    iput-object v10, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    .line 546
    const/4 v12, 0x0

    iput-object v12, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    goto :goto_97

    .line 548
    :cond_90
    iput-object v8, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    .line 549
    iput-object v7, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    .line 550
    const/4 v12, 0x0

    iput-object v12, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    .line 552
    :goto_97
    const-wide/16 v19, 0x0

    cmp-long v0, v5, v19

    if-lez v0, :cond_aa

    .line 553
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget-object v12, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;
    :try_end_a1
    .catchall {:try_start_77 .. :try_end_a1} :catchall_be

    move-object/from16 v2, p6

    :try_start_a3
    invoke-virtual {v0, v12, v5, v6, v2}, Lsun/nio/ch/Port;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimer:Ljava/util/concurrent/Future;

    goto :goto_ac

    .line 552
    :cond_aa
    move-object/from16 v2, p6

    .line 555
    :goto_ac
    const/4 v0, 0x1

    iput-boolean v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    .line 556
    invoke-direct {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V

    .line 557
    monitor-exit v11
    :try_end_b3
    .catchall {:try_start_a3 .. :try_end_b3} :catchall_c5

    .line 558
    const/4 v0, 0x1

    .line 559
    .end local v15    # "pending":Z
    .local v0, "pending":Z
    nop

    .line 566
    if-nez v0, :cond_ba

    .line 567
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 568
    :cond_ba
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 559
    return-object v10

    .line 557
    .end local v0    # "pending":Z
    .restart local v15    # "pending":Z
    :catchall_be
    move-exception v0

    move-object/from16 v2, p6

    :goto_c1
    :try_start_c1
    monitor-exit v11
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c5

    .end local v9    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .end local v13    # "n":I
    .end local v14    # "exc":Ljava/lang/Throwable;
    .end local v15    # "pending":Z
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptRead":Z
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "isScatteringRead":Z
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    .end local p3    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p4    # "timeout":J
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p7    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :try_start_c2
    throw v0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c3

    .line 561
    .end local v10    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .restart local v9    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .restart local v13    # "n":I
    .restart local v14    # "exc":Ljava/lang/Throwable;
    .restart local v15    # "pending":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptRead":Z
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "isScatteringRead":Z
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    .restart local p3    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p4    # "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local p7    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :catchall_c3
    move-exception v0

    goto :goto_dd

    .line 557
    .restart local v10    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_c5
    move-exception v0

    goto :goto_c1

    .line 561
    .end local v10    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_c7
    move-exception v0

    move-object/from16 v2, p6

    goto :goto_dd

    .line 566
    :cond_cb
    move-object/from16 v2, p6

    if-nez v15, :cond_d2

    .line 567
    :goto_cf
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 568
    :cond_d2
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 569
    goto :goto_eb

    .line 561
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptRead":Z
    .local v10, "invokeDirect":Z
    .restart local v11    # "attemptRead":Z
    :catchall_d6
    move-exception v0

    move-object/from16 v2, p6

    move/from16 v17, v10

    move/from16 v18, v11

    .line 562
    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptRead":Z
    .local v0, "x":Ljava/lang/Throwable;
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptRead":Z
    :goto_dd
    :try_start_dd
    instance-of v10, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v10, :cond_e7

    .line 563
    new-instance v10, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v10}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_10f

    move-object v0, v10

    .line 564
    :cond_e7
    move-object v14, v0

    .line 566
    .end local v0    # "x":Ljava/lang/Throwable;
    if-nez v15, :cond_d2

    .line 567
    goto :goto_cf

    .line 571
    :goto_eb
    if-eqz v14, :cond_ef

    const/4 v12, 0x0

    goto :goto_fb

    :cond_ef
    if-eqz p1, :cond_f7

    .line 572
    int-to-long v10, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_fb

    :cond_f7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_fb
    nop

    .line 575
    .local v12, "result":Ljava/lang/Number;
    if-eqz v8, :cond_10a

    .line 576
    if-eqz v17, :cond_104

    .line 577
    invoke-static {v9, v8, v7, v12, v14}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_107

    .line 579
    :cond_104
    invoke-static {v1, v8, v7, v12, v14}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 581
    :goto_107
    const/16 v16, 0x0

    return-object v16

    .line 583
    :cond_10a
    invoke-static {v12, v14}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v0

    return-object v0

    .line 566
    .end local v12    # "result":Ljava/lang/Number;
    :catchall_10f
    move-exception v0

    if-nez v15, :cond_115

    .line 567
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 568
    :cond_115
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 569
    throw v0
.end method

.method blacklist implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 30
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

    .line 699
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v9

    .line 700
    .local v9, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-static {v9, v0}, Lsun/nio/ch/Invoker;->mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z

    move-result v10

    .line 701
    .local v10, "invokeDirect":Z
    if-eqz v8, :cond_27

    if-nez v10, :cond_27

    iget-object v11, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 702
    invoke-virtual {v11}, Lsun/nio/ch/Port;->isFixedThreadPool()Z

    move-result v11

    if-nez v11, :cond_25

    goto :goto_27

    :cond_25
    const/4 v11, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v11, 0x1

    .line 704
    .local v11, "attemptWrite":Z
    :goto_28
    const/4 v12, -0x2

    .line 705
    .local v12, "n":I
    const/4 v13, 0x0

    .line 706
    .local v13, "exc":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 709
    .local v14, "pending":Z
    :try_start_2b
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_d1

    .line 711
    if-eqz v11, :cond_66

    .line 712
    if-eqz v2, :cond_49

    .line 713
    :try_start_32
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_40

    move/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptWrite":Z
    .local v17, "invokeDirect":Z
    .local v18, "attemptWrite":Z
    :try_start_3a
    invoke-static {v0, v4, v15}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_c2

    long-to-int v12, v10

    goto :goto_6b

    .line 744
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptWrite":Z
    .restart local v10    # "invokeDirect":Z
    .restart local v11    # "attemptWrite":Z
    :catchall_40
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    move-object/from16 v2, p6

    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptWrite":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptWrite":Z
    goto/16 :goto_d9

    .line 715
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptWrite":Z
    .restart local v10    # "invokeDirect":Z
    .restart local v11    # "attemptWrite":Z
    :cond_49
    move/from16 v17, v10

    move/from16 v18, v11

    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptWrite":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptWrite":Z
    :try_start_4d
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v10, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_60

    move v15, v12

    .end local v12    # "n":I
    .local v15, "n":I
    const-wide/16 v11, -0x1

    :try_start_54
    invoke-static {v0, v3, v11, v12, v10}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5a

    move v12, v0

    .end local v15    # "n":I
    .restart local v12    # "n":I
    goto :goto_6b

    .line 744
    .end local v12    # "n":I
    .restart local v15    # "n":I
    :catchall_5a
    move-exception v0

    move-object/from16 v2, p6

    move v12, v15

    goto/16 :goto_d9

    .end local v15    # "n":I
    .restart local v12    # "n":I
    :catchall_60
    move-exception v0

    move v15, v12

    move-object/from16 v2, p6

    .end local v12    # "n":I
    .restart local v15    # "n":I
    goto/16 :goto_d9

    .line 711
    .end local v15    # "n":I
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptWrite":Z
    .restart local v10    # "invokeDirect":Z
    .restart local v11    # "attemptWrite":Z
    .restart local v12    # "n":I
    :cond_66
    move/from16 v17, v10

    move/from16 v18, v11

    move v15, v12

    .line 719
    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptWrite":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptWrite":Z
    :goto_6b
    const/4 v0, -0x2

    if-ne v12, v0, :cond_c6

    .line 720
    const/4 v10, 0x0

    .line 721
    .local v10, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :try_start_6f
    iget-object v11, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_c2

    .line 722
    :try_start_72
    iput-boolean v2, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isGatheringWrite:Z

    .line 723
    iput-object v3, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 724
    iput-object v4, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    .line 725
    if-nez v8, :cond_8b

    .line 726
    const/4 v15, 0x0

    iput-object v15, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    .line 727
    new-instance v0, Lsun/nio/ch/PendingFuture;

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-direct {v0, v1, v15}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V

    move-object v10, v0

    .line 728
    iput-object v10, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    .line 729
    const/4 v15, 0x0

    iput-object v15, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    goto :goto_92

    .line 731
    :cond_8b
    iput-object v8, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    .line 732
    iput-object v7, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    .line 733
    const/4 v15, 0x0

    iput-object v15, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    .line 735
    :goto_92
    const-wide/16 v19, 0x0

    cmp-long v0, v5, v19

    if-lez v0, :cond_a5

    .line 736
    iget-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget-object v15, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;
    :try_end_9c
    .catchall {:try_start_72 .. :try_end_9c} :catchall_b9

    move-object/from16 v2, p6

    :try_start_9e
    invoke-virtual {v0, v15, v5, v6, v2}, Lsun/nio/ch/Port;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimer:Ljava/util/concurrent/Future;

    goto :goto_a7

    .line 735
    :cond_a5
    move-object/from16 v2, p6

    .line 738
    :goto_a7
    const/4 v0, 0x1

    iput-boolean v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    .line 739
    invoke-direct {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V

    .line 740
    monitor-exit v11
    :try_end_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_c0

    .line 741
    const/4 v0, 0x1

    .line 742
    .end local v14    # "pending":Z
    .local v0, "pending":Z
    nop

    .line 749
    if-nez v0, :cond_b5

    .line 750
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 751
    :cond_b5
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 742
    return-object v10

    .line 740
    .end local v0    # "pending":Z
    .restart local v14    # "pending":Z
    :catchall_b9
    move-exception v0

    move-object/from16 v2, p6

    :goto_bc
    :try_start_bc
    monitor-exit v11
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_c0

    .end local v9    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .end local v12    # "n":I
    .end local v13    # "exc":Ljava/lang/Throwable;
    .end local v14    # "pending":Z
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptWrite":Z
    .end local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .end local p1    # "isGatheringWrite":Z
    .end local p2    # "src":Ljava/nio/ByteBuffer;
    .end local p3    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p4    # "timeout":J
    .end local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p7    # "attachment":Ljava/lang/Object;, "TA;"
    .end local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :try_start_bd
    throw v0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_be

    .line 744
    .end local v10    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .restart local v9    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .restart local v12    # "n":I
    .restart local v13    # "exc":Ljava/lang/Throwable;
    .restart local v14    # "pending":Z
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptWrite":Z
    .restart local p0    # "this":Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .restart local p1    # "isGatheringWrite":Z
    .restart local p2    # "src":Ljava/nio/ByteBuffer;
    .restart local p3    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p4    # "timeout":J
    .restart local p6    # "unit":Ljava/util/concurrent/TimeUnit;
    .restart local p7    # "attachment":Ljava/lang/Object;, "TA;"
    .restart local p8    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    :catchall_be
    move-exception v0

    goto :goto_d9

    .line 740
    .restart local v10    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_c0
    move-exception v0

    goto :goto_bc

    .line 744
    .end local v10    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_c2
    move-exception v0

    move-object/from16 v2, p6

    goto :goto_d9

    .line 749
    :cond_c6
    move-object/from16 v2, p6

    if-nez v14, :cond_cd

    .line 750
    :goto_ca
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 751
    :cond_cd
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 752
    goto :goto_e7

    .line 744
    .end local v17    # "invokeDirect":Z
    .end local v18    # "attemptWrite":Z
    .local v10, "invokeDirect":Z
    .restart local v11    # "attemptWrite":Z
    :catchall_d1
    move-exception v0

    move-object/from16 v2, p6

    move/from16 v17, v10

    move/from16 v18, v11

    move v15, v12

    .line 745
    .end local v10    # "invokeDirect":Z
    .end local v11    # "attemptWrite":Z
    .local v0, "x":Ljava/lang/Throwable;
    .restart local v17    # "invokeDirect":Z
    .restart local v18    # "attemptWrite":Z
    :goto_d9
    :try_start_d9
    instance-of v10, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v10, :cond_e3

    .line 746
    new-instance v10, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v10}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_e2
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_10b

    move-object v0, v10

    .line 747
    :cond_e3
    move-object v13, v0

    .line 749
    .end local v0    # "x":Ljava/lang/Throwable;
    if-nez v14, :cond_cd

    .line 750
    goto :goto_ca

    .line 754
    :goto_e7
    if-eqz v13, :cond_eb

    const/4 v15, 0x0

    goto :goto_f7

    :cond_eb
    if-eqz p1, :cond_f3

    .line 755
    int-to-long v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto :goto_f7

    :cond_f3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_f7
    nop

    .line 758
    .local v15, "result":Ljava/lang/Number;
    if-eqz v8, :cond_106

    .line 759
    if-eqz v17, :cond_100

    .line 760
    invoke-static {v9, v8, v7, v15, v13}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_103

    .line 762
    :cond_100
    invoke-static {v1, v8, v7, v15, v13}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 764
    :goto_103
    const/16 v16, 0x0

    return-object v16

    .line 766
    :cond_106
    invoke-static {v15, v13}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v0

    return-object v0

    .line 749
    .end local v15    # "result":Ljava/lang/Number;
    :catchall_10b
    move-exception v0

    if-nez v14, :cond_111

    .line 750
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 751
    :cond_111
    invoke-virtual {v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 752
    throw v0
.end method

.method public blacklist onCancel(Lsun/nio/ch/PendingFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/PendingFuture<",
            "**>;)V"
        }
    .end annotation

    .line 254
    .local p1, "task":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<**>;"
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_b

    .line 255
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killConnect()V

    .line 256
    :cond_b
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_16

    .line 257
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killReading()V

    .line 258
    :cond_16
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_21

    .line 259
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killWriting()V

    .line 260
    :cond_21
    return-void
.end method

.method public blacklist onEvent(IZ)V
    .registers 7
    .param p1, "events"    # I
    .param p2, "mayInvokeDirect"    # Z

    .line 217
    sget-short v0, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 218
    .local v0, "readable":Z
    :goto_a
    sget-short v3, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v3, p1

    if-lez v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    .line 219
    .local v1, "writable":Z
    :goto_11
    sget-short v2, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v3, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-lez v2, :cond_1b

    .line 220
    const/4 v0, 0x1

    .line 221
    const/4 v1, 0x1

    .line 223
    :cond_1b
    invoke-direct {p0, p2, v0, v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finish(ZZZ)V

    .line 224
    return-void
.end method
