.class Lsun/nio/ch/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_CONNECTED:I = 0x1

.field private static final ST_KILLED:I = 0x2

.field private static final ST_UNCONNECTED:I = 0x0

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private cachedSenderInetAddress:Ljava/net/InetAddress;

.field private cachedSenderPort:I

.field private final family:Ljava/net/ProtocolFamily;

.field final fd:Ljava/io/FileDescriptor;

.field private final fdVal:I

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final readLock:Ljava/lang/Object;

.field private volatile readerThread:J

.field private remoteAddress:Ljava/net/InetSocketAddress;

.field private reuseAddressEmulated:Z

.field private sender:Ljava/net/SocketAddress;

.field private socket:Ljava/net/DatagramSocket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;

.field private volatile writerThread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/DatagramChannelImpl;

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
    sput-boolean v0, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@b
    .line 51
    new-instance v0, Lsun/nio/ch/DatagramDispatcher;

    #@d
    invoke-direct {v0}, Lsun/nio/ch/DatagramDispatcher;-><init>()V

    #@10
    sput-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@12
    .line 909
    invoke-static {}, Lsun/nio/ch/DatagramChannelImpl;->initIDs()V

    #@15
    .line 45
    return-void

    #@16
    :cond_0
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 111
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    .line 65
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@7
    .line 66
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@9
    .line 74
    new-instance v1, Ljava/lang/Object;

    #@b
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@10
    .line 77
    new-instance v1, Ljava/lang/Object;

    #@12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@17
    .line 81
    new-instance v1, Ljava/lang/Object;

    #@19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@1c
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@1e
    .line 90
    const/4 v1, -0x1

    #@1f
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@21
    .line 112
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V

    #@24
    .line 114
    :try_start_0
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 115
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@2c
    .line 114
    :goto_0
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@2e
    .line 116
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@30
    const/4 v2, 0x0

    #@31
    invoke-static {v1, v2}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@37
    .line 117
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@39
    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    #@3f
    .line 118
    const/4 v1, 0x0

    #@40
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@42
    .line 109
    return-void

    #@43
    .line 115
    :cond_0
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 119
    :catch_0
    move-exception v0

    #@47
    .line 120
    .local v0, "ioe":Ljava/io/IOException;
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    #@4a
    .line 121
    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 151
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    .line 65
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@7
    .line 66
    iput-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@9
    .line 74
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@10
    .line 77
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@17
    .line 81
    new-instance v0, Ljava/lang/Object;

    #@19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1c
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@1e
    .line 90
    const/4 v0, -0x1

    #@1f
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@21
    .line 152
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 153
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@29
    .line 152
    :goto_0
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@2b
    .line 154
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2d
    .line 155
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    #@33
    .line 156
    const/4 v0, 0x0

    #@34
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@36
    .line 157
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@3c
    .line 149
    return-void

    #@3d
    .line 153
    :cond_0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@3f
    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/net/ProtocolFamily;)V
    .locals 4
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 128
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@6
    .line 65
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@8
    .line 66
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@a
    .line 74
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@11
    .line 77
    new-instance v0, Ljava/lang/Object;

    #@13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@18
    .line 81
    new-instance v0, Ljava/lang/Object;

    #@1a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1d
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@1f
    .line 90
    const/4 v0, -0x1

    #@20
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@22
    .line 129
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@24
    if-eq p2, v0, :cond_1

    #@26
    .line 130
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@28
    if-eq p2, v0, :cond_1

    #@2a
    .line 132
    if-nez p2, :cond_0

    #@2c
    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    #@2e
    const-string/jumbo v1, "\'family\' is null"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 135
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@37
    const-string/jumbo v1, "Protocol family not supported"

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 137
    :cond_1
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@40
    if-ne p2, v0, :cond_2

    #@42
    .line 138
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    #@45
    move-result v0

    #@46
    if-nez v0, :cond_2

    #@48
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4a
    const-string/jumbo v1, "IPv6 not available"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 142
    :cond_2
    iput-object p2, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@53
    .line 143
    invoke-static {p2, v1}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    #@56
    move-result-object v0

    #@57
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@59
    .line 144
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5b
    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@5e
    move-result v0

    #@5f
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

    #@61
    .line 145
    iput v1, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@63
    .line 126
    return-void
.end method

.method private static native disconnect0(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private ensureOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 329
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v0

    #@c
    .line 327
    :cond_0
    return-void
.end method

.method private static native initIDs()V
.end method

.method private receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 400
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v4

    #@6
    .line 401
    .local v4, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    #@9
    move-result v1

    #@a
    .line 402
    .local v1, "lim":I
    sget-boolean v8, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@c
    if-nez v8, :cond_1

    #@e
    if-gt v4, v1, :cond_0

    #@10
    move v6, v7

    #@11
    :cond_0
    if-nez v6, :cond_1

    #@13
    new-instance v6, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v6

    #@19
    .line 403
    :cond_1
    if-gt v4, v1, :cond_2

    #@1b
    sub-int v5, v1, v4

    #@1d
    .line 404
    .local v5, "rem":I
    :goto_0
    instance-of v6, p2, Lsun/nio/ch/DirectBuffer;

    #@1f
    if-eqz v6, :cond_3

    #@21
    if-lez v5, :cond_3

    #@23
    .line 405
    invoke-direct {p0, p1, p2, v5, v4}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    #@26
    move-result v6

    #@27
    return v6

    #@28
    .line 403
    .end local v5    # "rem":I
    :cond_2
    const/4 v5, 0x0

    #@29
    .restart local v5    # "rem":I
    goto :goto_0

    #@2a
    .line 410
    :cond_3
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v3

    #@2e
    .line 411
    .local v3, "newSize":I
    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@31
    move-result-object v0

    #@32
    .line 413
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@35
    move-result-object v6

    #@36
    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@39
    .line 415
    const/4 v6, 0x0

    #@3a
    invoke-direct {p0, p1, v0, v3, v6}, Lsun/nio/ch/DatagramChannelImpl;->receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I

    #@3d
    move-result v2

    #@3e
    .line 416
    .local v2, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@41
    .line 417
    if-lez v2, :cond_4

    #@43
    if-lez v5, :cond_4

    #@45
    .line 418
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 421
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@4b
    .line 419
    return v2

    #@4c
    .line 420
    .end local v2    # "n":I
    :catchall_0
    move-exception v6

    #@4d
    .line 421
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@50
    .line 420
    throw v6
.end method

.method private native receive0(Ljava/io/FileDescriptor;JIZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private receiveIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "rem"    # I
    .param p4, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    move-object v0, p2

    #@1
    .line 429
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@3
    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    #@6
    move-result-wide v0

    #@7
    int-to-long v2, p4

    #@8
    add-long/2addr v2, v0

    #@9
    .line 430
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@c
    move-result v5

    #@d
    move-object v0, p0

    #@e
    move-object v1, p1

    #@f
    move v4, p3

    #@10
    .line 429
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/DatagramChannelImpl;->receive0(Ljava/io/FileDescriptor;JIZ)I

    #@13
    move-result v6

    #@14
    .line 431
    .local v6, "n":I
    if-lez v6, :cond_0

    #@16
    .line 432
    add-int v0, p4, v6

    #@18
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1b
    .line 433
    :cond_0
    return v6
.end method

.method private send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 499
    instance-of v5, p2, Lsun/nio/ch/DirectBuffer;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 500
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 503
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@d
    move-result v3

    #@e
    .line 504
    .local v3, "pos":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    #@11
    move-result v1

    #@12
    .line 505
    .local v1, "lim":I
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@14
    if-nez v5, :cond_2

    #@16
    if-gt v3, v1, :cond_1

    #@18
    const/4 v5, 0x1

    #@19
    :goto_0
    if-nez v5, :cond_2

    #@1b
    new-instance v5, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v5

    #@21
    :cond_1
    move v5, v4

    #@22
    goto :goto_0

    #@23
    .line 506
    :cond_2
    if-gt v3, v1, :cond_3

    #@25
    sub-int v4, v1, v3

    #@27
    .line 508
    .local v4, "rem":I
    :cond_3
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v0

    #@2b
    .line 510
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@2e
    .line 511
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@31
    .line 513
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@34
    .line 515
    invoke-direct {p0, p1, v0, p3}, Lsun/nio/ch/DatagramChannelImpl;->sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    #@37
    move-result v2

    #@38
    .line 516
    .local v2, "n":I
    if-lez v2, :cond_4

    #@3a
    .line 518
    add-int v5, v3, v2

    #@3c
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 522
    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@42
    .line 520
    return v2

    #@43
    .line 521
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    #@44
    .line 522
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@47
    .line 521
    throw v5
.end method

.method private native send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private sendFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "target"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v11

    #@4
    .line 531
    .local v11, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    #@7
    move-result v2

    #@8
    .line 532
    .local v2, "lim":I
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@a
    if-nez v3, :cond_1

    #@c
    if-gt v11, v2, :cond_0

    #@e
    const/4 v3, 0x1

    #@f
    :goto_0
    if-nez v3, :cond_1

    #@11
    new-instance v3, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v3

    #@17
    :cond_0
    const/4 v3, 0x0

    #@18
    goto :goto_0

    #@19
    .line 533
    :cond_1
    if-gt v11, v2, :cond_3

    #@1b
    sub-int v8, v2, v11

    #@1d
    .line 535
    .local v8, "rem":I
    :goto_1
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@21
    sget-object v5, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@23
    if-eq v3, v5, :cond_4

    #@25
    const/4 v4, 0x1

    #@26
    .line 538
    .local v4, "preferIPv6":Z
    :goto_2
    :try_start_0
    move-object/from16 v0, p2

    #@28
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@2a
    move-object v3, v0

    #@2b
    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    #@2e
    move-result-wide v6

    #@2f
    int-to-long v14, v11

    #@30
    add-long/2addr v6, v14

    #@31
    .line 539
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@34
    move-result-object v9

    #@35
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetSocketAddress;->getPort()I

    #@38
    move-result v10

    #@39
    move-object/from16 v3, p0

    #@3b
    move-object/from16 v5, p1

    #@3d
    .line 538
    invoke-direct/range {v3 .. v10}, Lsun/nio/ch/DatagramChannelImpl;->send0(ZLjava/io/FileDescriptor;JILjava/net/InetAddress;I)I
    :try_end_0
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    move-result v13

    #@41
    .line 545
    .local v13, "written":I
    :goto_3
    if-lez v13, :cond_2

    #@43
    .line 546
    add-int v3, v11, v13

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@4a
    .line 547
    :cond_2
    return v13

    #@4b
    .line 533
    .end local v4    # "preferIPv6":Z
    .end local v8    # "rem":I
    .end local v13    # "written":I
    :cond_3
    const/4 v8, 0x0

    #@4c
    .restart local v8    # "rem":I
    goto :goto_1

    #@4d
    .line 535
    :cond_4
    const/4 v4, 0x0

    #@4e
    .restart local v4    # "preferIPv6":Z
    goto :goto_2

    #@4f
    .line 540
    :catch_0
    move-exception v12

    #@50
    .line 541
    .local v12, "pue":Ljava/net/PortUnreachableException;
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_5

    #@56
    .line 542
    throw v12

    #@57
    .line 543
    :cond_5
    move v13, v8

    #@58
    .restart local v13    # "written":I
    goto :goto_3
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 10
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 680
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 681
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@5
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@6
    .line 682
    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@8
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9
    .line 683
    :try_start_2
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@c
    .line 684
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 685
    new-instance v3, Ljava/nio/channels/AlreadyBoundException;

    #@12
    invoke-direct {v3}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    #@15
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    .line 682
    :catchall_0
    move-exception v3

    #@17
    :try_start_3
    monitor-exit v6

    #@18
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@19
    .line 681
    :catchall_1
    move-exception v3

    #@1a
    :try_start_4
    monitor-exit v5

    #@1b
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@1c
    .line 680
    :catchall_2
    move-exception v3

    #@1d
    monitor-exit v4

    #@1e
    throw v3

    #@1f
    .line 687
    :cond_0
    if-nez p1, :cond_4

    #@21
    .line 689
    :try_start_5
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@23
    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@25
    if-ne v3, v7, :cond_3

    #@27
    .line 690
    new-instance v1, Ljava/net/InetSocketAddress;

    #@29
    const-string/jumbo v3, "0.0.0.0"

    #@2c
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@2f
    move-result-object v3

    #@30
    const/4 v7, 0x0

    #@31
    invoke-direct {v1, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@34
    .line 704
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@37
    move-result-object v2

    #@38
    .line 705
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2

    #@3a
    .line 706
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkListen(I)V

    #@41
    .line 708
    :cond_2
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@43
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@45
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@48
    move-result-object v8

    #@49
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@4c
    move-result v9

    #@4d
    invoke-static {v3, v7, v8, v9}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@50
    .line 709
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@52
    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@55
    move-result-object v3

    #@56
    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@58
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@59
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@5a
    monitor-exit v4

    #@5b
    .line 713
    return-object p0

    #@5c
    .line 692
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_3
    :try_start_8
    new-instance v1, Ljava/net/InetSocketAddress;

    #@5e
    const/4 v3, 0x0

    #@5f
    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    #@62
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0

    #@63
    .line 695
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@66
    move-result-object v1

    #@67
    .line 698
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@69
    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@6b
    if-ne v3, v7, :cond_1

    #@6d
    .line 699
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@70
    move-result-object v0

    #@71
    .line 700
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;

    #@73
    if-nez v3, :cond_1

    #@75
    .line 701
    new-instance v3, Ljava/nio/channels/UnsupportedAddressTypeException;

    #@77
    invoke-direct {v3}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    #@7a
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

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
    .line 679
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 11
    .param p1, "sa"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 733
    const/4 v1, 0x0

    #@1
    .line 735
    .local v1, "localPort":I
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 736
    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@6
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@7
    .line 737
    :try_start_1
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@9
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@a
    .line 738
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpenAndUnconnected()V

    #@d
    .line 739
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@10
    move-result-object v0

    #@11
    .line 740
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@14
    move-result-object v3

    #@15
    .line 741
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_0

    #@17
    .line 742
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 743
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@22
    move-result v8

    #@23
    .line 742
    invoke-virtual {v3, v4, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@26
    .line 744
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@28
    .line 745
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2a
    .line 746
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@2d
    move-result-object v9

    #@2e
    .line 747
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@31
    move-result v10

    #@32
    .line 744
    invoke-static {v4, v8, v9, v10}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    #@35
    move-result v2

    #@36
    .line 748
    .local v2, "n":I
    if-gtz v2, :cond_1

    #@38
    .line 749
    new-instance v4, Ljava/lang/Error;

    #@3a
    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    #@3d
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 737
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "n":I
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v4

    #@3f
    :try_start_3
    monitor-exit v7

    #@40
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@41
    .line 736
    :catchall_1
    move-exception v4

    #@42
    :try_start_4
    monitor-exit v6

    #@43
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@44
    .line 735
    :catchall_2
    move-exception v4

    #@45
    monitor-exit v5

    #@46
    throw v4

    #@47
    .line 752
    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "n":I
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v4, 0x1

    #@48
    :try_start_5
    iput v4, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@4a
    .line 753
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@4c
    .line 754
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    #@4e
    .line 755
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@51
    move-result-object v4

    #@52
    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderInetAddress:Ljava/net/InetAddress;

    #@54
    .line 756
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    #@57
    move-result v4

    #@58
    iput v4, p0, Lsun/nio/ch/DatagramChannelImpl;->cachedSenderPort:I

    #@5a
    .line 759
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5c
    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@5f
    move-result-object v4

    #@60
    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@62
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@63
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@64
    monitor-exit v5

    #@65
    .line 763
    return-object p0
.end method

.method public disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 767
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 768
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@5
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@6
    .line 769
    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@8
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@9
    .line 770
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 772
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@17
    .line 773
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@1a
    move-result-object v2

    #@1b
    .line 774
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    #@1d
    .line 775
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 776
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@28
    move-result v7

    #@29
    .line 775
    invoke-virtual {v2, v3, v7}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@2c
    .line 777
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@2e
    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@30
    if-ne v3, v7, :cond_2

    #@32
    const/4 v0, 0x1

    #@33
    .line 778
    .local v0, "isIPv6":Z
    :goto_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@35
    invoke-static {v3, v0}, Lsun/nio/ch/DatagramChannelImpl;->disconnect0(Ljava/io/FileDescriptor;Z)V

    #@38
    .line 779
    const/4 v3, 0x0

    #@39
    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@3b
    .line 780
    const/4 v3, 0x0

    #@3c
    iput v3, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@3e
    .line 783
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@40
    invoke-static {v3}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@43
    move-result-object v3

    #@44
    iput-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@47
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@48
    monitor-exit v4

    #@49
    .line 787
    return-object p0

    #@4a
    .end local v0    # "isIPv6":Z
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4b
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@4c
    monitor-exit v4

    #@4d
    .line 771
    return-object p0

    #@4e
    .line 777
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    .restart local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "isIPv6":Z
    goto :goto_0

    #@50
    .line 769
    .end local v0    # "isIPv6":Z
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v3

    #@51
    :try_start_7
    monitor-exit v6

    #@52
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@53
    .line 768
    :catchall_1
    move-exception v3

    #@54
    :try_start_8
    monitor-exit v5

    #@55
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    #@56
    .line 767
    :catchall_2
    move-exception v3

    #@57
    monitor-exit v4

    #@58
    throw v3
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
    .line 723
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 724
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 725
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 723
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 726
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 727
    new-instance v0, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v2, "Connect already invoked"

    #@1b
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    :cond_1
    monitor-exit v1

    #@20
    .line 722
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 822
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 823
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->close()V

    #@7
    .line 820
    :cond_0
    return-void
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 885
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    #@0
    .prologue
    .line 889
    iget v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fdVal:I

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
    .line 169
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 170
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 171
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 169
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

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
    .locals 8
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
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    const/4 v7, 0x0

    #@1
    .line 249
    if-nez p1, :cond_0

    #@3
    .line 250
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v4

    #@9
    .line 251
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    .line 252
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "\'"

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, "\' not supported"

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 254
    :cond_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@36
    monitor-enter v5

    #@37
    .line 255
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@3a
    .line 257
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@3c
    if-ne p1, v4, :cond_3

    #@3e
    .line 259
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@40
    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@42
    if-ne v4, v6, :cond_2

    #@44
    .line 260
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@46
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@48
    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result-object v4

    #@4c
    monitor-exit v5

    #@4d
    return-object v4

    #@4e
    .line 262
    :cond_2
    const/4 v4, 0x0

    #@4f
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    move-result-object v4

    #@53
    monitor-exit v5

    #@54
    return-object v4

    #@55
    .line 266
    :cond_3
    :try_start_2
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    #@57
    if-eq p1, v4, :cond_4

    #@59
    .line 267
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    #@5b
    if-ne p1, v4, :cond_5

    #@5d
    .line 269
    :cond_4
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@5f
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@61
    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    move-result-object v4

    #@65
    monitor-exit v5

    #@66
    return-object v4

    #@67
    .line 272
    :cond_5
    :try_start_3
    sget-object v4, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    #@69
    if-ne p1, v4, :cond_b

    #@6b
    .line 273
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@6d
    sget-object v6, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@6f
    if-ne v4, v6, :cond_8

    #@71
    .line 274
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@73
    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface4(Ljava/io/FileDescriptor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@76
    move-result v0

    #@77
    .line 275
    .local v0, "address":I
    if-nez v0, :cond_6

    #@79
    monitor-exit v5

    #@7a
    .line 276
    return-object v7

    #@7b
    .line 278
    :cond_6
    :try_start_4
    invoke-static {v0}, Lsun/nio/ch/Net;->inet4FromInt(I)Ljava/net/InetAddress;

    #@7e
    move-result-object v1

    #@7f
    .line 279
    .local v1, "ia":Ljava/net/InetAddress;
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    #@82
    move-result-object v3

    #@83
    .line 280
    .local v3, "ni":Ljava/net/NetworkInterface;
    if-nez v3, :cond_7

    #@85
    .line 281
    new-instance v4, Ljava/io/IOException;

    #@87
    const-string/jumbo v6, "Unable to map address to interface"

    #@8a
    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8e
    .line 254
    .end local v0    # "address":I
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :catchall_0
    move-exception v4

    #@8f
    monitor-exit v5

    #@90
    throw v4

    #@91
    .restart local v0    # "address":I
    .restart local v1    # "ia":Ljava/net/InetAddress;
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_7
    monitor-exit v5

    #@92
    .line 282
    return-object v3

    #@93
    .line 284
    .end local v0    # "address":I
    .end local v1    # "ia":Ljava/net/InetAddress;
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_8
    :try_start_5
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@95
    invoke-static {v4}, Lsun/nio/ch/Net;->getInterface6(Ljava/io/FileDescriptor;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@98
    move-result v2

    #@99
    .line 285
    .local v2, "index":I
    if-nez v2, :cond_9

    #@9b
    monitor-exit v5

    #@9c
    .line 286
    return-object v7

    #@9d
    .line 288
    :cond_9
    :try_start_6
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    #@a0
    move-result-object v3

    #@a1
    .line 289
    .restart local v3    # "ni":Ljava/net/NetworkInterface;
    if-nez v3, :cond_a

    #@a3
    .line 290
    new-instance v4, Ljava/io/IOException;

    #@a5
    const-string/jumbo v6, "Unable to map index to interface"

    #@a8
    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ac
    :cond_a
    monitor-exit v5

    #@ad
    .line 291
    return-object v3

    #@ae
    .line 295
    .end local v2    # "index":I
    .end local v3    # "ni":Ljava/net/NetworkInterface;
    :cond_b
    :try_start_7
    sget-object v4, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@b0
    if-ne p1, v4, :cond_c

    #@b2
    .line 296
    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    #@b4
    .line 295
    if-eqz v4, :cond_c

    #@b6
    .line 298
    iget-boolean v4, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    #@b8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@bb
    move-result-object v4

    #@bc
    monitor-exit v5

    #@bd
    return-object v4

    #@be
    .line 302
    :cond_c
    :try_start_8
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@c0
    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@c2
    invoke-static {v4, v6, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@c5
    move-result-object v4

    #@c6
    monitor-exit v5

    #@c7
    return-object v4
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
    .line 178
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 179
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 180
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 178
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0

    #@12
    .line 181
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 791
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 792
    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@7
    const/4 v4, 0x2

    #@8
    if-eq v2, v4, :cond_0

    #@a
    .line 793
    sget-object v2, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@c
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@e
    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    #@11
    .line 794
    :cond_0
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    #@14
    .line 797
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@16
    .local v0, "th":J
    cmp-long v2, v0, v6

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 798
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@1d
    .line 799
    :cond_1
    iget-wide v0, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@1f
    cmp-long v2, v0, v6

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 800
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@26
    .line 801
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_3

    #@2c
    .line 802
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_3
    monitor-exit v3

    #@30
    .line 790
    return-void

    #@31
    .line 791
    .end local v0    # "th":J
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v3

    #@33
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
    .line 663
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    #@5
    .line 662
    return-void
.end method

.method public isConnected()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 717
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 718
    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
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
    .line 717
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public kill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    .line 807
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 808
    :try_start_0
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    if-ne v2, v3, :cond_0

    #@9
    monitor-exit v1

    #@a
    .line 809
    return-void

    #@b
    .line 810
    :cond_0
    :try_start_1
    iget v2, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I

    #@d
    const/4 v3, -0x1

    #@e
    if-ne v2, v3, :cond_1

    #@10
    .line 811
    const/4 v0, 0x2

    #@11
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 812
    return-void

    #@15
    .line 814
    :cond_1
    :try_start_2
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@17
    if-nez v2, :cond_4

    #@19
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_2

    #@1f
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isRegistered()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3

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
    .line 807
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0

    #@30
    .line 814
    :cond_3
    const/4 v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 815
    :cond_4
    :try_start_3
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@34
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@36
    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    #@39
    .line 816
    const/4 v0, 0x2

    #@3a
    iput v0, p0, Lsun/nio/ch/DatagramChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    monitor-exit v1

    #@3d
    .line 806
    return-void
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 2

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 668
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 667
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
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
    .line 551
    if-nez p1, :cond_0

    #@5
    .line 552
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v1

    #@b
    .line 553
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 554
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@10
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 555
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@14
    .line 556
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 557
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    #@1c
    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@1f
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 554
    :catchall_0
    move-exception v1

    #@21
    :try_start_2
    monitor-exit v5

    #@22
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 553
    :catchall_1
    move-exception v1

    #@24
    monitor-exit v4

    #@25
    throw v1

    #@26
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .line 559
    const/4 v0, 0x0

    #@28
    .line 561
    .local v0, "n":I
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    #@2b
    .line 562
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 570
    const-wide/16 v6, 0x0

    #@33
    :try_start_5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@35
    .line 571
    const/4 v1, 0x0

    #@36
    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@39
    .line 572
    sget-boolean v1, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@3b
    if-nez v1, :cond_2

    #@3d
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_2

    #@43
    new-instance v1, Ljava/lang/AssertionError;

    #@45
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@48
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    :cond_2
    monitor-exit v4

    #@4a
    .line 563
    return v3

    #@4b
    .line 564
    :cond_3
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@4e
    move-result-wide v6

    #@4f
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@51
    .line 566
    :cond_4
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@53
    const-wide/16 v6, -0x1

    #@55
    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@57
    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@5a
    move-result v0

    #@5b
    .line 567
    const/4 v1, -0x3

    #@5c
    if-ne v0, v1, :cond_5

    #@5e
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_4

    #@64
    .line 568
    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@67
    move-result v1

    #@68
    .line 570
    const-wide/16 v6, 0x0

    #@6a
    :try_start_7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@6c
    .line 571
    if-gtz v0, :cond_6

    #@6e
    if-ne v0, v8, :cond_7

    #@70
    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@73
    .line 572
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@75
    if-nez v2, :cond_8

    #@77
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@7a
    move-result v2

    #@7b
    if-nez v2, :cond_8

    #@7d
    new-instance v1, Ljava/lang/AssertionError;

    #@7f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@82
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@83
    :cond_7
    move v2, v3

    #@84
    .line 571
    goto :goto_0

    #@85
    :cond_8
    monitor-exit v4

    #@86
    .line 568
    return v1

    #@87
    .line 569
    :catchall_2
    move-exception v1

    #@88
    .line 570
    const-wide/16 v6, 0x0

    #@8a
    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@8c
    .line 571
    if-gtz v0, :cond_9

    #@8e
    if-ne v0, v8, :cond_a

    #@90
    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@93
    .line 572
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@95
    if-nez v2, :cond_b

    #@97
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@9a
    move-result v2

    #@9b
    if-nez v2, :cond_b

    #@9d
    new-instance v1, Ljava/lang/AssertionError;

    #@9f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@a2
    throw v1

    #@a3
    :cond_a
    move v2, v3

    #@a4
    .line 571
    goto :goto_1

    #@a5
    .line 569
    :cond_b
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 8
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
    .line 580
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 581
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v2

    #@a
    .line 580
    :cond_1
    array-length v2, p1

    #@b
    sub-int/2addr v2, p3

    #@c
    if-gt p2, v2, :cond_0

    #@e
    .line 582
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@10
    monitor-enter v4

    #@11
    .line 583
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@13
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 584
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@17
    .line 585
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 586
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    #@1f
    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@22
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 583
    :catchall_0
    move-exception v2

    #@24
    :try_start_2
    monitor-exit v3

    #@25
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 582
    :catchall_1
    move-exception v2

    #@27
    monitor-exit v4

    #@28
    throw v2

    #@29
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2a
    .line 588
    const-wide/16 v0, 0x0

    #@2c
    .line 590
    .local v0, "n":J
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    #@2f
    .line 591
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_4

    #@35
    .line 599
    const-wide/16 v2, 0x0

    #@37
    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@39
    .line 600
    const/4 v2, 0x0

    #@3a
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@3d
    .line 601
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@3f
    if-nez v2, :cond_3

    #@41
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_3

    #@47
    new-instance v2, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4d
    .line 592
    :cond_3
    const-wide/16 v2, 0x0

    #@4f
    monitor-exit v4

    #@50
    return-wide v2

    #@51
    .line 593
    :cond_4
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@54
    move-result-wide v2

    #@55
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@57
    .line 595
    :cond_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@59
    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@5b
    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@5e
    move-result-wide v0

    #@5f
    .line 596
    const-wide/16 v2, -0x3

    #@61
    cmp-long v2, v0, v2

    #@63
    if-nez v2, :cond_6

    #@65
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@68
    move-result v2

    #@69
    if-nez v2, :cond_5

    #@6b
    .line 597
    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@6e
    move-result-wide v6

    #@6f
    .line 599
    const-wide/16 v2, 0x0

    #@71
    :try_start_7
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@73
    .line 600
    const-wide/16 v2, 0x0

    #@75
    cmp-long v2, v0, v2

    #@77
    if-gtz v2, :cond_7

    #@79
    const-wide/16 v2, -0x2

    #@7b
    cmp-long v2, v0, v2

    #@7d
    if-nez v2, :cond_8

    #@7f
    :cond_7
    const/4 v2, 0x1

    #@80
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@83
    .line 601
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@85
    if-nez v2, :cond_9

    #@87
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@8a
    move-result v2

    #@8b
    if-nez v2, :cond_9

    #@8d
    new-instance v2, Ljava/lang/AssertionError;

    #@8f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@92
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@93
    .line 600
    :cond_8
    const/4 v2, 0x0

    #@94
    goto :goto_0

    #@95
    :cond_9
    monitor-exit v4

    #@96
    .line 597
    return-wide v6

    #@97
    .line 598
    :catchall_2
    move-exception v2

    #@98
    .line 599
    const-wide/16 v6, 0x0

    #@9a
    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@9c
    .line 600
    const-wide/16 v6, 0x0

    #@9e
    cmp-long v3, v0, v6

    #@a0
    if-gtz v3, :cond_a

    #@a2
    const-wide/16 v6, -0x2

    #@a4
    cmp-long v3, v0, v6

    #@a6
    if-nez v3, :cond_b

    #@a8
    :cond_a
    const/4 v3, 0x1

    #@a9
    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@ac
    .line 601
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@ae
    if-nez v3, :cond_c

    #@b0
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@b3
    move-result v3

    #@b4
    if-nez v3, :cond_c

    #@b6
    new-instance v2, Ljava/lang/AssertionError;

    #@b8
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@bb
    throw v2

    #@bc
    .line 600
    :cond_b
    const/4 v3, 0x0

    #@bd
    goto :goto_1

    #@be
    .line 598
    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 14
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, -0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v12, 0x0

    #@4
    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 336
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v6, "Read-only buffer"

    #@f
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 337
    :cond_0
    if-nez p1, :cond_1

    #@15
    .line 338
    new-instance v5, Ljava/lang/NullPointerException;

    #@17
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@1a
    throw v5

    #@1b
    .line 341
    :cond_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@1d
    if-nez v5, :cond_2

    #@1f
    .line 342
    return-object v12

    #@20
    .line 343
    :cond_2
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    #@22
    monitor-enter v8

    #@23
    .line 344
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 348
    const/4 v2, 0x0

    #@27
    .line 349
    .local v2, "n":I
    const/4 v0, 0x0

    #@28
    .line 351
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    #@2b
    .line 352
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_4

    #@31
    .line 390
    const-wide/16 v6, 0x0

    #@33
    :try_start_2
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@35
    .line 391
    const/4 v5, 0x0

    #@36
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@39
    .line 392
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@3b
    if-nez v5, :cond_3

    #@3d
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_3

    #@43
    new-instance v5, Ljava/lang/AssertionError;

    #@45
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@48
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 343
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "n":I
    :catchall_0
    move-exception v5

    #@4a
    monitor-exit v8

    #@4b
    throw v5

    #@4c
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "n":I
    :cond_3
    monitor-exit v8

    #@4d
    .line 353
    return-object v12

    #@4e
    .line 354
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@51
    move-result-object v4

    #@52
    .line 355
    .local v4, "security":Ljava/lang/SecurityManager;
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@55
    move-result-wide v10

    #@56
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@58
    .line 356
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@5b
    move-result v5

    #@5c
    if-nez v5, :cond_5

    #@5e
    if-nez v4, :cond_a

    #@60
    .line 358
    :cond_5
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@62
    invoke-direct {p0, v5, p1}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@65
    move-result v2

    #@66
    .line 359
    const/4 v5, -0x3

    #@67
    if-ne v2, v5, :cond_6

    #@69
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6c
    move-result v5

    #@6d
    if-nez v5, :cond_5

    #@6f
    .line 360
    :cond_6
    if-ne v2, v13, :cond_12

    #@71
    .line 390
    const-wide/16 v10, 0x0

    #@73
    :try_start_4
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@75
    .line 391
    if-gtz v2, :cond_7

    #@77
    if-ne v2, v13, :cond_8

    #@79
    :cond_7
    :goto_0
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@7c
    .line 392
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@7e
    if-nez v5, :cond_9

    #@80
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@83
    move-result v5

    #@84
    if-nez v5, :cond_9

    #@86
    new-instance v5, Ljava/lang/AssertionError;

    #@88
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@8b
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8c
    :cond_8
    move v6, v7

    #@8d
    .line 391
    goto :goto_0

    #@8e
    :cond_9
    monitor-exit v8

    #@8f
    .line 361
    return-object v12

    #@90
    .line 363
    :cond_a
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@93
    move-result v5

    #@94
    invoke-static {v5}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    #@97
    move-result-object v0

    #@98
    .line 366
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :cond_b
    :goto_1
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@9a
    invoke-direct {p0, v5, v0}, Lsun/nio/ch/DatagramChannelImpl;->receive(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    #@9d
    move-result v2

    #@9e
    .line 367
    const/4 v5, -0x3

    #@9f
    if-ne v2, v5, :cond_c

    #@a1
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@a4
    move-result v5

    #@a5
    if-nez v5, :cond_b

    #@a7
    .line 368
    :cond_c
    if-ne v2, v13, :cond_11

    #@a9
    .line 388
    if-eqz v0, :cond_d

    #@ab
    .line 389
    :try_start_6
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@ae
    .line 390
    :cond_d
    const-wide/16 v10, 0x0

    #@b0
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@b2
    .line 391
    if-gtz v2, :cond_e

    #@b4
    if-ne v2, v13, :cond_f

    #@b6
    :cond_e
    :goto_2
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@b9
    .line 392
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@bb
    if-nez v5, :cond_10

    #@bd
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@c0
    move-result v5

    #@c1
    if-nez v5, :cond_10

    #@c3
    new-instance v5, Ljava/lang/AssertionError;

    #@c5
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@c8
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c9
    :cond_f
    move v6, v7

    #@ca
    .line 391
    goto :goto_2

    #@cb
    :cond_10
    monitor-exit v8

    #@cc
    .line 369
    return-object v12

    #@cd
    .line 370
    :cond_11
    :try_start_7
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;

    #@cf
    check-cast v1, Ljava/net/InetSocketAddress;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@d1
    .line 373
    .local v1, "isa":Ljava/net/InetSocketAddress;
    :try_start_8
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@d4
    move-result-object v5

    #@d5
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    .line 374
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@dc
    move-result v9

    #@dd
    .line 372
    invoke-virtual {v4, v5, v9}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@e0
    .line 381
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@e3
    .line 382
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@e6
    .line 386
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_12
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->sender:Ljava/net/SocketAddress;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@e8
    .line 388
    if-eqz v0, :cond_13

    #@ea
    .line 389
    :try_start_a
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@ed
    .line 390
    :cond_13
    const-wide/16 v10, 0x0

    #@ef
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@f1
    .line 391
    if-gtz v2, :cond_14

    #@f3
    if-ne v2, v13, :cond_15

    #@f5
    :cond_14
    :goto_3
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@f8
    .line 392
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@fa
    if-nez v6, :cond_16

    #@fc
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@ff
    move-result v6

    #@100
    if-nez v6, :cond_16

    #@102
    new-instance v5, Ljava/lang/AssertionError;

    #@104
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@107
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@108
    .line 375
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v3

    #@109
    .line 377
    .local v3, "se":Ljava/lang/SecurityException;
    :try_start_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@10c
    .line 378
    const/4 v2, 0x0

    #@10d
    goto :goto_1

    #@10e
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    .end local v3    # "se":Ljava/lang/SecurityException;
    :cond_15
    move v6, v7

    #@10f
    .line 391
    goto :goto_3

    #@110
    :cond_16
    monitor-exit v8

    #@111
    .line 386
    return-object v5

    #@112
    .line 387
    .end local v4    # "security":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v5

    #@113
    .line 388
    if-eqz v0, :cond_17

    #@115
    .line 389
    :try_start_c
    invoke-static {v0}, Lsun/nio/ch/Util;->releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@118
    .line 390
    :cond_17
    const-wide/16 v10, 0x0

    #@11a
    iput-wide v10, p0, Lsun/nio/ch/DatagramChannelImpl;->readerThread:J

    #@11c
    .line 391
    if-gtz v2, :cond_18

    #@11e
    if-ne v2, v13, :cond_19

    #@120
    :cond_18
    :goto_4
    invoke-virtual {p0, v6}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@123
    .line 392
    sget-boolean v6, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@125
    if-nez v6, :cond_1a

    #@127
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@12a
    move-result v6

    #@12b
    if-nez v6, :cond_1a

    #@12d
    new-instance v5, Ljava/lang/AssertionError;

    #@12f
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@132
    throw v5

    #@133
    :cond_19
    move v6, v7

    #@134
    .line 391
    goto :goto_4

    #@135
    .line 387
    :cond_1a
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 2

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 674
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 673
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "target"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, -0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 439
    if-nez p1, :cond_0

    #@5
    .line 440
    new-instance v4, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v4

    #@b
    .line 442
    :cond_0
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@d
    monitor-enter v7

    #@e
    .line 443
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@11
    .line 444
    invoke-static {p2}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    #@14
    move-result-object v1

    #@15
    .line 445
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    #@18
    move-result-object v0

    #@19
    .line 446
    .local v0, "ia":Ljava/net/InetAddress;
    if-nez v0, :cond_1

    #@1b
    .line 447
    new-instance v4, Ljava/io/IOException;

    #@1d
    const-string/jumbo v5, "Target address not resolved"

    #@20
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 442
    .end local v0    # "ia":Ljava/net/InetAddress;
    .end local v1    # "isa":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v4

    #@25
    monitor-exit v7

    #@26
    throw v4

    #@27
    .line 448
    .restart local v0    # "ia":Ljava/net/InetAddress;
    .restart local v1    # "isa":Ljava/net/InetSocketAddress;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@29
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 449
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_5

    #@30
    .line 450
    if-nez p2, :cond_2

    #@32
    .line 451
    new-instance v4, Ljava/lang/NullPointerException;

    #@34
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@37
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@38
    .line 448
    :catchall_1
    move-exception v4

    #@39
    :try_start_3
    monitor-exit v8

    #@3a
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3b
    .line 452
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3e
    move-result-object v3

    #@3f
    .line 453
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_3

    #@41
    .line 454
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_4

    #@47
    .line 455
    invoke-virtual {v3, v0}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4a
    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@4b
    .line 470
    const/4 v2, 0x0

    #@4c
    .line 472
    .local v2, "n":I
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    #@4f
    .line 473
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@52
    move-result v4

    #@53
    if-nez v4, :cond_8

    #@55
    .line 489
    const-wide/16 v4, 0x0

    #@57
    :try_start_7
    iput-wide v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@59
    .line 490
    const/4 v4, 0x0

    #@5a
    invoke-virtual {p0, v4}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@5d
    .line 491
    sget-boolean v4, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@5f
    if-nez v4, :cond_7

    #@61
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@64
    move-result v4

    #@65
    if-nez v4, :cond_7

    #@67
    new-instance v4, Ljava/lang/AssertionError;

    #@69
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@6c
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@6d
    .line 457
    .end local v2    # "n":I
    :cond_4
    :try_start_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 458
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    #@74
    move-result v9

    #@75
    .line 457
    invoke-virtual {v3, v4, v9}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@78
    goto :goto_0

    #@79
    .line 462
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_5
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    #@7b
    invoke-virtual {p2, v4}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v4

    #@7f
    if-nez v4, :cond_6

    #@81
    .line 463
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@83
    .line 464
    const-string/jumbo v5, "Connected address not equal to target address"

    #@86
    .line 463
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v4

    #@8a
    .line 466
    :cond_6
    invoke-virtual {p0, p1}, Lsun/nio/ch/DatagramChannelImpl;->write(Ljava/nio/ByteBuffer;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@8d
    move-result v4

    #@8e
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@8f
    monitor-exit v7

    #@90
    return v4

    #@91
    .restart local v2    # "n":I
    .restart local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_7
    monitor-exit v7

    #@92
    .line 474
    return v6

    #@93
    .line 475
    :cond_8
    :try_start_a
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@96
    move-result-wide v8

    #@97
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@99
    .line 476
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    #@9c
    move-result-object v4

    #@9d
    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    #@a0
    .line 479
    :cond_9
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@a2
    invoke-direct {p0, v4, p1, v1}, Lsun/nio/ch/DatagramChannelImpl;->send(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;Ljava/net/InetSocketAddress;)I

    #@a5
    move-result v2

    #@a6
    .line 480
    const/4 v4, -0x3

    #@a7
    if-ne v2, v4, :cond_a

    #@a9
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@ac
    move-result v4

    #@ad
    if-nez v4, :cond_9

    #@af
    .line 482
    :cond_a
    iget-object v8, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@b1
    monitor-enter v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@b2
    .line 483
    :try_start_b
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@b5
    move-result v4

    #@b6
    if-eqz v4, :cond_b

    #@b8
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@ba
    if-nez v4, :cond_b

    #@bc
    .line 484
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@be
    invoke-static {v4}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    #@c1
    move-result-object v4

    #@c2
    iput-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@c4
    :cond_b
    :try_start_c
    monitor-exit v8

    #@c5
    .line 487
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@c8
    move-result v4

    #@c9
    .line 489
    const-wide/16 v8, 0x0

    #@cb
    :try_start_d
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@cd
    .line 490
    if-gtz v2, :cond_c

    #@cf
    if-ne v2, v10, :cond_e

    #@d1
    :cond_c
    :goto_1
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@d4
    .line 491
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@d6
    if-nez v5, :cond_f

    #@d8
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@db
    move-result v5

    #@dc
    if-nez v5, :cond_f

    #@de
    new-instance v4, Ljava/lang/AssertionError;

    #@e0
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@e3
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@e4
    .line 482
    :catchall_2
    move-exception v4

    #@e5
    :try_start_e
    monitor-exit v8

    #@e6
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@e7
    .line 488
    :catchall_3
    move-exception v4

    #@e8
    .line 489
    const-wide/16 v8, 0x0

    #@ea
    :try_start_f
    iput-wide v8, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@ec
    .line 490
    if-gtz v2, :cond_d

    #@ee
    if-ne v2, v10, :cond_10

    #@f0
    :cond_d
    :goto_2
    invoke-virtual {p0, v5}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@f3
    .line 491
    sget-boolean v5, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@f5
    if-nez v5, :cond_11

    #@f7
    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@fa
    move-result v5

    #@fb
    if-nez v5, :cond_11

    #@fd
    new-instance v4, Ljava/lang/AssertionError;

    #@ff
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@102
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@103
    :cond_e
    move v5, v6

    #@104
    .line 490
    goto :goto_1

    #@105
    :cond_f
    monitor-exit v7

    #@106
    .line 487
    return v4

    #@107
    :cond_10
    move v5, v6

    #@108
    .line 490
    goto :goto_2

    #@109
    .line 488
    :cond_11
    :try_start_10
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/DatagramChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    .line 190
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 191
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->supportedOptions()Ljava/util/Set;

    #@b
    move-result-object v5

    #@c
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_1

    #@12
    .line 192
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    #@14
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "\'"

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    const-string/jumbo v7, "\' not supported"

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 194
    :cond_1
    iget-object v6, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@35
    monitor-enter v6

    #@36
    .line 195
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@39
    .line 197
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    #@3b
    if-ne p1, v5, :cond_3

    #@3d
    .line 199
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@3f
    sget-object v7, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    #@41
    if-ne v5, v7, :cond_2

    #@43
    .line 200
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@45
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@47
    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    :cond_2
    monitor-exit v6

    #@4b
    .line 202
    return-object p0

    #@4c
    .line 205
    :cond_3
    :try_start_1
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    #@4e
    if-eq p1, v5, :cond_4

    #@50
    .line 206
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    #@52
    if-ne p1, v5, :cond_5

    #@54
    .line 209
    :cond_4
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@56
    iget-object v7, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@58
    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit v6

    #@5c
    .line 210
    return-object p0

    #@5d
    .line 213
    :cond_5
    :try_start_2
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    #@5f
    if-ne p1, v5, :cond_a

    #@61
    .line 214
    if-nez p2, :cond_6

    #@63
    .line 215
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@65
    const-string/jumbo v7, "Cannot set IP_MULTICAST_IF to \'null\'"

    #@68
    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    .line 194
    :catchall_0
    move-exception v5

    #@6d
    monitor-exit v6

    #@6e
    throw v5

    #@6f
    .line 216
    :cond_6
    :try_start_3
    move-object v0, p2

    #@70
    check-cast v0, Ljava/net/NetworkInterface;

    #@72
    move-object v2, v0

    #@73
    .line 217
    .local v2, "interf":Ljava/net/NetworkInterface;
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->family:Ljava/net/ProtocolFamily;

    #@75
    sget-object v7, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    #@77
    if-ne v5, v7, :cond_8

    #@79
    .line 218
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@7c
    move-result v1

    #@7d
    .line 219
    .local v1, "index":I
    const/4 v5, -0x1

    #@7e
    if-ne v1, v5, :cond_7

    #@80
    .line 220
    new-instance v5, Ljava/io/IOException;

    #@82
    const-string/jumbo v7, "Network interface cannot be identified"

    #@85
    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@88
    throw v5

    #@89
    .line 221
    :cond_7
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@8b
    invoke-static {v5, v1}, Lsun/nio/ch/Net;->setInterface6(Ljava/io/FileDescriptor;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8e
    .end local v1    # "index":I
    :goto_0
    monitor-exit v6

    #@8f
    .line 230
    return-object p0

    #@90
    .line 224
    :cond_8
    :try_start_4
    invoke-static {v2}, Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;

    #@93
    move-result-object v3

    #@94
    .line 225
    .local v3, "target":Ljava/net/Inet4Address;
    if-nez v3, :cond_9

    #@96
    .line 226
    new-instance v5, Ljava/io/IOException;

    #@98
    const-string/jumbo v7, "Network interface not configured for IPv4"

    #@9b
    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v5

    #@9f
    .line 227
    :cond_9
    invoke-static {v3}, Lsun/nio/ch/Net;->inet4AsInt(Ljava/net/InetAddress;)I

    #@a2
    move-result v4

    #@a3
    .line 228
    .local v4, "targetAddress":I
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@a5
    invoke-static {v5, v4}, Lsun/nio/ch/Net;->setInterface4(Ljava/io/FileDescriptor;I)V

    #@a8
    goto :goto_0

    #@a9
    .line 232
    .end local v2    # "interf":Ljava/net/NetworkInterface;
    .end local v3    # "target":Ljava/net/Inet4Address;
    .end local v4    # "targetAddress":I
    :cond_a
    sget-object v5, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@ab
    if-ne p1, v5, :cond_b

    #@ad
    .line 233
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    #@b0
    move-result v5

    #@b1
    .line 232
    if-eqz v5, :cond_b

    #@b3
    .line 233
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    #@b5
    if-eqz v5, :cond_b

    #@b7
    .line 235
    const/4 v5, 0x1

    #@b8
    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->reuseAddressEmulated:Z

    #@ba
    .line 236
    move-object v0, p2

    #@bb
    check-cast v0, Ljava/lang/Boolean;

    #@bd
    move-object v5, v0

    #@be
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@c1
    move-result v5

    #@c2
    iput-boolean v5, p0, Lsun/nio/ch/DatagramChannelImpl;->isReuseAddress:Z

    #@c4
    .line 240
    :cond_b
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@c6
    sget-object v7, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    #@c8
    invoke-static {v5, v7, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cb
    monitor-exit v6

    #@cc
    .line 241
    return-object p0
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
    .line 186
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/DatagramChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/DatagramChannel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public socket()Ljava/net/DatagramSocket;
    .locals 2

    #@0
    .prologue
    .line 161
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 162
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 163
    invoke-static {p0}, Lsun/nio/ch/DatagramSocketAdaptor;->create(Lsun/nio/ch/DatagramChannelImpl;)Ljava/net/DatagramSocket;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    #@d
    .line 164
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    return-object v0

    #@11
    .line 161
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
    .line 324
    sget-object v0, Lsun/nio/ch/DatagramChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 873
    const/4 v0, 0x0

    #@1
    .line 875
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x1

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 876
    const/4 v0, 0x1

    #@6
    .line 877
    :cond_0
    and-int/lit8 v1, p1, 0x4

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 878
    or-int/lit8 v0, v0, 0x4

    #@c
    .line 879
    :cond_1
    and-int/lit8 v1, p1, 0x8

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 880
    or-int/lit8 v0, v0, 0x1

    #@12
    .line 881
    :cond_2
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    #@14
    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    #@17
    .line 872
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    #@0
    .prologue
    .line 866
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

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
    .line 862
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/DatagramChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

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
    .line 831
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    #@5
    move-result v0

    #@6
    .line 832
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    #@9
    move-result v2

    #@a
    .line 833
    .local v2, "oldOps":I
    move v1, p2

    #@b
    .line 835
    .local v1, "newOps":I
    and-int/lit8 v5, p1, 0x20

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 839
    return v4

    #@10
    .line 842
    :cond_0
    and-int/lit8 v5, p1, 0x18

    #@12
    if-eqz v5, :cond_2

    #@14
    .line 844
    move v1, v0

    #@15
    .line 845
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@18
    .line 846
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
    .line 849
    :cond_2
    and-int/lit8 v5, p1, 0x1

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 850
    and-int/lit8 v5, v0, 0x1

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 851
    or-int/lit8 v1, p2, 0x1

    #@29
    .line 853
    :cond_3
    and-int/lit8 v5, p1, 0x4

    #@2b
    if-eqz v5, :cond_4

    #@2d
    .line 854
    and-int/lit8 v5, v0, 0x4

    #@2f
    if-eqz v5, :cond_4

    #@31
    .line 855
    or-int/lit8 v1, v1, 0x4

    #@33
    .line 857
    :cond_4
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    #@36
    .line 858
    not-int v5, v2

    #@37
    and-int/2addr v5, v1

    #@38
    if-eqz v5, :cond_5

    #@3a
    :goto_1
    return v3

    #@3b
    :cond_5
    move v3, v4

    #@3c
    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
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
    .line 607
    if-nez p1, :cond_0

    #@5
    .line 608
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v1

    #@b
    .line 609
    :cond_0
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@d
    monitor-enter v4

    #@e
    .line 610
    :try_start_0
    iget-object v5, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@10
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 611
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@14
    .line 612
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 613
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    #@1c
    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@1f
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 610
    :catchall_0
    move-exception v1

    #@21
    :try_start_2
    monitor-exit v5

    #@22
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@23
    .line 609
    :catchall_1
    move-exception v1

    #@24
    monitor-exit v4

    #@25
    throw v1

    #@26
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .line 615
    const/4 v0, 0x0

    #@28
    .line 617
    .local v0, "n":I
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    #@2b
    .line 618
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 626
    const-wide/16 v6, 0x0

    #@33
    :try_start_5
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@35
    .line 627
    const/4 v1, 0x0

    #@36
    invoke-virtual {p0, v1}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@39
    .line 628
    sget-boolean v1, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@3b
    if-nez v1, :cond_2

    #@3d
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_2

    #@43
    new-instance v1, Ljava/lang/AssertionError;

    #@45
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@48
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    :cond_2
    monitor-exit v4

    #@4a
    .line 619
    return v3

    #@4b
    .line 620
    :cond_3
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@4e
    move-result-wide v6

    #@4f
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@51
    .line 622
    :cond_4
    iget-object v1, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@53
    const-wide/16 v6, -0x1

    #@55
    sget-object v5, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@57
    invoke-static {v1, p1, v6, v7, v5}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    #@5a
    move-result v0

    #@5b
    .line 623
    const/4 v1, -0x3

    #@5c
    if-ne v0, v1, :cond_5

    #@5e
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_4

    #@64
    .line 624
    :cond_5
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->normalize(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@67
    move-result v1

    #@68
    .line 626
    const-wide/16 v6, 0x0

    #@6a
    :try_start_7
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@6c
    .line 627
    if-gtz v0, :cond_6

    #@6e
    if-ne v0, v8, :cond_7

    #@70
    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@73
    .line 628
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@75
    if-nez v2, :cond_8

    #@77
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@7a
    move-result v2

    #@7b
    if-nez v2, :cond_8

    #@7d
    new-instance v1, Ljava/lang/AssertionError;

    #@7f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@82
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@83
    :cond_7
    move v2, v3

    #@84
    .line 627
    goto :goto_0

    #@85
    :cond_8
    monitor-exit v4

    #@86
    .line 624
    return v1

    #@87
    .line 625
    :catchall_2
    move-exception v1

    #@88
    .line 626
    const-wide/16 v6, 0x0

    #@8a
    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@8c
    .line 627
    if-gtz v0, :cond_9

    #@8e
    if-ne v0, v8, :cond_a

    #@90
    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@93
    .line 628
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@95
    if-nez v2, :cond_b

    #@97
    invoke-static {v0}, Lsun/nio/ch/IOStatus;->check(I)Z

    #@9a
    move-result v2

    #@9b
    if-nez v2, :cond_b

    #@9d
    new-instance v1, Ljava/lang/AssertionError;

    #@9f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@a2
    throw v1

    #@a3
    :cond_a
    move v2, v3

    #@a4
    .line 627
    goto :goto_1

    #@a5
    .line 625
    :cond_b
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 8
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
    .line 636
    if-ltz p2, :cond_0

    #@2
    if-gez p3, :cond_1

    #@4
    .line 637
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v2

    #@a
    .line 636
    :cond_1
    array-length v2, p1

    #@b
    sub-int/2addr v2, p3

    #@c
    if-gt p2, v2, :cond_0

    #@e
    .line 638
    iget-object v4, p0, Lsun/nio/ch/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    #@10
    monitor-enter v4

    #@11
    .line 639
    :try_start_0
    iget-object v3, p0, Lsun/nio/ch/DatagramChannelImpl;->stateLock:Ljava/lang/Object;

    #@13
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 640
    :try_start_1
    invoke-direct {p0}, Lsun/nio/ch/DatagramChannelImpl;->ensureOpen()V

    #@17
    .line 641
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isConnected()Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_2

    #@1d
    .line 642
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    #@1f
    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    #@22
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 639
    :catchall_0
    move-exception v2

    #@24
    :try_start_2
    monitor-exit v3

    #@25
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@26
    .line 638
    :catchall_1
    move-exception v2

    #@27
    monitor-exit v4

    #@28
    throw v2

    #@29
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2a
    .line 644
    const-wide/16 v0, 0x0

    #@2c
    .line 646
    .local v0, "n":J
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->begin()V

    #@2f
    .line 647
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_4

    #@35
    .line 655
    const-wide/16 v2, 0x0

    #@37
    :try_start_5
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@39
    .line 656
    const/4 v2, 0x0

    #@3a
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@3d
    .line 657
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@3f
    if-nez v2, :cond_3

    #@41
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_3

    #@47
    new-instance v2, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@4d
    .line 648
    :cond_3
    const-wide/16 v2, 0x0

    #@4f
    monitor-exit v4

    #@50
    return-wide v2

    #@51
    .line 649
    :cond_4
    :try_start_6
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@54
    move-result-wide v2

    #@55
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@57
    .line 651
    :cond_5
    iget-object v2, p0, Lsun/nio/ch/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@59
    sget-object v3, Lsun/nio/ch/DatagramChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    #@5b
    invoke-static {v2, p1, p2, p3, v3}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    #@5e
    move-result-wide v0

    #@5f
    .line 652
    const-wide/16 v2, -0x3

    #@61
    cmp-long v2, v0, v2

    #@63
    if-nez v2, :cond_6

    #@65
    invoke-virtual {p0}, Lsun/nio/ch/DatagramChannelImpl;->isOpen()Z

    #@68
    move-result v2

    #@69
    if-nez v2, :cond_5

    #@6b
    .line 653
    :cond_6
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->normalize(J)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@6e
    move-result-wide v6

    #@6f
    .line 655
    const-wide/16 v2, 0x0

    #@71
    :try_start_7
    iput-wide v2, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@73
    .line 656
    const-wide/16 v2, 0x0

    #@75
    cmp-long v2, v0, v2

    #@77
    if-gtz v2, :cond_7

    #@79
    const-wide/16 v2, -0x2

    #@7b
    cmp-long v2, v0, v2

    #@7d
    if-nez v2, :cond_8

    #@7f
    :cond_7
    const/4 v2, 0x1

    #@80
    :goto_0
    invoke-virtual {p0, v2}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@83
    .line 657
    sget-boolean v2, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@85
    if-nez v2, :cond_9

    #@87
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@8a
    move-result v2

    #@8b
    if-nez v2, :cond_9

    #@8d
    new-instance v2, Ljava/lang/AssertionError;

    #@8f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@92
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@93
    .line 656
    :cond_8
    const/4 v2, 0x0

    #@94
    goto :goto_0

    #@95
    :cond_9
    monitor-exit v4

    #@96
    .line 653
    return-wide v6

    #@97
    .line 654
    :catchall_2
    move-exception v2

    #@98
    .line 655
    const-wide/16 v6, 0x0

    #@9a
    :try_start_8
    iput-wide v6, p0, Lsun/nio/ch/DatagramChannelImpl;->writerThread:J

    #@9c
    .line 656
    const-wide/16 v6, 0x0

    #@9e
    cmp-long v3, v0, v6

    #@a0
    if-gtz v3, :cond_a

    #@a2
    const-wide/16 v6, -0x2

    #@a4
    cmp-long v3, v0, v6

    #@a6
    if-nez v3, :cond_b

    #@a8
    :cond_a
    const/4 v3, 0x1

    #@a9
    :goto_1
    invoke-virtual {p0, v3}, Lsun/nio/ch/DatagramChannelImpl;->end(Z)V

    #@ac
    .line 657
    sget-boolean v3, Lsun/nio/ch/DatagramChannelImpl;->-assertionsDisabled:Z

    #@ae
    if-nez v3, :cond_c

    #@b0
    invoke-static {v0, v1}, Lsun/nio/ch/IOStatus;->check(J)Z

    #@b3
    move-result v3

    #@b4
    if-nez v3, :cond_c

    #@b6
    new-instance v2, Ljava/lang/AssertionError;

    #@b8
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@bb
    throw v2

    #@bc
    .line 656
    :cond_b
    const/4 v3, 0x0

    #@bd
    goto :goto_1

    #@be
    .line 654
    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method
